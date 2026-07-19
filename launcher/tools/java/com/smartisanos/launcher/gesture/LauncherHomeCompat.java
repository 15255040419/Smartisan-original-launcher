package com.smartisanos.launcher.gesture;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;

/**
 * Emits HOME intent diagnostics while the original J.a(Intent) keeps its
 * original task-delivery and page-routing behavior.
 */
public final class LauncherHomeCompat {
    private static final String TAG = "SmartisanHome";
    private static final String EXTRA_FROM_HOME_KEY = "android.intent.extra.FROM_HOME_KEY";
    private LauncherHomeCompat() {
    }

    public static void logHomeIntentReceived(Intent intent) {
        if (intent == null) {
            return;
        }
        Log.i(TAG, "HOME_INTENT_RECEIVED action=" + intent.getAction()
                + " categories=" + intent.getCategories()
                + " flags=0x" + Integer.toHexString(intent.getFlags())
                + " FROM_HOME_KEY=" + intent.getBooleanExtra(EXTRA_FROM_HOME_KEY, false));
    }

    public static boolean isStandardAndroidHome(Intent intent) {
        return intent != null
                && Intent.ACTION_MAIN.equals(intent.getAction())
                && intent.hasCategory(Intent.CATEGORY_HOME);
    }

    public static boolean isCurrentDefaultHome(Context context) {
        if (context == null) {
            return false;
        }
        try {
            Intent home = new Intent(Intent.ACTION_MAIN);
            home.addCategory(Intent.CATEGORY_HOME);
            ResolveInfo resolved = context.getPackageManager().resolveActivity(
                    home, PackageManager.MATCH_DEFAULT_ONLY);
            return resolved != null
                    && resolved.activityInfo != null
                    && context.getPackageName().equals(resolved.activityInfo.packageName);
        } catch (Throwable error) {
            Log.w(TAG, "HOME_GATE_DEFAULT_HOME query_failed", error);
            return false;
        }
    }

    public static void logHomeGateFlags(int flags) {
        boolean broughtToFront = (flags & 0x00400000) == 0x00400000;
        Log.i(TAG, "HOME_FLAGS_HEX flags=0x" + Integer.toHexString(flags));
        Log.i(TAG, "HOME_GATE_FLAGS flags=0x" + Integer.toHexString(flags));
        Log.i(TAG, "HOME_BROUGHT_TO_FRONT " + broughtToFront);
        Log.i(TAG, "HOME_GATE_BROUGHT_TO_FRONT " + broughtToFront);
        Log.i(TAG, "HOME_ALREADY_ON_HOME " + !broughtToFront);
        Log.i(TAG, "HOME_GATE_ALREADY_ON_HOME " + !broughtToFront);
    }

    public static void logHomeGate(String gate, boolean value) {
        Log.i(TAG, gate + " " + value);
    }

    public static void logHomeGateEvent(String event) {
        Log.i(TAG, event);
    }

    public static void logPageViewNotReady() {
        logHomeGateEvent("HOME_GATE_PAGE_VIEW_NOT_READY");
    }

    public static void logOriginalHomeNoOp() {
        logHomeGateEvent("HOME_ALREADY_ON_FIRST_PAGE reason=original_noop_or_debounced");
    }

    public static void logOriginalHomeAnimationRequested() {
        logHomeGateEvent("HOME_CREATE_SCROLL_EVENT_SENT");
        logHomeGateEvent("HOME_RETURN_TO_FIRST_PAGE original_animation_requested=true");
    }
}
