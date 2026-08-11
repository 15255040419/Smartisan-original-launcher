package com.smartisanos.launcher.gesture;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.util.Log;

/** Single direction truth for the existing Launcher vertical gesture pipeline. */
public final class VerticalGestureDirectionConfig {
    public static final String KEY_REVERSED = "vertical_gesture_direction_reversed";
    private static final String LOG_TAG = "VerticalGestureDirection";

    private static boolean sGestureModeReversed;
    private static long sGestureSerial;

    private VerticalGestureDirectionConfig() {
    }

    /** Freeze the mode for this gesture. Must be called exactly at ACTION_DOWN. */
    public static synchronized void captureForActionDown(Context context) {
        sGestureModeReversed = readReversed(context);
        sGestureSerial++;
        Log.i(LOG_TAG, "VERTICAL_GESTURE_MODE_CAPTURE serial=" + sGestureSerial
                + " mode=" + (sGestureModeReversed ? "REVERSED" : "NORMAL"));
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
    public static synchronized boolean passesSearchOriginGate(float startY, float endY,
                                                               int windowHeight) {
        float quarter = Math.max(1, windowHeight) * 0.25f;
        return sGestureModeReversed ? endY >= quarter : startY >= quarter;
    }

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
