"""Add the private opaque reload transition Activity to the preserved binary AXML."""

from pathlib import Path
import struct

from patch_badge_service_manifest import (
    ANDROID_NS, attribute, build_pool, end_element, read_pool, start_element, u16, u32,
)

MANIFEST = Path(__file__).resolve().parents[1] / "launcher" / "original" / "AndroidManifest.xml"
ACTIVITY = "com.smartisanos.launcher.reload.ReloadTransitionActivity"


def main():
    data = bytearray(MANIFEST.read_bytes())
    pool_start, pool_size, strings, flags = read_pool(data)
    activity_exists = ACTIVITY in strings

    def index(value):
        try:
            return strings.index(value)
        except ValueError:
            strings.append(value)
            return len(strings) - 1

    android_ns = index(ANDROID_NS)
    activity_tag = index("activity")
    application_tag = index("application")
    name_attr = index("name")
    theme_attr = index("theme")
    process_attr = index("process")
    exported_attr = index("exported")
    exclude_attr = index("excludeFromRecents")
    affinity_attr = index("taskAffinity")
    orientation_attr = index("screenOrientation")
    activity_value = index(ACTIVITY)
    theme_value = index("@android:style/Theme.NoTitleBar.Fullscreen")
    process_value = index(":reload")
    affinity_value = index("com.smartisanos.launcher.reload")
    false_value = index("false")
    true_value = index("true")
    portrait_value = index("portrait")

    new_pool = build_pool(strings, flags)
    rebuilt = bytearray(data[:pool_start] + new_pool + data[pool_start + pool_size:])
    insert_at = None
    pos = pool_start + len(new_pool)
    while pos < len(rebuilt):
        chunk_type = u16(rebuilt, pos)
        chunk_size = u32(rebuilt, pos + 4)
        if chunk_type == 0x0103 and u32(rebuilt, pos + 20) == application_tag:
            insert_at = pos
            break
        if chunk_size < 8:
            raise ValueError("invalid AXML chunk")
        pos += chunk_size
    if insert_at is None:
        raise ValueError("application end element not found")

    activity = start_element(activity_tag, [
        attribute(android_ns, theme_attr, theme_value, 0x01, 0x01030007),
        attribute(android_ns, name_attr, activity_value),
        attribute(android_ns, process_attr, process_value),
        attribute(android_ns, exported_attr, false_value, 0x12, 0),
        attribute(android_ns, exclude_attr, true_value, 0x12, 0xFFFFFFFF),
        attribute(android_ns, affinity_attr, affinity_value),
        attribute(android_ns, orientation_attr, portrait_value, 0x10, 1),
    ]) + end_element(activity_tag)
    if not activity_exists:
        rebuilt[insert_at:insert_at] = activity
    else:
        activity_at = None
        pos = pool_start + len(new_pool)
        while pos < len(rebuilt):
            chunk_type = u16(rebuilt, pos)
            chunk_size = u32(rebuilt, pos + 4)
            if chunk_type == 0x0102 and u32(rebuilt, pos + 20) == activity_tag:
                count = u16(rebuilt, pos + 28)
                attrs = pos + 36
                is_reload = False
                has_orientation = False
                for offset in range(count):
                    attr = attrs + offset * 20
                    if u32(rebuilt, attr + 4) == name_attr and u32(rebuilt, attr + 16) == activity_value:
                        is_reload = True
                    if u32(rebuilt, attr + 4) == orientation_attr:
                        has_orientation = True
                if is_reload:
                    activity_at = pos
                    if not has_orientation:
                        attrs_copy = [bytes(rebuilt[attrs + offset * 20:attrs + (offset + 1) * 20])
                                     for offset in range(count)]
                        replacement = start_element(activity_tag, attrs_copy + [
                            attribute(android_ns, orientation_attr, portrait_value, 0x10, 1),
                        ], u32(rebuilt, pos + 8))
                        rebuilt[pos:pos + chunk_size] = replacement
                    break
            if chunk_size < 8:
                raise ValueError("invalid AXML chunk")
            pos += chunk_size
        if activity_at is None:
            raise ValueError("existing reload transition Activity not found")
    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    MANIFEST.write_bytes(rebuilt)
    print("patched reload transition Activity", MANIFEST, "size", len(rebuilt))


if __name__ == "__main__":
    main()
