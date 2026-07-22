package com.smartisanos.launcher.settings;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.CompoundButton;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;
import com.smartisanos.home.settings.PreviewSettingItemView;
import com.smartisanos.home.settings.SettingItemSwitch;

/**
 * Settings main page Activity.
 *
 * Shows the setting_main layout and routes each item to its target:
 *   - 关于我们        → AboutActivity          (阶段 1)
 *   - OCD/附加功能    → AdditionalFeaturesActivity (阶段 2)
 *   - 默认桌面        → SettingsPlatformCompat (阶段 2)
 *   - 电池优化        → SettingsPlatformCompat (阶段 2)
 *   - 桌面主题/壁纸   → ThemeWallpaperActivity (阶段 4)
 *   - 应用图标        → AppIconsActivity       (阶段 5)
 *   - 12/20 宫格      → OriginalSettingsBridge (阶段 6)
 */
public class SettingsMainActivity extends BaseSettingsActivity {

    private static final String PREFS = "com.smartisanos.launcher_prefs";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        int layoutId = getResources().getIdentifier("setting_main", "layout", "com.smartisanos.home");
        setContentView(layoutId);

        // Bind Smartisan icons, thumbnails, preview cards & version text
        View contentRoot = findViewById(android.R.id.content);
        if (contentRoot != null) {
            MaintainedLauncherSettingsHost.bindMainSettingsPagePublic(this, contentRoot);
        }

        setupMainTitleBar(getStringByName("launcher_setting_name", "Launcher Settings"));

