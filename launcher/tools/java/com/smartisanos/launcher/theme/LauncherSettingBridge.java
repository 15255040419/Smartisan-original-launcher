package com.smartisanos.launcher.theme;

import android.content.Context;
import android.graphics.Bitmap;
import android.provider.Settings;
import java.util.List;
import java.util.Map;

public final class LauncherSettingBridge {
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
        return readBool(context, KEY_DYNAMIC_WEATHER_CALENDAR, true);
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
        return true;
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

    /** Keeps original active-icon scene roots aligned with ordinary icon sizing. */
    public static float readActiveIconScaleFactor() {
        try {
            Class<?> proxy = Class.forName("com.smartisanos.launcher.ja");
            Object instance = proxy.getMethod("getInstance").invoke(null);
            if (instance != null) {
                Object application = proxy.getMethod("getApplication").invoke(instance);
                if (application instanceof Context) {
                    return readIconSizePercent((Context) application) / 100.0f;
                }
            }
        } catch (Throwable ignored) {
        }
        return 1.20f;
    }

    public static Bitmap scaleActiveIconBitmap(Bitmap source) {
        if (source == null) {
            return null;
        }
        float factor = readActiveIconScaleFactor();
        if (Math.abs(factor - 1.0f) < 0.001f) {
            return source;
        }
        int width = Math.max(1, Math.round(source.getWidth() * factor));
        int height = Math.max(1, Math.round(source.getHeight() * factor));
        Bitmap scaled = Bitmap.createScaledBitmap(source, width, height, true);
        if (scaled != source) {
            source.recycle();
        }
        return scaled;
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

    public static float calendarLiveDayHeightFactor() {
        int densityDpi = android.content.res.Resources.getSystem()
                .getDisplayMetrics().densityDpi;
        return densityDpi <= 320 ? 1.0f : 0.875f;
    }

    public static float calendarLiveDayYOffsetFactor() {
        int densityDpi = android.content.res.Resources.getSystem()
                .getDisplayMetrics().densityDpi;
        return densityDpi <= 320 ? 0.80f : 0.72f;
    }

}
