package com.smartisanos.launcher.theme;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import android.util.Log;

import java.util.HashSet;
import java.util.Set;
import java.util.Arrays;

/** Keeps normal static-icon cache-to-texture scaling observable and centralized. */
public final class IconRasterDiagnostics {
    private static final String TAG = "LauncherIconRaster";
    private static final Set<String> REPORTED = new HashSet<String>();

    /** The one physical raster contract used by every launcher icon source. */
    public static final class NormalIconRasterSpec {
        public final int artworkWidth;
        public final int textureWidth;
        public final float artworkInset;
        public final float rasterScale;
        public final String id;

        private NormalIconRasterSpec(int artworkWidth, int textureWidth,
                float artworkInset, float rasterScale, String id) {
            this.artworkWidth = artworkWidth;
            this.textureWidth = textureWidth;
            this.artworkInset = artworkInset;
            this.rasterScale = rasterScale;
            this.id = id;
        }
    }

    private IconRasterDiagnostics() {
    }

    /** The persisted iconRawData is a source cache; the returned bitmap is transient only. */
    public static Bitmap rasterizeStaticIcon(Bitmap source, int targetPx) {
        if (source == null || source.isRecycled() || targetPx <= 0) {
            return source;
        }
        int sourceWidth = source.getWidth();
        int sourceHeight = source.getHeight();
        reportSourceOnce(sourceWidth, sourceHeight, targetPx);
        if (sourceWidth == targetPx && sourceHeight == targetPx) {
            return source;
        }
        Bitmap textureInput = Bitmap.createBitmap(targetPx, targetPx, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(textureInput);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        canvas.drawBitmap(source, new Rect(0, 0, sourceWidth, sourceHeight),
                new Rect(0, 0, targetPx, targetPx), paint);
        return textureInput;
    }

    /**
     * Persists source artwork, never a layout-sized texture.  BitmapDrawables,
     * online PNGs, redirect images and icon-pack drawables retain their native
     * raster; framework drawables are rendered only to their intrinsic bounds.
     */
    public static Bitmap sourceBitmap(android.graphics.drawable.Drawable drawable) {
        if (drawable == null) return null;
        String drawableType = drawable.getClass().getName();
        if (drawable instanceof android.graphics.drawable.BitmapDrawable) {
            Bitmap bitmap = ((android.graphics.drawable.BitmapDrawable) drawable).getBitmap();
            if (bitmap != null && !bitmap.isRecycled()) {
                Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, false);
                if (copy != null) {
                    Log.i(TAG, "ICON_RASTER_SOURCE_SELECTED sourceType=ORIGINAL_BITMAP"
                            + " drawableType=" + drawableType
                            + " sourceWidth=" + copy.getWidth() + " sourceHeight=" + copy.getHeight()
                            + " sourceIsOriginal=true sourceIsPreview=false"
                            + " sourceIsFinalTexture=false sourceIsScaledIntermediate=false"
                            + " ownsSourceBitmap=true");
                    return copy;
                }
            }
        }
        int width = drawable.getIntrinsicWidth();
        int height = drawable.getIntrinsicHeight();
        if (width <= 0) width = 1;
        if (height <= 0) height = width;
        Bitmap source = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(source);
        Rect previous = new Rect(drawable.getBounds());
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        drawable.setBounds(previous);
        Log.i(TAG, "ICON_RASTER_SOURCE_SELECTED sourceType=RESOURCE_OR_APK_DRAWABLE"
                + " drawableType=" + drawableType
                + " sourceWidth=" + width + " sourceHeight=" + height
                + " sourceIsOriginal=true sourceIsPreview=false"
                + " sourceIsFinalTexture=false sourceIsScaledIntermediate=false"
                + " ownsSourceBitmap=true");
        return source;
    }

    /**
     * Composes one final texture from source artwork.  The source is never
     * resized to the launcher logical size first; the only resample is directly
     * into the physical-artwork rectangle on the physical shadow texture.
     */
    public static Bitmap composeStaticIconTexture(Bitmap source) {
        return composeTexture(source, false);
    }

