package com.smartisanos.launcher.backup;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import com.smartisanos.launcher.ShortcutCompatBridge;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/** Persists only QuickLaunchItem icon blobs; ordinary icon caches remain disposable. */
final class ShortcutIconBackupCodec {
    private static final String[] BLOB_COLUMNS = {"dark_icon", "light_icon", "transparent_icon"};
    private static final long MAX_BLOB_BYTES = 5L * 1024L * 1024L;
    private static final int MAX_RECORDS = 2000;

    private ShortcutIconBackupCodec() {}

    static JSONObject encode(Context context, JSONObject layout, File directory) throws Exception {
        BackupFileUtils.ensureDirectory(directory);
        Set<Long> owners = quickLaunchOwners(layout);
        JSONObject root = empty();
        root.put("version", 2);
        JSONArray records = root.getJSONArray("records");
        if (owners.isEmpty()) return root;
        SQLiteDatabase database = LayoutSnapshotExporter.database(false);
        if (!hasIconTable(database)) return root;
        Cursor cursor = database.query("table_icons", null, null, null, null, null, "owner ASC");
        try {
            while (cursor.moveToNext()) {
                long owner = cursor.getLong(cursor.getColumnIndexOrThrow("owner"));
                if (!owners.contains(Long.valueOf(owner))) continue;
                JSONObject record = new JSONObject();
                record.put("owner", owner);
                JSONObject item = itemById(layout, owner);
                String packageName = item == null ? "" : item.optString("packageName", "");
                String shortcutId = item == null ? "" : shortcutId(item);
                long serial = item == null ? 0L : item.optLong("sourceProfileSerial", 0L);
                File source = ShortcutCompatBridge.portableSourceFile(context, packageName, shortcutId, serial);
                if (source != null && source.isFile() && source.length() <= MAX_BLOB_BYTES) {
                    String name = "source_" + owner + ".png";
                    java.io.InputStream input = new java.io.FileInputStream(source);
                    java.io.OutputStream output = new java.io.FileOutputStream(new File(directory, name));
                    try { BackupFileUtils.copy(input, output, MAX_BLOB_BYTES, null); }
                    finally { input.close(); output.close(); }
                    record.put("sourceFile", name);
                    record.put("sourcePackage", packageName);
                    record.put("shortcutId", shortcutId);
                    record.put("sourceUserSerial", serial);
                    record.put("identityKind", item == null ? "PRIMARY_SHORTCUT"
                            : item.optString("identityKind", "PRIMARY_SHORTCUT"));
                }
                putString(cursor, record, "color_info");
                putString(cursor, record, "md5");
                putString(cursor, record, "data1");
                putString(cursor, record, "data2");
                putString(cursor, record, "data3");
                if (!record.has("sourceFile")) for (String column : BLOB_COLUMNS) {
                    int index = cursor.getColumnIndex(column);
                    if (index < 0 || cursor.isNull(index)) continue;
                    byte[] bytes = cursor.getBlob(index);
                    if (bytes == null || bytes.length == 0 || bytes.length > MAX_BLOB_BYTES) continue;
                    String name = owner + "_" + column + ".bin";
                    BackupFileUtils.writeBytes(new File(directory, name), bytes);
                    record.put(column, name);
                }
                records.put(record);
                if (records.length() > MAX_RECORDS) throw new IllegalArgumentException("Too many shortcut icons");
            }
        } finally { cursor.close(); }
        return root;
    }

