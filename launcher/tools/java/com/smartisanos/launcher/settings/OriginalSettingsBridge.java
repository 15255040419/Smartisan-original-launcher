package com.smartisanos.launcher.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import java.util.Map;

/**
 * OriginalSettingsBridge — The single, audited interface connecting the modern
 * settings UI with the legacy/original Launcher core engines and databases.
 *
 * This class abstracts all reflection logic, database thread operations, and reload
 * coordinators. No UI classes should touch mixed reflection packages directly.
 */
public final class OriginalSettingsBridge {
    private static final String TAG = "OriginalSettingsBridge";

    // Standard pref files used by launcher
    private static final String PREF_LAUNCHER = "com.smartisanos.launcher_prefs";
    private static final String PREF_SETTINGS = "launcher_settings";

    // Keys
    private static final String KEY_LAUNCHER_MODE = "launcher_mode";
    private static final String KEY_LAUNCHER_MODE_PREF = "prefs_key_launcher_mode";
    private static final String KEY_TRANSPARENT_WALLPAPER_BLUR = "launcher_transparent_wallpaper_blur";
    private static final String KEY_DYNAMIC_WEATHER_CALENDAR = "launcher_dynamic_weather_calendar_enabled";
    private static final String KEY_LAUNCHER_ICON_SIZE = "launcher_icon_size";

    private OriginalSettingsBridge() {}

    // ─── Logging ─────────────────────────────────────────────────────────────

    public static void log(String domain, String operation, String arguments, SettingsApplyResult result, String entry) {
        Log.i(TAG, "ORIGINAL_SETTINGS_BRIDGE domain=" + domain + " op=" + operation 
            + " args=[" + arguments + "] result=" + result + " entry=" + entry);
    }

    public static void writeBoolSetting(Context context, String key, boolean value) {
        int intValue = value ? 1 : 0;
        writeSystemInt(context, key, intValue);
        writeLocalBool(context, PREF_SETTINGS, key, value);
        writeLocalBool(context, PREF_LAUNCHER, key, value);
    }

    public static void applyLauncherSettingChange(Context context, String key) {
        try {
            Class<?> host = Class.forName("com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost");
            host.getMethod("applyLauncherSettingChange", Context.class, String.class)
                    .invoke(null, context, key);
        } catch (Throwable ignored) {}
    }

    // ─── Grid Switch ─────────────────────────────────────────────────────────

    /**
     * Switch the original database base-page mode.  The original migrator uses
     * 12 for 3 x 4 and 9 for 4 x 5; persisted settings still use 12/20 cells.
     */
    public static SettingsApplyResult switchGridMode(final Context context, final int oldPageMode, final int newPageMode) {
        return switchGridPageMode(context, oldPageMode, newPageMode,
                cellCountForPageMode(newPageMode));
    }

    /** Entry point for modern settings, whose rows expose cell counts. */
    public static SettingsApplyResult switchGridCellCount(final Context context,
                                                           final int oldCellCount,
                                                           final int newCellCount) {
        if (!isSupportedCellCount(oldCellCount) || !isSupportedCellCount(newCellCount)) {
            log("GRID", "switchGridCellCount", "old=" + oldCellCount + ",new=" + newCellCount,
                    SettingsApplyResult.FAILED, "entry_invalid_cell_count");
            return SettingsApplyResult.FAILED;
        }
        return switchGridPageMode(context, pageModeForCellCount(oldCellCount),
                pageModeForCellCount(newCellCount), newCellCount);
    }