        // ── Modern-UI toggle (stays on main page) ────────────────────────────
        View modernSwitchRow = findViewByName("item_id_hide_navigation_bar");
        if (modernSwitchRow instanceof SettingItemSwitch) {
            final SettingItemSwitch item = (SettingItemSwitch) modernSwitchRow;
            item.setTitle("使用现代版设置");
            item.setChecked(SettingsUiFlags.isModernUiEnabled(this));
            if (item.getSwitch() != null) {
                item.getSwitch().setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        SettingsUiFlags.setModernUiEnabled(SettingsMainActivity.this, isChecked);
                        if (!isChecked) {
                            android.widget.Toast.makeText(SettingsMainActivity.this,
                                    "已切换回传统设置页，正在重新加载…", android.widget.Toast.LENGTH_SHORT).show();
                            Intent intent = new Intent();
                            intent.setClassName("com.smartisanos.launcher",
                                    "com.smartisanos.launcher.theme.ThemeChooserActivity");
                            intent.putExtra("settings_bypass_modern_ui", true);
                            startActivity(intent);
                            finish();
                        }
                    }
                });
            }
        }

        // ── Simple switches on main page ─────────────────────────────────────
        bindPrefSwitch("item_id_hide_lable", "launcher_hide_lable", false);
        bindPrefSwitch("item_id_badge_swipe_clean", "launcher_badge_swipe_clean", false);
        bindPrefSwitch("item_id_unlock_anim", "launcher_unlock_animation_enabled", true);

        // ── 12/20 宫格切换 (阶段 6) ───────────────────────────────────────────
        bindGridModeSelection();

        // ── 关于我们 → AboutActivity (阶段 1, already implemented) ─────────────
        bindActivityLaunch("setting_about_us", AboutActivity.class);

        // ── OCD 选项 / 附加功能 → AdditionalFeaturesActivity (阶段 2) ──────────
        bindActivityLaunch("setting_ocd_options", AdditionalFeaturesActivity.class);

        // ── 默认桌面 → SettingsPlatformCompat (阶段 2) ──────────────────────────
        View defaultHome = findViewByName("setting_switch_launcher");
        if (defaultHome != null) {
            defaultHome.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    SettingsPlatformCompat.openDefaultHomeSettings(SettingsMainActivity.this);
                }
            });
        }

        // ── 电池优化 → SettingsPlatformCompat (阶段 2) ──────────────────────────
        View batteryOpt = findViewByName("setting_battery_optimization");
        if (batteryOpt != null) {
            batteryOpt.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    SettingsPlatformCompat.openBatteryOptimizationSettings(SettingsMainActivity.this);
                }
            });
        }

        // ── 主题选择与桌面壁纸 → ThemeWallpaperActivity (阶段 4) ─────────────
        bindThemeWallpaperLaunch("item_id_themes", ThemeWallpaperActivity.PAGE_THEME);

        boolean showWallpaper = MaintainedLauncherSettingsHost.shouldShowLauncherWallpaperSettingPublic(this);
        View wallpaperRow = findViewByName("item_id_launcher_wallpaper");
        if (wallpaperRow != null) {
            if (showWallpaper) {
                wallpaperRow.setVisibility(View.VISIBLE);
                bindThemeWallpaperLaunch("item_id_launcher_wallpaper", ThemeWallpaperActivity.PAGE_WALLPAPER);
            } else {
                wallpaperRow.setVisibility(View.GONE);
            }
        }

        // ── 应用图标设置 → AppIconsActivity (阶段 5) ───────────────────────────
        bindActivityLaunch("item_id_icons", AppIconsActivity.class);

        // ── 分身、隐私和动态图标保留原版内容/写入链，但交给真实 Activity 承接返回栈。 ──
        bindActivityLaunch("item_id_profile_apps", ProfileAppsSettingsActivity.class);
        View checkUpdate = findViewByName("more_check_upgradation");
        if (checkUpdate != null) {
            checkUpdate.setOnClickListener(new View.OnClickListener() {
                @Override public void onClick(View v) {
                    MaintainedLauncherSettingsHost.checkForUpdatesPublic(SettingsMainActivity.this);
                }
            });
        }
        bindActivityLaunch("item_id_privacy_password", PrivacySettingsActivity.class);
        bindActivityLaunch("item_page_flip_anims", PageFlipSettingsActivity.class);
        bindActivityLaunch("setting_dynamic_weather", DynamicIconSettingsActivity.class);
    }

    @Override
    protected void onResume() {
        super.onResume();
        // Notification-listener authorization returns to this Activity on
        // modern settings. Reconcile the persisted pending target here rather
        // than waiting for the legacy ThemeChooserActivity lifecycle.
        MaintainedLauncherSettingsHost.onSettingsHostResumed(this);
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        applySettingsBackTransition();
    }

    private void bindThemeWallpaperLaunch(String viewName, final String page) {
        View row = findViewByName(viewName);
        if (row != null) {
            row.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent();
                    intent.setClassName("com.smartisanos.launcher",
                            ThemeWallpaperActivity.class.getName());
                    intent.putExtra(ThemeWallpaperActivity.EXTRA_PAGE, page);
                    startSettingsChildActivity(intent);
                }
            });
        }
    }

    // ─── Helpers ──────────────────────────────────────────────────────────────

    private void bindActivityLaunch(String viewName, final Class<?> targetClass) {
        View row = findViewByName(viewName);
        if (row != null) {
            row.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent();
                    intent.setClassName("com.smartisanos.launcher", targetClass.getName());
                    startSettingsChildActivity(intent);
                }
            });
        }
    }

    private void bindPrefSwitch(String viewName, final String key, boolean defaultValue) {
        View row = findViewByName(viewName);
        if (row instanceof SettingItemSwitch) {
            final SettingItemSwitch item = (SettingItemSwitch) row;
            SharedPreferences prefs = getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            item.setChecked(prefs.getBoolean(key, defaultValue));
            if (item.getSwitch() != null) {
                item.getSwitch().setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                    @Override
                    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                        OriginalSettingsBridge.writeBoolSetting(SettingsMainActivity.this, key, isChecked);
                        OriginalSettingsBridge.applyLauncherSettingChange(SettingsMainActivity.this, key);
                    }
                });
            }
        }
    }

    private void bindGridModeSelection() {
        View v12 = findViewByName("smartisan_launcher_9_grids");
        View v20 = findViewByName("smartisan_launcher_16_grids");
        if (v12 instanceof PreviewSettingItemView && v20 instanceof PreviewSettingItemView) {
            final PreviewSettingItemView grid12 = (PreviewSettingItemView) v12;
            final PreviewSettingItemView grid20 = (PreviewSettingItemView) v20;

            grid12.setTitle("十二宫格");
            grid20.setTitle("二十宫格");

            int currentMode = MaintainedLauncherSettingsHost.readLauncherModePublic(this);
            grid12.setChecked(currentMode == 12);
            grid20.setChecked(currentMode == 20);

            grid12.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    int oldMode = MaintainedLauncherSettingsHost.readLauncherModePublic(SettingsMainActivity.this);
                    if (oldMode != 12) {
                        MaintainedLauncherSettingsHost.confirmLauncherModePublic(
                                SettingsMainActivity.this, 12);
                    }
                }
            });

            grid20.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    int oldMode = MaintainedLauncherSettingsHost.readLauncherModePublic(SettingsMainActivity.this);
                    if (oldMode != 20) {
                        MaintainedLauncherSettingsHost.confirmLauncherModePublic(
                                SettingsMainActivity.this, 20);
                    }
                }
            });
        }
    }

    private void bindLegacyRedirect(String viewName, final String targetPage) {
        View row = findViewByName(viewName);
        if (row != null) {
            row.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent();
                    intent.setClassName("com.smartisanos.launcher",
                            "com.smartisanos.launcher.theme.ThemeChooserActivity");
                    intent.putExtra("settings_bypass_modern_ui", true);
                    if (targetPage != null) {
                        intent.putExtra("target_page", targetPage);
                    }
                    startSettingsChildActivity(intent);
                }
            });
        }
    }
}
