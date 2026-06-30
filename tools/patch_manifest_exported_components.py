"""Add explicit android:exported to legacy components with intent filters."""

from pathlib import Path
import struct

from patch_badge_service_manifest import (
    NO_INDEX, attribute, build_pool, read_pool, u16, u32,
)


MANIFEST = Path(__file__).resolve().parents[1] / "launcher" / "original" / "AndroidManifest.xml"
ANDROID_NS = "http://schemas.android.com/apk/res/android"
TARGETS = {
    "com.smartisanos.launcher.Launcher",
    "com.smartisanos.launcher.PinShortcutActivity",
    "com.smartisanos.launcher.receiver.LauncherReceiver",
    "com.smartisanos.launcher.receiver.DataSyncReceiver",
    "com.smartisanos.launcher.receiver.DataDumpReceiver",
}


def main():
    data = bytearray(MANIFEST.read_bytes())
    pool_start, pool_size, strings, flags = read_pool(data)

    def index(value):
        try:
            return strings.index(value)
        except ValueError:
            strings.append(value)
            return len(strings) - 1

    android_ns = index(ANDROID_NS)
    name_attr = index("name")
    exported_attr = index("exported")
    true_value = index("true")
    target_indices = {index(value) for value in TARGETS}

    new_pool = build_pool(strings, flags)
    rebuilt = bytearray(data[:pool_start] + new_pool + data[pool_start + pool_size:])
    pos = pool_start + len(new_pool)
    changed = 0
    while pos < len(rebuilt):
        chunk_type = u16(rebuilt, pos)
        chunk_size = u32(rebuilt, pos + 4)
        if chunk_size < 8:
            raise ValueError("invalid AXML chunk")
        if chunk_type == 0x0102:
            attr_start = u16(rebuilt, pos + 24)
            attr_size = u16(rebuilt, pos + 26)
            attr_count = u16(rebuilt, pos + 28)
            attrs = pos + 16 + attr_start
            component_name = NO_INDEX
            has_exported = False
            for offset in range(attr_count):
                current = attrs + offset * attr_size
                attr_ns = u32(rebuilt, current)
                attr_name = u32(rebuilt, current + 4)
                raw_value = u32(rebuilt, current + 8)
                if attr_ns == android_ns and attr_name == name_attr:
                    component_name = raw_value
                if attr_ns == android_ns and attr_name == exported_attr:
                    has_exported = True
            if component_name in target_indices and not has_exported:
                encoded = attribute(android_ns, exported_attr, true_value, 0x12, 1)
                insert_at = attrs + attr_count * attr_size
                rebuilt[insert_at:insert_at] = encoded
                chunk_size += len(encoded)
                struct.pack_into("<I", rebuilt, pos + 4, chunk_size)
                struct.pack_into("<H", rebuilt, pos + 28, attr_count + 1)
                changed += 1
        pos += chunk_size

    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    MANIFEST.write_bytes(rebuilt)
    print("patched", changed, "component exported attributes")


if __name__ == "__main__":
    main()
