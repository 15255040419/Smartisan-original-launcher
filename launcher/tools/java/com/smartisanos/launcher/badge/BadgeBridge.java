package com.smartisanos.launcher.badge;

import android.app.Notification;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.os.Build;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;

import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/** Bridges public Android notification data into the original Smartisan badge protocol. */
public final class BadgeBridge {
    static final String PREFS = "launcher_notification_badges";
    static final String COUNTS = "counts";
    static final String ACTIVE_PREFIX = "active:";
    static final String SUPPRESSED_PREFIX = "suppressed:";
    private static int sLastReplayHash = Integer.MIN_VALUE;
    private static boolean sLastReplayAccess;
    private static boolean sServiceSynchronized;

    private BadgeBridge() {
    }

    public static boolean hasNotificationAccess(Context context) {
        String enabled = Settings.Secure.getString(
                context.getContentResolver(), "enabled_notification_listeners");
        if (TextUtils.isEmpty(enabled)) {
            return false;
        }
        String packageName = context.getPackageName();
        for (String value : enabled.split(":")) {
            ComponentName component = ComponentName.unflattenFromString(value);
            if (component != null && packageName.equals(component.getPackageName())) {
                return true;
            }
        }
        return false;
    }

    public static void openNotificationAccessSettings(Context context) {
        Intent intent = new Intent(Settings.ACTION_NOTIFICATION_LISTENER_SETTINGS);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        try {
            context.startActivity(intent);
        } catch (Throwable ignored) {
            Intent fallback = new Intent("android.settings.SETTINGS");
            fallback.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(fallback);
        }
    }

    /** Replays persisted counts after the dynamically registered original receiver is alive. */
    public static void replay(Context context) {
        if (Build.VERSION.SDK_INT >= 24 && hasNotificationAccess(context)) {
            try {
                final ComponentName listener = new ComponentName(
                        context, SmartisanBadgeListenerService.class);
                NotificationListenerService.requestRebind(listener);
            } catch (Throwable ignored) {
            }
        }
        SharedPreferences prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        Set<String> rows = prefs.getStringSet(COUNTS, null);
        if (rows == null) {
            return;
        }
        for (String row : new HashSet<String>(rows)) {
            int equals = row.lastIndexOf('=');
            int pipe = row.lastIndexOf('|', equals);
            if (equals <= 0 || pipe <= 0) {
                continue;
            }
            try {
                String pkg = row.substring(0, pipe);
                int uid = Integer.parseInt(row.substring(pipe + 1, equals));
                int count = Integer.parseInt(row.substring(equals + 1));
                if (pkg.endsWith(".service") || pkg.endsWith(".provider")) {
                    String candidate = pkg.endsWith(".service")
                            ? pkg.substring(0, pkg.length() - ".service".length())
                            : pkg.substring(0, pkg.length() - ".provider".length());
                    try {
                        if (context.getPackageManager().getLaunchIntentForPackage(candidate) != null) {
                            pkg = candidate;
                        }
                    } catch (Throwable ignored) {
                    }
                }
                dispatch(context, pkg, uid, count);
            } catch (RuntimeException ignored) {
            }
        }
    }

    /** Skips lifecycle replay when permission and persisted counts have not changed. */
    public static synchronized void replayIfDirty(Context context) {
        if (context == null) {
            return;
        }
        boolean access = hasNotificationAccess(context);
        if (!access) {
            sLastReplayAccess = false;
            sServiceSynchronized = false;
            return;
        }
        SharedPreferences prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        Set<String> rows = prefs.getStringSet(COUNTS, null);
        int hash = rows == null ? 0 : new HashSet<String>(rows).hashCode();
        if ((sServiceSynchronized || access == sLastReplayAccess)
                && hash == sLastReplayHash) {
            return;
        }
        sLastReplayAccess = access;
        sLastReplayHash = hash;
        replay(context);
    }

    static synchronized void markServiceSynchronized(Set<String> rows) {
        sServiceSynchronized = true;
        sLastReplayAccess = true;
        sLastReplayHash = rows == null ? 0 : new HashSet<String>(rows).hashCode();
    }

    static synchronized void markServiceDisconnected() {
        sServiceSynchronized = false;
    }

