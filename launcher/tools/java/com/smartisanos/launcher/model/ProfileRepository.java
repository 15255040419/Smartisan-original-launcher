package com.smartisanos.launcher.model;

import android.content.Context;
import android.os.Build;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;

import java.util.List;

/** The sole conversion point between legacy user ids and stable serial identities. */
public final class ProfileRepository {
    private static final String TAG = "ProfileRepository";
    private final Context app;

    public ProfileRepository(Context context) { app = context == null ? null : context.getApplicationContext(); }

    public UserHandle userForLegacyId(int userId) {
        if (userId == 0) return android.os.Process.myUserHandle();
        try {
            return (UserHandle) UserHandle.class.getConstructor(Integer.TYPE).newInstance(userId);
        } catch (Throwable error) {
            log(userId, -1L, ProfileState.UNKNOWN, "user_handle_unavailable");
            return null;
        }
    }

    public long serialFor(UserHandle user) {
        if (app == null || user == null) return -1L;
        try {
            UserManager manager = (UserManager) app.getSystemService(Context.USER_SERVICE);
            long serial = manager == null ? -1L : manager.getSerialNumberForUser(user);
            return serial;
        } catch (Throwable error) { return -1L; }
    }

    public ProfileState stateFor(UserHandle user) {
        if (app == null || user == null) return ProfileState.UNKNOWN;
        int id = userId(user);
        long serial = serialFor(user);
        try {
            UserManager manager = (UserManager) app.getSystemService(Context.USER_SERVICE);
            if (manager == null) return logged(id, serial, ProfileState.UNKNOWN, "user_manager_missing");
            if (Build.VERSION.SDK_INT >= 24 && manager.isQuietModeEnabled(user)) {
                return logged(id, serial, ProfileState.QUIET, "quiet_mode");
            }
            if (!isUserRunning(manager, user)) {
                return logged(id, serial, ProfileState.UNAVAILABLE, "user_not_running");
            }
            if (!isUserEnabled(manager, id)) {
                return logged(id, serial, ProfileState.DISABLED, "user_disabled");
            }
            if (Build.VERSION.SDK_INT >= 24 && !manager.isUserUnlocked(user)) {
                return logged(id, serial, ProfileState.LOCKED, "user_locked");
            }
            return logged(id, serial, ProfileState.AVAILABLE, "available");
        } catch (SecurityException error) {
            return logged(id, serial, ProfileState.UNKNOWN, "security_exception");
        } catch (Throwable error) {
            return logged(id, serial, ProfileState.UNKNOWN, error.getClass().getSimpleName());
        }
    }

    public int userId(UserHandle user) {
        if (user == null) return -1;
        try { return ((Integer) UserHandle.class.getMethod("getIdentifier").invoke(user)).intValue(); }
        catch (Throwable error) { return -1; }
    }

    /** Compatibility API helpers remain below the repository boundary. */
    public static List queryLauncherActivities(android.content.pm.PackageManager packageManager,
                                                android.content.Intent intent, int flags) {
        return com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost
                .queryLauncherActivitiesWithProfiles(packageManager, intent, flags);
    }

    public static List queryPackageActivities(Context context, String packageName, int userId) {
        return com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost
                .queryProfileLauncherActivities(context, packageName, userId);
    }
    private ProfileState logged(int id, long serial, ProfileState state, String reason) {
        log(id, serial, state, reason); return state;
    }
    private static boolean isUserRunning(UserManager manager, UserHandle user) {
        try {
            Object value = UserManager.class.getMethod("isUserRunning", UserHandle.class).invoke(manager, user);
            return !(value instanceof Boolean) || ((Boolean) value).booleanValue();
        } catch (Throwable ignored) { return true; }
    }
    private static boolean isUserEnabled(UserManager manager, int userId) {
        try {
            Object info = UserManager.class.getMethod("getUserInfo", Integer.TYPE).invoke(manager, Integer.valueOf(userId));
            if (info == null) return false;
            Object value = info.getClass().getMethod("isEnabled").invoke(info);
            return !(value instanceof Boolean) || ((Boolean) value).booleanValue();
        } catch (Throwable ignored) { return true; }
    }
    private void log(int id, long serial, ProfileState state, String reason) {
        Log.i(TAG, "[PROFILE][STATE] userId=" + id + " userSerial=" + serial
                + " state=" + state + " reason=" + reason);
    }
}
