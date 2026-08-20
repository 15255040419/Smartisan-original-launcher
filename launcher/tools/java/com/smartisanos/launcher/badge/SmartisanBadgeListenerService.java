package com.smartisanos.launcher.badge;

import android.app.Notification;
import android.app.NotificationChannel;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;

import com.smartisanos.launcher.install.SmartisanInstallManager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/** Converts active notifications on stock and vendor Android builds into Smartisan badges. */
public final class SmartisanBadgeListenerService extends NotificationListenerService {
    @Override
    public void onListenerConnected() {
        super.onListenerConnected();
        rebuild();
    }

    @Override
    public void onNotificationPosted(StatusBarNotification sbn) {
        SmartisanInstallManager.onNotificationPosted(this, sbn);
        rebuild();
    }

    @Override
    public void onNotificationRemoved(StatusBarNotification sbn) {
        rebuild();
    }

    @Override
    public void onNotificationRankingUpdate(RankingMap rankingMap) {
        rebuild();
    }

    @Override
    public void onListenerDisconnected() {
        super.onListenerDisconnected();
        BadgeBridge.markServiceDisconnected();
        if (Build.VERSION.SDK_INT >= 24) {
            requestRebind(new android.content.ComponentName(this, SmartisanBadgeListenerService.class));
        }
    }

    private void rebuild() {
        StatusBarNotification[] notifications;
        try {
            notifications = getActiveNotifications();
        } catch (Throwable ignored) {
            return;
        }
        if (notifications == null) {
            notifications = new StatusBarNotification[0];
        }

        Map<String, List<StatusBarNotification>> grouped = new HashMap<String, List<StatusBarNotification>>();
        for (StatusBarNotification sbn : notifications) {
            if (sbn == null || getPackageName().equals(sbn.getPackageName())) {
                continue;
            }
            Notification n = sbn.getNotification();
            String pkg = sbn.getPackageName();
            int uid = sbn.getUid();
            String key = sbn.getKey();
            String channelId = (n != null && Build.VERSION.SDK_INT >= 26) ? n.getChannelId() : "N/A";
            int notificationNumber = n != null ? n.number : 0;
            int flags = n != null ? n.flags : 0;
            boolean ongoing = n != null && (n.flags & Notification.FLAG_ONGOING_EVENT) != 0;
            boolean groupSummary = n != null && (n.flags & Notification.FLAG_GROUP_SUMMARY) != 0;
            boolean canShowBadge = channelAllowsBadge(sbn);
            String targetPkg = BadgeBridge.resolveLauncherPackage(this, sbn);
            android.util.Log.d("SmartisanBadge", "BADGE_NOTIFICATION pkg=" + pkg +
                    " targetPkg=" + targetPkg +
                    " uid=" + uid +
                    " key=" + key +
                    " channelId=" + channelId +
                    " notificationNumber=" + notificationNumber +
                    " flags=" + flags +
                    " ongoing=" + ongoing +
                    " groupSummary=" + groupSummary +
                    " canShowBadge=" + canShowBadge);

            String id = id(targetPkg, sbn.getUid());
            List<StatusBarNotification> list = grouped.get(id);
            if (list == null) {
                list = new ArrayList<StatusBarNotification>();
                grouped.put(id, list);
            }
            list.add(sbn);
        }

        SharedPreferences prefs = getSharedPreferences(BadgeBridge.PREFS, Context.MODE_PRIVATE);
        Set<String> oldRows = prefs.getStringSet(BadgeBridge.COUNTS, null);
        Set<String> newRows = new HashSet<String>();
        SharedPreferences.Editor editor = prefs.edit();

        Set<String> allIds = new HashSet<String>(grouped.keySet());
        if (oldRows != null) {
            for (String row : oldRows) {
                int equals = row.lastIndexOf('=');
                if (equals > 0) {
                    allIds.add(row.substring(0, equals));
                }
            }
        }

        for (String badgeId : allIds) {
            List<StatusBarNotification> list = grouped.get(badgeId);
            if (list == null) {
                list = new ArrayList<StatusBarNotification>();
            }
            Set<String> activeKeys = new HashSet<String>();
            for (StatusBarNotification sbn : list) {
                activeKeys.add(notificationToken(sbn));
            }

            String suppressedKey = BadgeBridge.SUPPRESSED_PREFIX + badgeId;
            Set<String> suppressed = prefs.getStringSet(suppressedKey, null);
            suppressed = suppressed == null
                    ? new HashSet<String>() : new HashSet<String>(suppressed);
            suppressed.retainAll(activeKeys);

            int count = countVisible(list, suppressed);
            int pipe = badgeId.lastIndexOf('|');
            if (pipe <= 0) {
                continue;
            }
            String pkg = badgeId.substring(0, pipe);
            int uid;
            try {
                uid = Integer.parseInt(badgeId.substring(pipe + 1));
            } catch (NumberFormatException ignored) {
                continue;
            }
            android.util.Log.d("SmartisanBadge", "BADGE_COUNT_RESULT pkg=" + pkg + " uid=" + uid + " count=" + count);

            editor.putStringSet(BadgeBridge.ACTIVE_PREFIX + badgeId, activeKeys);
            editor.putStringSet(suppressedKey, suppressed);
            newRows.add(badgeId + "=" + count);
            if (countFor(oldRows, badgeId) != count) {
                BadgeBridge.dispatch(this, pkg, uid, count);
            }
        }
        editor.putStringSet(BadgeBridge.COUNTS, newRows).apply();
        BadgeBridge.markServiceSynchronized(newRows);
    }

