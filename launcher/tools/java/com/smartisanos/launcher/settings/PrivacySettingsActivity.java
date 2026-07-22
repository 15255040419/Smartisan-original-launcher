package com.smartisanos.launcher.settings;

import android.os.Bundle;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

/**
 * Real navigation owner for the original privacy-password flow.  Password
 * storage and validation remain exclusively in the existing host implementation.
 */
public class PrivacySettingsActivity extends BaseSettingsActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MaintainedLauncherSettingsHost.showPrivacyPasswordPagePublic(this);
    }
}
