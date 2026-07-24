package com.smartisanos.home.settings.icons;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.text.TextUtils;

import java.util.ArrayList;

/** Stores the one global icon source while preserving the legacy launcher preference contract. */
public final class IconSourceManager {
    public static final String PREFS = "com.smartisanos.launcher_prefs";
    public static final String KEY_SOURCE = "launcher_global_icon_source_v2";
    public static final String KEY_IMPROVED = "launcher_improved_icon_enabled";
    public static final String KEY_PACK = "prefs_key_selected_icon_pack";
    public static final String DISABLED_PACK = "__disabled__";

    public enum Type { DEFAULT, IMPROVED, PACK }

    public static final class Selection {
        public final Type type;
        public final String packageName;

        private Selection(Type type, String packageName) {
            this.type = type;
            this.packageName = packageName;
        }

        public static Selection defaultIcon() { return new Selection(Type.DEFAULT, null); }
        public static Selection improved() { return new Selection(Type.IMPROVED, null); }
        public static Selection pack(String packageName) {
            return new Selection(Type.PACK, packageName);
        }

        public String value() {
            if (type == Type.IMPROVED) return "improved";
            if (type == Type.PACK && !TextUtils.isEmpty(packageName)) return "pack:" + packageName;
            return "default";
        }
    }

    private IconSourceManager() { }

    public static Selection get(Context context) {
        if (context == null) return Selection.defaultIcon();
        SharedPreferences preferences = prefs(context);
        String stored = preferences.getString(KEY_SOURCE, null);
        Selection selection = parse(stored);
        if (selection == null) {
            selection = migrate(context, preferences);
            persist(context, selection);
        }
        if (selection.type == Type.PACK && !isInstalledIconPack(context, selection.packageName)) {
            selection = Selection.defaultIcon();
            persist(context, selection);
        }
        return selection;
    }

    public static void set(Context context, Selection selection) {
        if (context == null) return;
        persist(context, selection == null ? Selection.defaultIcon() : selection);
    }

    public static String label(Context context, Selection selection) {
        Selection value = selection == null ? get(context) : selection;
        if (value.type == Type.IMPROVED) return "改进版图标";
        if (value.type == Type.PACK) return IconPackManager.getIconPackLabel(context, value.packageName);
        return "默认图标";
    }

    public static boolean isInstalledIconPack(Context context, String packageName) {
        if (context == null || TextUtils.isEmpty(packageName) || DISABLED_PACK.equals(packageName)) return false;
        try {
            context.getPackageManager().getPackageInfo(packageName, 0);
            // Do not parse appfilter here: this method is also used by the desktop icon path.
            // The chooser performs the definitive appfilter scan off the UI thread.
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static Selection migrate(Context context, SharedPreferences preferences) {
        String legacyPack = preferences.getString(KEY_PACK, DISABLED_PACK);
        if (!TextUtils.isEmpty(legacyPack) && !DISABLED_PACK.equals(legacyPack)) {
            return Selection.pack(legacyPack);
        }
        // The historical empty value meant automatic pack selection. Resolve it once if possible.
        if ("".equals(legacyPack)) {
            ArrayList<String> packs = IconPackManager.getIconPackPackages(context);
            if (!packs.isEmpty()) return Selection.pack(packs.get(0));
        }
        return preferences.getBoolean(KEY_IMPROVED, false)
                ? Selection.improved() : Selection.defaultIcon();
    }

    private static Selection parse(String value) {
        if ("default".equals(value)) return Selection.defaultIcon();
        if ("improved".equals(value)) return Selection.improved();
        if (value != null && value.startsWith("pack:") && value.length() > 5) {
            return Selection.pack(value.substring(5));
        }
        return null;
    }

    private static void persist(Context context, Selection selection) {
        Selection value = selection == null ? Selection.defaultIcon() : selection;
        SharedPreferences.Editor editor = prefs(context).edit().putString(KEY_SOURCE, value.value());
        if (value.type == Type.PACK && !TextUtils.isEmpty(value.packageName)) {
            editor.putBoolean(KEY_IMPROVED, false).putString(KEY_PACK, value.packageName);
        } else if (value.type == Type.IMPROVED) {
            editor.putBoolean(KEY_IMPROVED, true).putString(KEY_PACK, DISABLED_PACK);
        } else {
            editor.putBoolean(KEY_IMPROVED, false).putString(KEY_PACK, DISABLED_PACK);
        }
        editor.apply();
        IconPackManager.resetCache();
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }
}
