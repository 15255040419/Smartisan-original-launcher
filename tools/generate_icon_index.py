"""Generate deterministic metadata for the online package-name icon library."""

from datetime import date
import hashlib
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
ICON_DIR = ROOT / "icons" / "drawable"
INDEX = ROOT / "icons" / "index.json"
VARIANTS = ROOT / "icons" / "variants.json"
APK_VARIANTS = ROOT / "launcher" / "assets" / "icons" / "variants.json"


def sync_variants(icon_names: set[str]) -> None:
    """Remove deleted PNGs from candidate lists and mirror the runtime asset."""
    payload = json.loads(VARIANTS.read_text(encoding="utf-8"))
    variants = payload.get("variants", {})
    cleaned = {}
    removed = 0
    for package_name, files in variants.items():
        available = [file_name for file_name in files if file_name in icon_names]
        removed += len(files) - len(available)
        if available:
            cleaned[package_name] = available
    payload["variants"] = cleaned
    rendered = json.dumps(payload, ensure_ascii=False, indent=2) + "\n"
    VARIANTS.write_text(rendered, encoding="utf-8")
    APK_VARIANTS.parent.mkdir(parents=True, exist_ok=True)
    APK_VARIANTS.write_text(rendered, encoding="utf-8")
    print(f"synced variants: {len(cleaned)} packages, removed {removed} stale references")


def main() -> None:
    icons = []
    icon_names = set()
    for path in sorted(ICON_DIR.glob("*.png"), key=lambda value: value.name.lower()):
        if path.name == ".gitkeep":
            continue
        icon_names.add(path.name)
        data = path.read_bytes()
        icons.append(
            {
                "package": path.stem,
                "file": path.name,
                "bytes": len(data),
                "sha256": hashlib.sha256(data).hexdigest(),
            }
        )
    payload = {
        "schema": 1,
        "updated": date.today().isoformat(),
        "path": "icons/drawable/{packageName}.png",
        "count": len(icons),
        "note": "Multiple artwork files for the same application are declared in icons/variants.json.",
        "mirrors": [
            "https://gitee.com/RANH-F/Smartisan-original-launcher-download/raw/master/icons/drawable/",
            "https://raw.githubusercontent.com/RANH-F/Smartisan-original-launcher/main/icons/drawable/",
        ],
        "icons": icons,
    }
    INDEX.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"indexed {len(icons)} icons")
    sync_variants(icon_names)


if __name__ == "__main__":
    main()