    static void validate(JSONObject layout, JSONObject index, File root) throws Exception {
        Set<Long> owners = quickLaunchOwners(layout);
        JSONArray records = index.optJSONArray("records");
        if (records == null || records.length() > MAX_RECORDS) throw new IllegalArgumentException("Invalid shortcut icon index");
        for (int i = 0; i < records.length(); i++) {
            JSONObject record = records.getJSONObject(i);
            long owner = record.optLong("owner", -1L);
            if (owner <= 0 || !owners.contains(Long.valueOf(owner))) throw new IllegalArgumentException("Invalid shortcut icon owner");
            String sourceName = record.optString("sourceFile", "");
            if (sourceName.length() != 0) {
                if (!sourceName.matches("source_[0-9]+\\.png")) throw new IllegalArgumentException("Invalid shortcut source name");
                BackupFileUtils.readBytes(new File(root, "icons/shortcuts/" + sourceName), MAX_BLOB_BYTES);
            }
            for (String column : BLOB_COLUMNS) {
                String name = record.optString(column, "");
                if (name.length() == 0) continue;
                if (!name.matches("[0-9]+_(dark_icon|light_icon|transparent_icon)\\.bin")) throw new IllegalArgumentException("Invalid shortcut icon name");
                BackupFileUtils.readBytes(new File(root, "icons/shortcuts/" + name), MAX_BLOB_BYTES);
            }
        }
    }

    static void restore(Context context, SQLiteDatabase database, JSONObject layout, JSONObject index, File root,
            Map<String, ContentValues> fallback) throws Exception {
        validate(layout, index, root);
        JSONArray records = index.optJSONArray("records");
        Set<Long> restoredOwners = new HashSet<Long>();
        if (records == null) records = new JSONArray();
        for (int i = 0; i < records.length(); i++) {
            JSONObject record = records.getJSONObject(i);
            ContentValues values = new ContentValues();
            long owner = record.getLong("owner");
            values.put("owner", owner);
            putValue(values, record, "color_info"); putValue(values, record, "md5");
            putValue(values, record, "data1"); putValue(values, record, "data2"); putValue(values, record, "data3");
            String sourceName = record.optString("sourceFile", "");
            if (sourceName.length() != 0) {
                byte[] sourceBytes = BackupFileUtils.readBytes(new File(root, "icons/shortcuts/" + sourceName), MAX_BLOB_BYTES);
                Bitmap source = BitmapFactory.decodeByteArray(sourceBytes, 0, sourceBytes.length);
                if (source != null) {
                    String packageName = record.optString("sourcePackage", "");
                    String shortcutId = record.optString("shortcutId", "");
                    long serial = record.optLong("sourceUserSerial", 0L);
                    ShortcutCompatBridge.savePortableSource(context, packageName, shortcutId, serial, source);
                    JSONObject item = itemById(layout, owner);
                    int userId = item == null ? 0 : item.optInt("user", 0);
                    Bitmap finalIcon = ShortcutCompatBridge.composePortableSource(context, source, packageName, userId);
                    if (finalIcon != null) {
                        byte[] encoded = encodePng(finalIcon);
                        for (String column : BLOB_COLUMNS) values.put(column, encoded);
                    }
                }
            }
            if (!values.containsKey("dark_icon")) for (String column : BLOB_COLUMNS) {
                String name = record.optString(column, "");
                if (name.length() != 0) values.put(column, BackupFileUtils.readBytes(new File(root, "icons/shortcuts/" + name), MAX_BLOB_BYTES));
            }
            database.insertOrThrow("table_icons", null, values);
            restoredOwners.add(Long.valueOf(owner));
        }
        // Older backups have no shortcut icon index.  Reuse the current provider
        // bitmap by stable shortcut identity in that case (and for partially
        // populated records), never the host application's icon.
        if (fallback == null || fallback.isEmpty()) return;
        JSONArray items = layout.getJSONArray("items");
        for (int i = 0; i < items.length(); i++) {
            JSONObject item = items.getJSONObject(i);
            if (item.optInt("itemType", -1) != 1) continue;
            long owner = item.optLong("_id", -1L);
            if (owner <= 0L || restoredOwners.contains(Long.valueOf(owner))) continue;
            ContentValues saved = fallback.get(RestoreMergePlanner.stableKey(item));
            if (saved == null) continue;
            ContentValues values = new ContentValues(saved);
            values.put("owner", owner);
            database.insertOrThrow("table_icons", null, values);
        }
    }

