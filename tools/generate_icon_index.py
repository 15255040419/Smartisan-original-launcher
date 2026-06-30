"""Generate deterministic metadata for the online package-name icon library."""

from datetime import date
import hashlib
import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
ICON_DIR = ROOT / "icons" / "drawable"
INDEX = ROOT / "icons" / "index.json"


def main() -> None:
    icons = []
    for path in sorted(ICON_DIR.glob("*.png"), key=lambda value: value.name.lower()):
        if path.name == ".gitkeep":
            continue
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
        "mirrors": [
            "https://gitee.com/RANH-F/Smartisan-original-launcher-download/raw/master/icons/drawable/",
            "https://raw.githubusercontent.com/RANH-F/Smartisan-original-launcher/main/icons/drawable/",
        ],
        "icons": icons,
    }
    INDEX.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"indexed {len(icons)} icons")


if __name__ == "__main__":
    main()
