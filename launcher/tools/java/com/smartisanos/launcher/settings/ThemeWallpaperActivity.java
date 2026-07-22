package com.smartisanos.launcher.settings;

import android.content.Intent;
import android.os.Bundle;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

/**
 * ThemeWallpaperActivity — Modernized Activity for Desktop Theme and Wallpaper selection (Phase 4).
 *
 * Delegates 100% of UI and theme logic to MaintainedLauncherSettingsHost.showThemePagePublic
 * and MaintainedLauncherSettingsHost.showWallpaperPagePublic, reusing original Smartisan OS layouts,
 * cards, theme downloaders, and wallpaper management without reinvention.
 */
public class ThemeWallpaperActivity extends BaseSettingsActivity {

    public static final String EXTRA_PAGE = "extra_page";
    public static final String PAGE_THEME = "theme";
    public static final String PAGE_WALLPAPER = "wallpaper";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        String page = getIntent() != null ? getIntent().getStringExtra(EXTRA_PAGE) : PAGE_THEME;
        if (PAGE_WALLPAPER.equals(page)) {
            MaintainedLauncherSettingsHost.showWallpaperPagePublic(this);
        } else {
            MaintainedLauncherSettingsHost.showThemePagePublic(this);
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (!MaintainedLauncherSettingsHost.onActivityResult(this, requestCode, resultCode, data)) {
            super.onActivityResult(requestCode, resultCode, data);
        }
    }
}