    private static SettingsApplyResult switchGridPageMode(final Context context,
                                                           final int oldPageMode,
                                                           final int newPageMode,
                                                           final int newCellCount) {
        // Settings activities wrap their base Context to load the original
        // Settings resources and consequently report com.smartisanos.home as
        // their package.  The original grid migrator and reload Activity belong
        // to the real Launcher package, so keep this bridge on Application.
        final Context launcherContext = context != null && context.getApplicationContext() != null
                ? context.getApplicationContext() : context;
        if (launcherContext == null) {
            return SettingsApplyResult.FAILED;
        }
        if (oldPageMode == newPageMode) {
            log("GRID", "switchGridMode", "oldPage=" + oldPageMode + ",newPage=" + newPageMode
                    + ",newCells=" + newCellCount, SettingsApplyResult.SUCCESS_NO_CHANGE, "entry");
            return SettingsApplyResult.SUCCESS_NO_CHANGE;
        }

        log("GRID", "switchGridMode_start", "oldPage=" + oldPageMode + ",newPage=" + newPageMode
                + ",newCells=" + newCellCount, SettingsApplyResult.PENDING, "entry");
        try {
            // Find DatabaseHandler worker Handler
            Class<?> dbHandlerClass = Class.forName("com.smartisanos.launcher.data.A");
            java.lang.reflect.Field workerField = dbHandlerClass.getDeclaredField("mWorker");
            workerField.setAccessible(true);
            Handler worker = (Handler) workerField.get(null);
            if (worker == null) {
                throw new IllegalStateException("DatabaseHandler worker not found");
            }

            boolean posted = worker.post(new Runnable() {
                @Override
                public void run() {
                    try {
                        // Persist grid settings (N.getInstance().d(context, mode))
                        Class<?> prefsClass = Class.forName("com.smartisanos.launcher.data.N");
                        Object instance = prefsClass.getMethod("getInstance").invoke(null);
                        prefsClass.getMethod("d", Context.class, Integer.TYPE)
                                .invoke(instance, launcherContext, newPageMode);

                        // Reorganize database with original base-page ids.
                        Class.forName("com.smartisanos.launcher.data.F")
                                .getMethod("i", Integer.TYPE, Integer.TYPE)
                                .invoke(null, oldPageMode, newPageMode);

                        log("GRID", "switchGridMode_db_finished", "oldPage=" + oldPageMode + ",newPage=" + newPageMode, SettingsApplyResult.SUCCESS, "worker");
                    } catch (Throwable t) {
                        log("GRID", "switchGridMode_db_failed", "oldPage=" + oldPageMode + ",newPage=" + newPageMode + ",err=" + t.getMessage(), SettingsApplyResult.FAILED, "worker");
                    }

                    // Request cold reload on Main Thread
                    new Handler(Looper.getMainLooper()).post(new Runnable() {
                        @Override
                        public void run() {
                            // Update mode local pref first so coordinator can read it
                            writeLocalInt(launcherContext, PREF_LAUNCHER, KEY_LAUNCHER_MODE_PREF, newCellCount);
                            writeLocalInt(launcherContext, PREF_SETTINGS, KEY_LAUNCHER_MODE_PREF, newCellCount);
                            writeSystemInt(launcherContext, KEY_LAUNCHER_MODE, newCellCount);

                            boolean reloaded = com.smartisanos.launcher.reload.LauncherColdReloadCoordinator
                                    .beginGridReload(launcherContext, newCellCount);
                            if (reloaded) {
                                log("GRID", "switchGridMode_reload_started", "newCells=" + newCellCount, SettingsApplyResult.SUCCESS, "ui");
                            } else {
                                log("GRID", "switchGridMode_reload_failed", "newCells=" + newCellCount, SettingsApplyResult.FAILED, "ui");
                            }
                        }
                    });
                }
            });

            if (!posted) {
                throw new IllegalStateException("Worker rejected DB Runnable");
            }
            return SettingsApplyResult.SUCCESS;
        } catch (Throwable t) {
            log("GRID", "switchGridMode_error", "err=" + t.getMessage(), SettingsApplyResult.FAILED, "entry");
            return SettingsApplyResult.FAILED;
        }
    }

    private static boolean isSupportedCellCount(int cellCount) {
        return cellCount == 12 || cellCount == 20;
    }

    private static int pageModeForCellCount(int cellCount) {
        return cellCount == 20 ? 9 : 12;
    }

    private static int cellCountForPageMode(int pageMode) {
        return pageMode == 9 ? 20 : 12;
    }

    // ─── Theme Apply (Normal and Aero) ────────────────────────────────────────