    /**
     * Applies the original fallback's optical inset directly on the final
     * physical texture.  It deliberately does not allocate the old logical
     * icon_size_origin bitmap, so a 2K texture is never enlarged from 160/192.
     */
    public static Bitmap composeNormalizedFallbackTexture(Bitmap source) {
        return composeTexture(source, true);
    }

    /**
     * Resolves the exact physical contract already used by ordinary static icons.
     * Special sources must consume this value, never infer their own node-sized
     * target such as the retired 181px path.
     */
    public static NormalIconRasterSpec resolveNormalIconRasterSpec() {
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        int logicalArtwork = currentLayoutSize("icon_size_origin");
        int logicalTexture = currentLayoutSize("icon_size_with_shadow");
        if (logicalArtwork <= 0 || logicalTexture <= 0) {
            return null;
        }
        int logicalWidth = Math.max(1, currentConstant("window_width", metrics.widthPixels));
        int logicalHeight = Math.max(1, currentConstant("window_height", metrics.heightPixels));
        float scaleX = metrics.widthPixels / (float) logicalWidth;
        float scaleY = metrics.heightPixels / (float) logicalHeight;
        float rasterScale = Math.max(scaleX, scaleY);
        int artwork = (int) Math.ceil(logicalArtwork * rasterScale);
        int texture = (int) Math.ceil(logicalTexture * rasterScale);
        return new NormalIconRasterSpec(artwork, texture, (texture - artwork) * 0.5f,
                rasterScale, "normal:" + artwork + 'x' + texture + ':'
                        + metrics.widthPixels + 'x' + metrics.heightPixels + ':'
                        + currentPageMode());
    }

    private static Bitmap composeTexture(Bitmap source, boolean normalizedFallback) {
        if (source == null || source.isRecycled()) return source;
        int logicalArtwork = currentLayoutSize("icon_size_origin");
        int logicalTexture = currentLayoutSize("icon_size_with_shadow");
        NormalIconRasterSpec spec = resolveNormalIconRasterSpec();
        if (spec == null) return source;
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        int logicalWidth = Math.max(1, currentConstant("window_width", metrics.widthPixels));
        int logicalHeight = Math.max(1, currentConstant("window_height", metrics.heightPixels));
        float scaleX = metrics.widthPixels / (float) logicalWidth;
        float scaleY = metrics.heightPixels / (float) logicalHeight;
        float rasterScale = spec.rasterScale;
        int artwork = spec.artworkWidth;
        int texture = spec.textureWidth;
        Bitmap result = Bitmap.createBitmap(texture, texture, Bitmap.Config.ARGB_8888);
        float inset = (texture - artwork) * 0.5f;
        float contentInset = 0f;
        if (normalizedFallback) {
            int logicalResizedArtwork = currentLayoutSize("icon_size_origin_resize");
            if (logicalResizedArtwork > 0 && logicalResizedArtwork < logicalArtwork) {
                contentInset = (artwork - logicalResizedArtwork * rasterScale) * 0.5f;
            }
        }
        float contentSize = Math.max(1f, artwork - contentInset * 2f);
        float sourceScale = Math.min(contentSize / Math.max(1, source.getWidth()),
                contentSize / Math.max(1, source.getHeight()));
        float drawWidth = source.getWidth() * sourceScale;
        float drawHeight = source.getHeight() * sourceScale;
        float drawLeft = inset + contentInset + (contentSize - drawWidth) * 0.5f;
        float drawTop = inset + contentInset + (contentSize - drawHeight) * 0.5f;
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
        Canvas canvas = new Canvas(result);
        canvas.drawBitmap(source, new Rect(0, 0, source.getWidth(), source.getHeight()),
                new RectF(drawLeft, drawTop, drawLeft + drawWidth, drawTop + drawHeight), paint);
        Log.i(TAG, "ICON_PIPELINE_SELECTED pipeline="
                + (normalizedFallback ? "NORMALIZED_HIGH_RES_FALLBACK" : "DIRECT_HIGH_RES_STATIC")
                + " sourceType=" + (normalizedFallback ? "APK_LEGACY_DRAWABLE" : "RESOURCE_STATIC")
                + " source=" + source.getWidth() + 'x' + source.getHeight()
                + " finalContentBounds=" + Math.round(drawLeft) + ',' + Math.round(drawTop)
                + ',' + Math.round(drawWidth) + 'x' + Math.round(drawHeight)
                + " targetArtwork=" + artwork + " targetTexture=" + texture);
        if (source.getWidth() < artwork || source.getHeight() < artwork) {
            Log.w(TAG, "ICON_LOW_RES_SOURCE_LIMITED sourceWidth=" + source.getWidth()
                    + " sourceHeight=" + source.getHeight() + " targetWidth=" + artwork
                    + " fallbackOriginalSource=false");
        }
        reportPhysicalOnce(source, artwork, texture, logicalArtwork, logicalTexture,
                metrics, scaleX, scaleY);
        return result;
    }

