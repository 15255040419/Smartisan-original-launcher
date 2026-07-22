package com.smartisanos.launcher.settings;

import android.content.Context;
import android.content.SharedPreferences;

public final class SettingsUiFlags {
    public static final String PREF_NAME = "com.smartisanos.launcher_prefs";
    public static final String KEY_MODERN_UI = "settings_modern_ui_enabled";

    private SettingsUiFlags() {}

    public static boolean isModernUiEnabled(Context context) {
        SharedPreferences prefs = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
        // Phase 1 keeps the legacy ThemeChooserActivity path as the safe default.
        // The modern shell is enabled explicitly for development/device validation.
        return prefs.getBoolean(KEY_MODERN_UI, false);
    }

    public static void setModernUiEnabled(Context context, boolean enabled) {
        SharedPreferences prefs = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
        prefs.edit().putBoolean(KEY_MODERN_UI, enabled).apply();
    }
}
