package com.smartisanos.launcher;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.Log;

/** Starts a pinned shortcut from its stable package/id/user serial identity. */
public final class ShortcutLaunchActivity extends Activity {
    private static final String TAG = "ShortcutCompat";

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) { finish(); return; }
        Intent intent = getIntent();
        String packageName = intent.getStringExtra(ShortcutCompatBridge.EXTRA_PACKAGE);
        String shortcutId = intent.getStringExtra(ShortcutCompatBridge.EXTRA_ID);
        long serial = intent.getLongExtra(ShortcutCompatBridge.EXTRA_USER_SERIAL, -1L);
        boolean allowPrimaryFallback = intent.getBooleanExtra(ShortcutCompatBridge.EXTRA_ALLOW_PRIMARY_FALLBACK, false);
        if (packageName == null || shortcutId == null) { finish(); return; }
        try {
            UserManager users = (UserManager) getSystemService(Context.USER_SERVICE);
            UserHandle user = serial < 0
                    ? (allowPrimaryFallback ? Process.myUserHandle() : null)
                    : (users == null ? null : users.getUserForSerialNumber(serial));
            if (user == null) {
                Log.w(TAG, "SHORTCUT_LAUNCH_FAILED reason=unresolved_user package=" + packageName + " shortcutId=" + shortcutId);
                finish();
                return;
            }
            LauncherApps apps = (LauncherApps) getSystemService(Context.LAUNCHER_APPS_SERVICE);
            if (apps == null) throw new IllegalStateException("LauncherApps unavailable");
            Log.i(TAG, "SHORTCUT_LAUNCH_BEGIN package=" + packageName + " shortcutId=" + shortcutId + " userSerial=" + serial);
            apps.startShortcut(packageName, shortcutId, null, null, user);
            Log.i(TAG, "SHORTCUT_LAUNCH_SUCCESS package=" + packageName + " shortcutId=" + shortcutId);
        } catch (RuntimeException e) {
            Log.e(TAG, "SHORTCUT_LAUNCH_FAILED type=" + e.getClass().getSimpleName()
                    + " package=" + packageName + " shortcutId=" + shortcutId + " userSerial=" + serial, e);
        }
        finish();
    }
}
