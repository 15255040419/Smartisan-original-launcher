package com.smartisanos.launcher.backup;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.util.Log;

import java.io.File;
import java.util.List;

public final class RestoreRecoveryGuard {
    private static final String TAG = "RestoreRecovery";

    private RestoreRecoveryGuard() {}

    /** Runs before the stock DatabaseProvider initialization in LauncherApplication. */
    public static void beforeLauncherDatabaseInit(Context context) {
        if (context == null || isReloadProcess(context)) return;
        DesktopBackupController.cleanupInterruptedBackup(context);
        RestoreOperationJournal journal = new RestoreOperationJournal(context);
        RestoreOperationJournal.Entry entry = journal.read();
        if (entry.state == RestoreOperationJournal.State.IDLE) return;
        Log.i(TAG, "RECOVERY_JOURNAL_FOUND state=" + entry.state);
        try {
            if (entry.state.ordinal() < RestoreOperationJournal.State.ROLLBACK_READY.ordinal()) {
                BackupFileUtils.deleteRecursively(new File(entry.stagingPath));
                journal.reset();
                return;
            }
            if (entry.state == RestoreOperationJournal.State.COMMITTED
                    || entry.state == RestoreOperationJournal.State.CLEANING) {
                BackupFileUtils.deleteRecursively(new File(entry.stagingPath));
                journal.reset();
                return;
            }
            if (entry.state == RestoreOperationJournal.State.ROLLED_BACK) {
                journal.reset();
                return;
            }
            journal.write(entry, RestoreOperationJournal.State.ROLLING_BACK, null);
            Log.i(TAG, "RECOVERY_ROLLBACK_BEGIN");
            if (!DesktopRestoreController.applyPreparedAfterOldProcessExit(
                    context, entry.operationToken, "BACKUP_RESTORE_RECOVERY")) {
                throw new IllegalStateException("Rollback did not complete");
            }
            journal.reset();
            context.getSharedPreferences(DesktopBackupController.PREFS, 0).edit()
                    .putString("pending_restore_toast", "RESTORE_RECOVERY_ROLLED_BACK").commit();
            Log.i(TAG, "RECOVERY_ROLLBACK_COMPLETE");
        } catch (Throwable error) {
            journal.write(entry, RestoreOperationJournal.State.ROLLING_BACK,
                    "RESTORE_ROLLBACK_FAILED");
            context.getSharedPreferences(DesktopBackupController.PREFS, 0).edit()
                    .putString("pending_restore_toast", "RESTORE_ROLLBACK_FAILED").commit();
            Log.e(TAG, "RECOVERY_FAILED", error);
        }
    }

    private static boolean isReloadProcess(Context context) {
        try {
            ActivityManager manager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
            List<ActivityManager.RunningAppProcessInfo> processes = manager.getRunningAppProcesses();
            if (processes != null) for (ActivityManager.RunningAppProcessInfo process : processes) {
                if (process.pid == Process.myPid()) return process.processName != null
                        && process.processName.endsWith(":reload");
            }
        } catch (Throwable ignored) {
        }
        return false;
    }
}
