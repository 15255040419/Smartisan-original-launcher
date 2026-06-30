"""Add the notification-listener service to the preserved binary AndroidManifest.xml."""

from pathlib import Path
import struct

MANIFEST = Path(__file__).resolve().parents[1] / "launcher" / "original" / "AndroidManifest.xml"
SERVICE = "com.smartisanos.launcher.badge.SmartisanBadgeListenerService"
ANDROID_NS = "http://schemas.android.com/apk/res/android"
PERMISSION = "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"
ACTION = "android.service.notification.NotificationListenerService"
LABEL = "锤子桌面通知角标"
NO_INDEX = 0xFFFFFFFF


def u16(data, offset):
    return struct.unpack_from("<H", data, offset)[0]


def u32(data, offset):
    return struct.unpack_from("<I", data, offset)[0]


def utf16_length(data, offset):
    first = u16(data, offset)
    if first & 0x8000:
        return ((first & 0x7FFF) << 16) | u16(data, offset + 2), offset + 4
    return first, offset + 2


def encode_length(length):
    if length > 0x7FFF:
        return struct.pack("<HH", 0x8000 | (length >> 16), length & 0xFFFF)
    return struct.pack("<H", length)


def read_pool(data):
    start = 8
    if u16(data, start) != 0x0001:
        raise ValueError("binary manifest has no leading string pool")
    size = u32(data, start + 4)
    count = u32(data, start + 8)
    style_count = u32(data, start + 12)
    flags = u32(data, start + 16)
    strings_start = u32(data, start + 20)
    if style_count or flags & 0x100:
        raise ValueError("only the manifest's UTF-16 string pool is supported")
    strings = []
    for index in range(count):
        rel = u32(data, start + 28 + index * 4)
        length, pos = utf16_length(data, start + strings_start + rel)
        strings.append(data[pos:pos + length * 2].decode("utf-16le"))
    return start, size, strings, flags


def build_pool(strings, flags):
    encoded = []
    offsets = []
    cursor = 0
    for value in strings:
        raw = encode_length(len(value)) + value.encode("utf-16le") + b"\0\0"
        offsets.append(cursor)
        encoded.append(raw)
        cursor += len(raw)
    body = b"".join(encoded)
    body += b"\0" * ((-len(body)) & 3)
    strings_start = 28 + len(strings) * 4
    size = strings_start + len(body)
    header = struct.pack("<HHIIIIII", 0x0001, 28, size, len(strings), 0,
                         flags, strings_start, 0)
    return header + b"".join(struct.pack("<I", value) for value in offsets) + body


def node_header(chunk_type, size, line=0):
    return struct.pack("<HHIII", chunk_type, 16, size, line, NO_INDEX)


def typed_string(index):
    return struct.pack("<HBBI", 8, 0, 3, index)


def attribute(ns, name, raw, value_type=3, data=0):
    if value_type == 3:
        data = raw
    return struct.pack("<III", ns, name, raw) + struct.pack("<HBBI", 8, 0, value_type, data)


def start_element(name, attrs, line=0):
    size = 36 + len(attrs) * 20
    ext = struct.pack("<IIHHHHHH", NO_INDEX, name, 20, 20, len(attrs), 0, 0, 0)
    return node_header(0x0102, size, line) + ext + b"".join(attrs)


def end_element(name, line=0):
    return node_header(0x0103, 24, line) + struct.pack("<II", NO_INDEX, name)


def main():
    data = bytearray(MANIFEST.read_bytes())
    pool_start, pool_size, strings, flags = read_pool(data)
    if SERVICE in strings:
        print("badge listener service already present")
        return

    def index(value):
        try:
            return strings.index(value)
        except ValueError:
            strings.append(value)
            return len(strings) - 1

    android_ns = index(ANDROID_NS)
    service_name = index(SERVICE)
    permission_value = index(PERMISSION)
    action_value = index(ACTION)
    label_value = index(LABEL)
    false_value = index("false")
    service_tag = index("service")
    intent_filter_tag = index("intent-filter")
    action_tag = index("action")
    application_tag = index("application")
    name_attr = index("name")
    label_attr = index("label")
    permission_attr = index("permission")
    exported_attr = index("exported")

    old_tail = bytes(data[pool_start + pool_size:])
    new_pool = build_pool(strings, flags)
    rebuilt = bytearray(data[:pool_start] + new_pool + old_tail)

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

    service = start_element(service_tag, [
        attribute(android_ns, name_attr, service_name),
        attribute(android_ns, label_attr, label_value),
        attribute(android_ns, permission_attr, permission_value),
        attribute(android_ns, exported_attr, false_value, 0x12, 0),
    ])
    service += start_element(intent_filter_tag, [])
    service += start_element(action_tag, [
        attribute(android_ns, name_attr, action_value),
    ])
    service += end_element(action_tag)
    service += end_element(intent_filter_tag)
    service += end_element(service_tag)

    rebuilt[insert_at:insert_at] = service
    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    MANIFEST.write_bytes(rebuilt)
    print("patched", MANIFEST, "size", len(rebuilt))


if __name__ == "__main__":
    main()
