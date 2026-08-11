"""Add READ_CONTACTS to the preserved launcher AXML once."""
from pathlib import Path
import struct
from patch_badge_service_manifest import ANDROID_NS, attribute, build_pool, end_element, read_pool, start_element, u16, u32

manifest = Path(__file__).resolve().parents[1] / "launcher" / "original" / "AndroidManifest.xml"
permission = "android.permission.READ_CONTACTS"
data = bytearray(manifest.read_bytes())
pool_start, pool_size, strings, flags = read_pool(data)
if permission in strings:
    print("READ_CONTACTS already present")
    raise SystemExit(0)
def index(value):
    if value not in strings: strings.append(value)
    return strings.index(value)
android_ns, name_attr = index(ANDROID_NS), index("name")
permission_value, uses_permission, application = index(permission), index("uses-permission"), index("application")
pool = build_pool(strings, flags)
rebuilt = bytearray(data[:pool_start] + pool + data[pool_start + pool_size:])
insert_at = None
pos = pool_start + len(pool)
while pos < len(rebuilt):
    size = u32(rebuilt, pos + 4)
    if u16(rebuilt, pos) == 0x0102 and u32(rebuilt, pos + 20) == application:
        insert_at = pos; break
    if size < 8: raise ValueError("invalid AXML chunk")
    pos += size
if insert_at is None: raise ValueError("application start not found")
rebuilt[insert_at:insert_at] = start_element(uses_permission, [attribute(android_ns, name_attr, permission_value)]) + end_element(uses_permission)
struct.pack_into("<I", rebuilt, 4, len(rebuilt))
manifest.write_bytes(rebuilt)
print("patched READ_CONTACTS")
