package com.smartisanos.launcher.gesture;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.util.Log;
import android.view.MotionEvent;

import java.lang.reflect.Method;

/**
 * Compatibility bridge for a desktop pull-down. Ownership is decided
 * by the gestural winner, allowing swipes starting on icons to pull down
 * the system panel unless a long-press or scroll takes over first.
 *
 * Uses reflection to query launcher internal classes (Eb, Ha, ub, Ra, etc.)
 * because they are only available at runtime as dex bytecode.
 */
public final class SystemPanelCompat {
    private static final String LOG_TAG = "SystemPanelCompat";
    public static final String KEY_SWIPE_DOWN_SYSTEM_PANELS =
            "swipe_down_system_panels_enabled";
    private static final float TRIGGER_DISTANCE_PX = 150.0f;
    private static final float TOUCH_SLOP = 24.0f;

    private static final int IDLE = 0;
    private static final int TRACKING = 1;
    private static final int OTHER_GESTURE_OWNED = 2;
    private static final int SYSTEM_PANEL_OWNED = 3;
    private static final int FINISHED = 4;

    private static float sStartX;
    private static float sStartY;
    private static long sStartTime;
    private static int sScreenWidth;
    private static int sPointerId;
    private static int sState = IDLE;
    private static boolean sMultiTouch;
    private static boolean sTriggered;
    private static boolean sSettingEnabled;

    private static Object sDownTarget;
    private static boolean sHasItemInfo;
    private static boolean sDownOnDock;
    private static String sOwnerReason = "";

    private SystemPanelCompat() {
    }

    /** Called from the existing Android input bridge. Synchronized for thread-safety. */
    public static synchronized void onMotionEvent(Context context, MotionEvent event) {
        if (context == null || event == null) {
            return;
        }
        final int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            VerticalGestureDirectionConfig.captureForActionDown(context);
            sStartX = event.getX();
            sStartY = event.getY();
            sStartTime = event.getDownTime();
            sPointerId = event.getPointerId(0);
            sScreenWidth = Math.max(1, context.getResources().getDisplayMetrics().widthPixels);
            sMultiTouch = event.getPointerCount() != 1;
            sTriggered = false;
            sDownTarget = null;
            sHasItemInfo = false;
            sDownOnDock = false;
            sOwnerReason = "";

            sSettingEnabled = readEnabled(context);
            if (!sSettingEnabled) {
                sState = FINISHED;
                return;
            }

            // Check if touch down is on Dock using reflection
            try {
                Class<?> ebClass = Class.forName("com.smartisanos.launcher.view.Eb");
                Method getInstanceMethod = ebClass.getMethod("getInstance");
                Object workspace = getInstanceMethod.invoke(null);
                if (workspace != null) {
                    java.lang.reflect.Field pxField = ebClass.getDeclaredField("px");
                    pxField.setAccessible(true);
                    Object px = pxField.get(workspace);
                    if (px != null) {
                        Method dlMethod = px.getClass().getMethod("Dl");
                        int mode = (Integer) dlMethod.invoke(px);

                        Class<?> constantsClass = Class.forName("com.smartisanos.launcher.data.Constants");
                        Method modeMethod = constantsClass.getMethod("mode", int.class);
                        Object layout = modeMethod.invoke(null, mode);

                        Class<?> layoutPropertyClass = Class.forName("com.smartisanos.launcher.data.LayoutProperty");
                        Class<?> xClass = Class.forName("com.smartisanos.launcher.view.x");
                        Method dMethod = xClass.getMethod("d", layoutPropertyClass);

                        float dockTop = (Float) dMethod.invoke(null, layout);
                        if (sStartY > dockTop) {
                            sDownOnDock = true;
                            sState = OTHER_GESTURE_OWNED;
                            sOwnerReason = "DOCK";
                            logDiagnostic("PULL_DOWN_REJECT_DOCK", event, "reason=dock_touch");
                            return;
                        }
                    }
                }
            } catch (Throwable t) {
                // Ignore
            }

            sState = sMultiTouch ? OTHER_GESTURE_OWNED : TRACKING;
            if (sMultiTouch) {
                sOwnerReason = "MULTI_TOUCH";
            }
            logDiagnostic("PULL_DOWN_TRACKING_STARTED", event, "settingEnabled=" + sSettingEnabled);
            return;
        }

