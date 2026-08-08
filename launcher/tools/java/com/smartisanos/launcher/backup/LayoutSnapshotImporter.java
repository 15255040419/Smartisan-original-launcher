package com.smartisanos.launcher.backup;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.AtomicFile;
import android.util.Log;

import com.smartisanos.launcher.ShortcutCompatBridge;
import com.smartisanos.launcher.profile.DoppelgangerCompat;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class LayoutSnapshotImporter {
    private static final String[] PAGE_COLUMNS = {
            "_id", "pageIndex", "status", "containment", "pageTitle", "data1", "data2", "data3"
    };
    private static final String[] ITEM_COLUMNS = {
            "_id", "intent", "itemType", "area", "pageIndex", "cellIndex", "folderIndex",
            "title", "lastActivateTime", "messagesNumber", "newlyInstalled", "packageName",
            "componentName", "user", "usage_count", "data1", "data2", "data3"
    };

    public static final class ImportResult {
        public int restored;
        public int missing;
        public int preserved;
        public int profileUnresolved;
        public int shortcutUnresolved;
    }

    private LayoutSnapshotImporter() {}

    public static ImportResult restore(Context context, JSONObject layout, int gridMode,
            File pendingFile, JSONObject shortcutIcons, File extractionRoot) throws Exception {
        LayoutSnapshotExporter.validate(layout);
        SQLiteDatabase database = LayoutSnapshotExporter.database(true);
        JSONArray backupPages = layout.getJSONArray("pages");
        JSONArray backupItems = layout.getJSONArray("items");
        List<JSONObject> currentItems = readCurrentItems(database);
        // Keep the provider-rendered bitmap for existing QuickLaunchItems before
        // rebuilding the tables.  This is also the compatibility path for older
        // archives that predate icons/shortcuts.json: restoring a layout must not
        // turn a shortcut into its host app icon merely because table_icons was
        // rebuilt or the improved-icon mode is enabled.
        Map<String, ContentValues> shortcutFallback =
                ShortcutIconBackupCodec.captureCurrent(database, currentItems);
        Set<String> backupKeys = new HashSet<String>();
        for (int i = 0; i < backupItems.length(); i++) backupKeys.add(RestoreMergePlanner.stableKey(backupItems.getJSONObject(i)));
        ArrayList<JSONObject> preserved = new ArrayList<JSONObject>();
        for (JSONObject item : currentItems) {
            if (RestoreMergePlanner.isRestoreCandidate(item) && RestoreMergePlanner.isInstalled(context, item)
                    && !backupKeys.contains(RestoreMergePlanner.stableKey(item))) preserved.add(item);
        }

        JSONArray pending = new JSONArray();
        ImportResult result = new ImportResult();
        database.beginTransaction();
        try {
            database.delete("table_icons", null, null);
            database.delete("table_iteminfos", null, null);
            database.delete("table_pageinfos", null, null);
            Set<Integer> existingPageIndexes = new HashSet<Integer>();
            int maxPage = -1;
            long maxPageId = 0L;
            JSONObject lastPage = null;
            for (int i = 0; i < backupPages.length(); i++) {
                JSONObject page = backupPages.getJSONObject(i);
                maxPageId = Math.max(maxPageId, page.optLong("_id", 0L));
                ContentValues values = values(page, PAGE_COLUMNS, false);
                if (database.insertOrThrow("table_pageinfos", null, values) < 0) throw new IllegalStateException("Page insert failed");
                existingPageIndexes.add(Integer.valueOf(page.getInt("pageIndex")));
            }
            long maxId = 0L;
            int maxCell = -1;
            for (int i = 0; i < backupItems.length(); i++) {
                JSONObject item = remapIdentity(context, backupItems.getJSONObject(i), result);
                if (item == null) continue;
                maxId = Math.max(maxId, item.optLong("_id", 0L));
                int pageIndex = item.optInt("pageIndex", -1);
                if (pageIndex >= 0 && item.optInt("folderIndex", -1) < 0
                        && item.optInt("cellIndex", -1) >= 0) {
                    if (pageIndex > maxPage) {
                        maxPage = pageIndex;
                        maxCell = item.optInt("cellIndex", -1);
                    } else if (pageIndex == maxPage) {
                        maxCell = Math.max(maxCell, item.optInt("cellIndex", -1));
                    }
                }
                if (RestoreMergePlanner.isShortcut(item)
                        && !shortcutAvailable(context, item)) {
                    result.shortcutUnresolved++;
                    Log.i("DesktopRestore", "RESTORE_ITEM_SKIPPED reason=SHORTCUT_SOURCE_UNAVAILABLE package="
                            + item.optString("packageName", "") + " shortcutId=" + shortcutId(item));
                    continue;
                }
                if (RestoreMergePlanner.isRestoreCandidate(item) && !RestoreMergePlanner.isInstalled(context, item)) {
                    pending.put(pendingRecord(item));
                    result.missing++;
                    continue;
                }
                ContentValues values = values(item, ITEM_COLUMNS, false);
                values.remove("icon");
                if (database.insertOrThrow("table_iteminfos", null, values) < 0) throw new IllegalStateException("Item insert failed");
                result.restored++;
            }
            int capacity = gridMode == 20 ? 20 : 12;
            if (maxPage < 0) {
                maxPage = 0;
            }
            for (int i = 0; i < backupPages.length(); i++) {
                JSONObject page = backupPages.getJSONObject(i);
                if (page.optInt("pageIndex", -1) == maxPage) {
                    lastPage = page;
                    break;
                }
            }
            if (!existingPageIndexes.contains(Integer.valueOf(maxPage))) {
                lastPage = defaultPage(++maxPageId, maxPage);
                database.insertOrThrow("table_pageinfos", null, values(lastPage, PAGE_COLUMNS, false));
                existingPageIndexes.add(Integer.valueOf(maxPage));
            }
            for (JSONObject item : preserved) {
                maxCell++;
                if (maxCell >= capacity) {
                    maxPage++;
                    maxCell = 0;
                    if (!existingPageIndexes.contains(Integer.valueOf(maxPage))) {
                        JSONObject page = clonePage(lastPage, ++maxPageId, maxPage);
                        database.insertOrThrow("table_pageinfos", null, values(page, PAGE_COLUMNS, false));
                        lastPage = page;
                        existingPageIndexes.add(Integer.valueOf(maxPage));
                    }
                }
                JSONObject copy = new JSONObject(item.toString());
                copy.put("_id", ++maxId);
                copy.put("pageIndex", maxPage);
                copy.put("cellIndex", maxCell);
                copy.put("folderIndex", -1);
                ContentValues values = values(copy, ITEM_COLUMNS, false);
                values.remove("icon");
                database.insertOrThrow("table_iteminfos", null, values);
                result.preserved++;
            }
            ShortcutIconBackupCodec.restore(context, database, layout, shortcutIcons, extractionRoot,
                    shortcutFallback);
            verifyDatabase(database);
            database.setTransactionSuccessful();
        } finally { database.endTransaction(); }
        writePending(pendingFile, pending);
        return result;
    }

    private static JSONObject remapIdentity(Context context, JSONObject source,
                                             ImportResult result) throws Exception {
        JSONObject item = new JSONObject(source.toString());
        int sourceUserId = item.optInt("sourceUserId", item.optInt("user", 0));
        long sourceSerial = item.optLong("sourceProfileSerial", -1L);
        String kind = item.optString("identityKind", "");
        boolean doppelganger = DoppelgangerCompat.KIND_DOPPELGANGER_APP.equals(kind)
                || DoppelgangerCompat.KIND_DOPPELGANGER_SHORTCUT.equals(kind)
                || (kind.length() == 0 && sourceUserId > 0);
        if (!doppelganger) {
            item.put("user", 0);
            return item;
        }
        DoppelgangerCompat.ResolvedProfile profile = DoppelgangerCompat.resolveDoppelganger(
                context, item.optString("packageName", ""), item.optString("componentName", ""),
                sourceSerial, sourceUserId);
        if (profile == null) {
            result.profileUnresolved++;
            Log.i("DesktopRestore", "RESTORE_PROFILE_UNRESOLVED package="
                    + item.optString("packageName", "") + " component="
                    + item.optString("componentName", "") + " sourceUserId="
                    + sourceUserId + " sourceSerial=" + sourceSerial);
            return null;
        }
        item.put("user", profile.userId);
        item.put("targetProfileSerial", profile.serial);
        Log.i("DesktopRestore", "RESTORE_ITEM_WRITTEN identityKind=" + kind
                + " package=" + item.optString("packageName", "") + " targetUserId="
                + profile.userId + " targetSerial=" + profile.serial);
        return item;
    }

    private static boolean shortcutAvailable(Context context, JSONObject item) {
        String shortcutId = shortcutId(item);
        if (shortcutId.length() == 0) return false;
        long serial = item.optLong("targetProfileSerial", item.optLong("sourceProfileSerial", 0L));
        return ShortcutCompatBridge.isPinnedAvailable(context, item.optString("packageName", ""),
                shortcutId, serial);
    }

    private static String shortcutId(JSONObject item) {
        String id = item.optString("data1", "");
        if (id.length() != 0) return id;
        try {
            android.content.Intent intent = android.content.Intent.parseUri(
                    item.optString("intent", ""), 0);
            String value = intent.getStringExtra(ShortcutCompatBridge.EXTRA_ID);
            return value == null ? "" : value;
        } catch (Throwable ignored) {
            return "";
        }
    }

    private static List<JSONObject> readCurrentItems(SQLiteDatabase database) throws Exception {
        ArrayList<JSONObject> items = new ArrayList<JSONObject>();
        Cursor cursor = database.query("table_iteminfos", null, null, null, null, null,
                "pageIndex ASC, cellIndex ASC, folderIndex ASC, _id ASC");
        try {
            while (cursor.moveToNext()) {
                JSONObject row = new JSONObject();
                for (int i = 0; i < cursor.getColumnCount(); i++) {
                    if (cursor.isNull(i) || cursor.getType(i) == Cursor.FIELD_TYPE_BLOB) continue;
                    if (cursor.getType(i) == Cursor.FIELD_TYPE_INTEGER) row.put(cursor.getColumnName(i), cursor.getLong(i));
                    else if (cursor.getType(i) == Cursor.FIELD_TYPE_FLOAT) row.put(cursor.getColumnName(i), cursor.getDouble(i));
                    else row.put(cursor.getColumnName(i), cursor.getString(i));
                }
                items.add(row);
            }
        } finally { cursor.close(); }
        return items;
    }

    private static ContentValues values(JSONObject json, String[] allowed, boolean includeNull) throws Exception {
        ContentValues values = new ContentValues();
        for (String key : allowed) {
            if (!json.has(key) || json.isNull(key)) { if (includeNull) values.putNull(key); continue; }
            Object value = json.get(key);
            if (value instanceof Integer) values.put(key, (Integer) value);
            else if (value instanceof Long) values.put(key, (Long) value);
            else if (value instanceof Double) values.put(key, (Double) value);
            else if (value instanceof Boolean) values.put(key, ((Boolean) value).booleanValue() ? 1 : 0);
            else values.put(key, String.valueOf(value));
        }
        return values;
    }

    private static JSONObject pendingRecord(JSONObject item) throws Exception {
        JSONObject pending = new JSONObject();
        String[] keys = {"packageName", "componentName", "pageIndex", "cellIndex", "folderIndex", "user", "itemType", "intent"};
        for (String key : keys) if (item.has(key)) pending.put(key, item.get(key));
        return pending;
    }

    private static JSONObject defaultPage(long pageId, int pageIndex) throws Exception {
        JSONObject page = new JSONObject();
        page.put("_id", pageId);
        page.put("pageIndex", pageIndex);
        page.put("status", 0);
        page.put("containment", 0);
        page.put("pageTitle", "");
        return page;
    }

    private static JSONObject clonePage(JSONObject source, long pageId, int pageIndex) throws Exception {
        JSONObject page = new JSONObject(source == null
                ? defaultPage(pageId, pageIndex).toString() : source.toString());
        page.put("_id", pageId);
        page.put("pageIndex", pageIndex);
        page.put("status", 0);
        page.put("pageTitle", "");
        return page;
    }

    private static void verifyDatabase(SQLiteDatabase database) throws Exception {
        Cursor pages = database.rawQuery("SELECT COUNT(*), COUNT(DISTINCT _id) FROM table_pageinfos", null);
        try {
            if (!pages.moveToFirst() || pages.getInt(0) <= 0 || pages.getInt(0) != pages.getInt(1))
                throw new IllegalStateException("Page verification failed");
        } finally { pages.close(); }
        Cursor duplicates = database.rawQuery(
                "SELECT COUNT(*) FROM (SELECT _id FROM table_iteminfos GROUP BY _id HAVING COUNT(*)>1)", null);
        try { if (!duplicates.moveToFirst() || duplicates.getInt(0) != 0) throw new IllegalStateException("Duplicate items"); }
        finally { duplicates.close(); }
    }

    private static void writePending(File file, JSONArray items) throws Exception {
        JSONObject root = new JSONObject();
        root.put("version", 1);
        root.put("items", items);
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