    /**
     * Applies a normal/glassmorphism theme.
     * Queues theme selection to original ChangeThemeHandler path.
     */
    public static SettingsApplyResult applyTheme(Activity activity, String id, String pkg, String name) {
        log("THEME", "applyTheme_start", "id=" + id + ",pkg=" + pkg + ",name=" + name, SettingsApplyResult.PENDING, "entry");
        try {
            // Normal theme disables transparent overlay first
            writeLocalBool(activity, PREF_SETTINGS, "launcher_grid_theme", false);
            writeSystemInt(activity, "launcher_grid_theme", 0);
            writeLocalBool(activity, PREF_SETTINGS, KEY_TRANSPARENT_WALLPAPER_BLUR, false);

            boolean stored = false;
            Object theme = null;
            Class<?> manager = Class.forName("com.smartisanos.launcher.theme.X");
            if ("smartisan_theme_black".equals(id)) {
                theme = manager.getMethod("X", Context.class).invoke(null, activity);
            } else {
                theme = manager.getMethod("k", Context.class, String.class).invoke(null, activity, pkg);
            }
            if (theme == null) {
                theme = manager.getMethod("fa", String.class).invoke(null, id);
            }

            // Theme.java exposes the original package as a field, not a getter.
            // Do not turn a resolved installed theme into a failed apply because
            // the port host is invoking it through reflection.
            if (theme != null) {
                try {
                    Object value = theme.getClass().getField("mPackage").get(theme);
                    if (value instanceof String && ((String) value).length() > 0) {
                        pkg = (String) value;
                    }
                } catch (Throwable ignored) {
                    // The caller package remains the verified fallback.
                }
            }

            Object result = manager.getMethod("ja", String.class).invoke(null, pkg + ":" + id);
            stored = Boolean.TRUE.equals(result);

            if (!stored) {
                log("THEME", "applyTheme_store_failed", "id=" + id, SettingsApplyResult.FAILED, "entry");
                return SettingsApplyResult.FAILED;
            }

            // Dispatch message to ChangeThemeHandler
            Class<?> require = Class.forName("com.smartisanos.launcher.theme.ChangeThemeHandler$RequireChangeFrom");
            Object setting = Enum.valueOf((Class<Enum>) require.asSubclass(Enum.class), "SETTING");
            Class<?> handler = Class.forName("com.smartisanos.launcher.theme.t");
            Object handlerInstance = handler.getMethod("getInstance").invoke(null);
            if (handlerInstance != null) {
                handler.getMethod("a", require).invoke(handlerInstance, setting);
            }

            // Write launcher_theme settings config
            Class<?> settings = Class.forName("com.smartisanos.launcher.data.O");
            settings.getMethod("a", android.content.ContentResolver.class, String.class)
                    .invoke(null, activity.getContentResolver(), id);

            // Notify reload proxy
            Class<?> proxy = Class.forName("com.smartisanos.launcher.ja");
            Object instance = proxy.getMethod("getInstance").invoke(null);
            proxy.getMethod("l", Boolean.TYPE).invoke(instance, false);

            // Write local settings prefs
            SharedPreferences sp = activity.getSharedPreferences(PREF_SETTINGS, Context.MODE_PRIVATE);
            sp.edit().putString("launcher_theme", id).commit();
            writeSystemString(activity, "launcher_theme", id);

            // Navigation and transition ownership remain with the settings host.
            log("THEME", "applyTheme_committed", "id=" + id, SettingsApplyResult.SUCCESS, "original_handler");
            return SettingsApplyResult.SUCCESS;
        } catch (Throwable t) {
            log("THEME", "applyTheme_error", "err=" + t.getMessage(), SettingsApplyResult.FAILED, "entry");
            return SettingsApplyResult.FAILED;
        }
    }

    // ─── Transparent Theme ───────────────────────────────────────────────────

    /**
     * Enables or disables the transparent overlay theme variant.
     * Triggers active theme cold reload.
     */
    public static SettingsApplyResult setTransparentTheme(Activity activity, boolean enabled) {
        log("THEME", "setTransparentTheme", "enabled=" + enabled, SettingsApplyResult.PENDING, "entry");
        try {
            writeLocalBool(activity, PREF_SETTINGS, "launcher_grid_theme", enabled);
            writeSystemInt(activity, "launcher_grid_theme", enabled ? 1 : 0);

            // Sync with local prefs and system global values
            SharedPreferences sp = activity.getSharedPreferences(PREF_SETTINGS, Context.MODE_PRIVATE);
            sp.edit().putInt("launcher_grid_theme_int", enabled ? 1 : 0).commit();

            // Trigger theme reload
            boolean reloaded = com.smartisanos.launcher.reload.LauncherColdReloadCoordinator
                    .beginThemeReload(activity, enabled);

            if (reloaded) {
                log("THEME", "setTransparentTheme_reload_started", "enabled=" + enabled, SettingsApplyResult.SUCCESS, "entry");
                return SettingsApplyResult.SUCCESS;
            } else {
                log("THEME", "setTransparentTheme_reload_failed", "enabled=" + enabled, SettingsApplyResult.FAILED, "entry");
                return SettingsApplyResult.FAILED;
            }
        } catch (Throwable t) {
            log("THEME", "setTransparentTheme_error", "err=" + t.getMessage(), SettingsApplyResult.FAILED, "entry");
            return SettingsApplyResult.FAILED;
        }
    }

