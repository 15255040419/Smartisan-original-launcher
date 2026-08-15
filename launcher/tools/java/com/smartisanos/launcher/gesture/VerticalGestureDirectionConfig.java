package com.smartisanos.launcher.gesture;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.util.Log;
import android.view.MotionEvent;
import android.os.SystemClock;

/** Single direction truth for the existing Launcher vertical gesture pipeline. */
public final class VerticalGestureDirectionConfig {
    public static final String KEY_REVERSED = "vertical_gesture_direction_reversed";
    private static final String LOG_TAG = "VerticalGestureDirection";

    private static boolean sGestureModeReversed;
    private static long sGestureSerial;
    private static long sSearchDownTime;
    private static float sSearchStartX;
    private static float sSearchStartY;
    private static boolean sSearchSawMove;
    private static boolean sSearchInvalid;
    private static boolean sSearchStartRegionValid;
    private static long sLastSearchOpenTime;

    private VerticalGestureDirectionConfig() {
    }

    /** Freeze the mode for this gesture. Must be called exactly at ACTION_DOWN. */
    public static synchronized void captureForActionDown(Context context) {
        sGestureModeReversed = readReversed(context);
        sGestureSerial++;
        Log.i(LOG_TAG, "VERTICAL_GESTURE_MODE_CAPTURE serial=" + sGestureSerial
                + " mode=" + (sGestureModeReversed ? "REVERSED" : "NORMAL"));
    }

    public static synchronized void beginSearchGesture(Context context, MotionEvent event) {
        if (event == null) return;
        captureForActionDown(context);
        sSearchDownTime = event.getDownTime();
        sSearchStartX = event.getX();
        sSearchStartY = event.getY();
        sSearchSawMove = false;
        sSearchInvalid = event.getPointerCount() != 1;
        int height = context == null ? 0
                : context.getResources().getDisplayMetrics().heightPixels;
        sSearchStartRegionValid = passesSearchStartRegion(context, sSearchStartY, height);
    }

    public static synchronized void observeSearchMotion(MotionEvent event) {
        if (event == null) return;
        int action = event.getActionMasked();
        if (event.getDownTime() != sSearchDownTime || event.getPointerCount() != 1
                || action == MotionEvent.ACTION_POINTER_DOWN
                || action == MotionEvent.ACTION_POINTER_UP
                || action == MotionEvent.ACTION_CANCEL) {
            sSearchInvalid = true;
            return;
        }
        if (action != MotionEvent.ACTION_MOVE) return;
        sSearchSawMove = true;
        float dx = event.getX() - sSearchStartX;
        float dy = event.getY() - sSearchStartY;
        float horizontalLimit = Math.max(48.0f, Math.max(Math.abs(dy), 1.0f) * 0.70f);
        if (Math.abs(dx) > horizontalLimit) sSearchInvalid = true;
        if (!sGestureModeReversed && dy > 12.0f) sSearchInvalid = true;
        if (sGestureModeReversed && dy < -12.0f) sSearchInvalid = true;
    }

    public static synchronized boolean isSearchGestureFinalValid(MotionEvent event) {
        if (event == null || event.getActionMasked() != MotionEvent.ACTION_UP) return false;
        if (event.getDownTime() != sSearchDownTime || event.getPointerCount() != 1) return false;
        return sSearchSawMove && !sSearchInvalid && sSearchStartRegionValid;
    }

    public static synchronized float getSearchMinDistancePx(Context context, int screenHeight) {
        float density = 1.0f;
        if (context != null && context.getResources() != null
                && context.getResources().getDisplayMetrics() != null) {
            density = Math.max(1.0f, context.getResources().getDisplayMetrics().density);
        }
        return Math.max(48.0f * density, Math.max(1, screenHeight) * 0.055f);
    }

    public static synchronized boolean passesSearchStartRegion(Context context, float startY,
                                                                int screenHeight) {
        float density = 1.0f;
        if (context != null && context.getResources() != null
                && context.getResources().getDisplayMetrics() != null) {
            density = Math.max(1.0f, context.getResources().getDisplayMetrics().density);
        }
        float height = Math.max(1, screenHeight);
        if (sGestureModeReversed) {
            return startY > 96.0f * density && startY < height - 280.0f * density;
        }
        return startY > 280.0f * density && startY < height - 96.0f * density;
    }

    public static synchronized boolean canOpenSearchNow() {
        return sLastSearchOpenTime == 0L
                || SystemClock.uptimeMillis() - sLastSearchOpenTime >= 1000L;
    }

    public static synchronized void markSearchOpened() {
        sLastSearchOpenTime = SystemClock.uptimeMillis();
    }

    public static synchronized boolean isReversed() {
        return sGestureModeReversed;
    }

    /** Android signed delta: positive is down, negative is up. */
    public static synchronized boolean isSearchDirection(float deltaY) {
        return deltaY != 0.0f && (sGestureModeReversed ? deltaY > 0.0f : deltaY < 0.0f);
    }

    /** Android signed delta: positive is down, negative is up. */
    public static synchronized boolean isPanelDirection(float deltaY) {
        return deltaY != 0.0f && (sGestureModeReversed ? deltaY < 0.0f : deltaY > 0.0f);
    }

    /** Preserve FlingUpGesture's existing no-opposite-direction history gate. */
    public static synchronized boolean isSearchDirectionStable(
            boolean noUpwardMovementSeen, boolean noDownwardMovementSeen) {
        return sGestureModeReversed ? noUpwardMovementSeen : noDownwardMovementSeen;
    }

    /**
     * The original fling-down search rejects gestures whose finishing point is
     * in the top quarter.  After reversing the direction, retaining that same
     * endpoint test rejects normal upward swipes that finish near the status
     * bar.  Mirror only this positional gate; velocity, distance, angle and
     * single-direction checks remain in the original FlingUpGesture.
     */
    private static boolean readReversed(Context context) {
        if (context == null) return false;
        try {
            SharedPreferences prefs = context.getSharedPreferences(
                    "launcher_settings", Context.MODE_PRIVATE);
            if (prefs.contains(KEY_REVERSED)) return prefs.getBoolean(KEY_REVERSED, false);
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.System.getString(context.getContentResolver(), KEY_REVERSED);
            if (value != null) return "1".equals(value) || Boolean.parseBoolean(value);
        } catch (Throwable ignored) {
        }
        return false;
    }
}