        if (action == MotionEvent.ACTION_POINTER_DOWN || action == MotionEvent.ACTION_POINTER_UP) {
            sMultiTouch = true;
            if (sState == TRACKING) {
                sState = OTHER_GESTURE_OWNED;
                sOwnerReason = "MULTI_TOUCH";
                logDiagnostic("PULL_DOWN_REJECT_MULTI_TOUCH", event, "reason=MULTI_TOUCH");
            }
            return;
        }

        if (action == MotionEvent.ACTION_CANCEL) {
            logDiagnostic("PULL_DOWN_TRACKING_FINISHED", event, "cancelled=true");
            if (sState != SYSTEM_PANEL_OWNED) {
                reset();
            }
            return;
        }

        if (action == MotionEvent.ACTION_UP) {
            logDiagnostic("PULL_DOWN_TRACKING_FINISHED", event, "triggered=" + sTriggered);
            if (sState != SYSTEM_PANEL_OWNED) {
                reset();
            }
            return;
        }

        if (action != MotionEvent.ACTION_MOVE || sState != TRACKING) {
            return;
        }

        // Check if drag, scroll, folder open, or edit mode has started
        String activeReason = getActiveGestureReason();
        if (activeReason != null) {
            sState = OTHER_GESTURE_OWNED;
            sOwnerReason = activeReason;
            logDiagnostic("PULL_DOWN_REJECT_ACTIVE_GESTURE", event, "reason=" + activeReason);
            return;
        }

        final float deltaX = event.getX() - sStartX;
        final float deltaY = event.getY() - sStartY;

        // Reject horizontal scrolling only if displacement exceeds TOUCH_SLOP and dx > dy
        if (Math.abs(deltaX) > TOUCH_SLOP && Math.abs(deltaX) > Math.abs(deltaY)) {
            sState = OTHER_GESTURE_OWNED;
            sOwnerReason = "PAGE_SCROLL";
            logDiagnostic("PULL_DOWN_REJECT_HORIZONTAL", event, "deltaX=" + deltaX + " deltaY=" + deltaY);
            return;
        }

        // The opposite action owns the search direction in either configured mode.
        if (VerticalGestureDirectionConfig.isSearchDirection(deltaY)
                && Math.abs(deltaY) > TRIGGER_DISTANCE_PX
                && Math.abs(deltaY) > Math.abs(deltaX)) {
            sState = OTHER_GESTURE_OWNED;
            sOwnerReason = "SEARCH_SWIPE";
            logDiagnostic("SYSTEM_PANEL_REJECT_SEARCH_DIRECTION", event,
                    "deltaY=" + deltaY);
            return;
        }

