"""Move legacy launcher-owned permissions to a collision-free namespace."""

from pathlib import Path
import struct

from patch_badge_service_manifest import read_pool, build_pool


MANIFEST = Path(__file__).resolve().parents[1] / "launcher" / "original" / "AndroidManifest.xml"

RENAMES = {
    "com.smartisanos.launcher.READ_DATABASE":
        "com.ranhf.smartisanlauncher.permission.READ_DATABASE",
    "com.smartisanos.launcher.WRITE_DATABASE":
        "com.ranhf.smartisanlauncher.permission.WRITE_DATABASE",
    "com.smartisanos.launcher.ACCESS_CALL_METHOD":
        "com.ranhf.smartisanlauncher.permission.ACCESS_CALL_METHOD",
    "android.permission.smartisanos.launcher.DOWNLOAD_NOTIFICATION":
        "com.ranhf.smartisanlauncher.permission.DOWNLOAD_NOTIFICATION",
    "com.smartisanos.launcher.extra":
        "com.ranhf.smartisanlauncher.permission.EXTRA_PROVIDER",
    "com.smartisanos.launcher.FORCE_TOUCH":
        "com.ranhf.smartisanlauncher.permission.FORCE_TOUCH",
    "com.smartisanos.launcher.smt.action.preinstall_done":
        "com.ranhf.smartisanlauncher.permission.PREINSTALL_DONE",
}


def main():
    data = bytearray(MANIFEST.read_bytes())
    pool_start, pool_size, strings, flags = read_pool(data)
    changed = 0
    for index, value in enumerate(strings):
        replacement = RENAMES.get(value)
        if replacement is not None:
            strings[index] = replacement
            changed += 1
    if changed == 0:
        print("internal permission namespace already patched")
        return

    new_pool = build_pool(strings, flags)
    rebuilt = bytearray(data[:pool_start] + new_pool + data[pool_start + pool_size:])
    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    MANIFEST.write_bytes(rebuilt)
    print("patched", changed, "manifest permission strings")


if __name__ == "__main__":
    main()
