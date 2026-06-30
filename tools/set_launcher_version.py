"""Synchronize the launcher version across source and preserved binary metadata."""

from pathlib import Path
import re
import struct
import sys

from patch_badge_service_manifest import NO_INDEX, build_pool, read_pool, u16, u32


ROOT = Path(__file__).resolve().parents[1]
TEXT_MANIFEST = ROOT / "launcher" / "AndroidManifest.xml"
BINARY_MANIFEST = ROOT / "launcher" / "original" / "AndroidManifest.xml"
SETTINGS_STRINGS = (
    ROOT
    / "launcher"
    / "tools"
    / "maintained_settings_res"
    / "res"
    / "values"
    / "strings.xml"
)
ANDROID_NS = "http://schemas.android.com/apk/res/android"


def replace_once(path: Path, pattern: str, replacement: str) -> None:
    source = path.read_text(encoding="utf-8")
    updated, count = re.subn(pattern, replacement, source, count=1)
    if count != 1:
        raise RuntimeError(f"expected one version field in {path}, found {count}")
    path.write_text(updated, encoding="utf-8")


def patch_binary_manifest(version_name: str, version_code: int) -> None:
    data = bytearray(BINARY_MANIFEST.read_bytes())
    pool_start, pool_size, strings, flags = read_pool(data)

    try:
        manifest_name = strings.index("manifest")
        version_code_name = strings.index("versionCode")
        version_name_name = strings.index("versionName")
        android_ns = strings.index(ANDROID_NS)
    except ValueError as error:
        raise RuntimeError(f"required AXML string is missing: {error}") from error

    old_version_name_index = None
    version_code_offset = None
    pos = pool_start + pool_size
    while pos < len(data):
        chunk_type = u16(data, pos)
        chunk_size = u32(data, pos + 4)
        if chunk_size < 8:
            raise RuntimeError("invalid AXML chunk size")
        if chunk_type == 0x0102 and u32(data, pos + 20) == manifest_name:
            attr_start = u16(data, pos + 24)
            attr_size = u16(data, pos + 26)
            attr_count = u16(data, pos + 28)
            attrs = pos + 16 + attr_start
            for index in range(attr_count):
                current = attrs + index * attr_size
                if u32(data, current) != android_ns:
                    continue
                name_index = u32(data, current + 4)
                if name_index == version_code_name:
                    version_code_offset = current + 16
                elif name_index == version_name_name:
                    old_version_name_index = u32(data, current + 8)
            break
        pos += chunk_size

    if version_code_offset is None or old_version_name_index in (None, NO_INDEX):
        raise RuntimeError("versionCode/versionName attributes were not found")

    strings[old_version_name_index] = version_name
    new_pool = build_pool(strings, flags)
    rebuilt = bytearray(data[:pool_start] + new_pool + data[pool_start + pool_size :])
    version_code_offset += len(new_pool) - pool_size
    struct.pack_into("<I", rebuilt, version_code_offset, version_code)
    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    BINARY_MANIFEST.write_bytes(rebuilt)


def main() -> None:
    if len(sys.argv) != 3:
        raise SystemExit("usage: set_launcher_version.py <versionName> <versionCode>")

    version_name = sys.argv[1]
    version_code = int(sys.argv[2])
    display_version = version_name.removeprefix("v")

    replace_once(
        TEXT_MANIFEST,
        r'android:versionCode="\d+" android:versionName="[^"]+"',
        f'android:versionCode="{version_code}" android:versionName="{version_name}"',
    )
    replace_once(
        SETTINGS_STRINGS,
        r'<string name="more_current_version_txt">[^<]+</string>',
        f'<string name="more_current_version_txt">{display_version}</string>',
    )
    patch_binary_manifest(version_name, version_code)
    print(f"launcher version synchronized: {version_name} / {version_code}")


if __name__ == "__main__":
    main()
