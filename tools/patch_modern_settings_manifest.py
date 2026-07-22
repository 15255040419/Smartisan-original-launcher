"""Patch the preserved binary manifest with the modern settings activity entries.

The script keeps the binary Manifest aligned with the actual modern settings
Activity set, including removal of retired private pages.
"""

from pathlib import Path
import struct

from patch_badge_service_manifest import (
    ANDROID_NS, NO_INDEX, attribute, build_pool, end_element, read_pool,
    start_element, u16, u32,
)

MANIFEST = Path(__file__).resolve().parents[1] / "launcher" / "original" / "AndroidManifest.xml"

# All modern settings activities that must appear in the binary Manifest.
MODERN_ACTIVITIES = [
    "com.smartisanos.launcher.settings.SettingsMainActivity",
    "com.smartisanos.launcher.settings.AboutActivity",
    "com.smartisanos.launcher.settings.AdditionalFeaturesActivity",   # Phase 2
    "com.smartisanos.launcher.settings.ThemeWallpaperActivity",        # Phase 4
    "com.smartisanos.launcher.settings.AppIconsActivity",              # Phase 5
    "com.smartisanos.launcher.settings.DynamicIconSettingsActivity",   # Phase 7
    "com.smartisanos.launcher.settings.ProfileAppsSettingsActivity",   # Phase 8
    "com.smartisanos.launcher.settings.PrivacySettingsActivity",       # Phase 8
    "com.smartisanos.launcher.settings.PageFlipSettingsActivity",
]

# Rebuild the modern entries on every build.  Older builds have the same names
# but not the common settings taskAffinity, so merely detecting a name is not
# sufficient to keep the binary manifest aligned with the text manifest.
RETIRED_ACTIVITIES = {
    "com.smartisanos.launcher.settings.OperationLogActivity",
} | set(MODERN_ACTIVITIES)


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
    exported_attr = index("exported")
    exclude_attr = index("excludeFromRecents")
    launch_mode_attr = index("launchMode")
    screen_orient_attr = index("screenOrientation")
    theme_attr = index("theme")
    affinity_attr = index("taskAffinity")

    act_indices = {act: index(act) for act in MODERN_ACTIVITIES}

    false_value = index("false")
    true_value = index("true")
    standard_theme = 0x7f0c015f  # @style/Theme.Settings style reference ID
    settings_affinity = index("com.android.settings")

    old_tail = data[pool_start + pool_size:]
    new_pool = build_pool(strings, flags)
    rebuilt = bytearray(data[:pool_start] + new_pool + old_tail)

    def activity_name_at(offset):
        attrs, size, count = offset + 36, u16(rebuilt, offset + 26), u16(rebuilt, offset + 28)
        for item in range(count):
            current = attrs + item * size
            if u32(rebuilt, current) == android_ns and u32(rebuilt, current + 4) == name_attr:
                value_index = u32(rebuilt, current + 8)
                if value_index != NO_INDEX and value_index < len(strings):
                    return strings[value_index]
        return None

    def remove_retired_activities():
        spans = []
        pos = pool_start + len(new_pool)
        while pos < len(rebuilt):
            chunk_type, chunk_size = u16(rebuilt, pos), u32(rebuilt, pos + 4)
            if chunk_type == 0x0102 and u32(rebuilt, pos + 20) == activity_tag \
                    and activity_name_at(pos) in RETIRED_ACTIVITIES:
                end = pos + chunk_size
                depth = 1
                while end < len(rebuilt) and depth > 0:
                    nested_type, nested_size = u16(rebuilt, end), u32(rebuilt, end + 4)
                    if nested_type == 0x0102 and u32(rebuilt, end + 20) == activity_tag:
                        depth += 1
                    elif nested_type == 0x0103 and u32(rebuilt, end + 20) == activity_tag:
                        depth -= 1
                    end += nested_size
                if depth != 0:
                    raise ValueError("retired activity end element not found")
                spans.append((pos, end))
                pos = end
                continue
            pos += chunk_size
        for start, end in reversed(spans):
            del rebuilt[start:end]
        return bool(spans)

    removed_retired = remove_retired_activities()

    # Collect the set of already-registered activities.
    registered = set()
    pos = pool_start + len(new_pool)
    application_end = None
    while pos < len(rebuilt):
        chunk_type, chunk_size = u16(rebuilt, pos), u32(rebuilt, pos + 4)
        if chunk_type == 0x0102 and u32(rebuilt, pos + 20) == activity_tag:
            attrs, size, count = pos + 36, u16(rebuilt, pos + 26), u16(rebuilt, pos + 28)
            for offset in range(count):
                current = attrs + offset * size
                if u32(rebuilt, current) == android_ns and u32(rebuilt, current + 4) == name_attr:
                    name_idx = u32(rebuilt, current + 8)
                    for act_name, act_idx in act_indices.items():
                        if name_idx == act_idx:
                            registered.add(act_name)
        elif chunk_type == 0x0103 and u32(rebuilt, pos + 20) == application_tag:
            application_end = pos
            break
        pos += chunk_size

    missing = [act for act in MODERN_ACTIVITIES if act not in registered]
    if not missing and not removed_retired:
        print("all modern settings activities already present in binary manifest")
        return

    if application_end is None:
        raise ValueError("application end element not found")

    activities_xml = b""
    for act_name in missing:
        act_idx = act_indices[act_name]
        activities_xml += start_element(activity_tag, [
            attribute(android_ns, name_attr, act_idx),
            attribute(android_ns, exported_attr, false_value, 0x12, 0),
            attribute(android_ns, theme_attr, NO_INDEX, 0x01, standard_theme),
            attribute(android_ns, affinity_attr, settings_affinity),
            attribute(android_ns, exclude_attr, true_value, 0x12, 0xFFFFFFFF),
            attribute(android_ns, launch_mode_attr, NO_INDEX, 0x10, 1),
            attribute(android_ns, screen_orient_attr, NO_INDEX, 0x10, 1),
        ]) + end_element(activity_tag)

    rebuilt[application_end:application_end] = activities_xml

    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    MANIFEST.write_bytes(rebuilt)
    print("patched modern settings manifest", MANIFEST)
    print("replaced retired/modern activities:", removed_retired)
    print("added activities:", missing)


if __name__ == "__main__":
    main()
