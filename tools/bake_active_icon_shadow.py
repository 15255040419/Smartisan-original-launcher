"""Legacy utility for inspecting active-icon shadow variants.

The original active weather/calendar textures already contain their authored
edge shadow. Runtime code intentionally loads those original textures directly.
This utility must preserve the source alpha when it is run manually.
"""

from pathlib import Path

from PIL import Image, ImageFilter, PngImagePlugin


ROOT = Path(__file__).resolve().parents[1]
WEATHER = ROOT / "launcher/assets/Textures/1080p/weather"
CALENDAR = ROOT / "launcher/assets/Textures/1080p/calendar/bg.png"
MARKER = "smartisan_active_icon_artwork_v4"
SHADOW_MARKER = "smartisan_active_icon_shadow_v4"


def metadata(marker: str) -> PngImagePlugin.PngInfo:
    value = PngImagePlugin.PngInfo()
    value.add_text("active_icon_shadow", marker)
    return value


def render_shadow(artwork: Image.Image, radii, alphas, extra_y: int) -> Image.Image:
    result = Image.new("RGBA", artwork.size, (0, 0, 0, 0))
    source_alpha = artwork.getchannel("A")
    for radius, opacity in zip(radii, alphas):
        blurred = source_alpha.filter(ImageFilter.GaussianBlur(radius))
        shifted = Image.new("L", artwork.size, 0)
        shifted.paste(blurred, (0, round(radius ** 0.5) + extra_y))
        shifted = shifted.point(lambda value: round(value * opacity / 255))
        layer = Image.new("RGBA", artwork.size, (0, 0, 0, 0))
        layer.putalpha(shifted)
        result = Image.alpha_composite(result, layer)
    return Image.alpha_composite(result, artwork)


def shadow_path(path: Path, transparent: bool) -> Path:
    suffix = "_shadow_transparent" if transparent else "_shadow"
    return path.with_name(path.stem + suffix + path.suffix)


def bake(path: Path) -> None:
    source = Image.open(path)
    rgba = source.convert("RGBA")
    if source.info.get("active_icon_shadow") != MARKER:
        rgba.save(path, "PNG", optimize=True, pnginfo=metadata(MARKER))

    # Active weather/calendar artwork nearly fills this 256px texture, unlike
    # ordinary icons which receive a larger icon_size_with_shadow canvas. Use
    # compensated radii and opacity so the visible (unclipped) perimeter has
    # the same perceived weight. The transparent profile remains wider/lighter.
    ordinary = render_shadow(rgba, (6, 2), (0x3D, 0x4D), 1)
    transparent = render_shadow(rgba, (10, 5), (0x1D, 0x25), 3)
    ordinary.save(shadow_path(path, False), "PNG", optimize=True,
                  pnginfo=metadata(SHADOW_MARKER + "_normal"))
    transparent.save(shadow_path(path, True), "PNG", optimize=True,
                     pnginfo=metadata(SHADOW_MARKER + "_transparent"))


def main() -> None:
    paths = [CALENDAR, *sorted(
        path for path in WEATHER.glob("weather_bg*.png")
        if "_shadow" not in path.stem
    )]
    for path in paths:
        bake(path)
        print(path.relative_to(ROOT))


if __name__ == "__main__":
    main()
