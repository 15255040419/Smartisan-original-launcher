package com.smartisanos.launcher.diagnostics;

import android.os.SystemClock;
import android.util.Log;

/** Development-only, rate-limited timing probes for the original SMEngine timeline. */
public final class AnimationTimingDiagnostics {
    private static final String TAG = "LauncherAnimation";
    private static final long FRAME_LOG_INTERVAL_MS = 1000L;

    private static long sLastFrameLogUptime;
    private static long sUnlockAnimationStartUptime;

    private AnimationTimingDiagnostics() {
    }

    public static void logFrameDelta(long uptimeMillis, float realDelta, float engineDelta,
            float frameDeltaTime) {
        final boolean anomalous = realDelta < 0.0f || realDelta >= 100.0f;
        synchronized (AnimationTimingDiagnostics.class) {
            if (!anomalous && uptimeMillis - sLastFrameLogUptime < FRAME_LOG_INTERVAL_MS) {
                return;
            }
            sLastFrameLogUptime = uptimeMillis;
        }
        Log.i(TAG, "ANIMATION_FRAME_DELTA realDelta=" + realDelta
                + " engineDelta=" + engineDelta
                + " mFrameDeltaTime=" + frameDeltaTime
                + " uptimeMillis=" + uptimeMillis
                + " threadName=" + Thread.currentThread().getName());
    }

    public static synchronized void onUnlockAnimationStarted() {
        sUnlockAnimationStartUptime = SystemClock.uptimeMillis();
        Log.i(TAG, "UNLOCK_ANIMATION_START uptimeMillis=" + sUnlockAnimationStartUptime
                + " threadName=" + Thread.currentThread().getName());
    }

    public static synchronized void onUnlockAnimationFinished() {
        final long now = SystemClock.uptimeMillis();
        final long duration = sUnlockAnimationStartUptime == 0L
                ? -1L : now - sUnlockAnimationStartUptime;
        Log.i(TAG, "UNLOCK_ANIMATION_FINISH durationMillis=" + duration
                + " uptimeMillis=" + now
                + " threadName=" + Thread.currentThread().getName());
        sUnlockAnimationStartUptime = 0L;
    }
}
