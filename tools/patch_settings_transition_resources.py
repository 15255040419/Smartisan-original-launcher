#!/usr/bin/env python3
"""Install the two launcher-owned settings Activity transition resources.

The launcher keeps its original binary resources.arsc because rebuilding the
whole table requires Smartisan framework package 0x02. Two semantically
matching, unreferenced anim slots are therefore renamed in-place while keeping
their stable IDs, and aapt2 supplies fresh binary XML payloads.
"""

from __future__ import annotations

import argparse
import struct
import subprocess
import tempfile
import zipfile
from pathlib import Path


RES_STRING_POOL_TYPE = 0x0001
RES_TABLE_TYPE = 0x0002
RES_TABLE_PACKAGE_TYPE = 0x0200
UTF8_FLAG = 0x00000100
SORTED_FLAG = 0x00000001

RENAMES = {
    "slide_in_from_bottom": "settings_enter",
    "slide_out_to_bottom": "settings_exit",
    "res/anim/slide_in_from_bottom.xml": "res/anim/settings_enter.xml",
    "res/anim/slide_out_to_bottom.xml": "res/anim/settings_exit.xml",
}


def u16(data: bytes, offset: int) -> int:
    return struct.unpack_from("<H", data, offset)[0]


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def encode_length8(value: int) -> bytes:
    if value > 0x7FFF:
        raise ValueError("UTF-8 string length is too large")
    if value > 0x7F:
        return bytes(((value >> 8) | 0x80, value & 0xFF))
    return bytes((value,))


def decode_length8(data: bytes, offset: int) -> tuple[int, int]:
    first = data[offset]
    if first & 0x80:
        return ((first & 0x7F) << 8) | data[offset + 1], offset + 2
    return first, offset + 1


def encode_length16(value: int) -> bytes:
    if value > 0x7FFFFFFF:
        raise ValueError("UTF-16 string length is too large")
    if value > 0x7FFF:
        return struct.pack("<HH", (value >> 16) | 0x8000, value & 0xFFFF)
    return struct.pack("<H", value)


def decode_length16(data: bytes, offset: int) -> tuple[int, int]:
    first = u16(data, offset)
    if first & 0x8000:
        return ((first & 0x7FFF) << 16) | u16(data, offset + 2), offset + 4
    return first, offset + 2


def decode_pool_string(chunk: bytes, absolute_offset: int, utf8: bool) -> str:
    if utf8:
        _, pos = decode_length8(chunk, absolute_offset)
        byte_length, pos = decode_length8(chunk, pos)
        return chunk[pos : pos + byte_length].decode("utf-8")
    unit_length, pos = decode_length16(chunk, absolute_offset)
    return chunk[pos : pos + unit_length * 2].decode("utf-16le")


