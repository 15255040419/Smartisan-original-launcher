"""Bake a generic-Android-safe shadow into active weather/calendar backgrounds.

The original launcher uses a Smartisan-only eight-texture shader shadow.  These
backgrounds are shared by the live SceneNode and its cached static bitmap, so a
baked shadow keeps both render paths identical without hidden framework APIs.
"""

from pathlib import Path

from PIL import Image, ImageFilter, PngImagePlugin


ROOT = Path(__file__).resolve().parents[1]
WEATHER = ROOT / "launcher/assets/Textures/1080p/weather"
CALENDAR = ROOT / "launcher/assets/Textures/1080p/calendar/bg.png"
MARKER = "smartisan_active_icon_shadow_v1"


def bake(path: Path) -> None:
    source = Image.open(path)
    if source.info.get("active_icon_shadow") == MARKER:
        return

    rgba = source.convert("RGBA")
    factor = rgba.width / 256.0
    radius = max(1.0, 4.5 * factor)
    offset_y = max(1, round(5.0 * factor))

    alpha = rgba.getchannel("A").filter(ImageFilter.GaussianBlur(radius))
    shifted = Image.new("L", rgba.size)
    shifted.paste(alpha, (0, offset_y))
    # Match the restrained lower-right shadow used by the bundled icon artwork.
    shifted = shifted.point(lambda value: round(value * 0.38))

    shadow = Image.new("RGBA", rgba.size, (0, 0, 0, 0))
    shadow.putalpha(shifted)
    result = Image.alpha_composite(shadow, rgba)

    metadata = PngImagePlugin.PngInfo()
    metadata.add_text("active_icon_shadow", MARKER)
    result.save(path, "PNG", optimize=True, pnginfo=metadata)


def main() -> None:
    paths = [CALENDAR, *sorted(WEATHER.glob("weather_bg*.png"))]
    for path in paths:
        bake(path)
        print(path.relative_to(ROOT))


if __name__ == "__main__":
    main()
