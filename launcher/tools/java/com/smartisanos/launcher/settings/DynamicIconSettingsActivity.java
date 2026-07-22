package com.smartisanos.launcher.settings;

import android.os.Bundle;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

/**
 * Real navigation owner for the original weather/calendar active-icon page.
 * The page itself deliberately remains in the existing host: it owns the
 * original permission, city and active-icon reload behavior.
 */
public class DynamicIconSettingsActivity extends BaseSettingsActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MaintainedLauncherSettingsHost.showDynamicWeatherPagePublic(this);
    }

    @Override
    protected void onResume() {
        super.onResume();
        MaintainedLauncherSettingsHost.onSettingsHostResumed(this);
    }
}
