package com.smartisanos.launcher.settings;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;

/** Small, stateless navigation audit helper for the modern settings task. */
final class SettingsNavigation {
    static final String TAG = "SettingsNavigation";

    private SettingsNavigation() {
    }

    static void forward(Activity source, Intent intent) {
        if (source == null || intent == null) return;
        Log.i(TAG, "event=forward from=" + source.getClass().getSimpleName()
                + " to=" + (intent.getComponent() == null ? "external" : intent.getComponent().getClassName()));
        source.startActivity(intent);
    }

    static void back(Activity activity, boolean standaloneRoot) {
        if (activity != null) {
            Log.i(TAG, "event=back page=" + activity.getClass().getSimpleName()
                    + " standaloneRoot=" + standaloneRoot);
        }
    }

    static void entry(Activity activity) {
        if (activity != null) {
            Log.i(TAG, "event=entry page=" + activity.getClass().getSimpleName());
        }
    }

    static void external(Activity activity, String target) {
        if (activity != null) {
            Log.i(TAG, "event=external page=" + activity.getClass().getSimpleName() + " target=" + target);
        }
    }
}
