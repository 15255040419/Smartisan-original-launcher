package com.smartisanos.launcher.backup;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.AtomicFile;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/** Materializes restore entries whose packages were absent when the archive was applied. */
public final class PendingItemRestoreHandler {
    private static final String TAG = "PendingItemRestore";

    private PendingItemRestoreHandler() {}

    public static void onPackageAdded(Context context, String packageName) {
        if (context == null || packageName == null || packageName.length() == 0) return;
        File file = new File(new File(context.getFilesDir(), "backup_restore"), "pending_items.json");
        if (!file.isFile()) return;
        try {
            JSONObject root = read(file);
            JSONArray source = root.optJSONArray("items");
            if (source == null || source.length() == 0) return;
            JSONArray remaining = new JSONArray();
            JSONArray matching = new JSONArray();
            for (int i = 0; i < source.length(); i++) {
                JSONObject item = source.getJSONObject(i);
                if (packageName.equals(item.optString("packageName", ""))
                        && RestoreMergePlanner.isInstalled(context, item)) matching.put(item);
                else remaining.put(item);
            }
            if (matching.length() == 0) return;
            int restored = insertAtDesktopEnd(context, matching);
            if (restored != matching.length()) return;
            root.put("items", remaining);
            write(file, root);
            Log.i(TAG, "PENDING_ITEMS_RESTORED pkg=" + packageName + " count=" + restored
                    + " remaining=" + remaining.length());
        } catch (Throwable error) {
            Log.w(TAG, "PENDING_ITEMS_RESTORE_FAILED pkg=" + packageName, error);
        }
    }

    private static int insertAtDesktopEnd(Context context, JSONArray items) throws Exception {
        DesktopRestoreController.ensureDatabaseProvider(context);
        SQLiteDatabase database = LayoutSnapshotExporter.database(true);
        int gridMode = context.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                .getInt("prefs_key_launcher_mode", 12) == 20 ? 20 : 12;
        int capacity = gridMode == 20 ? 20 : 12;
        long nextId = queryLong(database, "SELECT COALESCE(MAX(_id),0) FROM table_iteminfos") + 1L;
        int page = (int) queryLong(database, "SELECT COALESCE(MAX(pageIndex),0) FROM table_pageinfos");
        int cell = (int) queryLong(database, "SELECT COALESCE(MAX(cellIndex),-1) FROM table_iteminfos"
                + " WHERE pageIndex=" + page + " AND folderIndex<0");
        int restored = 0;
        database.beginTransaction();
        try {
            for (int i = 0; i < items.length(); i++) {
                JSONObject item = items.getJSONObject(i);
                cell++;
                if (cell >= capacity) {
                    page++;
                    cell = 0;
                    ContentValues pageValues = new ContentValues();
                    pageValues.put("_id", queryLong(database,
                            "SELECT COALESCE(MAX(_id),0) FROM table_pageinfos") + 1L);
                    pageValues.put("pageIndex", page);
                    pageValues.put("status", 0);
                    pageValues.put("containment", 0);
                    pageValues.put("pageTitle", "");
                    database.insertOrThrow("table_pageinfos", null, pageValues);
                }
                ContentValues values = new ContentValues();
                values.put("_id", nextId++);
                values.put("intent", item.optString("intent", ""));
                values.put("itemType", item.optInt("itemType", 0));
                values.put("area", 0);
                values.put("pageIndex", page);
                values.put("cellIndex", cell);
                values.put("folderIndex", -1);
                values.put("title", label(context, item));
                values.put("lastActivateTime", 0);
                values.put("messagesNumber", 0);
                values.put("newlyInstalled", 0);
                values.put("packageName", item.optString("packageName", ""));
                values.put("componentName", item.optString("componentName", ""));
                values.put("user", item.optInt("user", 0));
                values.put("usage_count", 0);
                database.insertOrThrow("table_iteminfos", null, values);
                restored++;
            }
            database.setTransactionSuccessful();
        } finally {
            database.endTransaction();
        }
        return restored;
    }

    private static long queryLong(SQLiteDatabase database, String sql) {
        Cursor cursor = database.rawQuery(sql, null);
        try { return cursor.moveToFirst() ? cursor.getLong(0) : 0L; }
        finally { cursor.close(); }
    }

    private static String label(Context context, JSONObject item) {
        try {
            android.content.ComponentName component = android.content.ComponentName.unflattenFromString(
                    item.optString("componentName", ""));
            if (component != null) return String.valueOf(context.getPackageManager()
                    .getActivityInfo(component, 0).loadLabel(context.getPackageManager()));
        } catch (Throwable ignored) {}
        return item.optString("packageName", "");
    }

    private static JSONObject read(File file) throws Exception {
        FileInputStream input = new AtomicFile(file).openRead();
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        try {
            byte[] buffer = new byte[8192];
            int count;
            while ((count = input.read(buffer)) != -1) output.write(buffer, 0, count);
        } finally { input.close(); }
        return new JSONObject(new String(output.toByteArray(), BackupFileUtils.UTF_8));
    }

    private static void write(File file, JSONObject root) throws Exception {
        AtomicFile atomic = new AtomicFile(file);
        FileOutputStream output = null;
        try {
            output = atomic.startWrite();
            output.write(root.toString().getBytes(BackupFileUtils.UTF_8));
            atomic.finishWrite(output);
        } catch (Throwable error) {
            if (output != null) atomic.failWrite(output);
            if (error instanceof Exception) throw (Exception) error;
            throw new Exception(error);
        }
    }
}
