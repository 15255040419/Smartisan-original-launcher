package com.smartisanos.home.settings.icons;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;

import org.xmlpull.v1.XmlPullParser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class IconPackManager {
    private static final String PREFS = "com.smartisanos.launcher_prefs";
    private static final String PREF_KEY_SELECTED_ICON_PACK = "prefs_key_selected_icon_pack";
    private static final String DISABLED = "__disabled__";

    private static ArrayList<String> sIconPackList;
    private static String sLoadedPackage;
    private static final HashMap<String, String> sPackageToDrawable = new HashMap<String, String>();
    private static final HashMap<String, String> sComponentToDrawable = new HashMap<String, String>();

    private IconPackManager() {
    }

    public static Drawable getPackedIcon(Context context, String packageName) {
        return getPackedIcon(context, packageName, null);
    }

    public static Drawable getPackedIcon(Context context, String packageName, String className) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return null;
        }
        ensureLoaded(context);
        String drawable = null;
        if (!TextUtils.isEmpty(className)) {
            drawable = sComponentToDrawable.get(flatten(packageName, className));
        }
        // A package-level contacts mapping must not replace its separate
        // DialtactsActivity. Only an explicit component mapping may do that.
        if (TextUtils.isEmpty(drawable) && isDialerComponent(className)) {
            return null;
        }
        if (TextUtils.isEmpty(drawable)) {
            drawable = sPackageToDrawable.get(packageName);
        }
        if (TextUtils.isEmpty(drawable) || TextUtils.isEmpty(sLoadedPackage)) {
            return null;
        }
        try {
            Resources res = context.getPackageManager().getResourcesForApplication(sLoadedPackage);
            int id = res.getIdentifier(drawable, "drawable", sLoadedPackage);
            if (id == 0) {
                id = res.getIdentifier(drawable, "mipmap", sLoadedPackage);
            }
            return id == 0 ? null : res.getDrawable(id);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static boolean isDialerComponent(String className) {
        if (TextUtils.isEmpty(className)) {
            return false;
        }
        String value = className.toLowerCase();
        return value.contains("dialtacts") || value.contains("dialer")
                || value.contains("dialpad") || value.contains("phoneactivity");
    }

    public static ArrayList<String> getIconPackPackages(Context context) {
        if (sIconPackList != null) {
            return sIconPackList;
        }
        ArrayList<String> packs = new ArrayList<String>();
        if (context == null) {
            sIconPackList = packs;
            return packs;
        }
        PackageManager pm = context.getPackageManager();
        try {
            List<PackageInfo> packages = pm.getInstalledPackages(0);
            for (int i = 0; i < packages.size(); i++) {
                String pkg = packages.get(i).packageName;
                if (hasAppFilter(pm, pkg)) {
                    packs.add(pkg);
                }
            }
        } catch (Throwable ignored) {
        }
        sIconPackList = packs;
        return packs;
    }

    public static String getSelectedIconPackPackage(Context context) {
        if (context == null) {
            return DISABLED;
        }
        return prefs(context).getString(PREF_KEY_SELECTED_ICON_PACK, DISABLED);
    }

    public static void setSelectedIconPackPackage(Context context, String packageName) {
        if (context == null) {
            return;
        }
        prefs(context).edit().putString(PREF_KEY_SELECTED_ICON_PACK, packageName == null ? "" : packageName).apply();
        resetCache();
    }

    public static String getIconPackLabel(Context context, String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return "自动选择";
        }
        if (context == null || DISABLED.equals(packageName)) {
            return "不使用图标包";
        }
        try {
            PackageManager pm = context.getPackageManager();
            ApplicationInfo info = pm.getApplicationInfo(packageName, 0);
            CharSequence label = pm.getApplicationLabel(info);
            return TextUtils.isEmpty(label) ? packageName : label.toString();
        } catch (Throwable ignored) {
            return packageName;
        }
    }

    public static void preloadSelectedIconPack(Context context) {
        ensureLoaded(context);
    }

    public static boolean hasSelectedIconPack(Context context) {
        String pkg = getSelectedIconPackPackage(context);
        if (DISABLED.equals(pkg)) {
            return false;
        }
        if (TextUtils.isEmpty(pkg)) {
            return !getIconPackPackages(context).isEmpty();
        }
        return hasAppFilter(context.getPackageManager(), pkg);
    }

    public static boolean hasPackedIcon(Context context, String packageName) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return false;
        }
        ensureLoaded(context);
        return sPackageToDrawable.containsKey(packageName);
    }

    public static void resetCache() {
        sLoadedPackage = null;
        sIconPackList = null;
        sPackageToDrawable.clear();
        sComponentToDrawable.clear();
    }

    private static void ensureLoaded(Context context) {
        String selected = getSelectedIconPackPackage(context);
        if (DISABLED.equals(selected)) {
            clearLoaded();
            return;
        }
        if (TextUtils.isEmpty(selected)) {
            ArrayList<String> packs = getIconPackPackages(context);
            if (packs.isEmpty()) {
                clearLoaded();
                return;
            }
            selected = packs.get(0);
        }
        if (selected.equals(sLoadedPackage)) {
            return;
        }
        clearLoaded();
        sLoadedPackage = selected;
        loadPackMap(context, selected);
    }

    private static void clearLoaded() {
        sLoadedPackage = null;
        sPackageToDrawable.clear();
        sComponentToDrawable.clear();
    }

    private static boolean hasAppFilter(PackageManager pm, String packageName) {
        try {
            Resources res = pm.getResourcesForApplication(packageName);
            return res.getIdentifier("appfilter", "xml", packageName) != 0;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void loadPackMap(Context context, String packageName) {
        XmlResourceParser parser = null;
        try {
            PackageManager pm = context.getPackageManager();
            Resources res = pm.getResourcesForApplication(packageName);
            int id = res.getIdentifier("appfilter", "xml", packageName);
            if (id == 0) {
                return;
            }
            parser = res.getXml(id);
            while (parser.getEventType() != XmlPullParser.END_DOCUMENT) {
                if (parser.getEventType() == XmlPullParser.START_TAG
                        && "item".equals(parser.getName())) {
                    String component = parser.getAttributeValue(null, "component");
                    String drawable = parser.getAttributeValue(null, "drawable");
                    putMapping(component, drawable);
                }
                parser.next();
            }
        } catch (Throwable ignored) {
        } finally {
            if (parser != null) {
                parser.close();
            }
        }
    }

    private static void putMapping(String component, String drawable) {
        if (TextUtils.isEmpty(component) || TextUtils.isEmpty(drawable)) {
            return;
        }
        String body = component;
        int open = body.indexOf('{');
        int close = body.indexOf('}');
        if (open >= 0 && close > open) {
            body = body.substring(open + 1, close);
        }
        int slash = body.indexOf('/');
        if (slash <= 0) {
            return;
        }
        String pkg = body.substring(0, slash);
        String cls = body.substring(slash + 1);
        if (cls.startsWith(".")) {
            cls = pkg + cls;
        }
        sPackageToDrawable.put(pkg, drawable);
        sComponentToDrawable.put(flatten(pkg, cls), drawable);
    }

    private static String flatten(String packageName, String className) {
        return packageName + "/" + className;
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }
}
