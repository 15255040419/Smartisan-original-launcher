#!/usr/bin/env python3
"""Static guard for docs/development/ICON_RENDERING_CONTRACT.md.

The audit is intentionally conservative. It reports known extra geometry owners
and high-risk rendering shortcuts. A failing current tree must be fixed at the
reported owner; do not weaken the checks merely to obtain a green result.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from dataclasses import asdict, dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
CONTRACT = ROOT / "docs/development/ICON_RENDERING_CONTRACT.md"

FILES = {
    "metrics": ROOT / "launcher/tools/java/com/smartisanos/launcher/theme/IconVisualMetrics.java",
    "raster": ROOT / "launcher/tools/java/com/smartisanos/launcher/theme/IconRasterDiagnostics.java",
    "bridge": ROOT / "launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java",
    "database_composer": ROOT / "launcher/smali/com/smartisanos/launcher/Aa.smali",
    "static_renderer": ROOT / "launcher/smali/com/smartisanos/launcher/e/s.smali",
    "cell": ROOT / "launcher/smali/com/smartisanos/launcher/view/a/g.1.smali",
    "weather": ROOT / "launcher/smali/com/smartisanos/launcher/view/activeicon/H.smali",
    "calendar": ROOT / "launcher/smali/com/smartisanos/launcher/view/activeicon/m.smali",
}


@dataclass(frozen=True)
class Finding:
    code: str
    file: str
    line: int
    message: str


def rel(path: Path) -> str:
    return path.relative_to(ROOT).as_posix()


def lines(path: Path) -> list[str]:
    return path.read_text(encoding="utf-8", errors="replace").splitlines()


def add_matches(findings: list[Finding], path: Path, code: str, pattern: str, message: str) -> None:
    regex = re.compile(pattern)
    for number, value in enumerate(lines(path), 1):
        stripped = value.lstrip()
        if stripped.startswith("#") or stripped.startswith("//") or stripped.startswith("*"):
            continue
        if regex.search(value):
            findings.append(Finding(code, rel(path), number, message))


def audit() -> list[Finding]:
    findings: list[Finding] = []
    if not CONTRACT.is_file():
        findings.append(Finding("CONTRACT_MISSING", rel(CONTRACT), 0, "canonical contract is missing"))

    for name, path in FILES.items():
        if not path.is_file():
            findings.append(Finding("OWNER_FILE_MISSING", rel(path), 0, f"required owner file is missing: {name}"))

    if findings:
        return findings

    forbidden_ratio = r"(?:73\.32|0\.7332|0\.831325|166\s*/\s*192|160\s*/\s*192)"
    for key in ("raster", "bridge", "database_composer", "static_renderer", "cell", "weather", "calendar"):
        add_matches(
            findings,
            FILES[key],
            "FORBIDDEN_MAGIC_RATIO",
            forbidden_ratio,
            "retired icon-size compensation ratio found",
        )

    # IconVisualMetrics must own Surface/logical conversion. Any new division in
    # another icon owner is a review blocker even if it happens to return the
    # same value today.
    surface_ratio = r"(?:widthPixels|SurfaceWidth|surfaceWidth)\s*/"
    for key in ("raster", "bridge"):
        add_matches(
            findings,
            FILES[key],
            "EXTRA_PHYSICAL_SCALE_OWNER",
            surface_ratio,
            "physical scale is recomputed outside IconVisualMetrics",
        )

    aa_text = "\n".join(lines(FILES["database_composer"]))
    if ":goto_composer" in aa_text and "iconRawData" in aa_text:
        line = next((i for i, value in enumerate(lines(FILES["database_composer"]), 1)
                     if ":goto_composer" in value), 0)
        findings.append(Finding(
            "DATABASE_PRECOMPOSE_OWNER",
            rel(FILES["database_composer"]),
            line,
            "Aa still owns a pre-DB composer while the final static composer also exists",
        ))

    for key in ("weather", "calendar"):
        add_matches(
            findings,
            FILES[key],
            "SECOND_ACTIVE_USER_SIZE_OWNER",
            r"applyActiveIconUserSize",
            "ActiveIcon still applies a second user-size owner instead of following STATIC geometry",
        )

    bridge_text = "\n".join(lines(FILES["bridge"]))
    if "STATIC_METRICS" in bridge_text or "ACTIVE_ICON_STATIC_ORACLE_FALLBACK" in bridge_text:
        line = next((i for i, value in enumerate(lines(FILES["bridge"]), 1)
                     if "STATIC_METRICS" in value or "ACTIVE_ICON_STATIC_ORACLE_FALLBACK" in value), 0)
        findings.append(Finding(
            "ACTIVE_SYNTHETIC_GEOMETRY_ORACLE",
            rel(FILES["bridge"]), line,
            "ActiveIcon must defer until sc[0] exists; physical/icon metrics cannot replace STATIC world geometry",
        ))
    if "reason=static_oracle_unavailable" not in bridge_text:
        findings.append(Finding(
            "ACTIVE_STATIC_ORACLE_DEFER_MISSING",
            rel(FILES["bridge"]), 0,
            "missing final static geometry must defer instead of synthesizing another size owner",
        ))
    add_matches(
        findings,
        FILES["bridge"],
        "ICON_SIZE_PERCENT_REMAPPED",
        r"effectiveIconSizePercent|percent\s*\*\s*1\.20f",
        "the persisted 50-150 percent must not be remapped by a second size owner",
    )
    metrics_text = "\n".join(lines(FILES["metrics"]))
    if "geometryPercentForUser" not in metrics_text:
        findings.append(Finding(
            "GOLDEN_GEOMETRY_OWNER_MISSING", rel(FILES["metrics"]), 0,
            "the frozen original golden calibration must remain in IconVisualMetrics",
        ))
    constants_text = "\n".join(lines(ROOT / "launcher/smali/com/smartisanos/launcher/data/Constants.smali"))
    if "readIconGeometryPercent" not in constants_text:
        findings.append(Finding(
            "LAYOUT_GEOMETRY_BYPASSES_METRICS", "launcher/smali/com/smartisanos/launcher/data/Constants.smali", 0,
            "LayoutProperty must consume the geometry value owned by IconVisualMetrics",
        ))

    # Delay is forbidden only when the nearby code is explicitly performing
    # icon geometry/composition/texture replacement. General async scheduling is
    # outside this contract.
    delay_context = re.compile(r"postDelayed|sendMessageDelayed")
    icon_action = re.compile(r"compose|scale|geometry|texture|iconRawData", re.IGNORECASE)
    for key in ("raster", "bridge"):
        content = lines(FILES[key])
        for index, value in enumerate(content):
            if not delay_context.search(value):
                continue
            nearby = "\n".join(content[max(0, index - 6): min(len(content), index + 7)])
            if icon_action.search(nearby):
                findings.append(Finding(
                    "DELAYED_ICON_COMPENSATION",
                    rel(FILES[key]),
                    index + 1,
                    "delayed icon geometry/composition/texture action requires contract review",
                ))

    return sorted(findings, key=lambda item: (item.file, item.line, item.code))


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--json", action="store_true", help="emit machine-readable JSON")
    args = parser.parse_args()
    findings = audit()
    if args.json:
        print(json.dumps({"status": "PASS" if not findings else "FAIL",
                          "findings": [asdict(item) for item in findings]},
                         ensure_ascii=False, indent=2))
    elif findings:
        print("ICON_CONTRACT_STATIC_AUDIT=FAIL")
        for item in findings:
            print(f"{item.file}:{item.line}: {item.code}: {item.message}")
    else:
        print("ICON_CONTRACT_STATIC_AUDIT=PASS")
    return 1 if findings else 0


if __name__ == "__main__":
    sys.exit(main())
