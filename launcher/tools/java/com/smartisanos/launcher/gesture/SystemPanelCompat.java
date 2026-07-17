package com.smartisanos.launcher.gesture;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.util.Log;
import android.view.MotionEvent;

import java.lang.reflect.Method;

/**
 * Small compatibility bridge for the launcher-owned pull-down gesture.  It
 * deliberately contains no ROM-specific intents or persistent component: the
 * platform status-bar service is the only integration point.
 */
public final class SystemPanelCompat {
    private static final String LOG_TAG = "SystemPanelCompat";
    public static final String KEY_SWIPE_DOWN_SYSTEM_PANELS =
            "swipe_down_system_panels_enabled";
    private static final float TRIGGER_DISTANCE_PX = 150.0f;
    // Let the original Cell touch-down listener resolve first.  The panel is
    // intentionally a blank-space gesture, never an icon/drag fallback.
    private static final long MINIMUM_GESTURE_AGE_MS = 120L;

    private static float sStartX;
    private static float sStartY;
    private static long sDownTime;
    private static int sScreenWidth;
    private static boolean sTracking;
    private static boolean sMultiTouch;
    private static boolean sTriggered;
    private static boolean sSettingEnabled;
    private static boolean sInteractionBlocked;

    private SystemPanelCompat() {
    }

    public static void onMotionEvent(Context context, MotionEvent event) {
        if (context == null || event == null) {
            return;
        }
        final int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            sStartX = event.getX();
            sStartY = event.getY();
            sDownTime = event.getEventTime();
            sScreenWidth = Math.max(1, context.getResources().getDisplayMetrics().widthPixels);
            sTracking = event.getPointerCount() == 1;
            sMultiTouch = !sTracking;
            sTriggered = false;
            sInteractionBlocked = false;
            sSettingEnabled = readEnabled(context);
            if (sSettingEnabled) {
                Log.i(LOG_TAG, "PULL_DOWN_PANEL_GESTURE_STARTED startX=" + sStartX
                        + " startY=" + sStartY + " screenWidth=" + sScreenWidth);
            }
            return;
        }
        if (action == MotionEvent.ACTION_POINTER_DOWN || action == MotionEvent.ACTION_POINTER_UP) {
            sMultiTouch = true;
            return;
        }
        if (action == MotionEvent.ACTION_CANCEL) {
            sTracking = false;
            sMultiTouch = false;
            sTriggered = false;
            return;
        }
        if (action == MotionEvent.ACTION_UP) {
            // Keep sTriggered until the original SMEngine dispatcher observes
            // this UP.  It must suppress the queued Cell click after a panel
            // gesture has already been handed to SystemUI.
            sTracking = false;
            sMultiTouch = false;
            return;
        }
        if (action != MotionEvent.ACTION_MOVE || !sTracking || sTriggered) {
            return;
        }
        if (!sSettingEnabled) {
            reject("SETTING_DISABLED");
            sTracking = false;
            return;
        }
        if (sInteractionBlocked) {
            reject("DRAG_ICON_OR_PAGE");
            sTracking = false;
            return;
        }
        if (sMultiTouch || event.getPointerCount() != 1) {
            reject("MULTI_TOUCH");
            sTracking = false;
            return;
        }
        float deltaX = event.getX() - sStartX;
        float deltaY = event.getY() - sStartY;
        if (deltaY <= 0 || deltaY <= Math.abs(deltaX)) {
            if (Math.abs(deltaX) > TRIGGER_DISTANCE_PX) {
                reject("HORIZONTAL_GESTURE");
                sTracking = false;
            }
            return;
        }
        if (deltaY <= TRIGGER_DISTANCE_PX) {
            return;
        }
        if (event.getEventTime() - sDownTime < MINIMUM_GESTURE_AGE_MS) {
            return;
        }
        boolean left = sStartX <= sScreenWidth / 2.0f;
        boolean expanded = left ? expandNotifications(context)
                : expandQuickSettingsWithNotificationFallback(context);
        if (expanded) {
            sTriggered = true;
            Log.i(LOG_TAG, (left ? "PULL_DOWN_LEFT_NOTIFICATION" : "PULL_DOWN_RIGHT_QUICK_SETTINGS")
                    + " startX=" + sStartX + " startY=" + sStartY
                    + " currentX=" + event.getX() + " currentY=" + event.getY()
                    + " deltaX=" + deltaX + " deltaY=" + deltaY
                    + " screenWidth=" + sScreenWidth + " thread="
                    + Thread.currentThread().getName());
        } else {
            reject("STATUS_BAR_SERVICE_UNAVAILABLE");
            sTracking = false;
        }
    }

    public static boolean isSystemPanelGestureConsumed() {
        return sTriggered;
    }

    /** Called by the existing SMEngine input owner after it resolves a Cell/drag target. */
    public static void setInteractionBlocked(boolean blocked) {
        sInteractionBlocked = blocked;
    }

    public static boolean expandNotifications(Context context) {
        Object service = getStatusBarService(context);
        if (invokeStatusBarMethod(service, "expandNotificationsPanel")) {
            Log.i(LOG_TAG, "STATUS_BAR_EXPAND_NOTIFICATIONS_OK method=expandNotificationsPanel");
            return true;
        }
        if (invokeStatusBarMethod(service, "expand")) {
            Log.i(LOG_TAG, "STATUS_BAR_EXPAND_LEGACY_OK method=expand");
            return true;
        }
        Log.i(LOG_TAG, "STATUS_BAR_EXPAND_ALL_FAILED target=notifications");
        return false;
    }

    public static boolean expandQuickSettingsWithNotificationFallback(Context context) {
        Object service = getStatusBarService(context);
        if (invokeStatusBarMethod(service, "expandSettingsPanel")) {
            Log.i(LOG_TAG, "STATUS_BAR_EXPAND_SETTINGS_OK method=expandSettingsPanel");
            return true;
        }
        if (invokeStatusBarMethod(service, "expandNotificationsPanel")) {
            Log.i(LOG_TAG, "PULL_DOWN_RIGHT_FALLBACK_NOTIFICATION method=expandNotificationsPanel");
            return true;
        }
        if (invokeStatusBarMethod(service, "expand")) {
            Log.i(LOG_TAG, "PULL_DOWN_RIGHT_FALLBACK_NOTIFICATION method=expand");
            return true;
        }
        Log.i(LOG_TAG, "STATUS_BAR_EXPAND_ALL_FAILED target=settings");
        return false;
    }

    private static Object getStatusBarService(Context context) {
        try {
            return context.getSystemService("statusbar");
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static boolean invokeStatusBarMethod(Object service, String methodName) {
        if (service == null) {
            return false;
        }
        try {
            Method method = service.getClass().getMethod(methodName);
            method.setAccessible(true);
            method.invoke(service);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean readEnabled(Context context) {
        try {
            SharedPreferences prefs = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE);
            if (prefs.contains(KEY_SWIPE_DOWN_SYSTEM_PANELS)) {
                return prefs.getBoolean(KEY_SWIPE_DOWN_SYSTEM_PANELS, true);
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.System.getString(context.getContentResolver(),
                    KEY_SWIPE_DOWN_SYSTEM_PANELS);
            if (value != null) {
                return "1".equals(value) || Boolean.parseBoolean(value);
            }
        } catch (Throwable ignored) {
        }
        return true;
    }

    private static void reject(String reason) {
        Log.i(LOG_TAG, "PULL_DOWN_PANEL_GESTURE_REJECTED reason=" + reason);
    }
}
