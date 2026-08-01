package com.smartisanos.launcher.backup;

import android.content.Context;

import org.json.JSONObject;

public final class ThemeBackupCodec {
    private ThemeBackupCodec() {}

    public static JSONObject encode(Context context) throws Exception {
        JSONObject root = new JSONObject();
        android.content.SharedPreferences settings = context.getSharedPreferences("launcher_settings", 0);
        android.content.SharedPreferences launcher = context.getSharedPreferences("com.smartisanos.launcher_prefs", 0);
        root.put("themeId", first(settings.getString("launcher_theme", null),
                launcher.getString("launcher_theme", "")));
        root.put("themePackage", first(settings.getString("launcher_theme_package", null),
                launcher.getString("launcher_theme_package", "")));
        root.put("transparent", readBoolean(settings, launcher, "launcher_grid_theme", false));
        root.put("aero", readBoolean(settings, launcher, "launcher_aero_theme", false));
        return root;
    }

    public static boolean isThemePackageAvailable(Context context, String packageName) {
        if (packageName == null || packageName.length() == 0) return true;
        try { context.getPackageManager().getPackageInfo(packageName, 0); return true; }
        catch (Throwable ignored) { return false; }
    }

    private static boolean readBoolean(android.content.SharedPreferences first,
            android.content.SharedPreferences second, String key, boolean fallback) {
        if (first.contains(key)) {
            Object value = first.getAll().get(key);
            if (value instanceof Boolean) return ((Boolean) value).booleanValue();
            if (value instanceof Integer) return ((Integer) value).intValue() != 0;
        }
        if (second.contains(key)) {
            Object value = second.getAll().get(key);
            if (value instanceof Boolean) return ((Boolean) value).booleanValue();
            if (value instanceof Integer) return ((Integer) value).intValue() != 0;
        }
        return fallback;
    }

    private static String first(String first, String second) {
        return first != null && first.length() != 0 ? first : (second == null ? "" : second);
    }
}