    static Map<String, ContentValues> captureCurrent(SQLiteDatabase database,
            List<JSONObject> currentItems) {
        Map<String, ContentValues> result = new HashMap<String, ContentValues>();
        if (currentItems == null || currentItems.isEmpty() || !hasIconTable(database)) return result;
        Cursor cursor = null;
        try {
            cursor = database.query("table_icons", null, null, null, null, null, "owner ASC");
            Map<Long, ContentValues> byOwner = new HashMap<Long, ContentValues>();
            while (cursor.moveToNext()) {
                long owner = cursor.getLong(cursor.getColumnIndexOrThrow("owner"));
                if (!byOwner.containsKey(Long.valueOf(owner))) {
                    byOwner.put(Long.valueOf(owner), readValues(cursor));
                }
            }
            for (JSONObject item : currentItems) {
                if (item.optInt("itemType", -1) != 1) continue;
                long owner = item.optLong("_id", -1L);
                ContentValues values = byOwner.get(Long.valueOf(owner));
                if (owner > 0L && values != null) {
                    result.put(RestoreMergePlanner.stableKey(item), values);
                }
            }
        } catch (Throwable ignored) {
            result.clear();
        } finally {
            if (cursor != null) cursor.close();
        }
        return result;
    }

    private static ContentValues readValues(Cursor cursor) {
        ContentValues values = new ContentValues();
        for (int i = 0; i < cursor.getColumnCount(); i++) {
            String column = cursor.getColumnName(i);
            if ("_id".equals(column) || "owner".equals(column) || cursor.isNull(i)) continue;
            switch (cursor.getType(i)) {
                case Cursor.FIELD_TYPE_BLOB: values.put(column, cursor.getBlob(i)); break;
                case Cursor.FIELD_TYPE_INTEGER: values.put(column, cursor.getLong(i)); break;
                case Cursor.FIELD_TYPE_FLOAT: values.put(column, cursor.getDouble(i)); break;
                case Cursor.FIELD_TYPE_STRING: values.put(column, cursor.getString(i)); break;
                default: break;
            }
        }
        return values;
    }

    static JSONObject empty() throws Exception { JSONObject root = new JSONObject(); root.put("version", 2); root.put("records", new JSONArray()); return root; }
    private static JSONObject itemById(JSONObject layout, long owner) throws Exception {
        JSONArray items = layout.getJSONArray("items");
        for (int i = 0; i < items.length(); i++) if (items.getJSONObject(i).optLong("_id", -1L) == owner) return items.getJSONObject(i);
        return null;
    }
    private static String shortcutId(JSONObject item) {
        String value = item.optString("data1", "");
        if (value.length() != 0) return value;
        try {
            android.content.Intent intent = android.content.Intent.parseUri(item.optString("intent", ""), 0);
            value = intent.getStringExtra(ShortcutCompatBridge.EXTRA_ID);
            return value == null ? "" : value;
        }
        catch (Throwable ignored) { return ""; }
    }
    private static byte[] encodePng(Bitmap bitmap) throws Exception {
        java.io.ByteArrayOutputStream output = new java.io.ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, output);
        return output.toByteArray();
    }
    private static boolean hasIconTable(SQLiteDatabase database) {
        Cursor cursor = null;
        try {
            cursor = database.rawQuery("SELECT 1 FROM sqlite_master WHERE type='table' AND name='table_icons'", null);
            return cursor.moveToFirst();
        } catch (Throwable ignored) {
            return false;
        } finally {
            if (cursor != null) cursor.close();
        }
    }
    private static Set<Long> quickLaunchOwners(JSONObject layout) throws Exception { Set<Long> owners = new HashSet<Long>(); JSONArray items = layout.getJSONArray("items"); for (int i = 0; i < items.length(); i++) { JSONObject item = items.getJSONObject(i); if (item.optInt("itemType", -1) == 1) owners.add(Long.valueOf(item.getLong("_id"))); } return owners; }
    private static void putString(Cursor cursor, JSONObject record, String column) throws Exception { int index = cursor.getColumnIndex(column); if (index >= 0 && !cursor.isNull(index)) record.put(column, cursor.getString(index)); }
    private static void putValue(ContentValues values, JSONObject record, String column) { if (record.has(column)) values.put(column, record.optString(column, "")); }
}
