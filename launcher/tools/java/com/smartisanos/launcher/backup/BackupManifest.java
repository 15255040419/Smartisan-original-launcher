package com.smartisanos.launcher.backup;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.util.DisplayMetrics;

import org.json.JSONException;
import org.json.JSONObject;

public final class BackupManifest {
    public static final int FORMAT_VERSION = 2;
    public static final int DATABASE_SCHEMA_VERSION = 12;

    public int formatVersion = FORMAT_VERSION;
    public String launcherVersionName = "unknown";
    public long launcherVersionCode;
    public int databaseSchemaVersion = DATABASE_SCHEMA_VERSION;
    public long createdAt;
    public int androidApi;
    public int gridMode;
    public int screenWidth;
    public int screenHeight;
    public int densityDpi;
    public int iconSourceSchemaVersion = 3;
    public int shortcutSourceSchemaVersion = 2;
    public int profileIdentitySchemaVersion = 1;

    public static BackupManifest create(Context context, int gridMode) {
        BackupManifest manifest = new BackupManifest();
        manifest.createdAt = System.currentTimeMillis();
        manifest.androidApi = Build.VERSION.SDK_INT;
        manifest.gridMode = gridMode == 20 ? 20 : 12;
        DisplayMetrics metrics = context.getResources().getDisplayMetrics();
        manifest.screenWidth = metrics.widthPixels;
        manifest.screenHeight = metrics.heightPixels;
        manifest.densityDpi = metrics.densityDpi;
        try {
            PackageInfo info = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            manifest.launcherVersionName = info.versionName == null ? "unknown" : info.versionName;
            manifest.launcherVersionCode = Build.VERSION.SDK_INT >= 28
                    ? info.getLongVersionCode() : info.versionCode;
        } catch (Throwable ignored) {
        }
        return manifest;
    }

    public JSONObject toJson() throws JSONException {
        JSONObject json = new JSONObject();
        json.put("formatVersion", formatVersion);
        json.put("launcherVersionName", launcherVersionName);
        json.put("launcherVersionCode", launcherVersionCode);
        json.put("databaseSchemaVersion", databaseSchemaVersion);
        json.put("createdAt", createdAt);
        json.put("androidApi", androidApi);
        json.put("gridMode", gridMode);
        json.put("screenWidth", screenWidth);
        json.put("screenHeight", screenHeight);
        json.put("densityDpi", densityDpi);
        json.put("iconSourceSchemaVersion", iconSourceSchemaVersion);
        json.put("shortcutSourceSchemaVersion", shortcutSourceSchemaVersion);
        json.put("profileIdentitySchemaVersion", profileIdentitySchemaVersion);
        return json;
    }

    public static BackupManifest fromJson(JSONObject json) throws JSONException {
        BackupManifest manifest = new BackupManifest();
        manifest.formatVersion = json.getInt("formatVersion");
        manifest.launcherVersionName = json.getString("launcherVersionName");
        manifest.launcherVersionCode = json.getLong("launcherVersionCode");
        manifest.databaseSchemaVersion = json.getInt("databaseSchemaVersion");
        manifest.createdAt = json.getLong("createdAt");
        manifest.androidApi = json.getInt("androidApi");
        manifest.gridMode = json.getInt("gridMode");
        manifest.screenWidth = json.getInt("screenWidth");
        manifest.screenHeight = json.getInt("screenHeight");
        manifest.densityDpi = json.getInt("densityDpi");
        manifest.iconSourceSchemaVersion = json.optInt("iconSourceSchemaVersion", 1);
        manifest.shortcutSourceSchemaVersion = json.optInt("shortcutSourceSchemaVersion", 1);
        manifest.profileIdentitySchemaVersion = json.optInt("profileIdentitySchemaVersion", 0);
        return manifest;
    }
}
