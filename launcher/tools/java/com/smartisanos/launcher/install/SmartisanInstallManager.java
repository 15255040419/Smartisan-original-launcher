package com.smartisanos.launcher.install;

import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Log;

import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Compatibility bridge for Smartisan's original download-cell pipeline.
 *
 * The original launcher already knows how to create/remove the temporary
 * "downloading/installing" desktop item through DownloadManagerDelegate and
 * e.s.b(package, state, progress).  Stock Android/OEM ROMs do not send the
 * Smartisan app-store provider callbacks, so this class translates modern
 * PackageInstaller / package broadcasts / notification hints back into those
 * original entry points.
 */
public final class SmartisanInstallManager {
    private static final boolean ENABLE_DOWNLOAD_ANIMATION = false;
    private static final String TAG = "SmartisanInstall";
    private static final String AUTHORITY = "com.smartisanos.launcher.download.manager";
    private static final String METHOD_ADD = "1001";
    private static final String METHOD_UPDATE = "1002";
    private static final String METHOD_REMOVE = "1003";
    private static final String BUNDLE_DATA = "launcher_action_data";
    private static final String SPLIT =
            "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n";

    private static final int STATUS_WAITING = 190;
    private static final int STATUS_RUNNING = 192;
    private static final int STATUS_ORIGINAL_INSTALLED = 0x100;
    private static final int STATUS_ORIGINAL_FAILED = 0x400;
    private static final long SESSION_SCAN_INTERVAL_MS = 1200L;
    private static final long MIN_VISIBLE_ANIMATION_MS = 3500L;

    private static final Pattern PACKAGE_PATTERN =
            Pattern.compile("([A-Za-z][A-Za-z0-9_]*(?:\\.[A-Za-z][A-Za-z0-9_]*){1,})");

    private static final Object LOCK = new Object();
    private static final Map<Integer, String> SESSION_PACKAGES = new HashMap<Integer, String>();
    private static final Map<String, String> PENDING_LABEL_PACKAGES = new HashMap<String, String>();
    private static final Map<String, String> PACKAGE_DISPLAY_PACKAGES = new HashMap<String, String>();
    private static final Map<String, Long> DISPLAY_START_TIMES = new HashMap<String, Long>();
    private static boolean sStarted;
    private static Context sAppContext;
    private static Handler sHandler;
    private static Handler sWorkerHandler;
    private static HandlerThread sWorkerThread;

    private SmartisanInstallManager() {
    }

    public static void ensure(Context context) {
        if (context == null) {
            return;
        }
        synchronized (LOCK) {
            if (sStarted) {
                return;
            }
            sStarted = true;
            sAppContext = context.getApplicationContext() == null
                    ? context : context.getApplicationContext();
            sHandler = new Handler(Looper.getMainLooper());
            sWorkerThread = new HandlerThread("SmartisanInstallManager");
            sWorkerThread.start();
            sWorkerHandler = new Handler(sWorkerThread.getLooper());
        }
        registerPackageReceiver(sAppContext);
        if (ENABLE_DOWNLOAD_ANIMATION) {
            registerPackageInstallerCallback(sAppContext);
            scheduleSessionScan(0L);
        }
    }

