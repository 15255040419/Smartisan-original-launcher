package com.smartisanos.launcher;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextThemeWrapper;

import java.util.ArrayDeque;

/** Activity-token based confirmation for Android O+ pinned shortcuts. */
public final class PinShortcutConfirmActivity extends Activity {
    private static final String TAG = "ShortcutCompat";
    private static final String ACTION_CONFIRM_PIN_SHORTCUT = "android.content.pm.action.CONFIRM_PIN_SHORTCUT";
    private final ArrayDeque<Intent> queuedIntents = new ArrayDeque<>();
    private LauncherApps.PinItemRequest request;
    private ShortcutInfo shortcut;
    private AlertDialog dialog;
    private boolean requestHandled;
    private boolean databaseDispatched;

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        Log.i(TAG, "PIN_SHORTCUT_ACTIVITY_CREATED");
        queuedIntents.add(new Intent(getIntent()));
        processNext();
    }

    @Override protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        queuedIntents.add(new Intent(intent));
        if (request == null && dialog == null) processNext();
    }

    private void processNext() {
        if (request != null || dialog != null) return;
        Intent intent = queuedIntents.poll();
        if (intent == null) {
            finishWithLog();
            return;
        }
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O || !ACTION_CONFIRM_PIN_SHORTCUT.equals(intent.getAction())) {
            Log.w(TAG, "PIN_ITEM_REQUEST_INVALID reason=unsupported_or_wrong_action");
            processNext();
            return;
        }
        LauncherApps apps = (LauncherApps) getSystemService(Context.LAUNCHER_APPS_SERVICE);
        request = apps == null ? null : apps.getPinItemRequest(intent);
        if (request == null || !request.isValid()
                || request.getRequestType() != LauncherApps.PinItemRequest.REQUEST_TYPE_SHORTCUT
                || request.getShortcutInfo() == null) {
            Log.w(TAG, "PIN_ITEM_REQUEST_INVALID requestFound=" + (request != null));
            request = null;
            processNext();
            return;
        }
        shortcut = request.getShortcutInfo();
        if (isEmpty(shortcut.getPackage()) || isEmpty(shortcut.getId())) {
            Log.w(TAG, "PIN_ITEM_REQUEST_INVALID reason=missing_identity");
            request = null;
            processNext();
            return;
        }
        Log.i(TAG, "PIN_ITEM_REQUEST_FOUND package=" + shortcut.getPackage() + " shortcutId=" + shortcut.getId()
                + " requestValid=true");
        showConfirmation();
    }

    private void showConfirmation() {
        try {
            String title = labelFor(shortcut);
            String source = sourceLabel(shortcut.getPackage());
            String messageFormat = getStringByName("pin_shortcut_message", "Add %s from %s to the desktop?");
            String message = String.format(messageFormat, title, source);
            Context themed = new ContextThemeWrapper(this, 0x103012b);
            dialog = new AlertDialog.Builder(themed)
                    .setTitle(resourceId("uninstall_app_dialog_title"))
                    .setMessage(message)
                    .setPositiveButton(resourceId("ok"), new DialogInterface.OnClickListener() {
                        @Override public void onClick(DialogInterface value, int which) { confirmCurrent(); }
                    })
                    .setNegativeButton(resourceId("cancel"), new DialogInterface.OnClickListener() {
                        @Override public void onClick(DialogInterface value, int which) { cancelCurrent(); }
                    })
                    .create();
            dialog.setOnCancelListener(new DialogInterface.OnCancelListener() {
                @Override public void onCancel(DialogInterface value) { cancelCurrent(); }
            });
            Log.i(TAG, "PIN_SHORTCUT_DIALOG_SHOW_REQUESTED package=" + shortcut.getPackage()
                    + " shortcutId=" + shortcut.getId() + " windowType=activity");
            dialog.show();
            Log.i(TAG, "PIN_SHORTCUT_DIALOG_SHOWN package=" + shortcut.getPackage() + " shortcutId=" + shortcut.getId());
        } catch (RuntimeException e) {
            Log.e(TAG, "PIN_SHORTCUT_DIALOG_SHOW_FAILED type=" + e.getClass().getSimpleName(), e);
            clearCurrent();
            processNext();
        }
    }

    private synchronized void confirmCurrent() {
        if (requestHandled || request == null || shortcut == null) {
            Log.w(TAG, "PIN_SHORTCUT_DUPLICATE_BLOCKED");
            return;
        }
        requestHandled = true;
        long serial = ShortcutCompatBridge.userSerial(this, shortcut.getUserHandle());
        Log.i(TAG, "PIN_SHORTCUT_CONFIRMED package=" + shortcut.getPackage() + " shortcutId=" + shortcut.getId()
                + " userSerial=" + serial);
        Object item = ShortcutCompatBridge.createItem(this, shortcut, serial);
        if (item == null) {
            Log.e(TAG, "PIN_SHORTCUT_ACCEPT_FAILED reason=item_create_failed");
            clearCurrent();
            processNext();
            return;
        }
        try {
            Log.i(TAG, "PIN_SHORTCUT_ACCEPT_BEGIN package=" + shortcut.getPackage() + " shortcutId=" + shortcut.getId());
            if (!request.isValid() || !request.accept()) {
                Log.w(TAG, "PIN_SHORTCUT_ACCEPT_FAILED result=false");
                clearCurrent();
                processNext();
                return;
            }
            Log.i(TAG, "PIN_SHORTCUT_ACCEPT_SUCCESS package=" + shortcut.getPackage() + " shortcutId=" + shortcut.getId());
            databaseDispatched = ShortcutCompatBridge.dispatchInstall(item);
        } catch (RuntimeException e) {
            Log.e(TAG, "PIN_SHORTCUT_ACCEPT_FAILED type=" + e.getClass().getSimpleName(), e);
        }
        clearCurrent();
        processNext();
    }

    private void cancelCurrent() {
        if (request == null || requestHandled) return;
        Log.i(TAG, "PIN_SHORTCUT_CANCELLED package=" + shortcut.getPackage() + " shortcutId=" + shortcut.getId());
        clearCurrent();
        processNext();
    }

    @Override public void onBackPressed() { cancelCurrent(); }

    @Override protected void onDestroy() {
        if (dialog != null) dialog.dismiss();
        dialog = null;
        super.onDestroy();
    }

    private void clearCurrent() {
        if (dialog != null) dialog.dismiss();
        dialog = null;
        request = null;
        shortcut = null;
        requestHandled = false;
        databaseDispatched = false;
    }

    private void finishWithLog() {
        Log.i(TAG, "SHORTCUT_ACTIVITY_FINISHED activityFinishing=true");
        finish();
    }

    private int resourceId(String name) { return getResources().getIdentifier(name, "string", getPackageName()); }
    private String getStringByName(String name, String fallback) {
        int id = resourceId(name);
        return id == 0 ? fallback : getString(id);
    }
    private String sourceLabel(String packageName) {
        try { return String.valueOf(getPackageManager().getApplicationLabel(getPackageManager().getApplicationInfo(packageName, 0))); }
        catch (Exception ignored) { return packageName; }
    }
    private static String labelFor(ShortcutInfo value) {
        CharSequence label = value.getShortLabel();
        if (label == null || label.length() == 0) label = value.getLongLabel();
        return label == null || label.length() == 0 ? value.getId() : label.toString();
    }
    private static boolean isEmpty(String value) { return value == null || value.length() == 0; }
}
