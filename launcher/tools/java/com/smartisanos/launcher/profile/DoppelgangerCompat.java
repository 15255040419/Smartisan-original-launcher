package com.smartisanos.launcher.profile;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.LauncherApps;
import android.content.pm.LauncherActivityInfo;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;

import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

/** Resolves clone identity from the current device, never from a persisted numeric user id. */
public final class DoppelgangerCompat {
    public static final String KIND_PRIMARY_APP = "PRIMARY_APP";
    public static final String KIND_DOPPELGANGER_APP = "DOPPELGANGER_APP";
    public static final String KIND_PRIMARY_SHORTCUT = "PRIMARY_SHORTCUT";
    public static final String KIND_DOPPELGANGER_SHORTCUT = "DOPPELGANGER_SHORTCUT";
    private static final String TAG = "DoppelgangerCompat";
    private static final String PROFILE_PREFS = "launcher_profile_apps";
    private static final String PROFILE_DISABLED_PREFIX = "disabled.";

    private DoppelgangerCompat() {}

    public static final class ResolvedProfile {
        public final UserHandle user;
        public final int userId;
        public final long serial;

        ResolvedProfile(UserHandle user, int userId, long serial) {
            this.user = user;
            this.userId = userId;
            this.serial = serial;
        }
    }

    public static int userId(UserHandle user) {
        if (user == null) return 0;
        try {
            Method method = UserHandle.class.getMethod("getIdentifier");
            return ((Integer) method.invoke(user)).intValue();
        } catch (Throwable ignored) {
            return 0;
        }
    }

    public static long profileSerial(Context context, UserHandle user) {
        if (context == null || user == null) return -1L;
        try {
            UserManager manager = (UserManager) context.getSystemService(Context.USER_SERVICE);
            if (manager != null) return manager.getSerialNumberForUser(user);
        } catch (Throwable ignored) {
        }
        return -1L;
    }

    public static long profileSerialForUserId(Context context, int userId) {
        UserHandle user = findProfile(context, userId, -1L);
        return user == null ? -1L : profileSerial(context, user);
    }

    public static boolean isDoppelganger(Context context, String packageName,
                                         String componentName, int sourceUserId) {
        if (context == null || sourceUserId <= 0 || sourceUserId == userId(Process.myUserHandle())) {
            return false;
        }
        UserHandle user = findProfile(context, sourceUserId, -1L);
        boolean result = user != null && !isManagedProfile(context, user)
                && hasEnabledBusinessRecord(context, packageName, componentName, user)
                && hasLauncherActivity(context, packageName, componentName, user);
        Log.i(TAG, "PROFILE_IDENTITY package=" + packageName + " component=" + componentName
                + " sourceUserId=" + sourceUserId + " sourceSerial="
                + profileSerial(context, user) + " isDoppelganger=" + result);
        return result;
    }

    public static ResolvedProfile resolveDoppelganger(Context context, String packageName,
                                                       String componentName, long sourceSerial,
                                                       int sourceUserId) {
        if (context == null || isEmpty(packageName)) return null;
        UserHandle current = Process.myUserHandle();
        List<UserHandle> profiles = profiles(context);
        if (profiles == null) return null;
        UserHandle best = null;
        for (UserHandle user : profiles) {
            if (user == null || user.equals(current) || isManagedProfile(context, user)) continue;
            long serial = profileSerial(context, user);
            if (sourceSerial >= 0L && serial != sourceSerial) continue;
            if (!hasEnabledBusinessRecord(context, packageName, componentName, user)) continue;
            if (!hasLauncherActivity(context, packageName, componentName, user)) continue;
            best = user;
            break;
        }
        if (best == null && sourceSerial >= 0L) {
            return resolveDoppelganger(context, packageName, componentName, -1L, sourceUserId);
        }
        if (best == null) return null;
        ResolvedProfile result = new ResolvedProfile(best, userId(best), profileSerial(context, best));
        Log.i(TAG, "RESTORE_PROFILE_RESOLVED package=" + packageName + " component=" + componentName
                + " sourceUserId=" + sourceUserId + " sourceSerial=" + sourceSerial
                + " targetUserId=" + result.userId + " targetSerial=" + result.serial
                + " reason=current_profile_business_record");
        return result;
    }

    private static List<UserHandle> profiles(Context context) {
        try {
            LauncherApps apps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
            return apps == null ? null : apps.getProfiles();
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static UserHandle findProfile(Context context, int userId, long serial) {
        List<UserHandle> profiles = profiles(context);
        if (profiles == null) return null;
        for (UserHandle user : profiles) {
            if (user == null) continue;
            if ((userId >= 0 && userId(user) == userId)
                    || (serial >= 0L && profileSerial(context, user) == serial)) return user;
        }
        return null;
    }

    private static boolean hasLauncherActivity(Context context, String packageName,
                                               String componentName, UserHandle user) {
        try {
            LauncherApps apps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
            if (apps == null) return false;
            List<LauncherActivityInfo> list = apps.getActivityList(packageName, user);
            if (list == null || list.isEmpty()) return false;
            if (isEmpty(componentName)) return true;
            for (LauncherActivityInfo info : list) {
                if (info != null && info.getComponentName() != null
                        && componentName.equals(info.getComponentName().flattenToString())) return true;
            }
            // Activity aliases can change. Package-level discovery is still authoritative
            // once the profile business record has enabled this package.
            return hasEnabledBusinessRecord(context, packageName, null, user);
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean hasEnabledBusinessRecord(Context context, String packageName,
                                                    String componentName, UserHandle user) {
        if (isEmpty(packageName) || user == null) return false;
        long serial = profileSerial(context, user);
        if (serial < 0L) return false;
        try {
            SharedPreferences prefs = context.getSharedPreferences(PROFILE_PREFS, Context.MODE_PRIVATE);
            String exact = PROFILE_DISABLED_PREFIX + serial + "." + componentName;
            if (!isEmpty(componentName) && prefs.contains(exact) && !prefs.getBoolean(exact, true)) return true;
            Map<String, ?> values = prefs.getAll();
            String prefix = PROFILE_DISABLED_PREFIX + serial + ".";
            for (Map.Entry<String, ?> entry : values.entrySet()) {
                if (!entry.getKey().startsWith(prefix) || !(entry.getValue() instanceof Boolean)
                        || ((Boolean) entry.getValue()).booleanValue()) continue;
                String keyComponent = entry.getKey().substring(prefix.length());
                if (keyComponent.startsWith(packageName + "/") || keyComponent.startsWith(packageName + ".")) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static boolean isManagedProfile(Context context, UserHandle user) {
        try {
            UserManager manager = (UserManager) context.getSystemService(Context.USER_SERVICE);
            if (manager == null) return false;
            Method method = UserManager.class.getMethod("isManagedProfile", UserHandle.class);
            return ((Boolean) method.invoke(manager, user)).booleanValue();
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean isEmpty(String value) { return value == null || value.length() == 0; }
}