    public static void onPackageInstalled(Context context, String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return;
        }
        ensure(context);
        completeInstall(context, packageName);
    }

    public static void onNotificationPosted(Context context, StatusBarNotification sbn) {
        if (!ENABLE_DOWNLOAD_ANIMATION) {
            return;
        }
        if (context == null || sbn == null || sbn.getNotification() == null) {
            return;
        }
        ensure(context);
        Notification n = sbn.getNotification();
        String text = notificationText(n);
        if (!looksLikeInstallNotification(text)) {
            return;
        }
        if (looksLikeCompletionNotification(text)) {
            return;
        }
        String pkg = firstPackageName(text);
        if (TextUtils.isEmpty(pkg)) {
            startSyntheticFromNotification(context, sbn, n);
            return;
        }
        if (context.getPackageName().equals(pkg)) {
            return;
        }
        Drawable icon = largeNotificationIcon(context, n);
        if (icon != null) {
            savePendingIcon(context, pkg, icon);
        }
        String label = bestLabel(context, pkg, titleFromNotification(n, pkg));
        int progress = notificationProgress(n);
        String displayPkg = displayPackageFor(context, pkg, label);
        savePreferredIcon(context, pkg, displayPkg);
        startOrUpdate(context, displayPkg, label, STATUS_RUNNING, progress);
    }

    public static Drawable loadPendingIconDrawable(Context context, String packageName) {
        try {
            File file = pendingIconFile(context, packageName);
            if (file == null || !file.isFile() || file.length() <= 0) {
                return null;
            }
            Bitmap bitmap = android.graphics.BitmapFactory.decodeFile(file.getAbsolutePath());
            if (bitmap == null) {
                return null;
            }
            return new BitmapDrawable(context.getResources(), bitmap);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void registerPackageReceiver(final Context context) {
        try {
            IntentFilter filter = new IntentFilter();
            filter.addAction(Intent.ACTION_PACKAGE_ADDED);
            filter.addAction(Intent.ACTION_PACKAGE_REPLACED);
            filter.addAction(Intent.ACTION_PACKAGE_CHANGED);
            filter.addAction(Intent.ACTION_PACKAGE_REMOVED);
            filter.addDataScheme("package");
            context.registerReceiver(new BroadcastReceiver() {
                @Override
                public void onReceive(Context c, Intent intent) {
                    if (intent == null || intent.getData() == null) {
                        return;
                    }
                    String pkg = intent.getData().getSchemeSpecificPart();
                    String action = intent.getAction();
                    if (TextUtils.isEmpty(pkg) || context.getPackageName().equals(pkg)) {
                        return;
                    }
                    boolean replacing = intent.getBooleanExtra(Intent.EXTRA_REPLACING, false);
                    if (Intent.ACTION_PACKAGE_ADDED.equals(action)
                            || Intent.ACTION_PACKAGE_REPLACED.equals(action)
                            || Intent.ACTION_PACKAGE_CHANGED.equals(action)) {
                        completeInstall(context, pkg);
                    } else if (Intent.ACTION_PACKAGE_REMOVED.equals(action) && !replacing) {
                        failOrRemove(context, pkg);
                    }
                }
            }, filter);
        } catch (Throwable t) {
            Log.w(TAG, "register package receiver failed", t);
        }
    }

    private static void registerPackageInstallerCallback(final Context context) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        try {
            final PackageInstaller installer = context.getPackageManager().getPackageInstaller();
            installer.registerSessionCallback(new PackageInstaller.SessionCallback() {
                @Override
                public void onCreated(int sessionId) {
                    handleSession(context, installer, sessionId, STATUS_WAITING, 0);
                }

                @Override
                public void onBadgingChanged(int sessionId) {
                    handleSession(context, installer, sessionId, STATUS_RUNNING, 1);
                }

                @Override
                public void onActiveChanged(int sessionId, boolean active) {
                    handleSession(context, installer, sessionId, active ? STATUS_RUNNING : STATUS_WAITING, 1);
                }

                @Override
                public void onProgressChanged(int sessionId, float progress) {
                    handleSession(context, installer, sessionId, STATUS_RUNNING,
                            Math.max(0, Math.min(99, Math.round(progress * 100f))));
                }

                @Override
                public void onFinished(int sessionId, boolean success) {
                    String pkg;
                    synchronized (LOCK) {
                        pkg = SESSION_PACKAGES.remove(Integer.valueOf(sessionId));
                    }
                    if (TextUtils.isEmpty(pkg)) {
                        PackageInstaller.SessionInfo info = sessionInfo(installer, sessionId);
                        pkg = info == null ? null : info.getAppPackageName();
                    }
                    if (TextUtils.isEmpty(pkg)) {
                        return;
                    }
                    if (success) {
                        completeInstall(context, pkg);
                    } else {
                        failOrRemove(context, pkg);
                    }
                }
            }, sWorkerHandler == null ? new Handler(Looper.getMainLooper()) : sWorkerHandler);
        } catch (Throwable t) {
            Log.w(TAG, "register package installer failed", t);
        }
    }

    private static void scheduleSessionScan(long delayMs) {
        final Handler handler = sWorkerHandler;
        final Context context = sAppContext;
        if (handler == null || context == null || Build.VERSION.SDK_INT < 21) {
            return;
        }
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    PackageInstaller installer = context.getPackageManager().getPackageInstaller();
                    List sessions = visibleSessions(installer);
                    if (sessions != null) {
                        for (Object value : sessions) {
                            if (value instanceof PackageInstaller.SessionInfo) {
                                PackageInstaller.SessionInfo info = (PackageInstaller.SessionInfo) value;
                                String pkg = info.getAppPackageName();
                                if (!TextUtils.isEmpty(pkg)) {
                                    rememberSession(info.getSessionId(), pkg);
                                    String label = bestLabel(context, pkg, safeLabel(info.getAppLabel(), pkg));
                                    String displayPkg = displayPackageFor(context, pkg, label);
                                    savePreferredIcon(context, pkg, displayPkg);
                                    int progress = Math.max(0, Math.min(99, Math.round(info.getProgress() * 100f)));
                                    startOrUpdate(context, displayPkg, label, STATUS_RUNNING, progress);
                                    cacheSessionIcon(context, pkg, info);
                                }
                            }
                        }
                    }
                } catch (Throwable ignored) {
                }
                scheduleSessionScan(SESSION_SCAN_INTERVAL_MS);
            }
        }, delayMs);
    }

    private static void handleSession(Context context, PackageInstaller installer,
                                      int sessionId, int status, int progress) {
        PackageInstaller.SessionInfo info = sessionInfo(installer, sessionId);
        if (info == null) {
            return;
        }
        String pkg = info.getAppPackageName();
        if (TextUtils.isEmpty(pkg)) {
            return;
        }
        rememberSession(sessionId, pkg);
        String label = bestLabel(context, pkg, safeLabel(info.getAppLabel(), pkg));
        String displayPkg = displayPackageFor(context, pkg, label);
        savePreferredIcon(context, pkg, displayPkg);
        int p = progress <= 0 ? Math.max(0, Math.min(99, Math.round(info.getProgress() * 100f))) : progress;
        startOrUpdate(context, displayPkg, label, status, p);
        cacheSessionIcon(context, pkg, info);
    }

    private static void cacheSessionIcon(Context context, String pkg, PackageInstaller.SessionInfo info) {
        if (hasPendingIcon(context, pkg)) {
            return;
        }
        Drawable icon = sessionIcon(context, info);
        if (icon != null) {
            savePendingIcon(context, pkg, icon);
        }
    }

    private static void startSyntheticFromNotification(Context context, StatusBarNotification sbn, Notification n) {
        String label = titleFromNotification(n, null);
        if (TextUtils.isEmpty(label)) {
            return;
        }
        String sourceLabel = appLabel(context, sbn.getPackageName());
        if (!TextUtils.isEmpty(sourceLabel) && sourceLabel.equals(label)) {
            return;
        }
        String key = normalizedLabel(label);
        if (TextUtils.isEmpty(key)) {
            return;
        }
        String syntheticPkg;
        synchronized (LOCK) {
            syntheticPkg = PENDING_LABEL_PACKAGES.get(key);
            if (TextUtils.isEmpty(syntheticPkg)) {
                syntheticPkg = "com.smartisanos.launcher.pending.p"
                        + Integer.toHexString((sbn.getPackageName() + ":" + key).hashCode());
                PENDING_LABEL_PACKAGES.put(key, syntheticPkg);
            }
        }
        Drawable icon = largeNotificationIcon(context, n);
        if (icon != null) {
            savePendingIcon(context, syntheticPkg, icon);
        }
        startOrUpdate(context, syntheticPkg, label, STATUS_RUNNING, notificationProgress(n));
    }

    private static void savePreferredIcon(Context context, String realPkg, String displayPkg) {
        if (context == null || TextUtils.isEmpty(realPkg) || TextUtils.isEmpty(displayPkg)) {
            return;
        }
        try {
            Drawable preferred = MaintainedLauncherSettingsHost.currentLauncherIconDrawable(context, realPkg);
            if (preferred != null) {
                savePendingIcon(context, displayPkg, preferred);
                if (!realPkg.equals(displayPkg)) {
                    savePendingIcon(context, realPkg, preferred);
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private static String displayPackageFor(Context context, String realPkg, String label) {
        String key = normalizedLabel(label);
        if (TextUtils.isEmpty(key)) {
            return realPkg;
        }
        String syntheticPkg;
        synchronized (LOCK) {
            String existing = PACKAGE_DISPLAY_PACKAGES.get(realPkg);
            if (!TextUtils.isEmpty(existing)) {
                return existing;
            }
            syntheticPkg = PENDING_LABEL_PACKAGES.get(key);
            if (!TextUtils.isEmpty(syntheticPkg)) {
                PACKAGE_DISPLAY_PACKAGES.put(realPkg, syntheticPkg);
                return syntheticPkg;
            }
        }
        return realPkg;
    }

    private static PackageInstaller.SessionInfo sessionInfo(PackageInstaller installer, int sessionId) {
        try {
            return installer.getSessionInfo(sessionId);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Drawable sessionIcon(Context context, PackageInstaller.SessionInfo info) {
        if (context == null || info == null) {
            return null;
        }
        try {
            Bitmap bitmap = info.getAppIcon();
            if (bitmap != null) {
                return new BitmapDrawable(context.getResources(), bitmap);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static List visibleSessions(PackageInstaller installer) {
        try {
            Method method = PackageInstaller.class.getMethod("getAllSessions");
            Object result = method.invoke(installer);
            if (result instanceof List) {
                return (List) result;
            }
        } catch (Throwable ignored) {
        }
        try {
            return installer.getMySessions();
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void rememberSession(int sessionId, String pkg) {
        synchronized (LOCK) {
            SESSION_PACKAGES.put(Integer.valueOf(sessionId), pkg);
        }
    }

    private static void startOrUpdate(Context context, String pkg, String label, int status, int progress) {
        if (!ENABLE_DOWNLOAD_ANIMATION) {
            return;
        }
        if (TextUtils.isEmpty(pkg) || isInstalled(context, pkg)) {
            if (isInstalled(context, pkg)) {
                completeInstall(context, pkg);
            }
            return;
        }
        rememberDisplayStart(pkg);
        callDownloadDelegate(context, METHOD_ADD, pkg, label, status, progress);
        callDownloadDelegate(context, METHOD_UPDATE, pkg, label, status, progress);
        try {
            updateOriginalState(pkg, status, progress);
        } catch (Throwable ignored) {
        }
    }

    private static void completeInstall(final Context context, final String pkg) {
        if (TextUtils.isEmpty(pkg)) {
            return;
        }
        if (!ENABLE_DOWNLOAD_ANIMATION) {
            notifyOriginalPackageAdded(context, pkg);
            deletePendingIcon(context, pkg);
            Handler handler = sHandler == null ? new Handler(Looper.getMainLooper()) : sHandler;
            handler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    notifyOriginalPackageAdded(context, pkg);
                }
            }, 800L);
            handler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    notifyOriginalPackageAdded(context, pkg);
                }
            }, 2500L);
            return;
        }
        final String displayPkg = displayPackageForCompletedPackage(context, pkg);
        final boolean usingSyntheticDisplay = !pkg.equals(displayPkg);
        final long delayMs = completionDelay(displayPkg);
        Handler handler = sHandler == null ? new Handler(Looper.getMainLooper()) : sHandler;
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    updateOriginalState(displayPkg, STATUS_ORIGINAL_INSTALLED, -1);
                } catch (Throwable ignored) {
                }
            }
        }, delayMs);
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    updateOriginalState(displayPkg, STATUS_ORIGINAL_INSTALLED, -1);
                    if (usingSyntheticDisplay) {
                        removeDownloadCell(context, displayPkg);
                    }
                    notifyOriginalPackageAdded(context, pkg);
                    deletePendingIcon(context, displayPkg);
                    deletePendingIcon(context, pkg);
                } catch (Throwable ignored) {
                }
            }
        }, delayMs + (usingSyntheticDisplay ? 1400L : 500L));
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    if (usingSyntheticDisplay) {
                        removeDownloadCell(context, displayPkg);
                    }
                    notifyOriginalPackageAdded(context, pkg);
                    forgetDisplay(pkg, displayPkg);
                } catch (Throwable ignored) {
                }
            }
        }, delayMs + 3000L);
    }

    private static void failOrRemove(Context context, String pkg) {
        removeDownloadCell(context, pkg);
        forgetDisplay(null, pkg);
    }

    private static void removeDownloadCell(Context context, String pkg) {
        callDownloadDelegate(context, METHOD_REMOVE, pkg, pkg, STATUS_ORIGINAL_FAILED, -1);
        try {
            updateOriginalState(pkg, STATUS_ORIGINAL_FAILED, -1);
        } catch (Throwable ignored) {
        }
        deletePendingIcon(context, pkg);
    }

    private static void rememberDisplayStart(String displayPkg) {
        if (TextUtils.isEmpty(displayPkg)) {
            return;
        }
        synchronized (LOCK) {
            if (!DISPLAY_START_TIMES.containsKey(displayPkg)) {
                DISPLAY_START_TIMES.put(displayPkg, Long.valueOf(System.currentTimeMillis()));
            }
        }
    }

    private static long completionDelay(String displayPkg) {
        long startedAt = 0L;
        synchronized (LOCK) {
            Long value = DISPLAY_START_TIMES.get(displayPkg);
            if (value != null) {
                startedAt = value.longValue();
            }
        }
        if (startedAt <= 0L) {
            return 0L;
        }
        long elapsed = System.currentTimeMillis() - startedAt;
        return Math.max(0L, MIN_VISIBLE_ANIMATION_MS - elapsed);
    }

    private static String displayPackageForCompletedPackage(Context context, String realPkg) {
        synchronized (LOCK) {
            String displayPkg = PACKAGE_DISPLAY_PACKAGES.get(realPkg);
            if (!TextUtils.isEmpty(displayPkg)) {
                return displayPkg;
            }
        }
        String label = bestLabel(context, realPkg, realPkg);
        String key = normalizedLabel(label);
        if (!TextUtils.isEmpty(key)) {
            synchronized (LOCK) {
                String syntheticPkg = PENDING_LABEL_PACKAGES.get(key);
                if (!TextUtils.isEmpty(syntheticPkg)) {
                    PACKAGE_DISPLAY_PACKAGES.put(realPkg, syntheticPkg);
                    return syntheticPkg;
                }
            }
        }
        return realPkg;
    }

    private static void forgetDisplay(String realPkg, String displayPkg) {
        synchronized (LOCK) {
            if (!TextUtils.isEmpty(realPkg)) {
                PACKAGE_DISPLAY_PACKAGES.remove(realPkg);
            }
            if (!TextUtils.isEmpty(displayPkg)) {
                DISPLAY_START_TIMES.remove(displayPkg);
                String removeKey = null;
                for (Map.Entry<String, String> entry : PENDING_LABEL_PACKAGES.entrySet()) {
                    if (displayPkg.equals(entry.getValue())) {
                        removeKey = entry.getKey();
                        break;
                    }
                }
                if (removeKey != null) {
                    PENDING_LABEL_PACKAGES.remove(removeKey);
                }
            }
        }
    }

    private static void callDownloadDelegate(Context context, String method, String pkg,
                                             String label, int status, int progress) {
        try {
            Bundle bundle = new Bundle();
            bundle.putStringArray(BUNDLE_DATA, new String[]{
                    String.valueOf(Math.abs((pkg + method).hashCode())),
                    "com.smartisanos.launcher.compat",
                    "100",
                    String.valueOf(Math.max(0, progress)),
                    String.valueOf(status),
                    description(pkg, label)
            });
            context.getContentResolver().call(
                    Uri.parse("content://" + AUTHORITY + "/download_delegate"),
                    method, pkg, bundle);
        } catch (Throwable t) {
            Log.w(TAG, "delegate call failed method=" + method + " pkg=" + pkg, t);
        }
    }

    private static void updateOriginalState(String pkg, int status, int progress) {
        try {
            Class<?> cls = Class.forName("com.smartisanos.launcher.e.s");
            Method method = cls.getMethod("b", String.class, Integer.TYPE, Integer.TYPE);
            method.invoke(null, pkg, Integer.valueOf(status), Integer.valueOf(progress));
        } catch (Throwable ignored) {
        }
    }

    private static void notifyOriginalPackageAdded(Context context, String pkg) {
        try {
            Class<?> cls = Class.forName("com.smartisanos.launcher.Aa");
            Method method = cls.getMethod("c", Context.class, String.class);
            method.invoke(null, context, pkg);
        } catch (Throwable ignored) {
        }
    }

    private static String description(String pkg, String label) {
        String safeLabel = TextUtils.isEmpty(label) ? pkg : label;
        return "0" + SPLIT + pkg + SPLIT + "" + SPLIT + safeLabel
                + SPLIT + "" + SPLIT + "" + SPLIT + "";
    }

    private static String bestLabel(Context context, String pkg, String fallback) {
        try {
            PackageManager pm = context.getPackageManager();
            CharSequence label = pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0));
            if (!TextUtils.isEmpty(label)) {
                return label.toString();
            }
        } catch (Throwable ignored) {
        }
        return TextUtils.isEmpty(fallback) ? pkg : fallback;
    }

    private static String appLabel(Context context, String pkg) {
        if (context == null || TextUtils.isEmpty(pkg)) {
            return null;
        }
        try {
            PackageManager pm = context.getPackageManager();
            CharSequence label = pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0));
            return TextUtils.isEmpty(label) ? null : label.toString();
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String normalizedLabel(String label) {
        if (TextUtils.isEmpty(label)) {
            return null;
        }
        String normalized = label.trim().toLowerCase(Locale.ROOT);
        return normalized.length() == 0 ? null : normalized;
    }

    private static boolean isInstalled(Context context, String pkg) {
        try {
            context.getPackageManager().getPackageInfo(pkg, 0);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static String safeLabel(CharSequence value, String fallback) {
        return TextUtils.isEmpty(value) ? fallback : value.toString();
    }

    private static String notificationText(Notification n) {
        StringBuilder out = new StringBuilder();
        try {
            Bundle extras = n.extras;
            if (extras != null) {
                for (String key : extras.keySet()) {
                    Object value = extras.get(key);
                    if (value instanceof CharSequence) {
                        out.append(' ').append(value);
                    } else if (value instanceof CharSequence[]) {
                        CharSequence[] array = (CharSequence[]) value;
                        for (CharSequence item : array) {
                            out.append(' ').append(item);
                        }
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return out.toString();
    }

    private static boolean looksLikeInstallNotification(String text) {
        if (TextUtils.isEmpty(text)) {
            return false;
        }
        String lower = text.toLowerCase(Locale.ROOT);
        return lower.contains("install") || lower.contains("downloading")
                || lower.contains("download") || text.contains("安装")
                || text.contains("下载") || text.contains("正在安装")
                || text.contains("安装中");
    }

    private static boolean looksLikeCompletionNotification(String text) {
        if (TextUtils.isEmpty(text)) {
            return false;
        }
        String lower = text.toLowerCase(Locale.ROOT);
        return lower.contains("installed") || lower.contains("complete")
                || lower.contains("finished") || lower.contains("success")
                || text.contains("安装完成") || text.contains("已安装")
                || text.contains("下载完成") || text.contains("完成安装");
    }

    private static String firstPackageName(String text) {
        Matcher matcher = PACKAGE_PATTERN.matcher(text == null ? "" : text);
        while (matcher.find()) {
            String value = matcher.group(1);
            if (!value.startsWith("android.") && !"com.android.systemui".equals(value)) {
                return value;
            }
        }
        return null;
    }

    private static String titleFromNotification(Notification n, String fallback) {
        try {
            CharSequence title = n.extras == null ? null : n.extras.getCharSequence(Notification.EXTRA_TITLE);
            if (!TextUtils.isEmpty(title)) {
                return title.toString();
            }
        } catch (Throwable ignored) {
        }
        return fallback;
    }

    private static int notificationProgress(Notification n) {
        try {
            Bundle extras = n.extras;
            if (extras != null) {
                int max = extras.getInt(Notification.EXTRA_PROGRESS_MAX, 0);
                int value = extras.getInt(Notification.EXTRA_PROGRESS, 0);
                if (max > 0 && value >= 0) {
                    return Math.max(0, Math.min(99, Math.round(value * 100f / max)));
                }
            }
        } catch (Throwable ignored) {
        }
        return 1;
    }

    private static Drawable largeNotificationIcon(Context context, Notification n) {
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                Icon icon = n.getLargeIcon();
                if (icon != null) {
                    Drawable drawable = icon.loadDrawable(context);
                    if (drawable != null) {
                        return drawable;
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            if (n.largeIcon != null) {
                return new BitmapDrawable(context.getResources(), n.largeIcon);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static void savePendingIcon(Context context, String pkg, Drawable drawable) {
        try {
            File file = pendingIconFile(context, pkg);
            if (file == null || drawable == null) {
                return;
            }
            File parent = file.getParentFile();
            if (parent != null && !parent.isDirectory()) {
                parent.mkdirs();
            }
            Bitmap bitmap = drawableToBitmap(drawable);
            if (bitmap == null) {
                return;
            }
            FileOutputStream out = new FileOutputStream(file);
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, out);
            } finally {
                out.close();
            }
        } catch (Throwable ignored) {
        }
    }

    private static Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (bitmap != null) {
                return bitmap;
            }
        }
        int width = Math.max(1, drawable.getIntrinsicWidth());
        int height = Math.max(1, drawable.getIntrinsicHeight());
        Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        return bitmap;
    }

    private static File pendingIconFile(Context context, String pkg) {
        if (context == null || TextUtils.isEmpty(pkg)) {
            return null;
        }
        return new File(new File(context.getFilesDir(), "install_icons"),
                Integer.toHexString(pkg.hashCode()) + ".png");
    }

    private static boolean hasPendingIcon(Context context, String pkg) {
        File file = pendingIconFile(context, pkg);
        return file != null && file.isFile() && file.length() > 0;
    }

    private static void deletePendingIcon(Context context, String pkg) {
        try {
            File file = pendingIconFile(context, pkg);
            if (file != null && file.isFile()) {
                file.delete();
            }
        } catch (Throwable ignored) {
        }
    }
}
