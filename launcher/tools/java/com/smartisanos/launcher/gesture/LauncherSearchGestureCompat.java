package com.smartisanos.launcher.gesture;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import android.view.MotionEvent;

/**
 * Restores the original slide-up search trigger at the Launcher activity
 * boundary. The actual search UI remains StartActivityForSearch and the
 * existing in-launcher search page; this class only adapts modern gesture
 * delivery, which no longer reaches the old Smartisan system gesture service.
 */
public final class LauncherSearchGestureCompat {
    private static final String TAG = "LauncherSearchGesture";
    private static float sDownX;
    private static float sDownY;
    private static boolean sTracking;

    private LauncherSearchGestureCompat() {
    }

    public static void onLauncherTouch(Activity activity, MotionEvent event) {
        if (activity == null || event == null) return;
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                sDownX = event.getX();
                sDownY = event.getY();
                sTracking = true;
                break;
            case MotionEvent.ACTION_POINTER_DOWN:
            case MotionEvent.ACTION_CANCEL:
                sTracking = false;
                break;
            case MotionEvent.ACTION_UP:
                if (!sTracking) return;
                sTracking = false;
                float density = activity.getResources().getDisplayMetrics().density;
                float distanceY = sDownY - event.getY();
                float distanceX = Math.abs(event.getX() - sDownX);
                int height = activity.getWindow() == null ? 0
                        : activity.getWindow().getDecorView().getHeight();
                // Require an intentional upward swipe from the lower half. It
                // leaves original horizontal page flips, icon drags and edit
                // gestures untouched.
                if (height > 0 && sDownY < height * 0.5f) return;
                if (distanceY < 96f * density || distanceX > 72f * density) return;
                try {
                    Intent intent = new Intent();
                    intent.setClassName("com.smartisanos.launcher",
                            "com.smartisanos.launcher.theme.ThemeChooserActivity");
                    // This is the same original ua.fc() route used by the
                    // Launcher search icon. It avoids an extra external-search
                    // Activity window before the in-launcher search view.
                    intent.putExtra("launcher_show_search", true);
                    intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP
                            | Intent.FLAG_ACTIVITY_SINGLE_TOP);
                    activity.startActivity(intent);
                    Log.i(TAG, "SEARCH_GESTURE_UP_OPENED distanceY=" + (int) distanceY);
                } catch (Throwable error) {
                    Log.w(TAG, "SEARCH_GESTURE_UP_FAILED", error);
                }
                break;
            default:
                break;
        }
    }
}