    // ─── Active Icon (Weather/Calendar) ──────────────────────────────────────

    /**
     * Enables or disables dynamic active icons.
     * Triggers active icon cold reload.
     */
    public static SettingsApplyResult setDynamicWeatherCalendar(Context context, boolean enabled) {
        return setDynamicWeatherCalendar(context,
                context != null && context.getSharedPreferences(PREF_SETTINGS, Context.MODE_PRIVATE)
                        .getBoolean(KEY_DYNAMIC_WEATHER_CALENDAR, false), enabled);
    }

    public static SettingsApplyResult setDynamicWeatherCalendar(Context context,
            boolean oldEnabled, boolean enabled) {
        log("ACTIVE_ICON", "setDynamicWeatherCalendar", "enabled=" + enabled, SettingsApplyResult.PENDING, "entry");
        try {
            int value = enabled ? 1 : 0;
            writeSystemInt(context, KEY_DYNAMIC_WEATHER_CALENDAR, value);
            
            SharedPreferences sp1 = context.getSharedPreferences(PREF_SETTINGS, Context.MODE_PRIVATE);
            sp1.edit().putBoolean(KEY_DYNAMIC_WEATHER_CALENDAR, enabled)
                    .putInt(KEY_DYNAMIC_WEATHER_CALENDAR + "_int", value)
                    .commit();

            SharedPreferences sp2 = context.getSharedPreferences(PREF_LAUNCHER, Context.MODE_PRIVATE);
            sp2.edit().putBoolean(KEY_DYNAMIC_WEATHER_CALENDAR, enabled)
                    .putInt(KEY_DYNAMIC_WEATHER_CALENDAR + "_int", value)
                    .commit();

            // Reread to confirm write
            boolean actual = sp1.getBoolean(KEY_DYNAMIC_WEATHER_CALENDAR, false);
            if (actual != enabled) {
                log("ACTIVE_ICON", "setDynamicWeatherCalendar_write_failed", "enabled=" + enabled, SettingsApplyResult.FAILED, "entry");
                return SettingsApplyResult.FAILED;
            }

            boolean reloaded = com.smartisanos.launcher.reload.LauncherColdReloadCoordinator
                    .beginActiveIconReload(context, oldEnabled, enabled);

            if (reloaded) {
                log("ACTIVE_ICON", "setDynamicWeatherCalendar_reload_started", "enabled=" + enabled, SettingsApplyResult.SUCCESS, "entry");
                return SettingsApplyResult.SUCCESS;
            } else {
                log("ACTIVE_ICON", "setDynamicWeatherCalendar_reload_failed", "enabled=" + enabled, SettingsApplyResult.FAILED, "entry");
                return SettingsApplyResult.FAILED;
            }
        } catch (Throwable t) {
            log("ACTIVE_ICON", "setDynamicWeatherCalendar_error", "err=" + t.getMessage(), SettingsApplyResult.FAILED, "entry");
            return SettingsApplyResult.FAILED;
        }
    }

    // ─── Icon Size Percent ───────────────────────────────────────────────────

    /**
     * Applies icon size percentage changes.
     * Performs runtime scaling on layout properties, then requests reload.
     */
    public static SettingsApplyResult applyIconSizePercent(Context context, int percent) {
        log("ICON_SIZE", "applyIconSizePercent", "percent=" + percent, SettingsApplyResult.PENDING, "entry");
        try {
            // Read current size
            SharedPreferences sp = context.getSharedPreferences(PREF_SETTINGS, Context.MODE_PRIVATE);
            int current = sp.getInt(KEY_LAUNCHER_ICON_SIZE, 100);
            if (current == percent) {
                log("ICON_SIZE", "applyIconSizePercent_skip", "percent=" + percent, SettingsApplyResult.SUCCESS_NO_CHANGE, "entry");
                return SettingsApplyResult.SUCCESS_NO_CHANGE;
            }

            // Write size configs
            sp.edit().putInt(KEY_LAUNCHER_ICON_SIZE, percent).commit();
            writeLocalInt(context, PREF_LAUNCHER, KEY_LAUNCHER_ICON_SIZE, percent);
            writeSystemInt(context, KEY_LAUNCHER_ICON_SIZE, percent);

            // Broadcast config changes
            try {
                Intent intent = new Intent("com.smartisanos.launcher.setting_changed");
                intent.putExtra("key", KEY_LAUNCHER_ICON_SIZE);
                context.sendBroadcast(intent);
            } catch (Throwable ignored) {}

            // Scale layout properties in main memory
            applyRuntimeScaling(current, percent);

            // Trigger reload
            boolean reloaded = com.smartisanos.launcher.reload.LauncherColdReloadCoordinator
                    .beginIconSizeReload(context, current, percent);

            if (reloaded) {
                log("ICON_SIZE", "applyIconSizePercent_reload_started", "new=" + percent, SettingsApplyResult.SUCCESS, "entry");
                return SettingsApplyResult.SUCCESS;
            } else {
                log("ICON_SIZE", "applyIconSizePercent_reload_failed", "new=" + percent, SettingsApplyResult.FAILED, "entry");
                return SettingsApplyResult.FAILED;
            }
        } catch (Throwable t) {
            log("ICON_SIZE", "applyIconSizePercent_error", "err=" + t.getMessage(), SettingsApplyResult.FAILED, "entry");
            return SettingsApplyResult.FAILED;
        }
    }

