package com.smartisanos.launcher.theme;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.provider.Settings;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class LauncherSettingBridge {
    // Keep cached and live active-icon frames on the footprint verified in v1.5.3.
    private static final float ACTIVE_ICON_OPTICAL_SCALE = 0.7332f;
    private static final float ACTIVE_ICON_LIVE_SCALE = 0.94f;
    // Original active-icon anchor: (icon_size_with_shadow - icon_size_origin) / 4.
    private static final float ACTIVE_ICON_UP_OFFSET = 0.05487805f;
    private static final String PREFS = "com.smartisanos.launcher_prefs";
    private static final String SETTINGS_PREFS = "launcher_settings";
    private static final String KEY_ICON_SIZE = "launcher_icon_size";
    private static final String TAG = "LauncherIconShadow";
    private static final int SHADOW_DARK = 0;
    private static final int SHADOW_LIGHT = 1;
    private static final int SHADOW_TRANSPARENT = 2;
    private static volatile String sLastLoggedShadowSpec;
    private static final Object ACTIVE_ICON_SHADOW_LOCK = new Object();
    private static final Map<String, String> ACTIVE_ICON_LIVE_SHADOW_CACHE = new HashMap<>();
    private static final Set<String> LOGGED_CACHED_FRAME_COMPOSITIONS = new HashSet<>();
    // v1 treated pb.path() values as filesystem paths.  They are normally theme-asset
    // paths, so keep corrected products isolated from any stale cache entries.
    private static final String ACTIVE_ICON_SHADOW_CACHE_DIR = "active_icon_shadow_v2";
    public static final String KEY_DYNAMIC_WEATHER_CALENDAR =
            "launcher_dynamic_weather_calendar_enabled";

    private LauncherSettingBridge() {
    }

    public static boolean readBool(Context context, String key, boolean defValue) {
        if (context == null || key == null) {
            return defValue;
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                return prefs.getBoolean(key, defValue);
            }
        } catch (Throwable ignored) {
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                return prefs.getBoolean(key, defValue);
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.System.getString(context.getContentResolver(), key);
            if (value != null) {
                return "1".equals(value) || Boolean.parseBoolean(value);
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.Global.getString(context.getContentResolver(), key);
            if (value != null) {
                return "1".equals(value) || Boolean.parseBoolean(value);
            }
        } catch (Throwable ignored) {
        }
        return defValue;
    }

    public static boolean dynamicWeatherCalendarEnabled(Context context) {
        return readBool(context, KEY_DYNAMIC_WEATHER_CALENDAR, false);
    }

    /** Available to original smali call sites which do not carry a Context. */
    public static boolean dynamicWeatherCalendarEnabled() {
        try {
            Class<?> proxy = Class.forName("com.smartisanos.launcher.ja");
            Object instance = proxy.getMethod("getInstance").invoke(null);
            if (instance != null) {
                Object application = proxy.getMethod("getApplication").invoke(instance);
                if (application instanceof Context) {
                    return dynamicWeatherCalendarEnabled((Context) application);
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    public static boolean readTransparentMode(Context context) {
        if (context == null) {
            return false;
        }
        final String key = "launcher_grid_theme";
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences(SETTINGS_PREFS, Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                try {
                    return prefs.getInt(key, 0) == 1;
                } catch (Throwable ignored) {
                    return prefs.getBoolean(key, false);
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                try {
                    return prefs.getInt(key, 0) == 1;
                } catch (Throwable ignored) {
                    return prefs.getBoolean(key, false);
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), key, 0) == 1;
        } catch (Throwable ignored) {
        }
        try {
            return Settings.System.getInt(context.getContentResolver(), key, 0) == 1;
        } catch (Throwable ignored) {
        }
        return false;
    }

    public static String readString(Context context, String key, String defValue) {
        if (context == null || key == null) {
            return defValue;
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                String value = prefs.getString(key, defValue);
                if (value != null && value.length() > 0) {
                    return value;
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                String value = prefs.getString(key, defValue);
                if (value != null && value.length() > 0) {
                    return value;
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.System.getString(context.getContentResolver(), key);
            if (value != null && value.length() > 0) {
                return value;
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.Global.getString(context.getContentResolver(), key);
            if (value != null && value.length() > 0) {
                return value;
            }
        } catch (Throwable ignored) {
        }
        return defValue;
    }

    public static int readIconSizePercent(Context context) {
        return effectiveIconSizePercent(normalizeIconSizePercent(readInt(context, KEY_ICON_SIZE, 100)));
    }

    /** Keeps live weather/calendar roots on the same optical scale as v1.5.3. */
    public static float readActiveIconScaleFactor() {
        try {
            Class<?> proxy = Class.forName("com.smartisanos.launcher.ja");
            Object instance = proxy.getMethod("getInstance").invoke(null);
            if (instance != null) {
                Object application = proxy.getMethod("getApplication").invoke(instance);
                if (application instanceof Context) {
                    return readIconSizePercent((Context) application) / 100.0f
                            * ACTIVE_ICON_OPTICAL_SCALE;
                }
            }
        } catch (Throwable ignored) {
        }
        return 1.20f * ACTIVE_ICON_OPTICAL_SCALE;
    }

    /** Outer correction shared by live WeatherView and CalendarView roots. */
    public static float activeIconLiveScale() {
        return ACTIVE_ICON_LIVE_SCALE;
    }

    /** Static-frame optical correction; the live node keeps the original nc(vm) anchor. */
    public static float activeIconUpOffset(float iconSize) {
        return Math.max(0.0f, iconSize * ACTIVE_ICON_UP_OFFSET);
    }

    /**
     * Creates the cached weather/calendar frame.  The passed-in images belong to the
     * original caller, so this method must never recycle either of them.
     */
    public static Bitmap composeActiveIconToBaseBounds(Bitmap base, Bitmap active) {
        if (base == null) return active;
        if (active == null) return base;
        int width = base.getWidth();
        int height = base.getHeight();
        float scale = Math.min(width / (float) Math.max(1, active.getWidth()),
                height / (float) Math.max(1, active.getHeight())) * ACTIVE_ICON_OPTICAL_SCALE;
        int dstLeft = Math.round((width - active.getWidth() * scale) * 0.5f);
        int dstTop = Math.round((height - active.getHeight() * scale) * 0.5f
                - activeIconUpOffset(Math.min(width, height)));
        int dstRight = dstLeft + Math.round(active.getWidth() * scale);
        int dstBottom = dstTop + Math.round(active.getHeight() * scale);
        Bitmap artwork = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas artworkCanvas = new Canvas(artwork);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        android.graphics.Rect src = new android.graphics.Rect(0, 0, active.getWidth(), active.getHeight());
        android.graphics.Rect dst = new android.graphics.Rect(dstLeft, dstTop, dstRight, dstBottom);
        artworkCanvas.drawBitmap(active, src, dst, paint);

        EffectiveIconShadowSpec shadowSpec = effectiveIconShadowSpec();
        boolean logCachedFrame = shouldLogCachedFrame("CACHED_ACTIVE", width, height, shadowSpec);
        if (logCachedFrame) {
            logCachedFrameComposeStarted("CACHED_ACTIVE", width, height, shadowSpec);
        }
        Bitmap shadowOnly = createShadowOnlyBitmap(artwork, shadowSpec);
        Bitmap result = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(result);
        if (shadowOnly != null) {
            canvas.drawBitmap(shadowOnly, 0.0f, 0.0f, paint);
            if (logCachedFrame) {
                Log.d(TAG, "ACTIVE_ICON_CACHED_FRAME_SHADOW_CREATED type=CACHED_ACTIVE"
                        + " width=" + width + " height=" + height
                        + " shadowWidth=" + shadowOnly.getWidth()
                        + " shadowHeight=" + shadowOnly.getHeight()
                        + shadowLogSuffix(shadowSpec));
            }
            shadowOnly.recycle();
        }
        canvas.drawBitmap(artwork, 0.0f, 0.0f, paint);
        artwork.recycle();
        if (logCachedFrame) {
            Log.d(TAG, "ACTIVE_ICON_CACHED_FRAME_COMPOSE_FINISHED type=CACHED_ACTIVE"
                    + " width=" + width + " height=" + height + shadowLogSuffix(shadowSpec));
        }
        return result;
    }

    /**
     * Reads the exact mode and arrays already selected by the original Cell path.
     * The Gaussian light/dark suffix is recalculated from wallpaper changes by
     * Constants.initByTheme(), so this intentionally does not inspect theme names
     * or launcher_grid_theme.
     */
    private static EffectiveIconShadowSpec effectiveIconShadowSpec() {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            boolean transparent = ((Boolean) readStaticField(constants, "isTransparentTheme")).booleanValue();
            String suffix = (String) readStaticField(constants, "sGaussianResSuffix");
            int mode = transparent ? SHADOW_TRANSPARENT
                    : (suffix != null && suffix.contains("_light") ? SHADOW_LIGHT : SHADOW_DARK);
            int[] radii = (int[]) readStaticField(constants,
                    mode == SHADOW_TRANSPARENT
                            ? "ICON_SHADOW_RADIUS_TRANSPARENT" : "ICON_SHADOW_RADIUS");
            int[][] allColors = (int[][]) readStaticField(constants, "ICON_SHADOW_COLOR");
            if (radii == null || allColors == null || mode >= allColors.length || allColors[mode] == null) {
                throw new IllegalStateException("Original icon shadow arrays are unavailable");
            }
            EffectiveIconShadowSpec spec = new EffectiveIconShadowSpec(mode, radii, allColors[mode], suffix);
            logEffectiveIconShadowSpec(spec);
            return spec;
        } catch (Throwable error) {
            Log.w(TAG, "ICON_SHADOW_CONSTANTS_RESOLVE_FAILED class="
                    + error.getClass().getSimpleName() + " message=" + error.getMessage());
            return null;
        }
    }

    private static Object readStaticField(Class<?> owner, String name) throws Exception {
        Field field = owner.getDeclaredField(name);
        field.setAccessible(true);
        return field.get(null);
    }

    /** Shared software renderer for active weather/calendar cached frames. */
    private static Bitmap createShadowOnlyBitmap(Bitmap silhouette, EffectiveIconShadowSpec spec) {
        if (silhouette == null || spec == null) {
            return null;
        }
        Bitmap result = Bitmap.createBitmap(
                silhouette.getWidth(), silhouette.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(result);
        for (int i = 0; i < spec.radii.length && i < spec.colors.length; i++) {
            int radius = spec.radii[i];
            if (radius <= 0) {
                continue;
            }
            Paint blurPaint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
            blurPaint.setMaskFilter(new BlurMaskFilter(radius, BlurMaskFilter.Blur.NORMAL));
            int[] offset = new int[2];
            Bitmap alpha = silhouette.extractAlpha(blurPaint, offset);
            Paint colorPaint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
            colorPaint.setColor(spec.colors[i]);
            canvas.drawBitmap(alpha, offset[0], offset[1] + Math.max(1, radius / 4), colorPaint);
            alpha.recycle();
        }
        return result;
    }

    private static void logEffectiveIconShadowSpec(EffectiveIconShadowSpec spec) {
        String key = spec.mode + ":" + java.util.Arrays.toString(spec.radii) + ":"
                + java.util.Arrays.toString(spec.colors) + ":" + spec.gaussianSuffix;
        if (!key.equals(sLastLoggedShadowSpec)) {
            sLastLoggedShadowSpec = key;
            Log.d(TAG, "ICON_SHADOW_EFFECTIVE_SPEC mode=" + spec.mode
                    + " radii=" + java.util.Arrays.toString(spec.radii)
                    + " colors=" + java.util.Arrays.toString(spec.colors)
                    + " sGaussianResSuffix=" + spec.gaussianSuffix
                    + " thread=" + Thread.currentThread().getName());
            Log.d(TAG, "ICON_SHADOW_CONSTANTS_RESOLVED mode=" + spec.mode
                    + " radii=" + Arrays.toString(spec.radii)
                    + " colors=" + Arrays.toString(spec.colors)
                    + " sGaussianResSuffix=" + spec.gaussianSuffix
                    + " thread=" + Thread.currentThread().getName());
        }
    }

    /** Size of the centered shadow node. The original background remains unchanged above it. */
    public static float activeIconLiveShadowNodeSize(float backgroundSize) {
        EffectiveIconShadowSpec spec = effectiveIconShadowSpec();
        return Math.max(1.0f, backgroundSize + shadowPadding(spec) * 2.0f);
    }

    /**
     * Creates a transparent, shadow-only texture for the live SMEngine node.  It is
     * deliberately separate from the original background texture so WeatherView and
     * CalendarView keep their original animated backgrounds, digits and foregrounds.
     */
    public static String createActiveIconLiveShadowTexture(
            String sourcePath, float backgroundSize, String type) {
        EffectiveIconShadowSpec spec = effectiveIconShadowSpec();
        Context context = applicationContext();
        if (sourcePath == null || context == null || spec == null) {
            Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_CACHE_MISS type=" + type
                    + " source=" + sourcePath + " context=" + (context != null)
                    + shadowLogSuffix(spec));
            return null;
        }
        int baseSize = Math.max(1, Math.round(backgroundSize));
        int padding = shadowPadding(spec);
        int canvasSize = baseSize + padding * 2;
        String key = type + ':' + sourcePath + ':' + baseSize + ':' + canvasSize + ':'
                + spec.mode + ':' + Arrays.toString(spec.radii) + ':' + Arrays.toString(spec.colors)
                + ':' + readIconSizePercent(context) + ':' + Math.round(context.getResources()
                        .getDisplayMetrics().density * 100.0f);
        synchronized (ACTIVE_ICON_SHADOW_LOCK) {
            String cached = ACTIVE_ICON_LIVE_SHADOW_CACHE.get(key);
            if (cached != null && new File(cached).isFile()) {
                Log.d(TAG, "ACTIVE_ICON_LIVE_SHADOW_CACHE_HIT type=" + type
                        + " canvas=" + canvasSize + " path=" + cached + shadowLogSuffix(spec));
                return cached;
            }
            Log.d(TAG, "ACTIVE_ICON_LIVE_SHADOW_CACHE_MISS type=" + type
                    + " base=" + baseSize + " canvas=" + canvasSize + shadowLogSuffix(spec));
            Bitmap source = decodeActiveIconShadowSource(sourcePath, type);
            if (source == null) {
                Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_BITMAP_CREATE_FAILED type=" + type
                        + " source=" + sourcePath);
                return null;
            }
            Bitmap silhouette = Bitmap.createBitmap(canvasSize, canvasSize, Bitmap.Config.ARGB_8888);
            Canvas silhouetteCanvas = new Canvas(silhouette);
            Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
            float scale = Math.min(baseSize / (float) source.getWidth(),
                    baseSize / (float) source.getHeight());
            float drawWidth = source.getWidth() * scale;
            float drawHeight = source.getHeight() * scale;
            silhouetteCanvas.drawBitmap(source, null,
                    new android.graphics.RectF(padding + (baseSize - drawWidth) * 0.5f,
                            padding + (baseSize - drawHeight) * 0.5f,
                            padding + (baseSize + drawWidth) * 0.5f,
                            padding + (baseSize + drawHeight) * 0.5f), paint);
            source.recycle();
            Bitmap shadow = createShadowOnlyBitmap(silhouette, spec);
            silhouette.recycle();
            if (shadow == null) {
                return null;
            }
            File dir = new File(context.getCacheDir(), ACTIVE_ICON_SHADOW_CACHE_DIR);
            if (!dir.isDirectory() && !dir.mkdirs()) {
                shadow.recycle();
                Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_BITMAP_CREATE_FAILED type=" + type
                        + " cacheDir=" + dir);
                return null;
            }
            File output = new File(dir, Integer.toHexString(key.hashCode()) + ".png");
            FileOutputStream stream = null;
            try {
                stream = new FileOutputStream(output);
                if (!shadow.compress(Bitmap.CompressFormat.PNG, 100, stream)) {
                    throw new IllegalStateException("PNG compression failed");
                }
            } catch (Throwable error) {
                Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_BITMAP_CREATE_FAILED type=" + type
                        + " class=" + error.getClass().getSimpleName());
                return null;
            } finally {
                shadow.recycle();
                if (stream != null) {
                    try { stream.close(); } catch (Throwable ignored) { }
                }
            }
            String path = output.getAbsolutePath();
            ACTIVE_ICON_LIVE_SHADOW_CACHE.put(key, path);
            Log.d(TAG, "ACTIVE_ICON_LIVE_SHADOW_BITMAP_CREATED type=" + type
                    + " width=" + canvasSize + " height=" + canvasSize
                    + " outputBytes=" + output.length() + shadowLogSuffix(spec));
            Log.d(TAG, "ACTIVE_ICON_LIVE_BACKGROUND_TEXTURE_CREATED type=" + type
                    + " width=" + baseSize + " height=" + baseSize
                    + " shadowWidth=" + canvasSize + " shadowHeight=" + canvasSize
                    + shadowLogSuffix(spec));
            return path;
        }
    }

    /**
     * pb.path() produces a path relative to the active theme.  Keep the dynamic-node
     * shadow on the exact same asset loading path as the original Weather/Calendar
     * nodes instead of assuming that value is a readable filesystem path.
     */
    private static Bitmap decodeActiveIconShadowSource(String sourcePath, String type) {
        File sourceFile = new File(sourcePath);
        Log.d(TAG, "ACTIVE_ICON_SHADOW_SOURCE_RESOLVED type=" + type
                + " path=" + sourcePath + " exists=" + sourceFile.exists()
                + " isFile=" + sourceFile.isFile() + " bytes=" + sourceFile.length());

        Bitmap original = null;
        String route = "theme_asset";
        try {
            Class<?> imageClass = Class.forName("com.smartisanos.smengine.s");
            Method getBitmap = imageClass.getMethod("getBitmap", String.class);
            Object result = getBitmap.invoke(null, sourcePath);
            if (result instanceof Bitmap) {
                original = (Bitmap) result;
            }
        } catch (Throwable error) {
            route = "theme_asset_failed_" + error.getClass().getSimpleName();
            Log.w(TAG, "ACTIVE_ICON_SHADOW_THEME_ASSET_DECODE_FAILED type=" + type
                    + " path=" + sourcePath + " class=" + error.getClass().getSimpleName());
        }
        if (original == null && sourceFile.isFile()) {
            route = "file";
            original = BitmapFactory.decodeFile(sourcePath);
        }
        if (original == null) {
            Log.w(TAG, "ACTIVE_ICON_SHADOW_SOURCE_DECODE_FAILED type=" + type
                    + " path=" + sourcePath + " route=" + route);
            return null;
        }
        try {
            Bitmap copy = original.copy(Bitmap.Config.ARGB_8888, false);
            if (copy != null) {
                Log.d(TAG, "ACTIVE_ICON_SHADOW_SOURCE_DECODED type=" + type
                        + " route=" + route + " width=" + copy.getWidth()
                        + " height=" + copy.getHeight() + " hasAlpha=" + copy.hasAlpha());
                return copy;
            }
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_SHADOW_SOURCE_COPY_FAILED type=" + type
                    + " class=" + error.getClass().getSimpleName());
        }
        return null;
    }

    public static void logActiveIconLiveShadowNodeAttached(
            String type, float backgroundSize, float shadowSize, String path) {
        Log.d(TAG, "ACTIVE_ICON_LIVE_SHADOW_NODE_ATTACHED type=" + type
                + " backgroundSize=" + backgroundSize + " shadowSize=" + shadowSize
                + " path=" + path);
        Log.d(TAG, "ACTIVE_ICON_LIVE_SHADOW_NODE_VISIBLE type=" + type
                + " backgroundSize=" + backgroundSize + " shadowSize=" + shadowSize);
    }

    /** Logs the real SMEngine placement after setImageName/addChild without a Java dependency on it. */
    public static void logActiveIconLiveShadowNodeState(String type, Object node) {
        if (node == null) {
            Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_NODE_STATE type=" + type + " node=null");
            return;
        }
        try {
            Class<?> clazz = node.getClass();
            Object parent = clazz.getMethod("getParent").invoke(node);
            Object layer = clazz.getMethod("getLayer").invoke(node);
            Object queue = clazz.getMethod("getRenderQueue").invoke(node);
            Object visible = clazz.getMethod("isVisible").invoke(node);
            Log.d(TAG, "ACTIVE_ICON_LIVE_SHADOW_NODE_STATE type=" + type
                    + " node=" + clazz.getName()
                    + " parent=" + (parent == null ? "null" : parent.getClass().getName())
                    + " layer=" + layer + " queue=" + queue + " visible=" + visible);
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_NODE_STATE_FAILED type=" + type
                    + " class=" + error.getClass().getSimpleName());
        }
    }

    private static Context applicationContext() {
        try {
            Class<?> proxy = Class.forName("com.smartisanos.launcher.ja");
            Object instance = proxy.getMethod("getInstance").invoke(null);
            Object application = proxy.getMethod("getApplication").invoke(instance);
            return application instanceof Context ? (Context) application : null;
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_CONTEXT_UNAVAILABLE class="
                    + error.getClass().getSimpleName());
            return null;
        }
    }

    private static int shadowPadding(EffectiveIconShadowSpec spec) {
        int largestRadius = 0;
        if (spec != null) {
            for (int radius : spec.radii) largestRadius = Math.max(largestRadius, radius);
        }
        return Math.max(2, largestRadius * 2 + 1);
    }

    private static void logCachedFrameComposeStarted(
            String type, int width, int height, EffectiveIconShadowSpec spec) {
        Log.d(TAG, "ACTIVE_ICON_CACHED_FRAME_COMPOSE_STARTED type=" + type
                + " width=" + width + " height=" + height + shadowLogSuffix(spec));
    }

    private static boolean shouldLogCachedFrame(
            String type, int width, int height, EffectiveIconShadowSpec spec) {
        String key = type + ':' + width + ':' + height + ':'
                + (spec == null ? "unavailable" : spec.mode + ":"
                + Arrays.toString(spec.radii) + ':' + Arrays.toString(spec.colors));
        synchronized (LOGGED_CACHED_FRAME_COMPOSITIONS) {
            return LOGGED_CACHED_FRAME_COMPOSITIONS.add(key);
        }
    }

    private static String shadowLogSuffix(EffectiveIconShadowSpec spec) {
        return spec == null ? " mode=unavailable thread=" + Thread.currentThread().getName()
                : " mode=" + spec.mode + " radii=" + Arrays.toString(spec.radii)
                + " colors=" + Arrays.toString(spec.colors)
                + " thread=" + Thread.currentThread().getName();
    }

    private static final class EffectiveIconShadowSpec {
        final int mode;
        final int[] radii;
        final int[] colors;
        final String gaussianSuffix;

        EffectiveIconShadowSpec(int mode, int[] radii, int[] colors, String gaussianSuffix) {
            this.mode = mode;
            this.radii = radii.clone();
            this.colors = colors.clone();
            this.gaussianSuffix = gaussianSuffix;
        }
    }

    public static boolean isDynamicIconPackage(String packageName) {
        if (packageName == null) return false;
        return WeatherBridge.isWeatherPackage(packageName, null, null)
                || "com.android.calendar".equals(packageName)
                || "com.smartisanos.calendar".equals(packageName)
                || "com.smartisanos.clock".equals(packageName);
    }

    /** Dynamic/normal mode changes must bypass the launcher's APK-icon MD5 shortcut. */
    public static boolean shouldForceDynamicIconDatabaseWrite(String packageName) {
        return isDynamicIconPackage(packageName);
    }

    public static void ensureTransparentThemeRegistered(Context context) {
        transparentTheme(context);
    }

    public static Object transparentTheme(Context context) {
        if (context == null || !packageInstalled(context, "com.smartisanos.launcher.theme.trans")) {
            return null;
        }
        Object theme = null;
        try {
            Class<?> themeClass = Class.forName("com.smartisanos.launcher.theme.v");
            theme = themeClass.getConstructor(String.class).newInstance("smartisan_theme_trans");
            themeClass.getField("mPackage").set(theme, "com.smartisanos.launcher.theme.trans");
            themeClass.getField("mName").set(theme, "透明");
            themeClass.getField("mResources").set(theme,
                    context.getPackageManager().getResourcesForApplication("com.smartisanos.launcher.theme.trans"));

            Class<?> manager = Class.forName("com.smartisanos.launcher.theme.X");
            java.lang.reflect.Field themeMapField = manager.getDeclaredField("gu");
            themeMapField.setAccessible(true);
            Object themeMapValue = themeMapField.get(null);
            if (themeMapValue instanceof Map) {
                ((Map) themeMapValue).put("smartisan_theme_trans", theme);
            }
            java.lang.reflect.Field themeListField = manager.getDeclaredField("fu");
            themeListField.setAccessible(true);
            Object themeListValue = themeListField.get(null);
            if (themeListValue instanceof List && !((List) themeListValue).contains("smartisan_theme_trans")) {
                ((List) themeListValue).add("smartisan_theme_trans");
            }
            try {
                java.lang.reflect.Field packageMapField = manager.getDeclaredField("hu");
                packageMapField.setAccessible(true);
                Object packageMapValue = packageMapField.get(null);
                if (packageMapValue instanceof Map) {
                    ((Map) packageMapValue).put("com.smartisanos.launcher.theme.trans", "smartisan_theme_trans");
                }
            } catch (Throwable ignored) {
            }
        } catch (Throwable ignored) {
        }
        if (theme != null) {
            return theme;
        }
        try {
            Class<?> manager = Class.forName("com.smartisanos.launcher.theme.X");
            java.lang.reflect.Field themeMapField = manager.getDeclaredField("gu");
            themeMapField.setAccessible(true);
            Object themeMapValue = themeMapField.get(null);
            if (themeMapValue instanceof Map) {
                return ((Map) themeMapValue).get("smartisan_theme_trans");
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static int readInt(Context context, String key, int defValue) {
        if (context == null || key == null) {
            return defValue;
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences(SETTINGS_PREFS, Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                return prefs.getInt(key, defValue);
            }
        } catch (Throwable ignored) {
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                return prefs.getInt(key, defValue);
            }
        } catch (Throwable ignored) {
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), key, defValue);
        } catch (Throwable ignored) {
        }
        try {
            return Settings.System.getInt(context.getContentResolver(), key, defValue);
        } catch (Throwable ignored) {
        }
        return defValue;
    }

    private static boolean packageInstalled(Context context, String pkg) {
        try {
            context.getPackageManager().getPackageInfo(pkg, 0);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static int normalizeIconSizePercent(int percent) {
        if (percent == 0) {
            return 100;
        }
        if (percent == 1) {
            return 110;
        }
        if (percent == 2) {
            return 120;
        }
        if (percent < 50) {
            return 50;
        }
        if (percent > 150) {
            return 150;
        }
        return percent;
    }

    private static int effectiveIconSizePercent(int percent) {
        int scaled = Math.round(percent * 1.20f);
        if (scaled < 50) {
            return 50;
        }
        if (scaled > 180) {
            return 180;
        }
        return scaled;
    }

}
