package com.smartisanos.launcher.backup;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import org.json.JSONArray;
import org.json.JSONObject;

import java.lang.reflect.Method;

public final class LayoutSnapshotExporter {
    private static final String[] PAGE_COLUMNS = {
            "_id", "pageIndex", "status", "containment", "pageTitle", "data1", "data2", "data3"
    };
    private static final String[] ITEM_COLUMNS = {
            "_id", "intent", "itemType", "area", "pageIndex", "cellIndex", "folderIndex",
            "title", "lastActivateTime", "messagesNumber", "newlyInstalled", "packageName",
            "componentName", "user", "usage_count", "data1", "data2", "data3"
    };

    private LayoutSnapshotExporter() {}

    public static JSONObject exportStableSnapshot() throws Exception {
        SQLiteDatabase database = database(false);
        database.beginTransactionNonExclusive();
        try {
            JSONObject root = new JSONObject();
            root.put("schemaVersion", BackupManifest.DATABASE_SCHEMA_VERSION);
            root.put("pages", readTable(database, "table_pageinfos", PAGE_COLUMNS,
                    "pageIndex ASC, _id ASC"));
            root.put("items", readTable(database, "table_iteminfos", ITEM_COLUMNS,
                    "pageIndex ASC, cellIndex ASC, folderIndex ASC, _id ASC"));
            validate(root);
            database.setTransactionSuccessful();
            return root;
        } finally {
            database.endTransaction();
        }
    }

    static SQLiteDatabase database(boolean writable) throws Exception {
        Class<?> providerClass = Class.forName("com.smartisanos.launcher.data.C");
        Object provider = providerClass.getMethod("getInstance").invoke(null);
        if (provider == null) throw new IllegalStateException("DatabaseProvider is not initialized");
        Method method = providerClass.getMethod(writable ? "getWritableDatabase" : "getReadableDatabase");
        return (SQLiteDatabase) method.invoke(provider);
    }

    private static JSONArray readTable(SQLiteDatabase database, String table, String[] requested,
            String order) throws Exception {
        JSONArray rows = new JSONArray();
        Cursor cursor = database.query(table, null, null, null, null, null, order);
        try {
            while (cursor.moveToNext()) {
                JSONObject row = new JSONObject();
                for (String column : requested) {
                    int index = cursor.getColumnIndex(column);
                    if (index < 0 || cursor.isNull(index)) continue;
                    switch (cursor.getType(index)) {
                        case Cursor.FIELD_TYPE_INTEGER: row.put(column, cursor.getLong(index)); break;
                        case Cursor.FIELD_TYPE_FLOAT: row.put(column, cursor.getDouble(index)); break;
                        case Cursor.FIELD_TYPE_STRING: row.put(column, cursor.getString(index)); break;
                        default: break;
                    }
                }
                rows.put(row);
            }
        } finally {
            cursor.close();
        }
        return rows;
    }

    public static void validate(JSONObject root) throws Exception {
        JSONArray pages = root.getJSONArray("pages");
        JSONArray items = root.getJSONArray("items");
        if (pages.length() > 1000 || items.length() > 20000) {
            throw new IllegalArgumentException("Layout limits exceeded");
        }
        java.util.HashSet<Long> pageIds = new java.util.HashSet<Long>();
        for (int i = 0; i < pages.length(); i++) {
            JSONObject page = pages.getJSONObject(i);
            // The original launcher persists special boards with negative page indexes
            // (for example -1/-2). They are part of the stable database model and must
            // round-trip just like ordinary Home boards.
            checkedInt(page, "pageIndex", -100, 999);
            // pageIndex is not a primary key in the original database. Special
            // boards can legitimately share it and are distinguished by _id,
            // containment and status.
            long id = page.optLong("_id", -1L);
            if (id <= 0L || !pageIds.add(Long.valueOf(id))) {
                throw new IllegalArgumentException("Invalid page id");
            }
        }
        java.util.HashSet<Long> ids = new java.util.HashSet<Long>();
        for (int i = 0; i < items.length(); i++) {
            JSONObject item = items.getJSONObject(i);
            long id = item.optLong("_id", -1L);
            if (id <= 0 || !ids.add(Long.valueOf(id))) throw new IllegalArgumentException("Invalid item id");
            checkedInt(item, "itemType", 0, 255);
            checkedInt(item, "pageIndex", -100, 999);
            checkedInt(item, "cellIndex", -1, 100000);
            checkedInt(item, "folderIndex", -1, 100000);
            String packageName = item.optString("packageName", "");
            String componentName = item.optString("componentName", "");
            if (packageName.length() > 512 || componentName.length() > 1024) {
                throw new IllegalArgumentException("Invalid component identity");
            }
        }
    }

    private static int checkedInt(JSONObject json, String key, int min, int max) throws Exception {
        long value = json.getLong(key);
        if (value < min || value > max) {
            throw new IllegalArgumentException("Invalid " + key + ": " + value);
        }
        return (int) value;
    }
}