    private static int countFor(Set<String> rows, String badgeId) {
        if (rows == null || badgeId == null) {
            return 0;
        }
        String prefix = badgeId + "=";
        for (String row : rows) {
            if (row != null && row.startsWith(prefix)) {
                try {
                    return Integer.parseInt(row.substring(prefix.length()));
                } catch (NumberFormatException ignored) {
                    return 0;
                }
            }
        }
        return 0;
    }

    private int countVisible(List<StatusBarNotification> list, Set<String> suppressed) {
        Set<String> groupsWithChildren = new HashSet<String>();
        for (StatusBarNotification sbn : list) {
            Notification n = sbn.getNotification();
            if (n != null && !isGroupSummary(n) && sbn.getGroupKey() != null) {
                groupsWithChildren.add(sbn.getGroupKey());
            }
        }

        int count = 0;
        for (StatusBarNotification sbn : list) {
            String token = notificationToken(sbn);
            String pkg = sbn.getPackageName();
            if (suppressed.contains(token)) {
                android.util.Log.d("SmartisanBadge", "BADGE_FILTER_SUPPRESSED pkg=" + pkg + " key=" + token);
                continue;
            }
            Notification n = sbn.getNotification();
            if (n == null || (n.flags & Notification.FLAG_ONGOING_EVENT) != 0) {
                android.util.Log.d("SmartisanBadge", "BADGE_FILTER_ONGOING pkg=" + pkg + " key=" + token);
                continue;
            }
            if (isGroupSummary(n) && groupsWithChildren.contains(sbn.getGroupKey())) {
                android.util.Log.d("SmartisanBadge", "BADGE_FILTER_GROUP_SUMMARY pkg=" + pkg + " key=" + token);
                continue;
            }
            android.util.Log.d("SmartisanBadge", "BADGE_COUNT_ACCEPTED pkg=" + pkg + " key=" + token);
            count += n.number > 0 ? n.number : 1;
            if (count >= 999) {
                count = 999;
                break;
            }
        }
        return count;
    }

    private boolean channelAllowsBadge(StatusBarNotification sbn) {
        if (Build.VERSION.SDK_INT < 26) {
            return true;
        }
        try {
            List<NotificationChannel> channels = getNotificationChannels(
                    sbn.getPackageName(), sbn.getUser());
            String channelId = sbn.getNotification().getChannelId();
            if (channels != null) {
                for (NotificationChannel channel : channels) {
                    if (channel != null && channel.getId().equals(channelId)) {
                        return channel.canShowBadge();
                    }
                }
            }
            return true;
        } catch (Throwable ignored) {
            return true;
        }
    }

    private static boolean isGroupSummary(Notification notification) {
        return (notification.flags & Notification.FLAG_GROUP_SUMMARY) != 0;
    }

    private static String id(String pkg, int uid) {
        return pkg + "|" + uid;
    }

    private static String notificationToken(StatusBarNotification sbn) {
        return sbn.getKey() + "@" + sbn.getPostTime();
    }
}
