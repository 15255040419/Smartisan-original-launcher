package com.smartisanos.launcher.backup;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.HashSet;
import java.util.Set;

public final class RestoreMergePlanner {
    public static final class Plan {
        public int missingAppCount;
        public int preservedNewItemCount;
        public int preservedNewAppCount;
        public int preservedNewShortcutCount;
        public int folderCount;
        public int shortcutCount;
        public int missingIconPackCount;
        public int missingThemePackageCount;
    }

    private RestoreMergePlanner() {}

    public static Plan plan(Context context, BackupArchiveReader.ValidatedBackup backup) throws Exception {
        Plan plan = new Plan();
        JSONArray items = backup.layout.getJSONArray("items");
        HashSet<String> backupKeys = new HashSet<String>();
        for (int i = 0; i < items.length(); i++) {
            JSONObject item = items.getJSONObject(i);
            backupKeys.add(stableKey(item));
            if (isFolder(item)) {
                plan.folderCount++;
                continue; // FolderInfo is always restored; never counted as missing app
            }
            if (isShortcut(item)) plan.shortcutCount++;
            if (isRestoreCandidate(item) && !isInstalled(context, item)) plan.missingAppCount++;
        }
        SQLiteDatabase db = LayoutSnapshotExporter.database(false);
        Cursor cursor = db.query("table_iteminfos", null, null, null, null, null, null);
        try {
            while (cursor.moveToNext()) {
                JSONObject item = cursorRow(cursor);
                if (isRestoreCandidate(item) && isInstalled(context, item)
                        && !backupKeys.contains(stableKey(item))) {
                    plan.preservedNewItemCount++;
                    if (isShortcut(item)) plan.preservedNewShortcutCount++;
                    else plan.preservedNewAppCount++;
                }
            }
        } finally { cursor.close(); }
        org.json.JSONArray iconRecords = backup.icons.optJSONArray("records");
        HashSet<String> missingPacks = new HashSet<String>();
        if (iconRecords != null) for (int i = 0; i < iconRecords.length(); i++) {
            String drawable = iconRecords.getJSONObject(i).optString("drawableName", "");
            if (drawable.startsWith("pack:")) {
                String pkg = drawable.substring(5);
                if (!packageInstalled(context, pkg)) missingPacks.add(pkg);
            }
        }
        plan.missingIconPackCount = missingPacks.size();
        String themePackage = backup.theme.optString("themePackage", "");
        plan.missingThemePackageCount = ThemeBackupCodec.isThemePackageAvailable(context, themePackage) ? 0 : 1;
        return plan;
    }

    static boolean isInstalled(Context context, JSONObject item) {
        String pkg = item.optString("packageName", "");
        String cmp = item.optString("componentName", "");
        if (pkg.length() == 0) return true;
        if (isShortcut(item)) return packageInstalled(context, pkg);
        if (cmp.length() == 0) return true;
        try {
            ComponentName component = ComponentName.unflattenFromString(cmp);
            if (component == null) component = new ComponentName(pkg, cmp);
            context.getPackageManager().getActivityInfo(component, PackageManager.MATCH_DISABLED_COMPONENTS);
            return true;
        } catch (Throwable ignored) {
            try {
                android.content.Intent intent = context.getPackageManager().getLaunchIntentForPackage(pkg);
                return intent != null && uniqueLauncherActivity(context, pkg);
            } catch (Throwable ignoredAgain) { return false; }
        }
    }

    static String stableKey(JSONObject item) {
        String shortcut = shortcutIdentity(item);
        if (shortcut.length() != 0) {
            // A pinned shortcut's component is the bridge Activity and may differ across
            // releases.  Package + shortcut id + profile is its stable original identity.
            return "shortcut|" + shortcut;
        }
        return item.optInt("user", 0) + "|" + item.optString("packageName", "") + "|"
                + item.optString("componentName", "") + "||"
                + item.optInt("itemType", -1);
    }

