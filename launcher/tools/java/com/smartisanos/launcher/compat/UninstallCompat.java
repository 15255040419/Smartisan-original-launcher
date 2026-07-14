package com.smartisanos.launcher.compat;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

/**
 * Cross-ROM uninstall bridge.
 *
 * The original Smartisan launcher calls android.content.pm.ApplicationManager,
 * a Smartisan OS private API. On ordinary Android ROMs that API is absent or a
 * no-op compatibility stub, so the launcher can remove its icon while the APK
 * remains installed. This bridge starts the public system uninstaller instead.
 */
public final class UninstallCompat {
    private static final String TAG = "UninstallCompat";

    private UninstallCompat() {
    }

    public static void requestUninstall(String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return;
        }
        Context context = null;
        try {
            Object launcherApp = Class.forName("com.smartisanos.launcher.ja")
                    .getMethod("getInstance").invoke(null);
            if (launcherApp != null) {
                Object app = launcherApp.getClass().getMethod("getApplication").invoke(launcherApp);
                if (app instanceof Context) {
                    context = (Context) app;
                }
            }
        } catch (Throwable ignored) {
        }
        if (context == null) {
            try {
                Object launcher = Class.forName("com.smartisanos.launcher.J")
                        .getMethod("getInstance").invoke(null);
                Object ctx = launcher == null ? null : launcher.getClass().getMethod("getContext").invoke(launcher);
                if (ctx instanceof Context) {
                    context = (Context) ctx;
                }
            } catch (Throwable ignored) {
            }
        }
        if (context == null) {
            Log.w(TAG, "requestUninstall ignored: no context for " + packageName);
            return;
        }
        try {
            Intent intent = new Intent(Intent.ACTION_UNINSTALL_PACKAGE, Uri.parse("package:" + packageName));
            intent.putExtra(Intent.EXTRA_RETURN_RESULT, false);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);
        } catch (Throwable t) {
            try {
                Intent fallback = new Intent(Intent.ACTION_DELETE, Uri.parse("package:" + packageName));
                fallback.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                context.startActivity(fallback);
            } catch (Throwable fallbackError) {
                Log.w(TAG, "requestUninstall failed for " + packageName, fallbackError);
                try {
                    Toast.makeText(context, "无法打开系统卸载界面", Toast.LENGTH_SHORT).show();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    public static void requestUninstallItem(Object itemInfo) {
        if (itemInfo == null) {
            return;
        }
        try {
            Object value = itemInfo.getClass().getField("packageName").get(itemInfo);
            if (value instanceof String) {
                requestUninstall((String) value);
            }
        } catch (Throwable t) {
            Log.w(TAG, "requestUninstallItem ignored", t);
        }
    }
}