    /** Called by the original sweep animation after its local badge database is cleared. */
    public static void suppressPackages(Context context, Collection packages) {
        if (packages == null || packages.isEmpty()) {
            return;
        }
        SharedPreferences prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = prefs.edit();
        Map<String, ?> all = prefs.getAll();
        Set<String> oldRows = prefs.getStringSet(COUNTS, null);
        Set<String> newRows = oldRows == null
                ? new HashSet<String>() : new HashSet<String>(oldRows);
        for (Object value : packages) {
            if (!(value instanceof String)) {
                continue;
            }
            String pkg = (String) value;
            for (String key : all.keySet()) {
                if (key.startsWith(ACTIVE_PREFIX + pkg + "|")) {
                    Set<String> active = prefs.getStringSet(key, null);
                    String badgeId = key.substring(ACTIVE_PREFIX.length());
                    if (active != null) {
                        editor.putStringSet(SUPPRESSED_PREFIX + badgeId,
                                new HashSet<String>(active));
                    }
                    replaceCount(newRows, badgeId, 0);
                    int pipe = badgeId.lastIndexOf('|');
                    if (pipe > 0) {
                        try {
                            dispatch(context, pkg,
                                    Integer.parseInt(badgeId.substring(pipe + 1)), 0);
                        } catch (NumberFormatException ignored) {
                        }
                    }
                }
            }
            if (oldRows != null) {
                for (String row : new HashSet<String>(oldRows)) {
                    int equals = row == null ? -1 : row.lastIndexOf('=');
                    String badgeId = equals > 0 ? row.substring(0, equals) : "";
                    int pipe = badgeId.lastIndexOf('|');
                    if (pipe <= 0 || !pkg.equals(badgeId.substring(0, pipe))) {
                        continue;
                    }
                    replaceCount(newRows, badgeId, 0);
                    try {
                        dispatch(context, pkg,
                                Integer.parseInt(badgeId.substring(pipe + 1)), 0);
                    } catch (NumberFormatException ignored) {
                    }
                }
            }
        }
        editor.putStringSet(COUNTS, newRows).apply();
    }

    public static void onPackageLaunched(Context context, String packageName) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return;
        }
        HashSet<String> packages = new HashSet<String>();
        packages.add(packageName);
        suppressPackages(context, packages);
    }

    private static void replaceCount(Set<String> rows, String badgeId, int count) {
        if (rows == null || badgeId == null) {
            return;
        }
        String prefix = badgeId + "=";
        String old = null;
        for (String row : rows) {
            if (row != null && row.startsWith(prefix)) {
                old = row;
                break;
            }
        }
        if (old != null) {
            rows.remove(old);
        }
        rows.add(prefix + Math.max(0, count));
    }

    static void dispatch(Context context, String pkg, int uid, int count) {
        android.util.Log.d("SmartisanBadge", "BADGE_DISPATCH pkg=" + pkg + " uid=" + uid + " count=" + count);
        Intent intent = new Intent("com.smartisanos.launcher.new_message");
        intent.setPackage(context.getPackageName());
        intent.putExtra("extra_packagename", pkg);
        intent.putExtra("extra_componentname", (String) null);
        intent.putExtra("extra_uid", uid);
        intent.putExtra("extra_message_count", Math.max(0, count));
        context.sendBroadcast(intent);
    }

    public static String resolveLauncherPackage(Context context, StatusBarNotification sbn) {
        if (context == null || sbn == null) {
            return null;
        }
        String pkg = sbn.getPackageName();
        if (TextUtils.isEmpty(pkg)) {
            return pkg;
        }
        android.content.pm.PackageManager pm = context.getPackageManager();
        if (pm == null) {
            return pkg;
        }
        try {
            if (pm.getLaunchIntentForPackage(pkg) != null) {
                return pkg;
            }
        } catch (Throwable ignored) {
        }

        Notification n = sbn.getNotification();
        if (n != null && n.contentIntent != null) {
            try {
                String creator = n.contentIntent.getCreatorPackage();
                if (!TextUtils.isEmpty(creator) && pm.getLaunchIntentForPackage(creator) != null) {
                    return creator;
                }
            } catch (Throwable ignored) {
            }
            if (Build.VERSION.SDK_INT >= 17) {
                try {
                    String target = n.contentIntent.getTargetPackage();
                    if (!TextUtils.isEmpty(target) && pm.getLaunchIntentForPackage(target) != null) {
                        return target;
                    }
                } catch (Throwable ignored) {
                }
            }
        }

        if (pkg.endsWith(".service")) {
            String candidate = pkg.substring(0, pkg.length() - ".service".length());
            try {
                if (pm.getLaunchIntentForPackage(candidate) != null) {
                    return candidate;
                }
            } catch (Throwable ignored) {
            }
        } else if (pkg.endsWith(".provider")) {
            String candidate = pkg.substring(0, pkg.length() - ".provider".length());
            try {
                if (pm.getLaunchIntentForPackage(candidate) != null) {
                    return candidate;
                }
            } catch (Throwable ignored) {
            }
        }

        return pkg;
    }

    public static void logItemMatch(String notificationPkg, Object itemObj) {
        if (itemObj == null) {
            return;
        }
        try {
            Class<?> clazz = itemObj.getClass();
            if ("com.smartisanos.launcher.data.ItemInfo".equals(clazz.getName())) {
                Object pkg = clazz.getField("packageName").get(itemObj);
                Object cmp = clazz.getField("componentName").get(itemObj);
                Object userId = clazz.getField("userId").get(itemObj);
                Object msgs = clazz.getField("messagesNumber").get(itemObj);
                Object itemType = clazz.getField("itemType").get(itemObj);
                android.util.Log.d("SmartisanBadge", "BADGE_ITEM_MATCH notificationPkg=" + notificationPkg +
                        " item.packageName=" + pkg +
                        " item.componentName=" + cmp +
                        " item.userId=" + userId +
                        " item.messagesNumber=" + msgs +
                        " itemType=" + itemType);
            }
        } catch (Throwable ignored) {
        }
    }
}
