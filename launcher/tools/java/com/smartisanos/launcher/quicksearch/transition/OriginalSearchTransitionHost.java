package com.smartisanos.launcher.quicksearch.transition;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;

/**
 * Public-View handoff from Launcher to Original QuickSearch.
 *
 * Screenshot capture was deliberately removed: asynchronous PixelCopy and its
 * fallback frame caused visible full-screen luminance jumps on real devices.
 * The translucent search window now reveals the live Launcher while its own
 * static pristine-compatible surface follows the single Q9 progress curve.
 */
public final class OriginalSearchTransitionHost {
    public static final String EXTRA_TRANSITION = "launcher_original_search_transition";
    private static final String TAG = "QS_TRANSITION";

    private OriginalSearchTransitionHost() {
    }

    public static void open(Activity launcher, Intent target) {
        if (launcher == null || target == null || launcher.isFinishing()) return;
        final long begin = SystemClock.elapsedRealtime();
        target.putExtra(EXTRA_TRANSITION, true);
        try {
            launcher.startActivity(target);
            launcher.overridePendingTransition(0, 0);
            Log.i(TAG, "QS_TRANSITION_HANDOFF mode=LIVE_SURFACE capture=0 blur=0 bitmap=0"
                    + " elapsedMs=" + (SystemClock.elapsedRealtime() - begin)
                    + " api=" + Build.VERSION.SDK_INT);
        } catch (Throwable error) {
            Log.e(TAG, "QS_TRANSITION_HANDOFF_FAILED mode=LIVE_SURFACE", error);
        }
    }
}
