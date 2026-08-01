#!/usr/bin/env python3
"""Remove Smartisan-framework-only window animations from launcher resources.

The original Launcher Animation style refers to framework animation resource
IDs 0x010a0177 and 0x010a0178. Those resources only exist in the Smartisan
framework. Some stock Android WindowManager implementations throw while laying
out the Launcher window when the resources are absent.

This patch keeps the original no-transition intent by changing only the nine
affected style bag values to @null. The attribute IDs and old values are
validated so an unexpected resource table is never modified silently.
"""

from __future__ import annotations

import argparse
import struct
from pathlib import Path


TYPE_REFERENCE = 0x01
NULL_REFERENCE = 0x00000000

# android style bag attribute -> Smartisan framework animation resource
WINDOW_ANIMATION_REFERENCES = {
    0x010100BC: 0x010A0177,  # taskOpenEnterAnimation
    0x010100BD: 0x010A0178,  # taskOpenExitAnimation
    0x010100BE: 0x010A0177,  # taskCloseEnterAnimation
    0x010100BF: 0x010A0178,  # taskCloseExitAnimation
    0x01010293: 0x010A0177,  # wallpaperOpenEnterAnimation
    0x01010297: 0x010A0177,  # wallpaperIntraOpenEnterAnimation
    0x01010298: 0x010A0178,  # wallpaperIntraOpenExitAnimation
    0x01010299: 0x010A0177,  # wallpaperIntraCloseEnterAnimation
    0x0101029A: 0x010A0178,  # wallpaperIntraCloseExitAnimation
}


def style_entry(attribute_id: int, value: int) -> bytes:
    # ResTable_map.name followed by Res_value(size=8, res0=0,
    # dataType=TYPE_REFERENCE, data=value).
    return struct.pack("<IHBBI", attribute_id, 8, 0, TYPE_REFERENCE, value)


def patch_resource_table(path: Path, check_only: bool) -> bool:
    data = bytearray(path.read_bytes())
    replacements: list[tuple[int, bytes]] = []

    for attribute_id, old_resource_id in WINDOW_ANIMATION_REFERENCES.items():
        old_entry = style_entry(attribute_id, old_resource_id)
        null_entry = style_entry(attribute_id, NULL_REFERENCE)
        old_count = data.count(old_entry)
        null_count = data.count(null_entry)

        if old_count == 1 and null_count == 0:
            offset = data.find(old_entry)
            replacements.append((offset, null_entry))
            continue

        if old_count == 0 and null_count == 1:
            continue

        raise RuntimeError(
            "Unexpected resources.arsc entry count for "
            f"attribute 0x{attribute_id:08x}: "
            f"old={old_count}, null={null_count}"
        )

    if check_only:
        if replacements:
            raise RuntimeError(
                f"{path} still contains {len(replacements)} "
                "Smartisan-only window animation references"
            )
        print(f"OK: {path} contains only null compatible window animations")
        return False

    for offset, replacement in replacements:
        data[offset : offset + len(replacement)] = replacement

    if replacements:
        path.write_bytes(data)
        print(
            f"Patched {len(replacements)} Smartisan-only window animation "
            f"references in {path}"
        )
        return True

    print(f"Already patched: {path}")
    return False


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("resources_arsc", type=Path)
    parser.add_argument(
        "--check",
        action="store_true",
        help="verify that all affected entries are already @null",
    )
    args = parser.parse_args()

    if not args.resources_arsc.is_file():
        parser.error(f"file not found: {args.resources_arsc}")

    patch_resource_table(args.resources_arsc, args.check)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
