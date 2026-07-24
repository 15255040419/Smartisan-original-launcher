"""Patch the preserved binary manifest with the single modern pin-shortcut entry."""

from pathlib import Path
import struct

from patch_badge_service_manifest import (
    ANDROID_NS, NO_INDEX, attribute, build_pool, end_element, read_pool,
    start_element, u16, u32,
)

MANIFEST = Path(__file__).resolve().parents[1] / "launcher" / "original" / "AndroidManifest.xml"
OLD_ACTIVITY = "com.smartisanos.launcher.PinShortcutActivity"
CONFIRM_ACTIVITY = "com.smartisanos.launcher.PinShortcutConfirmActivity"
LAUNCH_ACTIVITY = "com.smartisanos.launcher.ShortcutLaunchActivity"
ACTION_CONFIRM = "android.content.pm.action.CONFIRM_PIN_SHORTCUT"
VISIBLE_CONFIRM_THEME = 0x01030010  # @android:style/Theme.Translucent.NoTitleBar
TYPE_REFERENCE = 0x01


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
    intent_filter_tag = index("intent-filter")
    action_tag = index("action")
    category_tag = index("category")
    name_attr = index("name")
    exported_attr = index("exported")
    exclude_attr = index("excludeFromRecents")
    launch_mode_attr = index("launchMode")
    theme_attr = index("theme")
    old_activity = index(OLD_ACTIVITY)
    confirm_activity = index(CONFIRM_ACTIVITY)
    launch_activity = index(LAUNCH_ACTIVITY)
    confirm_action = index(ACTION_CONFIRM)
    default_category = index("android.intent.category.DEFAULT")
    true_value = index("true")
    false_value = index("false")
    single_top = index("singleTop")

    old_tail = data[pool_start + pool_size:]
    new_pool = build_pool(strings, flags)
    rebuilt = bytearray(data[:pool_start] + new_pool + old_tail)
    pos = pool_start + len(new_pool)
    confirm_start = None
    launch_exists = False
    while pos < len(rebuilt):
        chunk_type, chunk_size = u16(rebuilt, pos), u32(rebuilt, pos + 4)
        if chunk_size < 8:
            raise ValueError("invalid AXML chunk")
        if chunk_type == 0x0102 and u32(rebuilt, pos + 20) == activity_tag:
            attrs, size, count = pos + 36, u16(rebuilt, pos + 26), u16(rebuilt, pos + 28)
            component = NO_INDEX
            for offset in range(count):
                current = attrs + offset * size
                if u32(rebuilt, current) == android_ns and u32(rebuilt, current + 4) == name_attr:
                    component = u32(rebuilt, current + 8)
                    if component == old_activity:
                        struct.pack_into("<I", rebuilt, current + 8, confirm_activity)
                        struct.pack_into("<I", rebuilt, current + 16, confirm_activity)
                        confirm_start = pos
                        component = confirm_activity
                    elif component == confirm_activity:
                        confirm_start = pos
            if component == launch_activity:
                launch_exists = True
        pos += chunk_size
    if confirm_start is None:
        raise ValueError("original PinShortcutActivity not found")

    # Keep the exported protocol owner out of recents and serialise onNewIntent requests.
    attrs, size, count = confirm_start + 36, u16(rebuilt, confirm_start + 26), u16(rebuilt, confirm_start + 28)
    present = {u32(rebuilt, attrs + offset * size + 4) for offset in range(count)}
    theme_patched = False
    for offset in range(count):
        current = attrs + offset * size
        attr_name = u32(rebuilt, current + 4)
        if attr_name == theme_attr:
            # The original component was a no-display transit activity.  The
            # confirmation implementation owns an AlertDialog, so it needs a
            # visible translucent window instead.
            struct.pack_into("<I", rebuilt, current + 8, NO_INDEX)
            rebuilt[current + 15] = TYPE_REFERENCE
            struct.pack_into("<I", rebuilt, current + 16, VISIBLE_CONFIRM_THEME)
            theme_patched = True
        if attr_name == launch_mode_attr:
            # android:launchMode is an enum. A raw string looks valid to
            # aapt2 dump but Android's package parser rejects it on install.
            struct.pack_into("<I", rebuilt, current + 8, single_top)
            rebuilt[current + 15] = 0x10
            struct.pack_into("<I", rebuilt, current + 16, 1)
    additions = []
    if not theme_patched:
        additions.append(attribute(android_ns, theme_attr, NO_INDEX, TYPE_REFERENCE, VISIBLE_CONFIRM_THEME))
    if exclude_attr not in present:
        additions.append(attribute(android_ns, exclude_attr, true_value, 0x12, 0xFFFFFFFF))
    if launch_mode_attr not in present:
        additions.append(attribute(android_ns, launch_mode_attr, single_top, 0x10, 1))
    if additions:
        insert_attrs = attrs + count * size
        rebuilt[insert_attrs:insert_attrs] = b"".join(additions)
        struct.pack_into("<I", rebuilt, confirm_start + 4, u32(rebuilt, confirm_start + 4) + sum(map(len, additions)))
        struct.pack_into("<H", rebuilt, confirm_start + 28, count + len(additions))

    # Add the explicit default category immediately before this Activity's first intent-filter end.
    pos = confirm_start
    depth = 0
    category_present = False
    insert_at = None
    while pos < len(rebuilt):
        chunk_type, chunk_size = u16(rebuilt, pos), u32(rebuilt, pos + 4)
        name = u32(rebuilt, pos + 20) if chunk_type in (0x0102, 0x0103) else NO_INDEX
        if chunk_type == 0x0102:
            depth += 1
            if name == category_tag:
                category_present = True
        elif chunk_type == 0x0103:
            if name == intent_filter_tag and depth == 2 and not category_present:
                insert_at = pos
                break
            depth -= 1
            if depth == 0:
                break
        pos += chunk_size
    if insert_at is None and not category_present:
        raise ValueError("PinShortcutActivity intent-filter not found")
    if insert_at is not None:
        category = start_element(category_tag, [attribute(android_ns, name_attr, default_category)])
        category += end_element(category_tag)
        rebuilt[insert_at:insert_at] = category

    if not launch_exists:
        pos = pool_start + len(new_pool)
        application_end = None
        while pos < len(rebuilt):
            chunk_type, chunk_size = u16(rebuilt, pos), u32(rebuilt, pos + 4)
            if chunk_type == 0x0103 and u32(rebuilt, pos + 20) == application_tag:
                application_end = pos
                break
            pos += chunk_size
        if application_end is None:
            raise ValueError("application end element not found")
        activity = start_element(activity_tag, [
            attribute(android_ns, name_attr, launch_activity),
            attribute(android_ns, exported_attr, false_value, 0x12, 0),
            attribute(android_ns, exclude_attr, true_value, 0x12, 0xFFFFFFFF),
        ]) + end_element(activity_tag)
        rebuilt[application_end:application_end] = activity

    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    MANIFEST.write_bytes(rebuilt)
    print("patched pin shortcut manifest", MANIFEST, "size", len(rebuilt))


if __name__ == "__main__":
    main()
