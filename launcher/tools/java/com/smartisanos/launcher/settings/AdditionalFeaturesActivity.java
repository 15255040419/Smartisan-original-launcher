package com.smartisanos.launcher.settings;

import android.content.Intent;
import android.os.Bundle;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

/**
 * AdditionalFeaturesActivity — Modernized Activity for OCD Settings (Phase 2 & Phase 6).
 *
 * Owns its Activity view and reuses only the existing OCD bindings, keys, and
 * original Launcher side effects from the settings host.
 */
public class AdditionalFeaturesActivity extends BaseSettingsActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        int layoutId = getResources().getIdentifier("setting_ocd_options", "layout", "com.smartisanos.home");
        setContentView(layoutId);
        MaintainedLauncherSettingsHost.bindOcdOptionsPagePublic(this, findViewById(android.R.id.content));
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (!MaintainedLauncherSettingsHost.onActivityResult(this, requestCode, resultCode, data)) {
            super.onActivityResult(requestCode, resultCode, data);
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        // The legacy ThemeChooserActivity performed this reconciliation after
        // returning from notification-access settings. Keep that original
        // state transition when the OCD page is hosted by its own Activity.
        MaintainedLauncherSettingsHost.onSettingsHostResumed(this);
    }
}
