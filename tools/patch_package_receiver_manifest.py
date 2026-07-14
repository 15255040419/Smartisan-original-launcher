"""Add package install/remove broadcasts to the preserved binary AndroidManifest.xml."""

from pathlib import Path
import struct

from patch_badge_service_manifest import (
    NO_INDEX, ANDROID_NS, attribute, build_pool, end_element, read_pool,
    start_element, u16, u32,
)

MANIFEST = Path(__file__).resolve().parents[1] / "launcher" / "original" / "AndroidManifest.xml"
RECEIVER = "com.smartisanos.launcher.receiver.LauncherReceiver"
ACTIONS = (
    "android.intent.action.PACKAGE_ADDED",
    "android.intent.action.PACKAGE_CHANGED",
    "android.intent.action.PACKAGE_REMOVED",
    "android.intent.action.PACKAGE_REPLACED",
)


def main():
    data = bytearray(MANIFEST.read_bytes())
    pool_start, pool_size, strings, flags = read_pool(data)
    if all(action in strings for action in ACTIONS):
        print("package receiver actions already present")
        return

    def index(value):
        try:
            return strings.index(value)
        except ValueError:
            strings.append(value)
            return len(strings) - 1

    android_ns = index(ANDROID_NS)
    receiver_value = index(RECEIVER)
    receiver_tag = index("receiver")
    intent_filter_tag = index("intent-filter")
    action_tag = index("action")
    data_tag = index("data")
    name_attr = index("name")
    scheme_attr = index("scheme")
    package_value = index("package")
    action_values = [index(action) for action in ACTIONS]

    new_pool = build_pool(strings, flags)
    rebuilt = bytearray(data[:pool_start] + new_pool + data[pool_start + pool_size:])

    pos = pool_start + len(new_pool)
    in_receiver = False
    depth = 0
    insert_at = None
    while pos < len(rebuilt):
        chunk_type = u16(rebuilt, pos)
        chunk_size = u32(rebuilt, pos + 4)
        if chunk_size < 8:
            raise ValueError("invalid AXML chunk")
        if chunk_type == 0x0102:
            name = u32(rebuilt, pos + 20)
            attr_start = u16(rebuilt, pos + 24)
            attr_size = u16(rebuilt, pos + 26)
            attr_count = u16(rebuilt, pos + 28)
            attrs = pos + 16 + attr_start
            if name == receiver_tag:
                component_name = NO_INDEX
                for offset in range(attr_count):
                    current = attrs + offset * attr_size
                    attr_ns = u32(rebuilt, current)
                    attr_name = u32(rebuilt, current + 4)
                    raw_value = u32(rebuilt, current + 8)
                    if attr_ns == android_ns and attr_name == name_attr:
                        component_name = raw_value
                        break
                if component_name == receiver_value:
                    in_receiver = True
                    depth = 1
            elif in_receiver:
                depth += 1
        elif chunk_type == 0x0103:
            name = u32(rebuilt, pos + 20)
            if in_receiver:
                depth -= 1
                if depth == 0 and name == receiver_tag:
                    insert_at = pos
                    break
        pos += chunk_size

    if insert_at is None:
        raise ValueError("LauncherReceiver end element not found")

    intent_filter = start_element(intent_filter_tag, [])
    for action_value in action_values:
        intent_filter += start_element(action_tag, [
            attribute(android_ns, name_attr, action_value),
        ])
        intent_filter += end_element(action_tag)
    intent_filter += start_element(data_tag, [
        attribute(android_ns, scheme_attr, package_value),
    ])
    intent_filter += end_element(data_tag)
    intent_filter += end_element(intent_filter_tag)

    rebuilt[insert_at:insert_at] = intent_filter
    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    MANIFEST.write_bytes(rebuilt)
    print("patched package receiver manifest", MANIFEST, "size", len(rebuilt))


if __name__ == "__main__":
    main()