    /** True only while the original active-icon controller owns the item. */
    public static boolean isOriginalActiveIcon(Object itemInfo) {
        String packageName = itemField(itemInfo, "packageName");
        boolean active = !packageName.isEmpty()
                && LauncherSettingBridge.dynamicWeatherCalendarEnabled()
                && LauncherSettingBridge.isDynamicIconPackage(packageName);
        if (active) {
            Log.i(TAG, "ICON_PIPELINE_SELECTED packageName=" + packageName
                    + " componentName=" + itemField(itemInfo, "componentName")
                    + " sourceType=ACTIVE_DYNAMIC pipeline=ORIGINAL_ACTIVE_ICON");
        }
        return active;
    }

    public static void reportActiveIconBypass(Object itemInfo) {
        Log.i(TAG, "ICON_ACTIVE_ICON_BYPASS_STATIC packageName="
                + itemField(itemInfo, "packageName") + " componentName="
                + itemField(itemInfo, "componentName")
                + " reason=original_active_icon_controller");
    }

    /** Called while iconRawData is persisted, before an active icon can be flattened. */
    public static void reportActiveIconRawBypass(String packageName) {
        Log.i(TAG, "ICON_ACTIVE_ICON_BYPASS_STATIC packageName=" + packageName
                + " stage=iconRawData reason=original_active_layers");
    }

    /** Keeps the SMEngine in-memory texture cache separate per physical raster. */
    public static String textureCacheKey(Object itemInfo, String baseKey) {
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        NormalIconRasterSpec spec = resolveNormalIconRasterSpec();
        if (spec == null) return baseKey;
        int logicalArtwork = currentLayoutSize("icon_size_origin");
        int artwork = spec.artworkWidth;
        int texture = spec.textureWidth;
        String packageName = itemField(itemInfo, "packageName");
        String componentName = itemField(itemInfo, "componentName");
        String userId = itemField(itemInfo, "userId");
        String sourceHash = itemRawHash(itemInfo);
        int pageMode = currentPageMode();
        String themeMode = String.valueOf(currentConstant("isTransparentTheme", 0));
        int iconPercent = Math.round(logicalArtwork * 100f / Math.max(1, baseIconSize(pageMode)));
        String pipeline = isOriginalActiveIcon(itemInfo) ? "ORIGINAL_ACTIVE_ICON" : "STATIC_V3";
        String key = baseKey + "#raster:v3:" + packageName + ':' + componentName + ':' + userId + ':'
                + sourceHash + ':' + artwork + 'x' + artwork + ':' + texture + 'x' + texture
                + ':' + metrics.widthPixels + 'x' + metrics.heightPixels + ':' + metrics.densityDpi
                + ':' + iconPercent + ':' + pageMode + ':' + themeMode + ':' + pipeline;
        Log.i(TAG, "ICON_CACHE_PIPELINE_KEY packageName=" + packageName
                + " pipeline=" + pipeline + " finalCacheKey=" + key);
        return key;
    }

    public static void reportTextureCacheLookup(String key, boolean hit) {
        if (key == null) return;
        String reportKey = "lookup:" + key;
        synchronized (REPORTED) {
            if (!REPORTED.add(reportKey)) return;
        }
        Log.i(TAG, "finalCacheKey=" + key + " cacheHit=" + hit
                + " cacheSourceWasFinalTexture=false");
    }

