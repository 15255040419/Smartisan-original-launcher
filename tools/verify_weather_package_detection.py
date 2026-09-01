#!/usr/bin/env python3
"""Verify the exact weather-package and dynamic-icon detection contract."""

from __future__ import annotations

import re
import sys
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
WEATHER_SOURCE = ROOT / "launcher/tools/java/com/smartisanos/launcher/theme/WeatherBridge.java"
SETTING_SOURCE = ROOT / "launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java"
CALENDAR_SOURCE = ROOT / "launcher/tools/java/com/smartisanos/launcher/compat/CalendarAppDetector.java"

WEATHER_PACKAGES = (
    "com.smartisanos.weather",
    "com.android.weather",
    "com.vivo.weather",
    "com.bbk.weather",
    "com.coloros.weather2",
    "com.oplus.weather",
    "com.miui.weather2",
    "com.meizu.flyme.weather",
    "com.huawei.android.totemweather",
    "com.hihonor.android.totemweather",
    "com.sec.android.daemonapp",
)

NON_WEATHER_MEIZU_PACKAGES = (
    "com.meizu.flyme.launcher",
    "com.meizu.media.camera",
    "com.meizu.filemanager",
)


def method_block(source: str, signature: str, next_signature: str) -> str:
    start = source.index(signature)
    end = source.index(next_signature, start)
    return source[start:end]


def main() -> int:
    weather_source = WEATHER_SOURCE.read_text(encoding="utf-8")
    setting_source = SETTING_SOURCE.read_text(encoding="utf-8")
    calendar_source = CALENDAR_SOURCE.read_text(encoding="utf-8")

    weather_method = method_block(
        weather_source,
        "public static boolean isWeatherPackage(",
        "private static boolean isVendorWeatherNamespace(",
    )
    explicit_packages = set(re.findall(r'"([^"]+)"\.equals\(pkg\)', weather_method))

    namespace_method = method_block(
        weather_source,
        "private static boolean isVendorWeatherNamespace(",
        "public static Bundle getWeatherBundle(",
    )
    vendor_prefixes = tuple(re.findall(r'pkg\.startsWith\("([^"]+)"\)', namespace_method))

    dynamic_method = method_block(
        setting_source,
        "public static boolean isDynamicIconPackage(",
        "public static boolean shouldForceDynamicIconDatabaseWrite(",
    )
    weather_delegate = re.compile(
        r"WeatherBridge\.isWeatherPackage\(\s*packageName\s*,\s*null\s*,\s*null\s*\)"
    )
    if not weather_delegate.search(dynamic_method):
        raise AssertionError("LauncherSettingBridge no longer delegates package-only weather detection")
    if "CalendarAppDetector" not in dynamic_method or '"com.smartisanos.clock"' not in dynamic_method:
        raise AssertionError("LauncherSettingBridge dynamic-icon branches changed unexpectedly")

    calendar_static_block = method_block(
        calendar_source,
        "static {",
        "private CalendarAppDetector()",
    )
    known_calendar_packages = set(
        re.findall(r'packages\.add\("([^"]+)"\)', calendar_static_block)
    )

    def is_weather_package(package_name: str | None) -> bool:
        pkg = (package_name or "").lower()
        if not pkg:
            return False
        if pkg in explicit_packages:
            return True
        return pkg.startswith(vendor_prefixes) and "weather" in pkg

    def is_dynamic_icon_package(package_name: str | None) -> bool:
        return (
            is_weather_package(package_name)
            or package_name in known_calendar_packages
            or package_name == "com.smartisanos.clock"
        )

    for package_name in WEATHER_PACKAGES:
        assert is_weather_package(package_name), package_name

    assert is_weather_package("com.meizu.flyme.weather")
    assert is_dynamic_icon_package("com.meizu.flyme.weather")

    for package_name in NON_WEATHER_MEIZU_PACKAGES:
        assert not is_weather_package(package_name), package_name
        assert not is_dynamic_icon_package(package_name), package_name

    assert not any(prefix.startswith("com.meizu.") for prefix in vendor_prefixes), (
        "Meizu namespace must not be generalized"
    )

    print("MEIZU_WEATHER_PACKAGE_DETECTION_LOGIC=PASS")
    print(f"WEATHER_PACKAGE_POSITIVES={len(WEATHER_PACKAGES)}")
    print(f"MEIZU_NON_WEATHER_NEGATIVES={len(NON_WEATHER_MEIZU_PACKAGES)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
