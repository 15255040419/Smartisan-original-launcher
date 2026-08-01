package com.smartisanos.launcher.theme;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.Comparator;
import java.util.Calendar;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * Read-only physical raster contract for the original WeatherView/CalendarView.
 *
 * SceneNode geometry remains in the original logical coordinate system. Only
 * the backing texture is rasterized at the same physical density as an
 * ordinary static icon.
 */
public final class ActiveIconRasterSpec {
    private static final String TAG = "ActiveIconRaster";
    public static final int REVISION = 1;
    private static final int MAX_MEMORY_KEYS = 160;
    private static final int MAX_DISK_FILES = 192;
    private static final Map<String, String> TEXTURE_PATHS =
            Collections.synchronizedMap(new LinkedHashMap<String, String>(
                    MAX_MEMORY_KEYS + 1, 0.75f, true) {
                @Override
                protected boolean removeEldestEntry(Map.Entry<String, String> eldest) {
                    return size() > MAX_MEMORY_KEYS;
                }
            });

    public final int logicalArtworkWidth;
    public final int logicalArtworkHeight;
    public final float rasterScale;
    public final int physicalArtworkWidth;
    public final int physicalArtworkHeight;
    public final int physicalTextureWidth;
    public final int physicalTextureHeight;
    public final int densityDpi;
    public final int pageMode;
    public final int iconSizePercent;
    public final String theme;
    public final String id;

    private ActiveIconRasterSpec(
            IconRasterDiagnostics.NormalIconRasterSpec normal,
            int densityDpi,
            int pageMode,
            int iconSizePercent,
            String theme) {
        logicalArtworkWidth = normal.logicalArtworkWidth;
        logicalArtworkHeight = normal.logicalArtworkHeight;
        rasterScale = normal.rasterScale;
        physicalArtworkWidth = normal.physicalArtworkWidth;
        physicalArtworkHeight = normal.physicalArtworkHeight;
        physicalTextureWidth = normal.physicalTextureWidth;
        physicalTextureHeight = normal.physicalTextureHeight;
        this.densityDpi = densityDpi;
        this.pageMode = pageMode;
        this.iconSizePercent = iconSizePercent;
        this.theme = theme;
        id = "active:v" + REVISION + ':' + theme + ':' + pageMode + ':'
                + logicalArtworkWidth + 'x' + logicalArtworkHeight + ':'
                + physicalArtworkWidth + 'x' + physicalArtworkHeight + ':'
                + rasterScale + ':' + densityDpi + ':' + iconSizePercent;
    }

    private ActiveIconRasterSpec() {
        logicalArtworkWidth = 0;
        logicalArtworkHeight = 0;
        rasterScale = 1.0f;
        physicalArtworkWidth = 0;
        physicalArtworkHeight = 0;
        physicalTextureWidth = 0;
        physicalTextureHeight = 0;
        densityDpi = 0;
        pageMode = 0;
        iconSizePercent = 100;
        theme = "";
        id = "";
    }

    public static ActiveIconRasterSpec resolve() {
        IconRasterDiagnostics.NormalIconRasterSpec normal =
                IconRasterDiagnostics.resolveNormalIconRasterSpec();
        if (normal == null) return null;
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        int pageMode = intConstantMethod("getPAGE_1_3X3_MODE", 0);
        Context context = applicationContext();
        int iconSizePercent = context == null
                ? 100 : LauncherSettingBridge.readIconSizePercent(context);
        return new ActiveIconRasterSpec(normal, metrics.densityDpi, pageMode,
                iconSizePercent, themeToken());
    }

    /**
     * Called only from RectNode.setImageName(). Non ActiveIcon resources pass
     * through unchanged.
     */
    public static String textureForNode(Object node, String sourcePath) {
        String type = activeType(sourcePath);
        if (type == null || node == null) return sourcePath;
        ActiveIconRasterSpec spec = resolve();
        if (spec == null) return sourcePath;
        float logicalWidth = invokeFloat(node, "getWidth");
        float logicalHeight = invokeFloat(node, "getHeight");
        float logicalBackground = layoutFloat(type.equals("weather")
                ? "weather_back_size" : "calendar_back_size");
        if (!(logicalWidth > 0.0f) || !(logicalHeight > 0.0f)
                || !(logicalBackground > 0.0f)) {
            return sourcePath;
        }
        float layerRasterScale = spec.physicalArtworkWidth / logicalBackground;
        int physicalWidth = Math.max(1, Math.round(logicalWidth * layerRasterScale));
        int physicalHeight = Math.max(1, Math.round(logicalHeight * layerRasterScale));
        return rasterize(sourcePath, type, "live", logicalWidth, logicalHeight,
                physicalWidth, physicalHeight, spec);
    }