    private static void applyRuntimeScaling(int oldPercent, int newPercent) {
        if (oldPercent <= 0 || oldPercent == newPercent) return;
        float scale = ((float) newPercent) / ((float) oldPercent);
        try {
            // Set user icon scale
            Class.forName("com.smartisanos.launcher.data.LayoutPropertyAdapter")
                    .getMethod("setUserIconScale", Float.TYPE)
                    .invoke(null, ((float) newPercent) / 100.0f);
        } catch (Throwable ignored) {}

        try {
            // Scale properties map
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            java.lang.reflect.Field mapField = constants.getDeclaredField("layoutPropertyMap");
            mapField.setAccessible(true);
            Object value = mapField.get(null);
            if (value instanceof Map) {
                Map map = (Map) value;
                for (Object item : map.values()) {
                    scaleLayoutProperty(item, scale);
                }
            }
        } catch (Throwable ignored) {}

        try {
            // Request layout
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView != null) {
                mainView.getClass().getMethod("requestLayout").invoke(mainView);
            }
        } catch (Throwable ignored) {}
    }

    private static void scaleLayoutProperty(Object property, float scale) {
        if (property == null || scale <= 0f) return;
        try {
            scaleFloatField(property, "icon_size_origin", scale);
            scaleFloatField(property, "icon_size_with_shadow", scale);
            scaleFloatField(property, "icon_size_origin_resize", scale);
            scaleIntField(property, "name_off_set_y", (1f + scale) * 0.5f);
            Class.forName("com.smartisanos.launcher.data.LayoutPropertyAdapter")
                    .getMethod("scaleFolderPreviewForIconSize", Object.class, Float.TYPE)
                    .invoke(null, property, scale);
        } catch (Throwable ignored) {}
    }

    private static void scaleFloatField(Object obj, String fieldName, float scale) throws Exception {
        java.lang.reflect.Field field = obj.getClass().getDeclaredField(fieldName);
        field.setAccessible(true);
        float current = field.getFloat(obj);
        field.setFloat(obj, current * scale);
    }

    private static void scaleIntField(Object obj, String fieldName, float scale) throws Exception {
        java.lang.reflect.Field field = obj.getClass().getDeclaredField(fieldName);
        field.setAccessible(true);
        int current = field.getInt(obj);
        field.setInt(obj, Math.round(current * scale));
    }

    // ─── Unified Pref Helpers ────────────────────────────────────────────────

    public static void writeLocalBool(Context context, String fileName, String key, boolean value) {
        try {
            context.getSharedPreferences(fileName, Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(key, value)
                    .commit();
        } catch (Throwable ignored) {}
    }

    public static void writeLocalInt(Context context, String fileName, String key, int value) {
        try {
            context.getSharedPreferences(fileName, Context.MODE_PRIVATE)
                    .edit()
                    .putInt(key, value)
                    .commit();
        } catch (Throwable ignored) {}
    }

    public static void writeSystemInt(Context context, String key, int value) {
        try {
            Settings.System.putInt(context.getContentResolver(), key, value);
            Settings.System.putString(context.getContentResolver(), key, Integer.toString(value));
        } catch (Throwable ignored) {}
        try {
            Settings.Global.putInt(context.getContentResolver(), key, value);
            Settings.Global.putString(context.getContentResolver(), key, Integer.toString(value));
        } catch (Throwable ignored) {}
    }

    public static void writeSystemString(Context context, String key, String value) {
        try {
            Settings.System.putString(context.getContentResolver(), key, value);
        } catch (Throwable ignored) {}
        try {
            Settings.Global.putString(context.getContentResolver(), key, value);
        } catch (Throwable ignored) {}
    }
}