    public static void reportFinalTexture(Bitmap texture, int physicalNodePx) {
        if (texture == null || texture.isRecycled() || physicalNodePx <= 0) {
            return;
        }
        int width = texture.getWidth();
        int height = texture.getHeight();
        String key = "final:" + width + 'x' + height + ':' + physicalNodePx;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        boolean underSized = width < physicalNodePx || height < physicalNodePx;
        Log.i(TAG, "finalTexture=" + width + 'x' + height
                + " physicalNode=" + physicalNodePx + 'x' + physicalNodePx
                + " underSized=" + underSized + " cache=transientTexture");
    }

    private static void reportSourceOnce(int sourceWidth, int sourceHeight, int targetPx) {
        String key = "source:" + sourceWidth + 'x' + sourceHeight + ':' + targetPx;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        boolean sourceUnderTarget = sourceWidth < targetPx || sourceHeight < targetPx;
        Log.i(TAG, "source=iconRawData " + sourceWidth + 'x' + sourceHeight
                + " targetTexture=" + targetPx + 'x' + targetPx
                + " display=" + metrics.widthPixels + 'x' + metrics.heightPixels
                + " densityDpi=" + metrics.densityDpi
                + " sourceUnderTarget=" + sourceUnderTarget
                + " cache=rawSource->transientTexture");
    }

    private static void reportPhysicalOnce(Bitmap source, int artwork, int texture,
            int logicalArtwork, int logicalTexture, DisplayMetrics metrics,
            float scaleX, float scaleY) {
        String key = "physical:" + source.getWidth() + 'x' + source.getHeight() + ':'
                + artwork + ':' + texture + ':' + metrics.widthPixels + 'x' + metrics.heightPixels;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        Log.i(TAG, "sourceWidth=" + source.getWidth() + " sourceHeight=" + source.getHeight()
                + " sourceWasOriginal=true targetArtworkWidth=" + artwork
                + " targetTextureWidth=" + texture + " physicalNodeWidth=" + texture
                + " textureToPhysicalRatio=" + (texture / (float) Math.max(1, texture))
                + " logicalArtwork=" + logicalArtwork + " logicalTexture=" + logicalTexture
                + " renderSurface=" + metrics.widthPixels + 'x' + metrics.heightPixels
                + " logicalSurface=" + currentConstant("window_width", metrics.widthPixels)
                + 'x' + currentConstant("window_height", metrics.heightPixels)
                + " scale=" + scaleX + 'x' + scaleY
                + " densityDpi=" + metrics.densityDpi
                + " cacheHit=false cacheSourceWasFinalTexture=false");
    }

