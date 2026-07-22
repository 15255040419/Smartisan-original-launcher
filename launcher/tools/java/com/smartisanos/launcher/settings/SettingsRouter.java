package com.smartisanos.launcher.settings;

import android.app.Activity;
import android.content.Intent;

public final class SettingsRouter {
    private SettingsRouter() {}

    public static boolean route(Activity activity) {
        if (activity == null) return false;
        if (activity.getIntent().hasExtra("extra_enable_modern_ui")) {
            boolean enable = activity.getIntent().getBooleanExtra("extra_enable_modern_ui", false);
            SettingsUiFlags.setModernUiEnabled(activity, enable);
        }
        if (activity.getIntent().getBooleanExtra("settings_bypass_modern_ui", false)) {
            return false;
        }
        // launcher_show_search is the original Launcher gesture route. It
        // intentionally shares ThemeChooserActivity with settings, but must be
        // consumed by the host before modern-settings routing is considered.
        if (activity.getIntent().getBooleanExtra("launcher_show_search", false)) {
            return false;
        }
        if (SettingsUiFlags.isModernUiEnabled(activity)) {
            if (activity instanceof SettingsMainActivity) {
                return false;
            }
            Intent intent = new Intent(activity, SettingsMainActivity.class);
            intent.addFlags(Intent.FLAG_ACTIVITY_FORWARD_RESULT);
            activity.startActivity(intent);
            activity.overridePendingTransition(0, 0);
            activity.finish();
            return true;
        }
        return false;
    }
}
