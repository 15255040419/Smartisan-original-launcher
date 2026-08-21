package com.smartisanos.launcher.backup;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Validates that the folder parent-child topology is intact in both in-memory layout snapshots
 * and in the live SQLite database.
 *
 * Contract (original Smartisan Launcher):
 *   FolderInfo:      itemType == 2,  folderIndex == 0
 *   Folder child:    itemType != 2,  folderIndex == parentFolder._id  (> 0)
 *   Root item:       itemType != 2,  folderIndex < 0  (== -1)
 */
public final class FolderTopologyValidator {
    private static final String TAG = "FolderTopology";

    private FolderTopologyValidator() {}

    // -------------------------------------------------------------------------
    // Public result types
    // -------------------------------------------------------------------------

    public static final class ValidationResult {
        public final boolean valid;
        public final int folderCount;
        public final int childCount;
        public final String errorMessage;

        ValidationResult(boolean valid, int folderCount, int childCount, String errorMessage) {
            this.valid = valid;
            this.folderCount = folderCount;
            this.childCount = childCount;
            this.errorMessage = errorMessage;
        }
    }

    public static final class DbValidationResult {
        public final boolean valid;
        public final int folderCount;
        public final int childCount;
        public final int orphanCount;
        public final String errorMessage;

        DbValidationResult(boolean valid, int folderCount, int childCount, int orphanCount,
                String errorMessage) {
            this.valid = valid;
            this.folderCount = folderCount;
            this.childCount = childCount;
            this.orphanCount = orphanCount;
            this.errorMessage = errorMessage;
        }
    }

    // -------------------------------------------------------------------------
    // In-memory layout validation (used during backup/restore preview)
    // -------------------------------------------------------------------------

    public static ValidationResult validate(JSONObject layout) {
        if (layout == null) return fail(0, 0, "Layout is null");
        JSONArray items = layout.optJSONArray("items");
        if (items == null) return fail(0, 0, "Items array is missing");

        // Pass 1: collect all item IDs and folder IDs
        Set<Long> allIds = new HashSet<Long>();
        Map<Long, String> folderTitles = new HashMap<Long, String>();  // folderId -> title

        for (int i = 0; i < items.length(); i++) {
            JSONObject item = items.optJSONObject(i);
            if (item == null) continue;
            long id = item.optLong("_id", -1L);
            if (id <= 0L) return fail(0, 0, "Item index=" + i + " has invalid _id=" + id);
            if (!allIds.add(Long.valueOf(id))) return fail(0, 0, "Duplicate _id=" + id);
            if (item.optInt("itemType", -1) == 2) {
                folderTitles.put(Long.valueOf(id), item.optString("title", ""));
            }
        }

        // Pass 2: validate children and count
        int childCount = 0;
        for (int i = 0; i < items.length(); i++) {
            JSONObject item = items.optJSONObject(i);
            if (item == null) continue;
            long folderIndex = item.optLong("folderIndex", -1L);
            if (folderIndex <= 0L) continue; // root item or FolderInfo itself
            if (!folderTitles.containsKey(Long.valueOf(folderIndex))) {
                return fail(folderTitles.size(), childCount,
                        "Item _id=" + item.optLong("_id", -1) + " pkg=" + item.optString("packageName", "")
                                + " references non-existent folder _id=" + folderIndex);
            }
            childCount++;
        }

        Log.i(TAG, "LAYOUT_TOPOLOGY_OK folderCount=" + folderTitles.size() + " childCount=" + childCount);
        return new ValidationResult(true, folderTitles.size(), childCount, "");
    }

    // -------------------------------------------------------------------------
    // Database topology validation (used before transaction commit)
    // -------------------------------------------------------------------------

