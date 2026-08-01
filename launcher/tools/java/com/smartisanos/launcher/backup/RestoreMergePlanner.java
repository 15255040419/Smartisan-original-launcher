package com.smartisanos.launcher.backup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

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
        public int permissionCount;
    }

    private RestoreMergePlanner() {}

    public static Plan plan(Context context, BackupArchiveReader.ValidatedBackup backup) throws Exception {
        Plan plan = new Plan();
        JSONArray items = backup.layout.getJSONArray("items");
        HashSet<String> backupKeys = new HashSet<String>();
        for (int i = 0; i < items.length(); i++) {
            JSONObject item = items.getJSONObject(i);
            backupKeys.add(stableKey(item));
            if (item.optInt("itemType", -1) == 2) plan.folderCount++;
            if (isShortcut(item)) plan.shortcutCount++;
            if (hasComponent(item) && !isInstalled(context, item)) plan.missingAppCount++;
        }
        SQLiteDatabase db = LayoutSnapshotExporter.database(false);
        Cursor cursor = db.query("table_iteminfos", null, null, null, null, null, null);
        try {
            while (cursor.moveToNext()) {
                JSONObject item = cursorRow(cursor);
                if (hasComponent(item) && isInstalled(context, item)
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
        if (preferenceEnabled(backup.settings, "launcher_hide_badge")
                && !notificationAccessGranted(context)) plan.permissionCount++;
        return plan;
    }

    static boolean isInstalled(Context context, JSONObject item) {
        String pkg = item.optString("packageName", "");
        String cmp = item.optString("componentName", "");
        if (pkg.length() == 0 || cmp.length() == 0) return true;
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
        return item.optInt("user", 0) + "|" + item.optString("packageName", "") + "|"
                + item.optString("componentName", "") + "|" + shortcutIdentity(item) + "|"
                + item.optInt("itemType", -1);
    }

    static boolean hasComponent(JSONObject item) {
        return item.optString("packageName", "").length() != 0
                && item.optString("componentName", "").length() != 0;
    }

    static boolean isShortcut(JSONObject item) {
        String intent = item.optString("intent", "");
        return intent.contains("shortcut_id") || intent.contains("shortcutId")
                || intent.contains("android.intent.extra.shortcut.ID");
    }

    private static String shortcutIdentity(JSONObject item) {
        if (!isShortcut(item)) return "";
        String intent = item.optString("intent", "");
        return Integer.toHexString(intent.hashCode());
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

    private static boolean preferenceEnabled(JSONObject settings, String key) {
        JSONObject files = settings.optJSONObject("files");
        if (files == null) return false;
        java.util.Iterator<String> names = files.keys();
        while (names.hasNext()) {
            JSONObject values = files.optJSONObject(names.next());
            JSONObject typed = values == null ? null : values.optJSONObject(key);
            if (typed != null && "boolean".equals(typed.optString("type"))) return typed.optBoolean("value");
        }
        return false;
    }

    private static boolean notificationAccessGranted(Context context) {
        try {
            String flat = android.provider.Settings.Secure.getString(context.getContentResolver(),
                    "enabled_notification_listeners");
            return flat != null && flat.contains(context.getPackageName());
        } catch (Throwable ignored) { return false; }
    }
}
