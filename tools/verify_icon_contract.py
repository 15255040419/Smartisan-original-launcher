#!/usr/bin/env python3
"""Validate runtime ICON_CONTRACT_* events from logcat output.

Expected whitespace-separated key=value events:
  ICON_CONTRACT_PIPELINE source=DEFAULT lifecycle=COLD grid=12 iconSize=100 surface=1080 composerCount=1 rawDirect=0
  ICON_CONTRACT_GEOMETRY physicalArtwork=192 physicalTexture=246 surface=1080 logicalSurface=1080
  ICON_CONTRACT_ACTIVE_SYNC type=WEATHER state=LIVE finalWidthRatio=1.0 finalHeightRatio=1.0 centerDeltaX=0.0 centerDeltaY=0.0
"""

from __future__ import annotations

import argparse
import json
import math
import re
import sys
from dataclasses import asdict, dataclass
from pathlib import Path


EVENT_RE = re.compile(r"\b(ICON_CONTRACT_(?:PIPELINE|GEOMETRY|ACTIVE_SYNC))\b(.*)$")
PAIR_RE = re.compile(r"([A-Za-z][A-Za-z0-9_]*)=([^\s,]+)")

SOURCES = {"DEFAULT", "IMPROVED", "PACK", "CUSTOM", "RESOURCE"}
LIFECYCLES = {"COLD", "HOT", "RESTORE"}
GRIDS = {"12", "20"}
ICON_SIZES = {"50", "100", "150"}
SURFACES = {"720", "1080", "1220", "1260", "1440", "2K"}


@dataclass(frozen=True)
class Failure:
    line: int
    code: str
    message: str


def number(values: dict[str, str], key: str, line: int, failures: list[Failure]) -> float | None:
    try:
        value = float(values[key])
        if not math.isfinite(value):
            raise ValueError
        return value
    except (KeyError, ValueError):
        failures.append(Failure(line, "INVALID_NUMBER", f"missing/invalid {key}"))
        return None


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--log", required=True, type=Path, help="saved adb logcat text")
    parser.add_argument("--require-matrix", action="store_true", help="require the fixed static matrix")
    parser.add_argument("--json", action="store_true", help="emit machine-readable JSON")
    args = parser.parse_args()

    if not args.log.is_file():
        print(f"runtime log not found: {args.log}", file=sys.stderr)
        return 2

    failures: list[Failure] = []
    event_count = 0
    matrix_seen: set[tuple[str, str, str, str, str]] = set()
    active_seen: set[tuple[str, str]] = set()

    for line_number, text in enumerate(args.log.read_text(encoding="utf-8", errors="replace").splitlines(), 1):
        match = EVENT_RE.search(text)
        if not match:
            continue
        event_count += 1
        event = match.group(1)
        values = dict(PAIR_RE.findall(match.group(2)))

        if event == "ICON_CONTRACT_PIPELINE":
            composer = number(values, "composerCount", line_number, failures)
            raw_direct = number(values, "rawDirect", line_number, failures)
            cache_hit = values.get("cacheHit", "0") == "1"
            if composer is not None and composer != (0 if cache_hit else 1):
                failures.append(Failure(line_number, "COMPOSER_COUNT",
                                        f"composerCount={composer:g}, cacheHit={int(cache_hit)}"))
            if raw_direct is not None and raw_direct != 0:
                failures.append(Failure(line_number, "RAW_DIRECT_TEXTURE", "RAW source reached texture directly"))
            key = (values.get("source", ""), values.get("lifecycle", ""),
                   values.get("grid", ""), values.get("iconSize", ""), values.get("surface", ""))
            matrix_seen.add(key)

        elif event == "ICON_CONTRACT_GEOMETRY":
            artwork = number(values, "physicalArtwork", line_number, failures)
            texture = number(values, "physicalTexture", line_number, failures)
            surface = number(values, "surface", line_number, failures)
            logical = number(values, "logicalSurface", line_number, failures)
            if artwork is not None and texture is not None and not (0 < artwork < texture):
                failures.append(Failure(line_number, "PHYSICAL_GEOMETRY",
                                        f"expected 0 < artwork < texture, got {artwork:g}/{texture:g}"))
            if surface is not None and logical is not None and logical <= 0:
                failures.append(Failure(line_number, "LOGICAL_SURFACE", "logicalSurface must be positive"))

        elif event == "ICON_CONTRACT_ACTIVE_SYNC":
            width = number(values, "finalWidthRatio", line_number, failures)
            height = number(values, "finalHeightRatio", line_number, failures)
            delta_x = number(values, "centerDeltaX", line_number, failures)
            delta_y = number(values, "centerDeltaY", line_number, failures)
            if width is not None and not 0.995 <= width <= 1.005:
                failures.append(Failure(line_number, "ACTIVE_WIDTH_RATIO", f"ratio={width:g}"))
            if height is not None and not 0.995 <= height <= 1.005:
                failures.append(Failure(line_number, "ACTIVE_HEIGHT_RATIO", f"ratio={height:g}"))
            if delta_x is not None and abs(delta_x) > 0.5:
                failures.append(Failure(line_number, "ACTIVE_CENTER_X", f"delta={delta_x:g}"))
            if delta_y is not None and abs(delta_y) > 0.5:
                failures.append(Failure(line_number, "ACTIVE_CENTER_Y", f"delta={delta_y:g}"))
            active_seen.add((values.get("type", ""), values.get("state", "")))

    if event_count == 0:
        failures.append(Failure(0, "NO_CONTRACT_EVENTS", "no ICON_CONTRACT_* runtime events found"))

    required_active = {("WEATHER", "LIVE"), ("WEATHER", "STATIC"),
                       ("CALENDAR", "LIVE"), ("CALENDAR", "STATIC"),
                       ("CALENDAR", "FLIP")}
    missing_active = sorted(required_active - active_seen)
    if args.require_matrix and missing_active:
        failures.append(Failure(0, "ACTIVE_MATRIX_MISSING", str(missing_active)))

    if args.require_matrix:
        required = {(source, lifecycle, grid, size, surface)
                    for source in SOURCES for lifecycle in LIFECYCLES
                    for grid in GRIDS for size in ICON_SIZES for surface in SURFACES}
        missing = required - matrix_seen
        if missing:
            failures.append(Failure(0, "STATIC_MATRIX_MISSING", f"missing {len(missing)} combinations"))

    status = "PASS" if not failures else "FAIL"
    if args.json:
        print(json.dumps({"status": status, "events": event_count,
                          "matrixCombinations": len(matrix_seen),
                          "activeStates": sorted(active_seen),
                          "failures": [asdict(item) for item in failures]},
                         ensure_ascii=False, indent=2))
    else:
        print(f"ICON_CONTRACT_RUNTIME_VERIFY={status} events={event_count} matrix={len(matrix_seen)}")
        for item in failures:
            print(f"line {item.line}: {item.code}: {item.message}")
    return 1 if failures else 0


if __name__ == "__main__":
    sys.exit(main())
