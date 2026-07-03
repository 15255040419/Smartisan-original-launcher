"""Remove dormant Smartisan-only payment permission and Launchpad service from binary AXML."""

from pathlib import Path
import struct

from patch_badge_service_manifest import read_pool, u16, u32


MANIFEST = Path(__file__).resolve().parents[1] / "launcher" / "original" / "AndroidManifest.xml"
SERVICE = "com.smartisanos.launcher.service.LaunchpadService"
PAYMENT_PERMISSION = "com.smartisanos.payment.PAY"
NO_INDEX = 0xFFFFFFFF


def element_name(data, pos, strings):
    index = u32(data, pos + 20)
    return strings[index] if index != NO_INDEX else ""


def attribute_values(data, pos, strings):
    attr_start = u16(data, pos + 24)
    attr_size = u16(data, pos + 26)
    attr_count = u16(data, pos + 28)
    base = pos + 16 + attr_start
    values = []
    for number in range(attr_count):
        offset = base + number * attr_size
        raw_index = u32(data, offset + 8)
        if raw_index != NO_INDEX:
            values.append(strings[raw_index])
    return values


def matching_element_end(data, start):
    depth = 0
    pos = start
    while pos < len(data):
        chunk_type = u16(data, pos)
        chunk_size = u32(data, pos + 4)
        if chunk_type == 0x0102:
            depth += 1
        elif chunk_type == 0x0103:
            depth -= 1
            if depth == 0:
                return pos + chunk_size
        if chunk_size < 8:
            raise ValueError("invalid AXML chunk")
        pos += chunk_size
    raise ValueError("unterminated AXML element")


def main():
    data = bytearray(MANIFEST.read_bytes())
    pool_start, pool_size, strings, _ = read_pool(data)
    ranges = []
    pos = pool_start + pool_size
    while pos < len(data):
        chunk_type = u16(data, pos)
        chunk_size = u32(data, pos + 4)
        if chunk_size < 8:
            raise ValueError("invalid AXML chunk")
        if chunk_type == 0x0102:
            name = element_name(data, pos, strings)
            values = attribute_values(data, pos, strings)
            if (name == "service" and SERVICE in values) or (
                    name == "uses-permission" and PAYMENT_PERMISSION in values):
                end = matching_element_end(data, pos)
                ranges.append((pos, end))
                pos = end
                continue
        pos += chunk_size

    if not ranges:
        print("Smartisan-only manifest components already absent")
        return
    for start, end in reversed(ranges):
        del data[start:end]
    struct.pack_into("<I", data, 4, len(data))
    MANIFEST.write_bytes(data)
    print("removed", len(ranges), "Smartisan-only manifest entries")


if __name__ == "__main__":
    main()