    public static DbValidationResult validateDatabase(SQLiteDatabase db) {
        // Collect all folder IDs
        Set<Long> folderIds = new HashSet<Long>();
        Cursor folderCursor = db.rawQuery(
                "SELECT _id FROM table_iteminfos WHERE itemType=2", null);
        try {
            while (folderCursor.moveToNext()) folderIds.add(Long.valueOf(folderCursor.getLong(0)));
        } finally { folderCursor.close(); }

        // Count orphan children (folderIndex > 0, no matching folder _id)
        int orphanCount = 0;
        int childCount = 0;
        Cursor childCursor = db.rawQuery(
                "SELECT folderIndex FROM table_iteminfos WHERE folderIndex>0", null);
        try {
            while (childCursor.moveToNext()) {
                childCount++;
                long folderIndex = childCursor.getLong(0);
                if (!folderIds.contains(Long.valueOf(folderIndex))) orphanCount++;
            }
        } finally { childCursor.close(); }

        // Log every folder and its children for diagnostic
        Cursor all = db.rawQuery(
                "SELECT _id, itemType, packageName, componentName, pageIndex, cellIndex, folderIndex, title "
                        + "FROM table_iteminfos ORDER BY folderIndex ASC, _id ASC", null);
        try {
            while (all.moveToNext()) {
                long id = all.getLong(0);
                int itemType = all.getInt(1);
                String pkg = all.getString(2);
                long folderIndex = all.getLong(6);
                String title = all.getString(7);
                if (itemType == 2) {
                    Log.i(TAG, "DB_FOLDER_PARENT id=" + id + " folderIndex=" + folderIndex
                            + " title=" + title);
                } else if (folderIndex > 0L) {
                    Log.i(TAG, "DB_FOLDER_CHILD  id=" + id + " pkg=" + pkg
                            + " folderIndex=" + folderIndex);
                }
            }
        } finally { all.close(); }

        boolean valid = orphanCount == 0;
        if (!valid) {
            Log.e(TAG, "DB_TOPOLOGY_FAIL orphanCount=" + orphanCount + " folderCount="
                    + folderIds.size() + " childCount=" + childCount);
            return new DbValidationResult(false, folderIds.size(), childCount, orphanCount,
                    "Orphan children found: " + orphanCount);
        }
        Log.i(TAG, "DB_TOPOLOGY_OK folderCount=" + folderIds.size() + " childCount=" + childCount);
        return new DbValidationResult(true, folderIds.size(), childCount, 0, "");
    }

    // -------------------------------------------------------------------------
    // Per-folder round-trip comparison (backup vs restored)
    // -------------------------------------------------------------------------

    public static void verifyRoundTrip(JSONObject sourceLayout, JSONObject restoredLayout) throws Exception {
        // Build source folder map: folderId -> ordered list of child stableKeys
        Map<Long, List<String>> sourceMap = buildFolderChildMap(sourceLayout);
        Map<Long, List<String>> restoredMap = buildFolderChildMap(restoredLayout);

        int sourceCount = sourceMap.size();
        int restoredCount = restoredMap.size();
        if (sourceCount != restoredCount) {
            throw new IllegalStateException("RESTORE_FOLDER_COUNT_MISMATCH source="
                    + sourceCount + " restored=" + restoredCount);
        }

        for (Map.Entry<Long, List<String>> entry : sourceMap.entrySet()) {
            Long folderId = entry.getKey();
            List<String> sourceChildren = entry.getValue();
            // Find matching folder by child content (IDs may differ if not remapped)
            boolean matched = false;
            for (Map.Entry<Long, List<String>> rEntry : restoredMap.entrySet()) {
                if (rEntry.getValue().containsAll(sourceChildren)
                        && sourceChildren.containsAll(rEntry.getValue())) {
                    matched = true;
                    break;
                }
            }
            if (!matched) {
                throw new IllegalStateException("RESTORE_FOLDER_CHILDREN_MISMATCH folderId=" + folderId
                        + " expected=" + sourceChildren);
            }
        }
        Log.i(TAG, "RESTORE_ROUNDTRIP_OK sourceFolders=" + sourceCount
                + " restoredFolders=" + restoredCount);
    }

    // -------------------------------------------------------------------------
    // Helpers
    // -------------------------------------------------------------------------

    private static Map<Long, List<String>> buildFolderChildMap(JSONObject layout) throws Exception {
        JSONArray items = layout.getJSONArray("items");
        // Map folder _id -> folder item
        Map<Long, JSONObject> folders = new HashMap<Long, JSONObject>();
        for (int i = 0; i < items.length(); i++) {
            JSONObject item = items.getJSONObject(i);
            if (item.optInt("itemType", -1) == 2) {
                folders.put(Long.valueOf(item.getLong("_id")), item);
            }
        }
        Map<Long, List<String>> result = new HashMap<Long, List<String>>();
        for (Long fid : folders.keySet()) result.put(fid, new ArrayList<String>());

        for (int i = 0; i < items.length(); i++) {
            JSONObject item = items.getJSONObject(i);
            long folderIndex = item.optLong("folderIndex", -1L);
            if (folderIndex <= 0L) continue;
            List<String> children = result.get(Long.valueOf(folderIndex));
            if (children != null) children.add(RestoreMergePlanner.stableKey(item));
        }
        return result;
    }

    private static ValidationResult fail(int folderCount, int childCount, String msg) {
        Log.e(TAG, "LAYOUT_TOPOLOGY_FAIL " + msg);
        return new ValidationResult(false, folderCount, childCount, msg);
    }
}