    public static int physicalArtworkWidth() {
        return physicalArtworkWidth(layoutFloat("icon_size_origin"));
    }

    public static int physicalArtworkWidth(float logicalFallback) {
        ActiveIconRasterSpec spec = resolve();
        if (spec != null && spec.physicalArtworkWidth > 0) {
            return spec.physicalArtworkWidth;
        }
        return Math.max(1, Math.round(logicalFallback));
    }

    public static float cachedArtworkScale(String type, float logicalBackgroundSize) {
        ActiveIconRasterSpec spec = resolve();
        if (spec == null || !(logicalBackgroundSize > 0.0f)) return 1.0f;
        return spec.physicalArtworkWidth / logicalBackgroundSize;
    }

    public static float physicalScaleForActiveBackground(float logicalBackgroundSize) {
        return cachedArtworkScale("active", logicalBackgroundSize);
    }

    public static String cacheKey(String type, String stateOrStyle,
            int logicalWidth, int logicalHeight, int physicalWidth, int physicalHeight) {
        ActiveIconRasterSpec spec = resolve();
        if (spec == null) return "active:v" + REVISION + ":fallback";
        return spec.id + ':' + type + ':' + safe(stateOrStyle) + ':'
                + logicalWidth + 'x' + logicalHeight + ':'
                + physicalWidth + 'x' + physicalHeight;
    }

    /**
     * Identity of the pause/transition frame. The original live calendar still
     * owns date calculation and midnight animation; this day bucket only keeps
     * a previously persisted static frame from masking the current live date
     * after process recreation.
     */
    public static String frameCacheKey(String baseKey) {
        ActiveIconRasterSpec spec = resolve();
        if (baseKey == null || spec == null) return baseKey;
        Calendar now = Calendar.getInstance();
        String dayBucket = now.get(Calendar.YEAR) + "-"
                + now.get(Calendar.DAY_OF_YEAR);
        return baseKey + "#activeRaster:" + spec.id + ":day=" + dayBucket;
    }

    private static String rasterize(String sourcePath, String type, String layer,
            float logicalWidth, float logicalHeight, int physicalWidth, int physicalHeight,
            ActiveIconRasterSpec spec) {
        String key = spec.id + ':' + type + ':' + layer + ':' + safe(sourcePath) + ':'
                + Math.round(logicalWidth) + 'x' + Math.round(logicalHeight) + ':'
                + physicalWidth + 'x' + physicalHeight;
        String cached = TEXTURE_PATHS.get(key);
        if (cached != null && new File(cached).isFile()) {
            Log.d(TAG, "ACTIVE_ICON_LAYER_RASTER_HIT type=" + type
                    + " sourcePath=" + sourcePath
                    + " physical=" + physicalWidth + 'x' + physicalHeight);
            return cached;
        }
        Context context = applicationContext();
        if (context == null) return sourcePath;
        File directory = new File(context.getCacheDir(),
                "active_icon_raster_v" + REVISION);
        if (!directory.isDirectory() && !directory.mkdirs()) return sourcePath;
        File output = new File(directory, digest(key) + ".png");
        if (output.isFile() && output.length() > 0L) {
            output.setLastModified(System.currentTimeMillis());
            TEXTURE_PATHS.put(key, output.getAbsolutePath());
            Log.d(TAG, "ACTIVE_ICON_LAYER_RASTER_DISK_HIT type=" + type
                    + " sourcePath=" + sourcePath
                    + " physical=" + physicalWidth + 'x' + physicalHeight);
            return output.getAbsolutePath();
        }

        Bitmap source = decodeThemeBitmap(sourcePath);
        if (source == null || source.isRecycled()) return sourcePath;
        Bitmap result = null;
        try {
            result = Bitmap.createBitmap(
                    physicalWidth, physicalHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(result);
            Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG
                    | Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
            canvas.drawBitmap(source,
                    new Rect(0, 0, source.getWidth(), source.getHeight()),
                    new Rect(0, 0, physicalWidth, physicalHeight), paint);
            FileOutputStream stream = new FileOutputStream(output);
            try {
                if (!result.compress(Bitmap.CompressFormat.PNG, 100, stream)) {
                    return sourcePath;
                }
            } finally {
                stream.close();
            }
            TEXTURE_PATHS.put(key, output.getAbsolutePath());
            trimDiskCache(directory);
            Log.i(TAG, "ACTIVE_ICON_LAYER_RASTER type=" + type
                    + " layer=" + layer
                    + " sourcePath=" + sourcePath
                    + " source=" + source.getWidth() + 'x' + source.getHeight()
                    + " logical=" + Math.round(logicalWidth) + 'x' + Math.round(logicalHeight)
                    + " physical=" + physicalWidth + 'x' + physicalHeight
                    + " rasterScale=" + spec.rasterScale
                    + " pageMode=" + spec.pageMode
                    + " densityDpi=" + spec.densityDpi
                    + " sourceLimited="
                    + (source.getWidth() < physicalWidth || source.getHeight() < physicalHeight));
            return output.getAbsolutePath();
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_LAYER_RASTER_FAILED type=" + type
                    + " class=" + error.getClass().getSimpleName());
            if (output.isFile()) output.delete();
            return sourcePath;
        } finally {
            if (result != null && !result.isRecycled()) result.recycle();
            if (!source.isRecycled()) source.recycle();
        }
    }