        // Evaluate the configured system-panel direction without changing thresholds.
        if (VerticalGestureDirectionConfig.isPanelDirection(deltaY)
                && Math.abs(deltaY) > Math.abs(deltaX)) {
            if (Math.abs(deltaY) >= TRIGGER_DISTANCE_PX) {
                final boolean left = sStartX <= sScreenWidth / 2.0f;
                logDiagnostic("PULL_DOWN_PANEL_REQUESTED", event, "side=" + (left ? "left" : "right"));

                final boolean expanded = left ? expandNotifications(context)
                        : expandQuickSettingsWithNotificationFallback(context);
                if (expanded) {
                    sTriggered = true;
                    sState = SYSTEM_PANEL_OWNED; // Atomically transition
                    logDiagnostic("PULL_DOWN_SYSTEM_PANEL_OWNERSHIP_ACQUIRED", event, "side=" + (left ? "left" : "right"));
                } else {
                    sState = FINISHED; // Reflection failed, do not swallow events
                    logDiagnostic("PULL_DOWN_PANEL_FAILED", event, "reason=REFLECT_FAILED");
                }
            }
        }
    }

    /** Called when the Cell long-click has been triggered and accepted. */
    public static synchronized void onLongPressAccepted() {
        if (sState == TRACKING) {
            sState = OTHER_GESTURE_OWNED;
            sOwnerReason = "LONG_PRESS";
            logDiagnostic("PULL_DOWN_REJECT_LONG_PRESS", null, "reason=LONG_PRESS_ACCEPTED");
        }
    }

    /** Called when a drag operation has started. */
    public static synchronized void onDragStarted() {
        if (sState == TRACKING) {
            sState = OTHER_GESTURE_OWNED;
            sOwnerReason = "DRAG";
            logDiagnostic("PULL_DOWN_REJECT_DRAG", null, "reason=drag_started");
        }
    }

    /** Called on the SMEngine thread only after a real interactive SceneNode wins ACTION_DOWN. */
    public static synchronized void onSmEngineInteractiveTarget(Object node) {
        if (sState != TRACKING) {
            return;
        }
        sDownTarget = node;
        sHasItemInfo = hasNonNullItemInfo(node);

        if (node != null) {
            String name = node.getClass().getName();
            // Check for edit mode widgets, page dots, or other control nodes
            if (name.contains("DotView") || name.contains("PageIndicator") || name.endsWith(".V") || name.endsWith(".Z")) {
                sState = OTHER_GESTURE_OWNED;
                sOwnerReason = "PAGE_INDICATOR";
                logDiagnostic("PULL_DOWN_REJECT_PAGE_INDICATOR", null, "target=" + name);
                return;
            }
            if (name.contains("ec") || name.contains("EditMode") || name.contains("Button")) {
                sState = OTHER_GESTURE_OWNED;
                sOwnerReason = "EDIT_MODE";
                logDiagnostic("PULL_DOWN_REJECT_EDIT_CONTROL", null, "target=" + name);
                return;
            }
            // If it is not a desktop Cell/Folder icon (com.smartisanos.launcher.view.a.g), reject to be safe (e.g. widgets)
            if (!name.equals("com.smartisanos.launcher.view.a.g")) {
                sState = OTHER_GESTURE_OWNED;
                sOwnerReason = "OTHER_TARGET";
                logDiagnostic("PULL_DOWN_REJECT_OTHER_TARGET", null, "target=" + name);
                return;
            }
        }
        logDiagnostic("PULL_DOWN_TARGET_RECORDED", null, "node=" + (node == null ? "null" : node.getClass().getName()));
    }

    private static boolean hasNonNullItemInfo(Object node) {
        if (node == null) {
            return false;
        }
        try {
            java.lang.reflect.Field field = node.getClass().getDeclaredField("Rj");
            field.setAccessible(true);
            return field.get(node) != null;
        } catch (Throwable ignored) {
            return true;
        }
    }

    /** Called after the original queued ACTION_DOWN has fully dispatched on the SMEngine thread. */
    public static synchronized void onSmEngineDispatchCompleted(int action) {
        if (action == MotionEvent.ACTION_DOWN) {
            logDiagnostic("PULL_DOWN_MOVE_EVALUATED", null, "action=DOWN_DISPATCH_COMPLETE");
        }
    }

    /** Records the original InputManager.rh() cancellation that accompanies panel ownership. */
    public static synchronized void onOriginalTargetCancelled() {
        logDiagnostic("PULL_DOWN_ORIGINAL_TARGET_CANCEL_CONFIRMED", null, "cancel=confirmed");
    }

    public static synchronized boolean isSystemPanelGestureConsumed() {
        return sState == SYSTEM_PANEL_OWNED && sTriggered;
    }

    public static synchronized void finishSystemPanelGesture() {
        if (sState == SYSTEM_PANEL_OWNED) {
            logDiagnostic("PULL_DOWN_TRACKING_FINISHED", null, "status=consumed_up_or_cancel");
        }
        reset();
    }

    private static String getActiveGestureReason() {
        try {
            Class<?> ubClass = Class.forName("com.smartisanos.launcher.ub");
            Method getInstanceMethod = ubClass.getMethod("getInstance");
            Object statusManager = getInstanceMethod.invoke(null);
            if (statusManager != null) {
                Method sMethod = ubClass.getMethod("S", int.class);
                if ((Boolean) sMethod.invoke(statusManager, 1)) return "PAGE_SCROLL";       // ON_PAGE_SCROLL
                if ((Boolean) sMethod.invoke(statusManager, 2)) return "DRAG";             // ON_DRAG_OBJECT
                if ((Boolean) sMethod.invoke(statusManager, 4)) return "EDIT_MODE";        // ON_GRID_SWITCH
                if ((Boolean) sMethod.invoke(statusManager, 0x1000000)) return "FOLDER_OPEN"; // ON_FOLDER_HAS_OPEN
            }
        } catch (Throwable t) {
            // Ignore
        }
        try {
            Class<?> haClass = Class.forName("com.smartisanos.launcher.view.Ha");
            Method getInstanceMethod = haClass.getMethod("getInstance");
            Object dragLayer = getInstanceMethod.invoke(null);
            if (dragLayer != null) {
                Method getStatusMethod = haClass.getMethod("getStatus");
                int status = (Integer) getStatusMethod.invoke(dragLayer);
                if ((status & 1) != 0) return "DRAG";
                if ((status & 2) != 0) return "PAGE_SCROLL";
                if ((status & 4) != 0) return "PAGE_DRAG";
            }
        } catch (Throwable t) {
            // Ignore
        }
        try {
            Class<?> ebClass = Class.forName("com.smartisanos.launcher.view.Eb");
            Method getInstanceMethod = ebClass.getMethod("getInstance");
            Object workspace = getInstanceMethod.invoke(null);
            if (workspace != null) {
                Method isEditModeMethod = ebClass.getMethod("isEditMode");
                if ((Boolean) isEditModeMethod.invoke(workspace)) {
                    return "EDIT_MODE";
                }
            }
        } catch (Throwable t) {
            // Ignore
        }
        return null;
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
        return invokeStatusBarMethod(service, "expand");
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

    private static void logDiagnostic(String marker, MotionEvent event, String extra) {
        StringBuilder sb = new StringBuilder();
        sb.append(marker);
        sb.append(" state=").append(stateName(sState));
        if (sOwnerReason != null && sOwnerReason.length() > 0) {
            sb.append(" ownerReason=").append(sOwnerReason);
        }
        if (event != null) {
            sb.append(" action=").append(event.getActionMasked());
            sb.append(" currentX=").append(event.getX()).append(" currentY=").append(event.getY());
            sb.append(" deltaX=").append(event.getX() - sStartX).append(" deltaY=").append(event.getY() - sStartY);
            sb.append(" pointerCount=").append(event.getPointerCount());
        }
        sb.append(" downX=").append(sStartX).append(" downY=").append(sStartY);
        sb.append(" downTarget=").append(sDownTarget != null ? sDownTarget.getClass().getName() : "null");
        if (sDownTarget != null) {
            sb.append(" (").append(getTargetInfo(sDownTarget)).append(")");
        }
        sb.append(" hasItemInfo=").append(sHasItemInfo);
        sb.append(" downOnDock=").append(sDownOnDock);
        if (extra != null) {
            sb.append(" ").append(extra);
        }
        sb.append(" thread=").append(Thread.currentThread().getName());
        Log.i(LOG_TAG, sb.toString());
    }

    private static String getTargetInfo(Object node) {
        if (node == null) return "null";
        try {
            java.lang.reflect.Field field = node.getClass().getDeclaredField("Rj");
            field.setAccessible(true);
            Object itemInfo = field.get(node);
            if (itemInfo != null) {
                java.lang.reflect.Field intentField = itemInfo.getClass().getField("intent");
                intentField.setAccessible(true);
                android.content.Intent intent = (android.content.Intent) intentField.get(itemInfo);
                if (intent != null && intent.getComponent() != null) {
                    return "pkg=" + intent.getComponent().getPackageName()
                        + " cls=" + intent.getComponent().getClassName();
                }
            }
        } catch (Throwable t) {
            // Ignore
        }
        return "unknown";
    }

    private static String stateName(int state) {
        switch (state) {
            case TRACKING: return "TRACKING";
            case OTHER_GESTURE_OWNED: return "OTHER_GESTURE_OWNED";
            case SYSTEM_PANEL_OWNED: return "SYSTEM_PANEL_OWNED";
            case FINISHED: return "FINISHED";
            default: return "IDLE";
        }
    }

    private static void reset() {
        sState = IDLE;
        sMultiTouch = false;
        sTriggered = false;
        sDownTarget = null;
        sHasItemInfo = false;
        sDownOnDock = false;
        sOwnerReason = "";
    }
}