    static boolean hasComponent(JSONObject item) {
        return item.optString("packageName", "").length() != 0
                && item.optString("componentName", "").length() != 0;
    }

    /**
     * Returns true if this item is a Smartisan Launcher FolderInfo (itemType == 2).
     *
     * FolderInfo is a Launcher-internal structure object, NOT an installed Android app.
     * It MUST never go through PackageManager.isInstalled() or pending_items.json.
     * It is always restored unconditionally as a structural row in table_iteminfos.
     */
    static boolean isFolder(JSONObject item) {
        return item.optInt("itemType", -1) == 2;
    }

    /**
     * Returns true only for items whose presence depends on an installed Android package.
     *
     * FolderInfo is explicitly excluded: it is a Launcher-internal object, not an app.
     * Only items that pass this check are eligible for isInstalled() or pending_items.
     */
    static boolean isRestoreCandidate(JSONObject item) {
        if (isFolder(item)) return false;
        // Original QuickLaunch rows may intentionally omit componentName; their
        // package/shortcut/profile identity is still sufficient to merge safely.
        return hasComponent(item) || isShortcut(item);
    }

    static boolean isShortcut(JSONObject item) {
        String intent = item.optString("intent", "");
        return intent.contains("shortcut_id") || intent.contains("shortcutId")
                || intent.contains("android.intent.extra.shortcut.ID")
                || intent.contains("smartisan.shortcut.id");
    }

    private static String shortcutIdentity(JSONObject item) {
        if (!isShortcut(item)) return "";
        String packageName = item.optString("packageName", "");
        String shortcutId = item.optString("data1", "");
        long userSerial = Long.MIN_VALUE;
        try {
            Intent intent = Intent.parseUri(item.optString("intent", ""), 0);
            String sourcePackage = intent.getStringExtra("smartisan.shortcut.package");
            if (sourcePackage != null && sourcePackage.length() != 0) packageName = sourcePackage;
            String sourceId = intent.getStringExtra("smartisan.shortcut.id");
            if (sourceId == null || sourceId.length() == 0) sourceId = intent.getStringExtra("shortcut_id");
            if (sourceId != null && sourceId.length() != 0) shortcutId = sourceId;
            userSerial = intent.getLongExtra("smartisan.shortcut.user_serial", Long.MIN_VALUE);
        } catch (Throwable ignored) {
            // Older original shortcuts still have data1 and the database user column.
        }
        if (packageName.length() == 0 || shortcutId.length() == 0) return "";
        long profile = userSerial != Long.MIN_VALUE ? userSerial : item.optLong("user", 0L);
        return packageName + "|" + shortcutId + "|" + profile;
    }

    private static JSONObject cursorRow(Cursor cursor) throws Exception {
        JSONObject row = new JSONObject();
        for (int i = 0; i < cursor.getColumnCount(); i++) {
            if (cursor.isNull(i) || cursor.getType(i) == Cursor.FIELD_TYPE_BLOB) continue;
            if (cursor.getType(i) == Cursor.FIELD_TYPE_INTEGER) row.put(cursor.getColumnName(i), cursor.getLong(i));
            else if (cursor.getType(i) == Cursor.FIELD_TYPE_FLOAT) row.put(cursor.getColumnName(i), cursor.getDouble(i));
            else row.put(cursor.getColumnName(i), cursor.getString(i));
        }
        return row;
    }

    private static boolean uniqueLauncherActivity(Context context, String pkg) {
        android.content.Intent query = new android.content.Intent(android.content.Intent.ACTION_MAIN);
        query.addCategory(android.content.Intent.CATEGORY_LAUNCHER);
        query.setPackage(pkg);
        java.util.List list = context.getPackageManager().queryIntentActivities(query, 0);
        return list != null && list.size() == 1;
    }

    private static boolean packageInstalled(Context context, String pkg) {
        try { context.getPackageManager().getPackageInfo(pkg, 0); return true; }
        catch (Throwable ignored) { return false; }
    }
}
