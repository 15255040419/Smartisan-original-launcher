package com.smartisanos.launcher.diagnostics;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;

import com.smartisanos.launcher.theme.LauncherSettingBridge;

import java.util.HashSet;
import java.util.Set;

/** Lightweight, one-shot startup markers for launcher baseline measurements. */
public final class LauncherStartupDiagnostics {
    private static final String TAG = "LauncherStartup";
    private static final String SETTINGS_PREFS = "launcher_settings";
    private static final String LAUNCHER_PREFS = "com.smartisanos.launcher_prefs";
    private static final String KEY_ENABLED = "launcher_startup_diagnostics_enabled";
    private static final Set<String> SEEN = new HashSet<String>();

    private static Context sContext;
    private static long sLaunchStartElapsed;
    private static String sActivityIdentity = "none";
    private static String sState = "state=unavailable";
    private static boolean sEnabled;

    private LauncherStartupDiagnostics() {
    }

    public static synchronized void begin(Activity activity) {
        Context context = activity == null ? null : activity.getApplicationContext();
        sContext = context != null ? context : activity;
        sEnabled = isEnabled(sContext);
        SEEN.clear();
        sLaunchStartElapsed = SystemClock.elapsedRealtime();
        sActivityIdentity = activity == null
                ? "none"
                : activity.getClass().getName() + "@"
                        + Integer.toHexString(System.identityHashCode(activity));
        try {
            sState = readState(sContext);
        } catch (Throwable ignored) {
            sState = "state=unavailable";
        }
        markLocked("LAUNCH_ONCREATE_BEGIN");
    }

    public static synchronized void mark(String marker) {
        markLocked(marker);
    }

    private static void markLocked(String marker) {
        if (!sEnabled || marker == null || !SEEN.add(marker)) {
            return;
        }
        long now = SystemClock.elapsedRealtime();
        long sinceLaunch = sLaunchStartElapsed == 0L ? -1L : now - sLaunchStartElapsed;
        Thread thread = Thread.currentThread();
        Log.i(TAG, marker
                + " elapsedRealtime=" + now
                + " sinceLaunchMs=" + sinceLaunch
                + " pid=" + Process.myPid()
                + " thread=" + thread.getName() + "#" + thread.getId()
                + " activity=" + sActivityIdentity
                + " " + sState);
    }

    private static boolean isEnabled(Context context) {
        if (context == null) {
            return false;
        }
        try {
            SharedPreferences prefs = context.getSharedPreferences(
                    SETTINGS_PREFS, Context.MODE_PRIVATE);
            if (prefs.contains(KEY_ENABLED)) {
                return prefs.getBoolean(KEY_ENABLED, true);
            }
        } catch (Throwable ignored) {
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), KEY_ENABLED, 1) != 0;
        } catch (Throwable ignored) {
            return true;
        }
    }

    private static String readState(Context context) {
        if (context == null) {
            return "state=unavailable";
        }
        SharedPreferences launcherPrefs = context.getSharedPreferences(
                LAUNCHER_PREFS, Context.MODE_PRIVATE);
        int grid = launcherPrefs.getInt("prefs_key_launcher_mode", -1);
        if (grid != 12 && grid != 20) {
            try {
                grid = Settings.Global.getInt(context.getContentResolver(), "launcher_mode", 12);
            } catch (Throwable ignored) {
                grid = 12;
            }
        }
        String theme = LauncherSettingBridge.readString(
                context, "launcher_theme", "smartisan_theme_black");
        boolean transparent = LauncherSettingBridge.readTransparentMode(context);
        boolean dynamicIcons = LauncherSettingBridge.dynamicWeatherCalendarEnabled(context);
        String iconPack = launcherPrefs.getString("prefs_key_selected_icon_pack", "disabled");
        boolean badgeHidden = LauncherSettingBridge.readBool(
                context, "launcher_hide_badge", true);
        return "grid=" + (grid == 20 ? 20 : 12)
                + " theme=" + theme
                + " transparent=" + transparent
                + " dynamicIcons=" + dynamicIcons
                + " iconPack=" + iconPack
                + " badges=" + (badgeHidden ? "hidden" : "enabled");
    }
}