    private static int currentLayoutSize(String fieldName) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            int mode = ((Integer) constants.getMethod("getPAGE_1_3X3_MODE").invoke(null)).intValue();
            Object property = constants.getMethod("mode", Integer.TYPE).invoke(null, mode);
            return Math.round(property.getClass().getField(fieldName).getFloat(property));
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static int currentPageMode() {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return ((Integer) constants.getMethod("getPAGE_1_3X3_MODE").invoke(null)).intValue();
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static int baseIconSize(int pageMode) {
        return Math.max(1, currentLayoutSize("icon_size_origin"));
    }

    private static String itemField(Object item, String name) {
        if (item == null) return "";
        try {
            Object value = item.getClass().getField(name).get(item);
            return value == null ? "" : String.valueOf(value);
        } catch (Throwable ignored) {
            return "";
        }
    }

    private static String itemRawHash(Object item) {
        if (item == null) return "0";
        try {
            Object value = item.getClass().getField("iconRawData").get(item);
            return value instanceof byte[] ? Integer.toHexString(Arrays.hashCode((byte[]) value)) : "0";
        } catch (Throwable ignored) {
            return "0";
        }
    }

    private static int currentConstant(String fieldName, int fallback) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return constants.getField(fieldName).getInt(null);
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    public static Bitmap composeSettingButtonTexture(
            Bitmap background,
            Bitmap gear,
            Bitmap innerShadow,
            boolean pressed,
            float logicalSettingButtonSize) {

        if (background == null || background.isRecycled()
                || gear == null || gear.isRecycled()
                || logicalSettingButtonSize <= 0f) {
            logFallback(pressed, logicalSettingButtonSize, background, gear, innerShadow);
            return null;
        }

        NormalIconRasterSpec spec = resolveNormalIconRasterSpec();
        if (spec == null || spec.rasterScale <= 0f) {
            logFallback(pressed, logicalSettingButtonSize, background, gear, innerShadow);
            return null;
        }

        int targetPx = Math.max(
                1,
                (int) Math.ceil(logicalSettingButtonSize * spec.rasterScale));

        Bitmap output = null;
        try {
            output = Bitmap.createBitmap(
                    targetPx,
                    targetPx,
                    Bitmap.Config.ARGB_8888);
        } catch (Throwable t) {
            Log.e(TAG, "SETTING_BUTTON_RASTER createBitmap failed", t);
            logFallback(pressed, logicalSettingButtonSize, background, gear, innerShadow);
            return null;
        }

        Canvas canvas = new Canvas(output);

        Paint paint = new Paint(
                Paint.ANTI_ALIAS_FLAG
                        | Paint.FILTER_BITMAP_FLAG
                        | Paint.DITHER_FLAG);

        RectF fullRect = new RectF(
                0f,
                0f,
                targetPx,
                targetPx);

        // background
        drawBitmapFitFull(canvas, background, fullRect, paint);

        if (pressed) {
            canvas.save();
            canvas.rotate(
                    60.0f,
                    targetPx * 0.5f,
                    targetPx * 0.5f);
            drawBitmapFitFull(canvas, gear, fullRect, paint);
            canvas.restore();

            if (innerShadow != null && !innerShadow.isRecycled()) {
                drawBitmapFitFull(
                        canvas,
                        innerShadow,
                        fullRect,
                        paint);
            }
        } else {
            drawBitmapFitFull(
                    canvas,
                    gear,
                    fullRect,
                    paint);
        }

        // Print diagnostic log
        int pageMode = currentPageMode();
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        Log.i(TAG, "SETTING_BUTTON_RASTER"
                + " mode=" + pageMode
                + " logicalSettingButton=" + Math.round(logicalSettingButtonSize)
                + " rasterScale=" + spec.rasterScale
                + " sourceBg=" + background.getWidth() + "x" + background.getHeight()
                + " sourceGear=" + gear.getWidth() + "x" + gear.getHeight()
                + " sourceShadow=" + (innerShadow != null ? innerShadow.getWidth() + "x" + innerShadow.getHeight() : "null")
                + " finalTexture=" + targetPx + "x" + targetPx
                + " surface=" + metrics.widthPixels + "x" + metrics.heightPixels
                + " pressed=" + pressed
                + " fallback=false");

        return output;
    }

    private static void drawBitmapFitFull(
            Canvas canvas,
            Bitmap bitmap,
            RectF destination,
            Paint paint) {

        if (canvas == null
                || bitmap == null
                || bitmap.isRecycled()) {
            return;
        }

        Rect source = new Rect(
                0,
                0,
                bitmap.getWidth(),
                bitmap.getHeight());

        canvas.drawBitmap(
                bitmap,
                source,
                destination,
                paint);
    }

    private static void logFallback(boolean pressed, float logicalSettingButtonSize, Bitmap background, Bitmap gear, Bitmap innerShadow) {
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        int pageMode = currentPageMode();
        Log.w(TAG, "SETTING_BUTTON_RASTER"
                + " mode=" + pageMode
                + " logicalSettingButton=" + Math.round(logicalSettingButtonSize)
                + " rasterScale=0.0"
                + " sourceBg=" + (background != null && !background.isRecycled() ? background.getWidth() + "x" + background.getHeight() : "null")
                + " sourceGear=" + (gear != null && !gear.isRecycled() ? gear.getWidth() + "x" + gear.getHeight() : "null")
                + " sourceShadow=" + (innerShadow != null && !innerShadow.isRecycled() ? innerShadow.getWidth() + "x" + innerShadow.getHeight() : "null")
                + " finalTexture=0x0"
                + " surface=" + metrics.widthPixels + "x" + metrics.heightPixels
                + " pressed=" + pressed
                + " fallback=true");
    }
}
