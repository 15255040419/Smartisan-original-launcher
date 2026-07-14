"""Add REQUEST_DELETE_PACKAGES to the preserved binary AndroidManifest.xml."""

from pathlib import Path
import struct

from patch_badge_service_manifest import (
    ANDROID_NS,
    attribute,
    build_pool,
    end_element,
    read_pool,
    start_element,
    u16,
    u32,
)


MANIFEST = Path(__file__).resolve().parents[1] / "launcher" / "original" / "AndroidManifest.xml"
PERMISSION = "android.permission.REQUEST_DELETE_PACKAGES"


def main():
    data = bytearray(MANIFEST.read_bytes())
    pool_start, pool_size, strings, flags = read_pool(data)
    if PERMISSION in strings:
        print("request delete packages permission already present")
        return

    def index(value):
        try:
            return strings.index(value)
        except ValueError:
            strings.append(value)
            return len(strings) - 1

    android_ns = index(ANDROID_NS)
    permission_value = index(PERMISSION)
    uses_permission_tag = index("uses-permission")
    application_tag = index("application")
    name_attr = index("name")

    new_pool = build_pool(strings, flags)
    rebuilt = bytearray(data[:pool_start] + new_pool + data[pool_start + pool_size:])

    insert_at = None
    pos = pool_start + len(new_pool)
    while pos < len(rebuilt):
        chunk_type = u16(rebuilt, pos)
        chunk_size = u32(rebuilt, pos + 4)
        if chunk_size < 8:
            raise ValueError("invalid AXML chunk")
        if chunk_type == 0x0102 and u32(rebuilt, pos + 20) == application_tag:
            insert_at = pos
            break
        pos += chunk_size

    if insert_at is None:
        raise ValueError("application start element not found")

    uses_permission = start_element(
        uses_permission_tag,
        [attribute(android_ns, name_attr, permission_value)],
    )
    uses_permission += end_element(uses_permission_tag)

    rebuilt[insert_at:insert_at] = uses_permission
    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    MANIFEST.write_bytes(rebuilt)
    print("patched request delete packages permission", MANIFEST, "size", len(rebuilt))


if __name__ == "__main__":
    main()
