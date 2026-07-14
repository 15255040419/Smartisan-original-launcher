package com.smartisanos.launcher.theme;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.provider.Settings;
import java.util.List;
import java.util.Map;

public final class LauncherSettingBridge {
    // Keep cached and live active-icon frames on the footprint verified in v1.5.3.
    private static final float ACTIVE_ICON_OPTICAL_SCALE = 0.7332f;
    private static final float ACTIVE_ICON_LIVE_SCALE = 0.94f;
    // Original active-icon anchor: (icon_size_with_shadow - icon_size_origin) / 4.
    private static final float ACTIVE_ICON_UP_OFFSET = 0.05487805f;
    private static final String PREFS = "com.smartisanos.launcher_prefs";
    private static final String SETTINGS_PREFS = "launcher_settings";
    private static final String KEY_ICON_SIZE = "launcher_icon_size";
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

    /** Places active artwork and the original two-layer software shadow in the icon canvas. */
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

        Bitmap result = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(result);
        int[][] shadowSpec = activeIconShadowSpec();
        for (int i = 0; i < shadowSpec[0].length && i < shadowSpec[1].length; i++) {
            int radius = shadowSpec[0][i];
            if (radius <= 0) continue;
            Paint blurPaint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
            blurPaint.setMaskFilter(new BlurMaskFilter(radius, BlurMaskFilter.Blur.NORMAL));
            int[] offset = new int[2];
            Bitmap shadow = artwork.extractAlpha(blurPaint, offset);
            Paint colorPaint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
            colorPaint.setColor(shadowSpec[1][i]);
            canvas.drawBitmap(shadow, offset[0], offset[1] + Math.max(1, radius / 4), colorPaint);
            shadow.recycle();
        }
        canvas.drawBitmap(artwork, 0.0f, 0.0f, paint);
        artwork.recycle();
        base.recycle();
        active.recycle();
        return result;
    }

    private static int[][] activeIconShadowSpec() {
        int[] radii = new int[]{9, 3};
        int[] colors = new int[]{0x2f000000, 0x3f000000};
        try {
            Class<?> proxy = Class.forName("com.smartisanos.launcher.ja");
            Object instance = proxy.getMethod("getInstance").invoke(null);
            Object application = instance == null ? null : proxy.getMethod("getApplication").invoke(instance);
            if (!(application instanceof Context)) return new int[][]{radii, colors};
            Context context = (Context) application;
            boolean transparent = Settings.System.getInt(
                    context.getContentResolver(), "launcher_grid_theme", 0) == 1;
            String radiusName = transparent ? "icon_shadow_radius_transparent" : "icon_shadow_radius";
            String colorName = transparent ? "icon_shadow_color_transparent" : "icon_shadow_color";
            int radiusId = context.getResources().getIdentifier(radiusName, "array", context.getPackageName());
            int colorId = context.getResources().getIdentifier(colorName, "array", context.getPackageName());
            if (radiusId != 0) radii = context.getResources().getIntArray(radiusId);
            if (colorId != 0) colors = context.getResources().getIntArray(colorId);
        } catch (Throwable ignored) {
        }
        return new int[][]{radii, colors};
    }

    public static boolean isDynamicIconPackage(String packageName) {
        if (packageName == null) return false;
        String value = packageName.toLowerCase(java.util.Locale.ROOT);
        return WeatherBridge.isWeatherPackage(packageName, null, null)
                || value.contains("calendar")
                || "com.smartisanos.calendar".equals(value);
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