def encode_pool_string(value: str, utf8: bool) -> bytes:
    if utf8:
        encoded = value.encode("utf-8")
        utf16_units = len(value.encode("utf-16le")) // 2
        return encode_length8(utf16_units) + encode_length8(len(encoded)) + encoded + b"\0"
    encoded = value.encode("utf-16le")
    return encode_length16(len(encoded) // 2) + encoded + b"\0\0"


def patch_string_pool(chunk: bytes, counts: dict[str, int]) -> bytes:
    header_size = u16(chunk, 2)
    chunk_size = u32(chunk, 4)
    string_count = u32(chunk, 8)
    style_count = u32(chunk, 12)
    flags = u32(chunk, 16)
    strings_start = u32(chunk, 20)
    styles_start = u32(chunk, 24)
    utf8 = bool(flags & UTF8_FLAG)

    string_offsets = [u32(chunk, header_size + i * 4) for i in range(string_count)]
    style_offset_start = header_size + string_count * 4
    style_offsets = [u32(chunk, style_offset_start + i * 4) for i in range(style_count)]
    strings = [decode_pool_string(chunk, strings_start + offset, utf8)
               for offset in string_offsets]

    changed = False
    for index, value in enumerate(strings):
        if value in RENAMES:
            counts[value] += 1
            strings[index] = RENAMES[value]
            changed = True
        elif value in RENAMES.values():
            counts[value] += 1

    if not changed:
        return chunk[:chunk_size]

    encoded_strings = bytearray()
    new_offsets = []
    for value in strings:
        new_offsets.append(len(encoded_strings))
        encoded_strings.extend(encode_pool_string(value, utf8))
    while len(encoded_strings) % 4:
        encoded_strings.append(0)

    offsets_blob = b"".join(struct.pack("<I", value) for value in new_offsets)
    style_offsets_blob = b"".join(struct.pack("<I", value) for value in style_offsets)
    new_strings_start = header_size + len(offsets_blob) + len(style_offsets_blob)
    style_blob = chunk[styles_start:chunk_size] if styles_start else b""
    new_styles_start = new_strings_start + len(encoded_strings) if styles_start else 0

    header = bytearray(chunk[:header_size])
    struct.pack_into("<I", header, 16, flags & ~SORTED_FLAG)
    struct.pack_into("<I", header, 20, new_strings_start)
    struct.pack_into("<I", header, 24, new_styles_start)
    rebuilt = header + offsets_blob + style_offsets_blob + encoded_strings + style_blob
    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    return bytes(rebuilt)


def patch_container(chunk: bytes, counts: dict[str, int]) -> bytes:
    chunk_type = u16(chunk, 0)
    header_size = u16(chunk, 2)
    chunk_size = u32(chunk, 4)
    if chunk_type == RES_STRING_POOL_TYPE:
        return patch_string_pool(chunk[:chunk_size], counts)
    if chunk_type not in (RES_TABLE_TYPE, RES_TABLE_PACKAGE_TYPE):
        return chunk[:chunk_size]

    rebuilt = bytearray(chunk[:header_size])
    offset = header_size
    while offset < chunk_size:
        child_size = u32(chunk, offset + 4)
        if child_size <= 0 or offset + child_size > chunk_size:
            raise RuntimeError(f"Invalid resource child chunk at 0x{offset:x}")
        rebuilt.extend(patch_container(chunk[offset : offset + child_size], counts))
        offset += child_size
    if offset != chunk_size:
        raise RuntimeError("Resource child chunks do not fill their parent")
    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    return bytes(rebuilt)


def patch_resource_table(path: Path) -> None:
    original = path.read_bytes()
    if u16(original, 0) != RES_TABLE_TYPE:
        raise RuntimeError(f"Not an Android resources table: {path}")
    counts = {value: 0 for value in (*RENAMES.keys(), *RENAMES.values())}
    patched = patch_container(original, counts)
    for old, new in RENAMES.items():
        old_count = counts[old]
        new_count = counts[new]
        if (old_count, new_count) not in ((1, 0), (0, 1)):
            raise RuntimeError(
                f"Unexpected resource-string state for {old} -> {new}: "
                f"old={old_count}, new={new_count}"
            )
    if patched != original:
        path.write_bytes(patched)
        print(f"Patched settings transition names in {path}")
    else:
        print(f"Already patched: {path}")


def compile_binary_xml(aapt2: Path, android_jar: Path, source_root: Path,
                       output_dir: Path) -> None:
    with tempfile.TemporaryDirectory(prefix="settings-transition-") as temp_name:
        temp = Path(temp_name)
        compiled = temp / "compiled.zip"
        resource_apk = temp / "resources.apk"
        subprocess.run(
            [str(aapt2), "compile", "--dir", str(source_root / "res"), "-o", str(compiled)],
            check=True,
        )
        subprocess.run(
            [str(aapt2), "link", "--manifest", str(source_root / "AndroidManifest.xml"),
             "-I", str(android_jar), "-o", str(resource_apk), str(compiled)],
            check=True,
        )
        output_dir.mkdir(parents=True, exist_ok=True)
        with zipfile.ZipFile(resource_apk) as archive:
            for name in ("settings_enter", "settings_exit"):
                # aapt2 emits a compatibility stub plus the real attribute-bearing
                # payload in anim-v1 when linking a minimal resource package.
                entry = f"res/anim-v1/{name}.xml"
                (output_dir / f"{name}.xml").write_bytes(archive.read(entry))
                print(f"Wrote binary res/anim/{name}.xml from {entry}")


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--aapt2", required=True, type=Path)
    parser.add_argument("--android-jar", required=True, type=Path)
    parser.add_argument("--launcher", type=Path, default=Path("launcher"))
    parser.add_argument("--source", type=Path, default=Path("tools/settings_transition_res"))
    args = parser.parse_args()

    for required in (args.aapt2, args.android_jar,
                     args.launcher / "resources.arsc", args.source / "AndroidManifest.xml"):
        if not required.is_file():
            parser.error(f"file not found: {required}")

    patch_resource_table(args.launcher / "resources.arsc")
    compile_binary_xml(
        args.aapt2,
        args.android_jar,
        args.source,
        args.launcher / "unknown/res/anim",
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
