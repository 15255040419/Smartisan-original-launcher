package com.smartisanos.launcher.compat;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.SystemClock;

import java.util.Calendar;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/** Resolves calendar applications without depending on one vendor package name. */
public final class CalendarAppDetector {
    private static final long CACHE_AGE_MS = 60_000L;
    private static final Set<String> KNOWN_PACKAGES;

    private static volatile Set<String> resolvedPackages = Collections.emptySet();
    private static volatile long resolvedAt;

    static {
        HashSet<String> packages = new HashSet<>();
        packages.add("com.android.calendar");
        packages.add("com.google.android.calendar");
        packages.add("com.bbk.calendar");
        packages.add("com.vivo.calendar");
        packages.add("com.samsung.android.calendar");
        packages.add("com.miui.calendar");
        packages.add("com.coloros.calendar");
        packages.add("com.oplus.calendar");
        packages.add("com.huawei.calendar");
        packages.add("com.oneplus.calendar");
        KNOWN_PACKAGES = Collections.unmodifiableSet(packages);
    }

    private CalendarAppDetector() {}

    public static boolean isCalendarPackage(Context context, String packageName) {
        if (packageName == null || packageName.length() == 0) {
            return false;
        }
        if (KNOWN_PACKAGES.contains(packageName)) {
            return true;
        }
        if (context == null) {
            return false;
        }

        long now = SystemClock.elapsedRealtime();
        if (now - resolvedAt > CACHE_AGE_MS) {
            refresh(context, now);
        }
        return resolvedPackages.contains(packageName);
    }

    private static synchronized void refresh(Context context, long now) {
        if (now - resolvedAt <= CACHE_AGE_MS) {
            return;
        }

        HashSet<String> packages = new HashSet<>();
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_APP_CALENDAR);
            PackageManager pm = context.getPackageManager();

            ResolveInfo preferred = pm.resolveActivity(intent, PackageManager.MATCH_DEFAULT_ONLY);
            addPackage(packages, preferred);

            List<ResolveInfo> candidates = pm.queryIntentActivities(intent, 0);
            if (candidates != null) {
                for (ResolveInfo candidate : candidates) {
                    addPackage(packages, candidate);
                }
            }
        } catch (RuntimeException ignored) {
            // Known packages remain available when an OEM blocks package queries.
        }

        resolvedPackages = Collections.unmodifiableSet(packages);
        resolvedAt = now;
    }

    private static void addPackage(Set<String> packages, ResolveInfo info) {
        if (info != null && info.activityInfo != null && info.activityInfo.packageName != null) {
            packages.add(info.activityInfo.packageName);
        }
    }

    public static String dailyTextureName(String baseName) {
        Calendar calendar = Calendar.getInstance();
        return baseName + "_calendar_" + calendar.get(Calendar.YEAR)
                + "_" + calendar.get(Calendar.DAY_OF_YEAR);
    }
}
