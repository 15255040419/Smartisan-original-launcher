package com.smartisanos.launcher.settings;

import android.os.Bundle;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

/**
 * Real navigation owner for the original cloned-app list.  No clone database
 * or LauncherApps logic is duplicated here.
 */
public class ProfileAppsSettingsActivity extends BaseSettingsActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MaintainedLauncherSettingsHost.showProfileAppsPagePublic(this);
    }

    @Override
    protected void onResume() {
        super.onResume();
        MaintainedLauncherSettingsHost.onSettingsHostResumed(this);
    }
}
