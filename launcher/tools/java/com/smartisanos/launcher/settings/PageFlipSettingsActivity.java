package com.smartisanos.launcher.settings;

import android.os.Bundle;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

/** Real L1 owner for the original desktop page-flip settings page. */
public class PageFlipSettingsActivity extends BaseSettingsActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MaintainedLauncherSettingsHost.showPageFlipPagePublic(this);
    }
}
