package com.smartisanos.launcher.badge;

import android.app.Notification;
import android.app.NotificationChannel;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;

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
            String id = id(sbn.getPackageName(), sbn.getUid());
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

            editor.putStringSet(BadgeBridge.ACTIVE_PREFIX + badgeId, activeKeys);
            editor.putStringSet(suppressedKey, suppressed);
            newRows.add(badgeId + "=" + count);
            BadgeBridge.dispatch(this, pkg, uid, count);
        }
        editor.putStringSet(BadgeBridge.COUNTS, newRows).apply();
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
            if (suppressed.contains(notificationToken(sbn))) {
                continue;
            }
            Notification n = sbn.getNotification();
            if (n == null || (n.flags & Notification.FLAG_ONGOING_EVENT) != 0) {
                continue;
            }
            if (isGroupSummary(n) && groupsWithChildren.contains(sbn.getGroupKey())) {
                continue;
            }
            if (!channelAllowsBadge(sbn)) {
                continue;
            }
            count += n.number > 0 ? n.number : 1;
            if (count >= 999) {
                return 999;
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
