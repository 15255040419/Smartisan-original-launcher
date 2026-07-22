package com.smartisanos.launcher.settings;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.PowerManager;
import android.provider.Settings;
import android.widget.Toast;

/**
 * Platform Compatibility Layer for settings-related system intents.
 *
 * This class centralises all calls to Android public APIs and system settings pages
 * that differ by API level or ROM. No Launcher core logic lives here.
 *
 * Each method returns a PlatformResult indicating whether the system handled the action.
 */
public final class SettingsPlatformCompat {

    public enum PlatformResult {
        /** System handled the action (activity started or role request sent). */
        HANDLED,
        /** Action not available on this device/ROM; a fallback was attempted. */
        DEGRADED,
        /** No fallback available; a toast has been shown if appropriate. */
        UNSUPPORTED
    }

    private SettingsPlatformCompat() {}

    // ─── Default Home ────────────────────────────────────────────────────────

    /**
     * Opens the system UI to set the default home app.
     * Priority: RoleManager.ROLE_HOME (API 29+) → HOME_SETTINGS → MANAGE_DEFAULT_APPS_SETTINGS
     *           → MIUI preferred apps → generic Settings → toast.
     */
    public static PlatformResult openDefaultHomeSettings(Activity activity) {
        android.util.Log.i("SettingsPlatformCompat", "openDefaultHomeSettings");
        if (tryRequestHomeRole(activity)) return PlatformResult.HANDLED;
        if (tryStartAction(activity, "android.settings.HOME_SETTINGS")) return PlatformResult.HANDLED;
        if (tryStartAction(activity, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS")) return PlatformResult.DEGRADED;
        if (tryStartAction(activity, "miui.intent.action.PREFERRED_APPLICATION_SETTINGS")) return PlatformResult.DEGRADED;
        if (tryStartAction(activity, Settings.ACTION_SETTINGS)) return PlatformResult.DEGRADED;
        Toast.makeText(activity, "请在系统设置中将锤子桌面设为默认桌面", Toast.LENGTH_LONG).show();
        return PlatformResult.UNSUPPORTED;
    }

    /** API 29+ RoleManager path. Returns false if unavailable or already held. */
    private static boolean tryRequestHomeRole(Activity activity) {
        if (Build.VERSION.SDK_INT < 29) return false;
        try {
            Object roleManager = activity.getSystemService("role");
            if (roleManager == null) return false;
            Class<?> cls = Class.forName("android.app.role.RoleManager");
            String roleHome = (String) cls.getField("ROLE_HOME").get(null);
            Boolean available = (Boolean) cls.getMethod("isRoleAvailable", String.class)
                    .invoke(roleManager, roleHome);
            if (!available) return false;
            Boolean held = (Boolean) cls.getMethod("isRoleHeld", String.class)
                    .invoke(roleManager, roleHome);
            if (held) return false; // already default
            Intent intent = (Intent) cls.getMethod("createRequestRoleIntent", String.class)
                    .invoke(roleManager, roleHome);
            activity.startActivityForResult(intent, RequestCodes.REQUEST_DEFAULT_HOME);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    // ─── Battery Optimisation ────────────────────────────────────────────────

    /**
     * Opens battery optimisation settings for this app.
     * Priority: REQUEST_IGNORE_BATTERY_OPTIMIZATIONS (API 23+)
     *           → IGNORE_BATTERY_OPTIMIZATION_SETTINGS → APPLICATION_DETAILS → generic Settings → toast.
     */
    public static PlatformResult openBatteryOptimizationSettings(Activity activity) {
        android.util.Log.i("SettingsPlatformCompat", "openBatteryOptimizationSettings");
        Context app = activity.getApplicationContext();
        String pkg = app != null ? app.getPackageName() : activity.getPackageName();
        Uri pkgUri = Uri.parse("package:" + pkg);
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                PowerManager pm = (PowerManager) activity.getSystemService(Context.POWER_SERVICE);
                if (pm == null || !pm.isIgnoringBatteryOptimizations(pkg)) {
                    Intent intent = new Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS);
                    intent.setData(pkgUri);
                    activity.startActivity(intent);
                    return PlatformResult.HANDLED;
                }
                // Already whitelisted → show general settings so user can inspect
            } catch (Throwable ignored) {}
        }
        if (tryStartAction(activity, Settings.ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS)) {
            return PlatformResult.DEGRADED;
        }
        try {
            Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
            intent.setData(pkgUri);
            activity.startActivity(intent);
            return PlatformResult.DEGRADED;
        } catch (Throwable ignored) {}
        if (tryStartAction(activity, Settings.ACTION_SETTINGS)) return PlatformResult.DEGRADED;
        Toast.makeText(activity, "无法打开系统电池优化设置", Toast.LENGTH_LONG).show();
        return PlatformResult.UNSUPPORTED;
    }

    // ─── Notification Access ─────────────────────────────────────────────────

    /**
     * Opens the notification listener access settings page.
     * Delegates to BadgeBridge which already handles this.
     */
    public static PlatformResult openNotificationAccessSettings(Activity activity) {
        android.util.Log.i("SettingsPlatformCompat", "openNotificationAccessSettings");
        try {
            com.smartisanos.launcher.badge.BadgeBridge.openNotificationAccessSettings(activity);
            return PlatformResult.HANDLED;
        } catch (Throwable ignored) {}
        // Fallback: standard notification settings
        if (tryStartAction(activity, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS")) {
            return PlatformResult.DEGRADED;
        }
        Toast.makeText(activity, "请在系统设置 → 通知使用权中授权锤子桌面", Toast.LENGTH_LONG).show();
        return PlatformResult.UNSUPPORTED;
    }

    // ─── Helpers ─────────────────────────────────────────────────────────────

    /** Tries to start a bare-action Intent. Returns false if the activity is not found. */
    public static boolean tryStartAction(Activity activity, String action) {
        try {
            activity.startActivity(new Intent(action));
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    // ─── Request codes ────────────────────────────────────────────────────────

    /** onActivityResult request codes used by platform compat. */
    public static final class RequestCodes {
        /** RoleManager.ROLE_HOME request code */
        public static final int REQUEST_DEFAULT_HOME = 8801;

        private RequestCodes() {}
    }
}