    private static Bitmap decodeThemeBitmap(String sourcePath) {
        try {
            Class<?> loader = Class.forName("com.smartisanos.smengine.s");
            Method method = loader.getMethod("getBitmap", String.class);
            return (Bitmap) method.invoke(null, sourcePath);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String activeType(String path) {
        if (path == null || path.indexOf("active_icon_raster_v") >= 0
                || path.indexOf("active_icon_shadow_v") >= 0) {
            return null;
        }
        String normalized = path.replace('\\', '/');
        if (normalized.indexOf("/weather/") >= 0 || normalized.startsWith("weather/")) {
            return "weather";
        }
        if (normalized.indexOf("/calendar/") >= 0 || normalized.startsWith("calendar/")) {
            return "calendar";
        }
        return null;
    }

    private static Context applicationContext() {
        try {
            Class<?> launcher = Class.forName("com.smartisanos.launcher.ja");
            Object instance = launcher.getMethod("getInstance").invoke(null);
            Object value = launcher.getMethod("getApplication").invoke(instance);
            return value instanceof Context ? (Context) value : null;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static float layoutFloat(String name) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            int mode = ((Integer) constants.getMethod("getPAGE_1_3X3_MODE").invoke(null)).intValue();
            Object property = constants.getMethod("mode", Integer.TYPE).invoke(null, mode);
            return property.getClass().getField(name).getFloat(property);
        } catch (Throwable ignored) {
            return 0.0f;
        }
    }

    private static int intConstantMethod(String name, int fallback) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return ((Integer) constants.getMethod(name).invoke(null)).intValue();
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static String themeToken() {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            Object path = constants.getField("THEME_PATH").get(null);
            boolean transparent = constants.getField("isTransparentTheme").getBoolean(null);
            return safe(String.valueOf(path)) + ':' + transparent;
        } catch (Throwable ignored) {
            return "unknown";
        }
    }

    private static float invokeFloat(Object target, String name) {
        try {
            Object result = target.getClass().getMethod(name).invoke(target);
            return result instanceof Number ? ((Number) result).floatValue() : 0.0f;
        } catch (Throwable ignored) {
            return 0.0f;
        }
    }

    private static String safe(String value) {
        if (value == null) return "";
        return value.replace(':', '_').replace('/', '_').replace('\\', '_');
    }

    private static String digest(String value) {
        try {
            byte[] bytes = MessageDigest.getInstance("SHA-256")
                    .digest(value.getBytes("UTF-8"));
            StringBuilder result = new StringBuilder(32);
            for (int i = 0; i < 16; i++) {
                int valueByte = bytes[i] & 0xff;
                if (valueByte < 0x10) result.append('0');
                result.append(Integer.toHexString(valueByte));
            }
            return result.toString();
        } catch (Throwable ignored) {
            return Integer.toHexString(value.hashCode());
        }
    }

    private static void trimDiskCache(File directory) {
        File[] files = directory.listFiles();
        if (files == null || files.length <= MAX_DISK_FILES) return;
        java.util.Arrays.sort(files, new Comparator<File>() {
            @Override
            public int compare(File left, File right) {
                long delta = left.lastModified() - right.lastModified();
                return delta < 0L ? -1 : (delta > 0L ? 1 : 0);
            }
        });
        int deleteCount = files.length - MAX_DISK_FILES;
        for (int i = 0; i < deleteCount; i++) {
            if (files[i].isFile()) files[i].delete();
        }
    }
}
