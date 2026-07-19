package com.smartisanos.launcher.diagnostics;

import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;

/**
 * Startup-only diagnostics that remain available before LauncherStartupDiagnostics
 * has an Activity and user preference context.
 */
public final class StartupCompatibilityLogger {
    private static final String TAG = "LauncherStartupCompat";

    private StartupCompatibilityLogger() {
    }

    public static void mark(String stage) {
        Log.i(TAG, detail(stage, null, false));
    }

    public static void optionalModuleDisabled(String module, Throwable throwable) {
        Log.e(TAG, detail("OPTIONAL_MODULE_DISABLED module=" + module, throwable, true), throwable);
    }

    public static void stageFailed(String stage, Throwable throwable, boolean fallbackUsed) {
        Log.e(TAG, detail("STARTUP_STAGE_FAILED stage=" + stage, throwable, fallbackUsed), throwable);
    }

    private static String detail(String marker, Throwable throwable, boolean fallbackUsed) {
        String throwableName = throwable == null ? "none" : throwable.getClass().getName();
        return marker
                + " sdk=" + Build.VERSION.SDK_INT
                + " release=" + Build.VERSION.RELEASE
                + " manufacturer=" + Build.MANUFACTURER
                + " model=" + Build.MODEL
                + " pid=" + Process.myPid()
                + " uptimeMillis=" + SystemClock.uptimeMillis()
                + " thread=" + Thread.currentThread().getName()
                + " throwable=" + throwableName
                + " fallback=" + fallbackUsed;
    }
}
