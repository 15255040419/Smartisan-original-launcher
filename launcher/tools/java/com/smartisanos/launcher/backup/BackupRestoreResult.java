package com.smartisanos.launcher.backup;

public final class BackupRestoreResult {
    public final boolean success;
    public final String errorCode;
    public final String message;
    public final int itemCount;
    public final int missingAppCount;
    public final int preservedNewItemCount;

    private BackupRestoreResult(boolean success, String errorCode, String message,
            int itemCount, int missingAppCount, int preservedNewItemCount) {
        this.success = success;
        this.errorCode = errorCode;
        this.message = message;
        this.itemCount = itemCount;
        this.missingAppCount = missingAppCount;
        this.preservedNewItemCount = preservedNewItemCount;
    }

    public static BackupRestoreResult ok(String message, int items, int missing, int preserved) {
        return new BackupRestoreResult(true, null, message, items, missing, preserved);
    }

    public static BackupRestoreResult error(String code, String message) {
        return new BackupRestoreResult(false, code, message, 0, 0, 0);
    }
}
