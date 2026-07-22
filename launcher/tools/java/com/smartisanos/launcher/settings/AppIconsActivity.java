package com.smartisanos.launcher.settings;

import android.content.Intent;
import android.os.Bundle;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

/**
 * AppIconsActivity — Modernized Activity for Application Icons settings (Phase 5).
 *
 * Hosts the app_icon_settings_layout for icon size adjustment, icon pack selection,
 * improved icons, and per-app icon customization.
 */
public class AppIconsActivity extends BaseSettingsActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MaintainedLauncherSettingsHost.showIconPagePublic(this);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (!MaintainedLauncherSettingsHost.onActivityResult(this, requestCode, resultCode, data)) {
            super.onActivityResult(requestCode, resultCode, data);
        }
    }
}
