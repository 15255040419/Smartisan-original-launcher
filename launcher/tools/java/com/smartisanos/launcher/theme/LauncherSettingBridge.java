package com.smartisanos.launcher.theme;

import android.content.Context;
import android.provider.Settings;

public final class LauncherSettingBridge {
    private static final String PREFS = "com.smartisanos.launcher_prefs";
    private static final String SETTINGS_PREFS = "launcher_settings";
    private static final String KEY_ICON_SIZE = "launcher_icon_size";

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
        return normalizeIconSizePercent(readInt(context, KEY_ICON_SIZE, 100));
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
}
