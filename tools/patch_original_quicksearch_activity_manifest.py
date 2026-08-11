"""Add the non-exported Q6 Original QuickSearch Preview Activity to preserved AXML."""

from pathlib import Path
import struct

from patch_badge_service_manifest import (
    ANDROID_NS, attribute, build_pool, end_element, read_pool, start_element, u16, u32,
)

MANIFEST = Path(__file__).resolve().parents[1] / "launcher" / "original" / "AndroidManifest.xml"
ACTIVITY = "com.smartisanos.launcher.quicksearch.ui.OriginalQuickSearchActivity"


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
    activity_tag = index("activity")
    application_tag = index("application")
    name_attr = index("name")
    theme_attr = index("theme")
    exported_attr = index("exported")
    exclude_attr = index("excludeFromRecents")
    launch_mode_attr = index("launchMode")
    orientation_attr = index("screenOrientation")
    soft_input_attr = index("windowSoftInputMode")
    disable_preview_attr = index("windowDisablePreview")
    activity_value = index(ACTIVITY)
    theme_value = index("@android:style/Theme.Translucent.NoTitleBar")
    false_value = index("false")
    true_value = index("true")
    single_task_value = index("singleTask")
    portrait_value = index("portrait")
    adjust_nothing_value = index("adjustNothing")

    new_pool = build_pool(strings, flags)
    rebuilt = bytearray(data[:pool_start] + new_pool + data[pool_start + pool_size:])
    insert_at = None
    existing_start = None
    existing_end = None
    pos = pool_start + len(new_pool)
    while pos < len(rebuilt):
        chunk_type = u16(rebuilt, pos)
        chunk_size = u32(rebuilt, pos + 4)
        if chunk_type == 0x0102 and u32(rebuilt, pos + 20) == activity_tag:
            count = u16(rebuilt, pos + 28)
            attrs = pos + 36
            for offset in range(count):
                attr = attrs + offset * 20
                if (u32(rebuilt, attr + 4) == name_attr
                        and u32(rebuilt, attr + 16) == activity_value):
                    existing_start = pos
                    break
        if (existing_start is not None and existing_end is None and chunk_type == 0x0103
                and u32(rebuilt, pos + 20) == activity_tag):
            existing_end = pos
        if chunk_type == 0x0103 and u32(rebuilt, pos + 20) == application_tag:
            insert_at = pos
            break
        if chunk_size < 8:
            raise ValueError("invalid AXML chunk")
        pos += chunk_size
    if insert_at is None:
        raise ValueError("application end element not found")

    if existing_start is not None:
        if existing_end is None:
            raise ValueError("OriginalQuickSearchActivity end element not found")
        end_size = u32(rebuilt, existing_end + 4)
        removed = existing_end + end_size - existing_start
        del rebuilt[existing_start:existing_end + end_size]
        if existing_start < insert_at:
            insert_at -= removed

    activity = start_element(activity_tag, [
        attribute(android_ns, theme_attr, theme_value, 0x01, 0x01030010),
        attribute(android_ns, name_attr, activity_value),
        attribute(android_ns, exported_attr, false_value, 0x12, 0),
        attribute(android_ns, exclude_attr, true_value, 0x12, 0xFFFFFFFF),
        attribute(android_ns, launch_mode_attr, single_task_value, 0x10, 2),
        attribute(android_ns, orientation_attr, portrait_value, 0x10, 1),
        attribute(android_ns, soft_input_attr, adjust_nothing_value, 0x10, 0x30),
        attribute(android_ns, disable_preview_attr, true_value, 0x12, 0xFFFFFFFF),
    ]) + end_element(activity_tag)
    rebuilt[insert_at:insert_at] = activity

    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    MANIFEST.write_bytes(rebuilt)
    print("patched OriginalQuickSearchActivity", MANIFEST, "size", len(rebuilt),
          "replaced", existing_start is not None)


if __name__ == "__main__":
    main()
