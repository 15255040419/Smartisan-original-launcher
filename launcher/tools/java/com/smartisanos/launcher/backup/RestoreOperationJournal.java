package com.smartisanos.launcher.backup;

import android.content.Context;
import android.util.AtomicFile;

import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public final class RestoreOperationJournal {
    public enum State {
        IDLE, VALIDATING, READY, CREATING_ROLLBACK, ROLLBACK_READY,
        WAITING_TRANSITION, WAITING_OLD_PROCESS_EXIT, APPLYING_DATABASE,
        DATABASE_COMMITTED, APPLYING_PREFERENCES, APPLYING_ICONS, APPLYING_THEME,
        VERIFYING, COMMITTED, CLEANING, FAILED_ROLLBACK_PENDING, ROLLING_BACK,
        ROLLED_BACK
    }

    public static final class Entry {
        public String operationToken = "";
        public String backupUri = "";
        public String stagingPath = "";
        public String rollbackPath = "";
        public State state = State.IDLE;
        public long startedAt;
        public long updatedAt;
        public int sourceFormatVersion;
        public String sourceLauncherVersion = "";
        public String errorCode = "";
        public boolean undo;

        JSONObject toJson() throws Exception {
            JSONObject json = new JSONObject();
            json.put("operationToken", operationToken);
            json.put("backupUri", backupUri);
            json.put("stagingPath", stagingPath);
            json.put("rollbackPath", rollbackPath);
            json.put("state", state.name());
            json.put("startedAt", startedAt);
            json.put("updatedAt", updatedAt);
            json.put("sourceFormatVersion", sourceFormatVersion);
            json.put("sourceLauncherVersion", sourceLauncherVersion);
            json.put("errorCode", errorCode);
            json.put("undo", undo);
            return json;
        }

        static Entry fromJson(JSONObject json) throws Exception {
            Entry entry = new Entry();
            entry.operationToken = json.optString("operationToken", "");
            entry.backupUri = json.optString("backupUri", "");
            entry.stagingPath = json.optString("stagingPath", "");
            entry.rollbackPath = json.optString("rollbackPath", "");
            entry.state = State.valueOf(json.optString("state", State.IDLE.name()));
            entry.startedAt = json.optLong("startedAt", 0L);
            entry.updatedAt = json.optLong("updatedAt", 0L);
            entry.sourceFormatVersion = json.optInt("sourceFormatVersion", 0);
            entry.sourceLauncherVersion = json.optString("sourceLauncherVersion", "");
            entry.errorCode = json.optString("errorCode", "");
            entry.undo = json.optBoolean("undo", false);
            return entry;
        }
    }

    private final AtomicFile file;

    public RestoreOperationJournal(Context context) {
        File directory = new File(context.getFilesDir(), "backup_restore");
        if (!directory.exists()) directory.mkdirs();
        file = new AtomicFile(new File(directory, "restore_journal.json"));
    }

    public synchronized Entry read() {
        FileInputStream input = null;
        try {
            input = file.openRead();
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            BackupFileUtils.copy(input, output, 256 * 1024L, null);
            return Entry.fromJson(new JSONObject(new String(output.toByteArray(), BackupFileUtils.UTF_8)));
        } catch (Throwable ignored) {
            return new Entry();
        } finally {
            BackupFileUtils.closeQuietly(input);
        }
    }

    public synchronized boolean write(Entry entry, State state, String errorCode) {
        FileOutputStream output = null;
        try {
            long now = System.currentTimeMillis();
            if (entry.startedAt == 0L) entry.startedAt = now;
            entry.updatedAt = now;
            entry.state = state;
            entry.errorCode = errorCode == null ? "" : errorCode;
            byte[] data = entry.toJson().toString().getBytes(BackupFileUtils.UTF_8);
            output = file.startWrite();
            output.write(data);
            file.finishWrite(output);
            return true;
        } catch (Throwable error) {
            if (output != null) file.failWrite(output);
            return false;
        }
    }

    public synchronized void reset() {
        write(new Entry(), State.IDLE, null);
    }
}
