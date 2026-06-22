package com.smartisanos.launcher.theme;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DownloadManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.ComponentName;
import android.content.Intent;
import android.content.BroadcastReceiver;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.ResolveInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.os.StrictMode;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.AbsListView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

import com.smartisanos.home.settings.PreviewSettingItemView;
import com.smartisanos.home.settings.SettingItemSwitch;
import com.smartisanos.home.settings.SettingItemTextVertical;
import com.smartisanos.home.settings.icons.IconManager;
import com.smartisanos.home.widget.sys.Title;
import com.smartisanos.launcher.data.redirectIcon.RedirectIconDB;
import com.smartisanos.launcher.data.redirectIcon.RedirectIconInfo;
import smartisanos.widget.SwitchEx;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.ByteArrayOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

public final class MaintainedLauncherSettingsHost {
    private static final String LOG_TAG = "MaintainedSettings";
    private static android.os.Handler sThemePageHandler;
    private static Runnable sThemePageRunnable;
    private static Resources sSettingsResources;
    private static File sSettingsApk;
    private static Bitmap sPendingThemeScreenshot;
    private static Dialog sLauncherReloadDialog;
    private static final String SETTINGS_ASSET = "settings_maintained/maintained-settings-res.apk";
    private static final String OPERATION_LOG_PREFS = "launcher_operation_log_prefs";
    private static final String PREF_OPERATION_LOG_ACTIVE = "operation_log_active";
    private static final String PREF_OPERATION_LOG_FILE = "operation_log_file";
    private static final String OPERATION_LOG_DIR = "operation_logs";
    private static final Object OPERATION_LOG_LOCK = new Object();
    private static BufferedWriter sOperationLogWriter;
    private static File sOperationLogFile;
    private static File sOperationLogcatFile;
    private static Thread sOperationLogcatThread;
    private static java.lang.Process sOperationLogcatProcess;
    private static Thread.UncaughtExceptionHandler sPreviousUncaughtExceptionHandler;
    private static boolean sOperationLogHandlerInstalled;
    private static float sSearchGestureStartX;
    private static float sSearchGestureStartY;
    private static long sSearchGestureStartTime;
    private static boolean sSearchGestureConsumed;
    private static boolean sSearchGestureInvalid;
    private static long sSearchGestureLastOpenTime;
    private static final String SETTINGS_PKG = "com.smartisanos.home";
    private static final String QUICK_SEARCH_PKG = "com.smartisanos.quicksearch";
    private static final String QUICK_SEARCH_DOWNLOAD_URL =
            "https://gitee.com/RANH-F/Smartisan-original-launcher-download/releases/download/launcher-1.4.8/SmartisanQuickSearch.apk";
    private static final String QUICK_SEARCH_INSTALL_ACTION = "com.smartisanos.launcher.action.QUICK_SEARCH_INSTALL_STATUS";
    private static final String UPDATE_INSTALL_ACTION = "com.smartisanos.launcher.action.INSTALL_DOWNLOADED_UPDATE";
    private static final String EXTRA_UPDATE_APK_PATH = "update_apk_path";
    private static final String EXTRA_UPDATE_DOWNLOAD_ID = "update_download_id";
    private static final String PREF_UPDATE_DOWNLOAD_ID = "launcher_update_download_id";
    private static final String SEARCH_PREFS = "launcher_search_prefs";
    private static final String SEARCH_HISTORY_KEY = "search_history_entries";
    private static final String THEME_DOWNLOAD_PREFS = "theme_download_prefs";
    private static final String ICON_OVERRIDE_PREFS = "icon_override_prefs";
    private static final String WALLPAPER_PREFS = "launcher_settings";
    private static final String PREF_WALLPAPER_URI = "launcher_wallpaper_uri";
    private static final String PREF_WALLPAPER_THUMB = "launcher_wallpaper_thumb";
    private static final String PREF_WALLPAPER_READY = "launcher_wallpaper_ready";
    private static final String PREF_WALLPAPER_REFRESH_PENDING = "launcher_wallpaper_refresh_pending";
    private static final String PREF_THEME_RELOAD_LOADING_PENDING = "launcher_theme_reload_loading_pending";
    private static final String PREF_THEME_RELOAD_LOADING_MESSAGE = "launcher_theme_reload_loading_message";
    private static final String PREF_IMPROVED_ICON_ENABLED = "launcher_improved_icon_enabled";
    private static final String KEY_SEARCH_PAGE_ENABLED = "launcher_search_page_enabled";
    private static final String KEY_TRANSPARENT_THEME_ENABLED = "launcher_grid_theme";
    private static final String KEY_TRANSPARENT_WALLPAPER_BLUR = "original_launcher_wallpaper_blur_on";
    private static final String PREF_TRANSPARENT_PREVIOUS_THEME = "transparent_previous_theme";
    private static final String KEY_LAUNCHER_ICON_SIZE = "launcher_icon_size";
    private static final String TAG_ICON_SIZE_SUBTITLE = "launcher_icon_size_subtitle";
    private static final String PREF_ICON_SIZE_RUNTIME_DIRTY = "launcher_icon_size_runtime_dirty";
    private static final String PREF_ICON_SIZE_RUNTIME_OLD = "launcher_icon_size_runtime_old";
    private static final String PREF_ICON_SIZE_RUNTIME_NEW = "launcher_icon_size_runtime_new";
    private static final String KEY_DESKTOP_WALLPAPER_URI = "desktop_wallpaper_uri";
    private static final String KEY_LOCKSCREEN_BACKGROUND = "lockscreen_background";
    private static final String PREF_PENDING_CUSTOM_ICON_KEY = "pending_custom_icon_key";
    private static final String PREF_PENDING_ICON_SCROLL_Y = "pending_icon_scroll_y";
    private static final int REQUEST_PICK_CUSTOM_ICON = 53026;
    private static final long SETTINGS_CLICK_GUARD_MS = 800L;
    private static long sSettingsClickBlockedUntil;
    private static boolean sIconSizeAppliedThisProcess;
    private static int sRestoreIconPageScrollY = -1;
    private static int sMainSettingsScrollY = -1;
    private static int sThemePageScrollY = -1;
    private static final Map<String, Bitmap> sThemePreviewCache = new HashMap<String, Bitmap>();
    private static final Map<String, Bitmap> sThemeLargePreviewCache = new HashMap<String, Bitmap>();
    private static final Map<String, Bitmap> sSmartisanIconCache = new HashMap<String, Bitmap>();
    private static final Map<String, Boolean> sSmartisanIconFetchPending = new HashMap<String, Boolean>();
    private static boolean sDoppelgangerBootstrapScheduled;
    private static final String SMARTISAN_ICON_CACHE_PREFS = "smartisan_icon_cache";
    private static final String SMARTISAN_ICON_CACHE_DIR = "smartisan_icon_cache";
    private static final long SMARTISAN_ICON_MISS_RETRY_MS = 7L * 24L * 60L * 60L * 1000L;
    private static final String THEME_DOWNLOAD_BASE =
            "https://gitee.com/RANH-F/Smartisan-original-launcher-download/releases/download/themes-v1/";
    private static final String UPDATE_RELEASE_API =
            "https://gitee.com/api/v5/repos/RANH-F/Smartisan-original-launcher-download/releases?per_page=20";
    private static final String UPDATE_RELEASE_GITEE_MIRROR =
            "https://gitee.com/RANH-F/Smartisan-original-launcher-download/releases/download/";
    private static final String UPDATE_NOTIFICATION_CHANNEL = "launcher_update_download";
    private static final int UPDATE_NOTIFICATION_ID = 53046;
    private static final int UPDATE_INSTALL_NOTIFICATION_ID = 53047;
    private static final ThemeEntry[] LOCAL_THEMES = new ThemeEntry[]{
            new ThemeEntry("smartisan_theme_black", "com.smartisanos.home", "经典黑", true),
    };
    private static final ThemeEntry[] ONLINE_THEMES = new ThemeEntry[]{
            new ThemeEntry("smartisan_theme_blue", "com.smartisanos.launcher.theme.blue", "蓝色", false),
            new ThemeEntry("smartisan_theme_light_blue", "com.smartisanos.launcher.theme.lightblue", "经典蓝", false),
            theme("smartisan_theme_aero", "毛玻璃"),
            theme("smartisan_theme_grid", "格子"),
            theme("smartisan_theme_leaf", "叶绿"),
            theme("smartisan_theme_dark_wood", "胡桃木"),
            theme("smartisan_theme_light_gold", "浅金"),
            theme("smartisan_theme_blue_green", "蓝绿"),
            theme("smartisan_theme_dark_gray", "深灰"),
            theme("smartisan_theme_deep_blue", "深蓝"),
            theme("smartisan_theme_fibre", "纤维"),
            theme("smartisan_theme_lake", "湖绿"),
            theme("smartisan_theme_bamboo", "竹青"),
            theme("smartisan_theme_raven", "鸦青"),
            theme("smartisan_theme_wine_red", "酒红"),
            theme("smartisan_theme_indigo", "靛蓝"),
            theme("smartisan_theme_leather", "皮革"),
            theme("smartisan_theme_light_wood", "桦木"),
            theme("smartisan_theme_red", "红色"),
            theme("smartisan_theme_orange", "橙色"),
            theme("smartisan_theme_yellow", "黄色"),
            theme("smartisan_theme_green", "绿色"),
            theme("smartisan_theme_cyan", "青色"),
            theme("smartisan_theme_purple", "紫色"),
            theme("smartisan_theme_strip", "灰岩"),
            theme("smartisan_theme_clay", "褐色"),
            theme("LiteraryBrown", "文艺棕"),
            theme("LiteraryCyan", "文艺青"),
            theme("LiteraryGreen", "文艺绿"),
            theme("LiteraryPink", "文艺粉"),
            theme("LiteraryPurple", "文艺紫"),
            theme("LiteraryRed", "文艺红"),
            theme("LiteraryWhite", "文艺白"),
            theme("LiteraryYellow", "文艺黄"),
    };

    private static ThemeEntry theme(String id, String name) {
        return new ThemeEntry(id, idToPackageName(id), name, false);
    }

    private MaintainedLauncherSettingsHost() {
    }

    public static void show(Activity activity) {
        show(activity, -1);
    }

    private static void show(Activity activity, int restoreScrollY) {
        try {
            resumeOperationLogIfNeeded(activity);
            cancelScheduledLauncherRestart(activity);
            cancelScheduledIconSizeLauncherRestart(activity);
            Intent intent = activity.getIntent();
            if (intent != null && UPDATE_INSTALL_ACTION.equals(intent.getAction())) {
                long downloadId = intent.getLongExtra(EXTRA_UPDATE_DOWNLOAD_ID, -1);
                String path = intent.getStringExtra(EXTRA_UPDATE_APK_PATH);
                intent.setAction(null);
                intent.removeExtra(EXTRA_UPDATE_DOWNLOAD_ID);
                intent.removeExtra(EXTRA_UPDATE_APK_PATH);
                tuneWindow(activity);
                if (downloadId != -1) {
                    installApk(activity, downloadId);
                } else if (!TextUtils.isEmpty(path)) {
                    installApkFile(activity, new File(path));
                } else {
                    Toast.makeText(activity, "未找到下载的安装包，请重新下载", Toast.LENGTH_SHORT).show();
                }
                return;
            }
            if (intent != null && intent.getBooleanExtra("launcher_show_search", false)) {
                intent.removeExtra("launcher_show_search");
                tuneWindow(activity);
                showSearchPage(activity);
                return;
            }
            armSettingsClickGuard();
            tuneWindow(activity);
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = inflate(activity, context, "setting_main");
            bindPage(activity, resources, root);
            tuneScrollBars(root);
            activity.setContentView(root);
            restoreScroll(root, restoreScrollY);
            scheduleInitialSettingsMigrationsIfIdle(activity);
        } catch (Throwable t) {
            showFailure(activity, t);
        }
    }

    private static void scheduleInitialSettingsMigrationsIfIdle(Context context) {
        if (context == null) {
            return;
        }
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            public void run() {
                if (app == null || isOperationLogActive(app)) {
                    return;
                }
                new Thread(new Runnable() {
                    public void run() {
                        try {
                            Thread.currentThread().setPriority(Thread.MIN_PRIORITY);
                        } catch (Throwable ignored) {
                        }
                        migrateBuiltinIconDefaults(app);
                        migrateOldOriginalIconDefaults(app);
                        migrateIconPackDefault(app);
                    }
                }, "MaintainedSettingsInit").start();
            }
        }, 15000);
    }

    private static void migrateBuiltinIconDefaults(Context context) {
        if (context == null) {
            return;
        }
        final String key = "maintained_builtin_icon_defaults_v1";
        SharedPreferences prefs = context.getSharedPreferences(ICON_OVERRIDE_PREFS, Context.MODE_PRIVATE);
        if (prefs.getBoolean(key, false)) {
            return;
        }
        try {
            SettingsResourceContext settings = createSettingsContext(context);
            Resources resources = settings.getResources();
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            int flags = Build.VERSION.SDK_INT >= 23 ? 0x00020000 : 0;
            List<ResolveInfo> apps = context.getPackageManager().queryIntentActivities(intent, flags);
            for (int i = 0; i < apps.size(); i++) {
                ResolveInfo info = apps.get(i);
                ActivityInfo ai = info == null ? null : info.activityInfo;
                if (ai == null || ai.packageName == null || ai.name == null || !shouldShowIconEntry(info)) {
                    continue;
                }
                RedirectIconInfo redirect = RedirectIconDB.getRedirectIconInfo(context, ai.packageName, ai.name);
                if (redirect != null && RedirectIconDB.MODE_ORIGINAL.equals(RedirectIconDB.modeOf(redirect))
                        && smartisanIconDrawable(context, info, resources) != null) {
                    RedirectIconDB.updateIconStatus(context, ai.packageName, ai.name, true);
                }
            }
        } catch (Throwable ignored) {
        }
        prefs.edit().putBoolean(key, true).apply();
    }

    private static void migrateOldOriginalIconDefaults(Context context) {
        if (context == null) {
            return;
        }
        final String key = "maintained_builtin_icon_defaults_v3";
        SharedPreferences prefs = context.getSharedPreferences(ICON_OVERRIDE_PREFS, Context.MODE_PRIVATE);
        if (prefs.getBoolean(key, false)) {
            return;
        }
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            int flags = Build.VERSION.SDK_INT >= 23 ? 0x00020000 : 0;
            List<ResolveInfo> apps = context.getPackageManager().queryIntentActivities(intent, flags);
            for (int i = 0; i < apps.size(); i++) {
                ResolveInfo info = apps.get(i);
                ActivityInfo ai = info == null ? null : info.activityInfo;
                if (ai == null || ai.packageName == null || ai.name == null || !shouldShowIconEntry(info)) {
                    continue;
                }
                RedirectIconInfo redirect = RedirectIconDB.getRedirectIconInfo(context, ai.packageName, ai.name);
                if (redirect != null && RedirectIconDB.MODE_ORIGINAL.equals(RedirectIconDB.modeOf(redirect))) {
                    RedirectIconDB.updateAutoIcon(context, ai.packageName, ai.name);
                }
            }
        } catch (Throwable ignored) {
        }
        prefs.edit().putBoolean(key, true).apply();
    }

    private static void migrateIconPackDefault(Context context) {
        if (context == null) {
            return;
        }
        final String key = "maintained_icon_pack_default_disabled_v1";
        SharedPreferences prefs = context.getSharedPreferences(ICON_OVERRIDE_PREFS, Context.MODE_PRIVATE);
        if (prefs.getBoolean(key, false)) {
            return;
        }
        try {
            Class<?> cls = Class.forName("com.smartisanos.home.settings.icons.IconPackManager");
            String pkg = (String) cls.getMethod("getSelectedIconPackPackage", Context.class).invoke(null, context);
            if (pkg == null || pkg.length() == 0) {
                cls.getMethod("setSelectedIconPackPackage", Context.class, String.class)
                        .invoke(null, context, "__disabled__");
            }
        } catch (Throwable ignored) {
        }
        prefs.edit().putBoolean(key, true).apply();
    }

    public static void maybeRefreshLauncherIcons(Context context) {
        if (context == null) {
            return;
        }
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        final String key = "maintained_icon_loader_refresh_v2";
        try {
            SharedPreferences prefs = app.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE);
            if (prefs.getBoolean(key, false)) {
                return;
            }
            prefs.edit().putBoolean(key, true).apply();
        } catch (Throwable ignored) {
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            public void run() {
                applyIconChange(app);
            }
        }, 1200);
    }

    public static void scheduleDoppelgangerBootstrap(Context context) {
        if (context == null) {
            return;
        }
        synchronized (MaintainedLauncherSettingsHost.class) {
            if (sDoppelgangerBootstrapScheduled) {
                return;
            }
            sDoppelgangerBootstrapScheduled = true;
        }
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(new Runnable() {
            public void run() {
                bootstrapDoppelgangerPackages(app);
            }
        }, 12000);
        handler.postDelayed(new Runnable() {
            public void run() {
                bootstrapDoppelgangerPackages(app);
            }
        }, 30000);
        handler.postDelayed(new Runnable() {
            public void run() {
                bootstrapDoppelgangerPackages(app);
            }
        }, 60000);
    }

    private static void bootstrapDoppelgangerPackages(final Context context) {
        if (context == null) {
            return;
        }
        new Thread(new Runnable() {
            public void run() {
                HashMap<Integer, HashMap<String, Boolean>> packagesByUser =
                        new HashMap<Integer, HashMap<String, Boolean>>();
                try {
                    LauncherApps launcherApps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
                    if (launcherApps != null) {
                        ArrayList<Integer> userIds = doppelgangerUserIds(context);
                        for (int u = 0; u < userIds.size(); u++) {
                            int userId = userIds.get(u).intValue();
                            UserHandle user = userHandleForIdentifier(userId);
                            if (user == null) {
                                continue;
                            }
                            List<LauncherActivityInfo> activities = launcherApps.getActivityList(null, user);
                            if (activities != null) {
                                for (int i = 0; i < activities.size(); i++) {
                                    LauncherActivityInfo info = activities.get(i);
                                    if (info != null && info.getComponentName() != null) {
                                        String pkg = info.getComponentName().getPackageName();
                                        if (pkg != null && pkg.length() > 0) {
                                            addDoppelgangerPackage(packagesByUser, userId, pkg);
                                        }
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable ignored) {
                }
                if (packagesByUser.isEmpty()) {
                    try {
                        Method method = PackageManager.class.getMethod("getInstalledPackagesAsUser",
                                Integer.TYPE, Integer.TYPE);
                        ArrayList<Integer> userIds = doppelgangerUserIds(context);
                        for (int u = 0; u < userIds.size(); u++) {
                            int userId = userIds.get(u).intValue();
                            List list = (List) method.invoke(context.getPackageManager(), 0, userId);
                            if (list != null) {
                                for (int i = 0; i < list.size(); i++) {
                                    Object item = list.get(i);
                                    if (item instanceof android.content.pm.PackageInfo) {
                                        String pkg = ((android.content.pm.PackageInfo) item).packageName;
                                        if (pkg != null && pkg.length() > 0) {
                                            addDoppelgangerPackage(packagesByUser, userId, pkg);
                                        }
                                    }
                                }
                            }
                        }
                    } catch (Throwable ignored) {
                    }
                }
                for (Integer userId : packagesByUser.keySet()) {
                    HashMap<String, Boolean> packages = packagesByUser.get(userId);
                    if (packages == null) {
                        continue;
                    }
                    for (String pkg : packages.keySet()) {
                        try {
                            ArrayList params = new ArrayList();
                            params.add(pkg);
                            params.add(userId);
                            postDatabaseUserPackageAdded(params);
                            postDatabaseUserPackageChanged(params);
                        } catch (Throwable ignored) {
                        }
                    }
                }
                if (!packagesByUser.isEmpty()) {
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                        public void run() {
                            postDatabaseRefreshEvent();
                            applyIconChange(context);
                        }
                    }, 900);
                    new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                        public void run() {
                            postDatabaseRefreshEvent();
                        }
                    }, 2200);
                }
            }
        }, "DoppelgangerBootstrap").start();
    }

    public static List safeInstalledPackagesForDoppelganger(Context context) {
        ArrayList out = new ArrayList();
        if (context == null) {
            return out;
        }
        PackageManager pm = context.getPackageManager();
        if (pm == null) {
            return out;
        }
        try {
            Method method = PackageManager.class.getMethod("getInstalledPackagesAsUser",
                    Integer.TYPE, Integer.TYPE);
            Object list = method.invoke(pm, 0, 10);
            if (list instanceof List) {
                addPackageInfos(out, (List) list);
            }
        } catch (Throwable ignored) {
        }
        try {
            List list = pm.getInstalledPackages(0);
            if (list != null) {
                addPackageInfos(out, list);
            }
        } catch (Throwable ignored) {
        }
        try {
            Intent launcherIntent = new Intent(Intent.ACTION_MAIN);
            launcherIntent.addCategory(Intent.CATEGORY_LAUNCHER);
            List activities = pm.queryIntentActivities(launcherIntent, 0);
            if (activities != null) {
                for (int i = 0; i < activities.size(); i++) {
                    Object item = activities.get(i);
                    if (!(item instanceof ResolveInfo)) {
                        continue;
                    }
                    ResolveInfo info = (ResolveInfo) item;
                    if (info.activityInfo == null || info.activityInfo.packageName == null) {
                        continue;
                    }
                    try {
                        PackageInfo packageInfo = pm.getPackageInfo(info.activityInfo.packageName, 0);
                        addPackageInfo(out, packageInfo);
                    } catch (Throwable ignored) {
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return out;
    }

    private static void addPackageInfos(ArrayList out, List packages) {
        if (out == null || packages == null) {
            return;
        }
        for (int i = 0; i < packages.size(); i++) {
            Object item = packages.get(i);
            if (item instanceof PackageInfo) {
                addPackageInfo(out, (PackageInfo) item);
            }
        }
    }

    private static void addPackageInfo(ArrayList out, PackageInfo packageInfo) {
        if (out == null || packageInfo == null || packageInfo.packageName == null) {
            return;
        }
        for (int i = 0; i < out.size(); i++) {
            Object item = out.get(i);
            if (item instanceof PackageInfo) {
                PackageInfo existing = (PackageInfo) item;
                if (packageInfo.packageName.equals(existing.packageName)) {
                    return;
                }
            }
        }
        out.add(packageInfo);
    }

    public static List safeQueryIntentActivitiesForUser(PackageManager pm, Intent intent, int flags, int userId) {
        ArrayList out = new ArrayList();
        if (pm == null || intent == null) {
            return out;
        }
        try {
            Method method = PackageManager.class.getMethod("queryIntentActivitiesAsUser",
                    Intent.class, Integer.TYPE, Integer.TYPE);
            Object list = method.invoke(pm, intent, flags, userId);
            if (list instanceof List) {
                return (List) list;
            }
        } catch (Throwable ignored) {
        }
        try {
            List list = pm.queryIntentActivities(intent, flags);
            if (list != null) {
                out.addAll(list);
            }
        } catch (Throwable ignored) {
        }
        return out;
    }

    private static void addDoppelgangerPackage(HashMap<Integer, HashMap<String, Boolean>> packagesByUser,
                                               int userId, String pkg) {
        if (!isDoppelgangerUserId(userId) || pkg == null || pkg.length() == 0) {
            return;
        }
        HashMap<String, Boolean> packages = packagesByUser.get(Integer.valueOf(userId));
        if (packages == null) {
            packages = new HashMap<String, Boolean>();
            packagesByUser.put(Integer.valueOf(userId), packages);
        }
        packages.put(pkg, Boolean.TRUE);
    }

    private static ArrayList<Integer> doppelgangerUserIds(Context context) {
        ArrayList<Integer> out = new ArrayList<Integer>();
        try {
            android.os.UserManager manager =
                    (android.os.UserManager) context.getSystemService(Context.USER_SERVICE);
            if (manager != null) {
                List<UserHandle> profiles = manager.getUserProfiles();
                if (profiles != null) {
                    for (int i = 0; i < profiles.size(); i++) {
                        int id = userIdentifier(profiles.get(i));
                        if (isDoppelgangerUserId(id) && !out.contains(Integer.valueOf(id))) {
                            out.add(Integer.valueOf(id));
                        }
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        int[] commonCloneUsers = new int[]{10, 999, 888, 100, 95};
        for (int i = 0; i < commonCloneUsers.length; i++) {
            Integer value = Integer.valueOf(commonCloneUsers[i]);
            if (!out.contains(value)) {
                out.add(value);
            }
        }
        return out;
    }

    private static int userIdentifier(UserHandle user) {
        try {
            Object id = UserHandle.class.getMethod("getIdentifier").invoke(user);
            return id instanceof Integer ? ((Integer) id).intValue() : -1;
        } catch (Throwable ignored) {
            return -1;
        }
    }

    private static boolean isDoppelgangerUserId(int userId) {
        return userId > 0;
    }

    private static UserHandle userHandleForIdentifier(int id) {
        try {
            java.lang.reflect.Constructor<UserHandle> constructor = UserHandle.class.getDeclaredConstructor(Integer.TYPE);
            constructor.setAccessible(true);
            return constructor.newInstance(Integer.valueOf(id));
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void postDatabaseUserPackageAdded(ArrayList params) {
        postDatabaseUserPackageEvent("EVENT_USER_PACKAGE_ADDED", params);
    }

    private static void postDatabaseUserPackageChanged(ArrayList params) {
        postDatabaseUserPackageEvent("EVENT_USER_PACKAGE_CHANGED", params);
    }

    private static void postDatabaseUserPackageEvent(String eventName, ArrayList params) {
        try {
            Class actionClass = Class.forName("com.smartisanos.launcher.data.DatabaseUpdater$Action");
            Object action = java.lang.Enum.valueOf(actionClass, eventName);
            Class updater = Class.forName("com.smartisanos.launcher.data.F");
            updater.getMethod("b", actionClass, List.class, ArrayList.class).invoke(null, action, null, params);
        } catch (Throwable ignored) {
        }
    }

    private static void postDatabaseRefreshEvent() {
        try {
            Class actionClass = Class.forName("com.smartisanos.launcher.data.DatabaseUpdater$Action");
            Object action = java.lang.Enum.valueOf(actionClass, "EVENT_REFRESH");
            Class updater = Class.forName("com.smartisanos.launcher.data.F");
            updater.getMethod("b", actionClass).invoke(null, action);
        } catch (Throwable ignored) {
        }
    }

    private static void tuneWindow(Activity activity) {
        activity.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN
                | WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);
        if (Build.VERSION.SDK_INT >= 21) {
            activity.getWindow().setStatusBarColor(0xfff7f7f7);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            activity.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
        }
    }

    private static File copySettingsResources(Context context) throws Exception {
        File out = new File(context.getCacheDir(), "maintained-settings-res.apk");
        long updateTime = 0L;
        try {
            updateTime = context.getPackageManager()
                    .getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
        } catch (Throwable ignored) {
        }
        SharedPreferences prefs = context.getSharedPreferences("maintained_settings_res", Context.MODE_PRIVATE);
        long copiedUpdateTime = prefs.getLong("copied_last_update_time", -1L);
        if (out.exists() && out.length() > 0 && copiedUpdateTime == updateTime) {
            return out;
        }
        InputStream in = context.getAssets().open(SETTINGS_ASSET);
        try {
            FileOutputStream fos = new FileOutputStream(out);
            try {
                byte[] buffer = new byte[8192];
                int read;
                while ((read = in.read(buffer)) != -1) {
                    fos.write(buffer, 0, read);
                }
            } finally {
                fos.close();
            }
        } finally {
            in.close();
        }
        prefs.edit().putLong("copied_last_update_time", updateTime).apply();
        return out;
    }

    private static Resources loadExternalResources(Context base, String apkPath) throws Exception {
        AssetManager assetManager = AssetManager.class.newInstance();
        Method addAssetPath = AssetManager.class.getMethod("addAssetPath", String.class);
        Integer cookie = (Integer) addAssetPath.invoke(assetManager, apkPath);
        if (cookie == null || cookie.intValue() == 0) {
            throw new IllegalStateException("addAssetPath failed: " + apkPath);
        }
        Resources baseRes = base.getResources();
        return new Resources(assetManager, baseRes.getDisplayMetrics(), baseRes.getConfiguration());
    }

    private static SettingsResourceContext createSettingsContext(Activity activity) throws Exception {
        Resources resources = settingsResources(activity);
        return new SettingsResourceContext(activity, resources);
    }

    private static SettingsResourceContext createSettingsContext(Context context) throws Exception {
        Resources resources = settingsResources(context);
        return new SettingsResourceContext(context, resources);
    }

    private static synchronized Resources settingsResources(Context context) throws Exception {
        if (sSettingsResources != null) {
            return sSettingsResources;
        }
        sSettingsApk = copySettingsResources(context);
        sSettingsResources = loadExternalResources(context, sSettingsApk.getAbsolutePath());
        return sSettingsResources;
    }

    private static View inflate(Activity activity, SettingsResourceContext context, String layoutName) {
        Resources resources = context.getResources();
        int layoutId = resources.getIdentifier(layoutName, "layout", SETTINGS_PKG);
        if (layoutId == 0) {
            throw new Resources.NotFoundException("layout/" + layoutName);
        }
        LayoutInflater inflater = settingsInflater(activity, context);
        return inflater.inflate(layoutId, null);
    }

    private static LayoutInflater settingsInflater(Activity activity, SettingsResourceContext context) {
        LayoutInflater inflater = LayoutInflater.from(activity).cloneInContext(context);
        inflater.setFactory2(new LayoutInflater.Factory2() {
            public View onCreateView(View parent, String name, Context context, android.util.AttributeSet attrs) {
                return onCreateView(name, context, attrs);
            }
            public View onCreateView(String name, Context context, android.util.AttributeSet attrs) {
                if ("com.smartisanos.home.widget.sys.GridViewWithHeaderAndFooter".equals(name)
                        || "com.smartisanos.launcher.theme.ThemePreviewGridView".equals(name)) {
                    return new WrapContentGridView(context, attrs);
                }
                if ("com.smartisanos.home.widget.sys.VideoPlayerView".equals(name)) {
                    ImageView iv = new ImageView(context, attrs);
                    iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    return iv;
                }
                if ("com.smartisanos.home.widget.sys.SelectOptionsView".equals(name)) {
                    return new LinearLayout(context, attrs);
                }
                if ("com.smartisan.moreapps.AppsView".equals(name)) {
                    LinearLayout placeholder = new LinearLayout(context, attrs);
                    placeholder.setVisibility(View.GONE);
                    return placeholder;
                }
                return null;
            }
        });
        return inflater;
    }

    private static void bindPage(final Activity activity, Resources resources, View root) {
        View title = find(resources, root, "view_title");
        if (title instanceof Title) {
            ((Title) title).setTitle(getString(resources, "launcher_setting_name", "Launcher Settings"));
        }

        bindGrid(activity, resources, root);
        bindSwitch(activity, resources, root, "item_id_hide_lable", "launcher_hide_lable", false);
        bindSwitch(activity, resources, root, "item_id_hide_navigation_bar", "launcher_hide_navigation_bar", false);
        bindSwitch(activity, resources, root, "item_id_hide_badge", "launcher_hide_badge", false);
        bindSwitch(activity, resources, root, "item_id_unlock_anim", "launcher_unlock_animation_enabled", false);
        bindSwitch(activity, resources, root, "multi_block_fast_launch_app", "fast_launch_app_on", true);
        bindTransparentThemeSwitch(activity, resources, root);

        hide(resources, root, "id_unlock_anim_tips");
        hide(resources, root, "setting_defaultsearchengine");
        hide(resources, root, "searchengine_text");
        hide(resources, root, "current_engine");
        hide(resources, root, "item_id_enable_cellular");
        hide(resources, root, "id_enable_cellular_tips");
        hide(resources, root, "launcher_flip_animation");
        hide(resources, root, "item_id_hide_lable");
        hide(resources, root, "item_id_hide_navigation_bar");
        hide(resources, root, "item_id_hide_badge");
        hide(resources, root, "item_id_unlock_anim");
        setFirstChildText(resources, root, "setting_ocd_options",
                getString(resources, "ocd_setting", "OCD Settings"));
        bindCurrentThemePreviewIcon(activity, resources, root, "item_id_themes");
        boolean showWallpaperSetting = shouldShowLauncherWallpaperSetting(activity);
        if (showWallpaperSetting) {
            bindWallpaperSettingIcon(activity, resources, root);
        } else {
            hide(resources, root, "item_id_launcher_wallpaper");
        }
        if (isTransparentThemeEnabled(activity)) {
            forceDefaultPageAnimation(activity);
            hide(resources, root, "item_id_themes");
            hide(resources, root, "item_page_flip_anims");
            setBackground(find(resources, root, "item_id_launcher_wallpaper"), resources, "selector_setting_sub_item_bg_top");
            setBackground(find(resources, root, "item_id_icons"), resources, "selector_setting_sub_item_bg_bottom");
        }
        bindMainSettingIcon(resources, root, "item_page_flip_anims", "page_flip_animation_default_upper", true);
        bindMainSettingIcon(resources, root, "item_id_icons", "icon_setting_icon");
        TextView updateVersion = (TextView) byId(root, resources, "more_check_upgradation_text");
        if (updateVersion != null) {
            updateVersion.setText(appVersionName(activity));
        }

        click(activity, resources, root, "item_id_themes", new View.OnClickListener() {
            public void onClick(View v) {
                sMainSettingsScrollY = currentScrollY(activity);
                showThemePage(activity);
            }
        });
        click(activity, resources, root, "item_id_launcher_wallpaper", new View.OnClickListener() {
            public void onClick(View v) {
                sMainSettingsScrollY = currentScrollY(activity);
                showWallpaperPage(activity);
            }
        });
        click(activity, resources, root, "item_page_flip_anims", new View.OnClickListener() {
            public void onClick(View v) {
                sMainSettingsScrollY = currentScrollY(activity);
                showPageFlipPage(activity);
            }
        });
        click(activity, resources, root, "item_id_icons", new View.OnClickListener() {
            public void onClick(View v) {
                sMainSettingsScrollY = currentScrollY(activity);
                showIconPage(activity);
            }
        });
        click(activity, resources, root, "setting_ocd_options", new View.OnClickListener() {
            public void onClick(View v) {
                sMainSettingsScrollY = currentScrollY(activity);
                showOcdOptionsPage(activity);
            }
        });
        click(activity, resources, root, "setting_switch_launcher", new View.OnClickListener() {
            public void onClick(View v) {
                openDefaultHomeSettings(activity);
            }
        });
        hide(resources, root, "setting_share");
        hide(resources, root, "setting_feedback");
        hide(resources, root, "setting_user_experience");
        setBackground(find(resources, root, "more_check_upgradation"), resources, "setting_item_up");
        setBackground(find(resources, root, "setting_switch_launcher"), resources, "more_item_middle");
        setBackground(find(resources, root, "setting_about_us"), resources, "setting_item_down");
        click(activity, resources, root, "more_check_upgradation", new View.OnClickListener() {
            public void onClick(View v) {
                checkForUpdates(activity);
            }
        });
        clickToast(activity, resources, root, "setting_feedback", "反馈功能后续接入");
        clickToast(activity, resources, root, "setting_user_experience", "用户体验计划后续接入");
        click(activity, resources, root, "setting_battery_optimization", new View.OnClickListener() {
            public void onClick(View v) {
                openBatteryOptimizationSettings(activity);
            }
        });
        click(activity, resources, root, "setting_about_us", new View.OnClickListener() {
            public void onClick(View v) {
                sMainSettingsScrollY = currentScrollY(activity);
                showAboutPage(activity);
            }
        });
    }

    public static void applyLauncherNavigationBarSetting(Activity activity) {
        if (activity == null || activity.getWindow() == null) {
            return;
        }
        try {
            Window window = activity.getWindow();
            View decor = window.getDecorView();
            if (decor == null) {
                return;
            }
            int visibility = decor.getSystemUiVisibility();
            visibility |= View.SYSTEM_UI_FLAG_LAYOUT_STABLE;
            visibility |= View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN;
            boolean hideNavigation = LauncherSettingBridge.readBool(
                    activity, "launcher_hide_navigation_bar", false);
            if (hideNavigation) {
                visibility |= View.SYSTEM_UI_FLAG_HIDE_NAVIGATION;
                visibility |= View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY;
                visibility |= View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION;
            } else {
                visibility &= ~View.SYSTEM_UI_FLAG_HIDE_NAVIGATION;
                visibility &= ~View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY;
                visibility &= ~View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION;
            }
            decor.setSystemUiVisibility(visibility);
            window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
            window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            if (Build.VERSION.SDK_INT >= 21) {
                window.setStatusBarColor(Color.TRANSPARENT);
            }
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attrs = window.getAttributes();
                attrs.layoutInDisplayCutoutMode =
                        WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
                window.setAttributes(attrs);
            }
        } catch (Throwable ignored) {
        }
    }

    public static boolean handleLauncherSearchGesture(Activity activity, MotionEvent event) {
        if (activity == null || event == null) {
            return false;
        }
        int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            sSearchGestureStartX = event.getX();
            sSearchGestureStartY = event.getY();
            sSearchGestureStartTime = android.os.SystemClock.uptimeMillis();
            sSearchGestureConsumed = false;
            sSearchGestureInvalid = false;
            return false;
        }
        if (action == MotionEvent.ACTION_CANCEL
                || action == MotionEvent.ACTION_POINTER_DOWN
                || action == MotionEvent.ACTION_POINTER_UP) {
            sSearchGestureInvalid = true;
            return false;
        }
        if (event.getPointerCount() != 1) {
            sSearchGestureInvalid = true;
            return false;
        }
        if (action != MotionEvent.ACTION_MOVE && action != MotionEvent.ACTION_UP) {
            return false;
        }
        if (sSearchGestureConsumed) {
            return action == MotionEvent.ACTION_UP;
        }
        float dx = event.getX() - sSearchGestureStartX;
        float dy = event.getY() - sSearchGestureStartY;
        float absDx = Math.abs(dx);
        if (dy < -dp(activity, 24)
                || absDx > Math.max(dp(activity, 96), Math.max(dy, 1f) * 0.55f)) {
            sSearchGestureInvalid = true;
        }
        if (action != MotionEvent.ACTION_UP) {
            return false;
        }
        long now = android.os.SystemClock.uptimeMillis();
        long duration = now - sSearchGestureStartTime;
        if (sSearchGestureInvalid || now - sSearchGestureLastOpenTime < 1000) {
            return false;
        }
        int height = activity.getResources().getDisplayMetrics().heightPixels;
        boolean fromDesktop = sSearchGestureStartY > dp(activity, 96)
                && sSearchGestureStartY < height - dp(activity, 280);
        float minDistance = Math.max(dp(activity, 180), height * 0.14f);
        boolean downward = dy > minDistance && absDx < dy * 0.28f;
        boolean deliberate = duration >= 120 && duration <= 900;
        if (fromDesktop && downward && deliberate) {
            if (!readSystemBool(activity, KEY_SEARCH_PAGE_ENABLED, true)) {
                return false;
            }
            sSearchGestureConsumed = true;
            sSearchGestureLastOpenTime = now;
            openLauncherSearch(activity);
            return true;
        }
        return false;
    }

    private static void openLauncherSearch(Activity activity) {
        openLauncherSearch((Context) activity);
    }

    public static void openLauncherSearch(Context context) {
        if (!readSystemBool(context, KEY_SEARCH_PAGE_ENABLED, true)) {
            return;
        }
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.setClassName(context.getPackageName(),
                    "com.smartisanos.launcher.theme.ThemeChooserActivity");
            intent.putExtra("launcher_show_search", true);
            intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_SINGLE_TOP);
            if (!(context instanceof Activity)) {
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            }
            context.startActivity(intent);
        } catch (Throwable t) {
            Toast.makeText(context, "无法打开搜索", Toast.LENGTH_SHORT).show();
        }
    }

    public static void showSearchPage(final Activity activity) {
        logOperation(activity, "PAGE", "show_search");
        if (!readSystemBool(activity, KEY_SEARCH_PAGE_ENABLED, true)) {
            activity.finish();
            return;
        }
        final ArrayList<SearchEntry> all = new ArrayList<SearchEntry>();
        final ArrayList<SearchEntry> visible = new ArrayList<SearchEntry>();
        final SettingsResourceContext context;
        final Resources resources;
        try {
            context = createSettingsContext(activity);
            resources = context.getResources();
        } catch (Throwable t) {
            Toast.makeText(activity, "无法打开搜索页：" + shortError(t), Toast.LENGTH_SHORT).show();
            return;
        }
        loadSearchEntries(activity, all);

        final LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(0xffedf3f8);
        activity.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE
                | WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE);

        LinearLayout searchArea = new LinearLayout(activity);
        searchArea.setGravity(Gravity.CENTER_VERTICAL);
        searchArea.setPadding(dp(activity, 10), dp(activity, 9), dp(activity, 10), dp(activity, 9));
        searchArea.setBackgroundColor(0xfff7f7f7);
        root.addView(searchArea, new LinearLayout.LayoutParams(-1, dp(activity, 56)));

        RelativeLayout searchBar = new RelativeLayout(activity);
        searchBar.setBackground(roundedDrawable(0xffffffff, 0xffd8dbe0, dp(activity, 22)));
        searchArea.addView(searchBar, new LinearLayout.LayoutParams(-1, dp(activity, 38)));

        ImageView searchIcon = new ImageView(activity);
        int searchIconId = resources.getIdentifier("search_icon", "drawable", SETTINGS_PKG);
        if (searchIconId != 0) {
            searchIcon.setImageDrawable(resources.getDrawable(searchIconId));
        }
        searchIcon.setAlpha(0.45f);
        RelativeLayout.LayoutParams searchIconLp = new RelativeLayout.LayoutParams(dp(activity, 23), dp(activity, 23));
        searchIconLp.leftMargin = dp(activity, 12);
        searchIconLp.addRule(RelativeLayout.CENTER_VERTICAL);
        searchBar.addView(searchIcon, searchIconLp);

        final EditText query = new EditText(activity);
        query.setSingleLine(true);
        query.setHint("搜索本机和在线内容");
        query.setTextColor(0xff3f4656);
        query.setHintTextColor(0xffc6cbd1);
        query.setTextSize(17);
        query.setIncludeFontPadding(false);
        query.setGravity(Gravity.CENTER_VERTICAL | Gravity.LEFT);
        query.setPadding(dp(activity, 2), 0, dp(activity, 2), dp(activity, 1));
        query.setBackgroundColor(Color.TRANSPARENT);
        query.setInputType(android.text.InputType.TYPE_CLASS_TEXT
                | android.text.InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        query.setImeOptions(android.view.inputmethod.EditorInfo.IME_ACTION_SEARCH);
        RelativeLayout.LayoutParams queryLp = new RelativeLayout.LayoutParams(-1, -1);
        queryLp.leftMargin = dp(activity, 46);
        queryLp.rightMargin = dp(activity, 45);
        searchBar.addView(query, queryLp);

        TextView clearButton = new TextView(activity);
        clearButton.setText("×");
        clearButton.setGravity(Gravity.CENTER);
        clearButton.setTextColor(0xff8d939b);
        clearButton.setTextSize(24);
        clearButton.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
        RelativeLayout.LayoutParams clearLp = new RelativeLayout.LayoutParams(dp(activity, 42), -1);
        clearLp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
        clearLp.addRule(RelativeLayout.CENTER_VERTICAL);
        searchBar.addView(clearButton, clearLp);

        final LinearLayout emptyPanel = new LinearLayout(activity);
        emptyPanel.setOrientation(LinearLayout.VERTICAL);
        emptyPanel.setPadding(0, dp(activity, 22), 0, 0);
        root.addView(emptyPanel, new LinearLayout.LayoutParams(-1, 0, 1));

        final HorizontalScrollView commonScroll = new HorizontalScrollView(activity);
        commonScroll.setHorizontalScrollBarEnabled(false);
        commonScroll.setFillViewport(true);
        commonScroll.setOverScrollMode(View.OVER_SCROLL_NEVER);
        LinearLayout commonApps = new LinearLayout(activity);
        commonApps.setOrientation(LinearLayout.HORIZONTAL);
        commonApps.setGravity(Gravity.CENTER);
        commonScroll.addView(commonApps, new HorizontalScrollView.LayoutParams(-2, -1));
        emptyPanel.addView(commonScroll, new LinearLayout.LayoutParams(-1, dp(activity, 96)));
        int screenWidth = activity.getResources().getDisplayMetrics().widthPixels;
        final int commonItemWidth = Math.max(dp(activity, 68), screenWidth / 4);
        int appCount = Math.min(20, all.size());
        for (int i = 0; i < appCount; i++) {
            LinearLayout.LayoutParams shortcutLp = new LinearLayout.LayoutParams(commonItemWidth, -1);
            commonApps.addView(searchShortcut(activity, all.get(i), commonItemWidth), shortcutLp);
        }
        commonScroll.setOnTouchListener(new View.OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                int action = event.getActionMasked();
                if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
                    commonScroll.postDelayed(new Runnable() {
                        public void run() {
                            int target = Math.round(commonScroll.getScrollX() / (float) commonItemWidth)
                                    * commonItemWidth;
                            commonScroll.smoothScrollTo(target, 0);
                        }
                    }, 80);
                }
                return false;
            }
        });

        RelativeLayout historyTitle = new RelativeLayout(activity);
        TextView history = new TextView(activity);
        history.setText("搜索历史");
        history.setTextSize(16);
        history.setTextColor(0xffa2a7ae);
        history.setGravity(Gravity.CENTER_VERTICAL);
        RelativeLayout.LayoutParams historyLp = new RelativeLayout.LayoutParams(-2, dp(activity, 28));
        historyLp.leftMargin = dp(activity, 28);
        historyLp.addRule(RelativeLayout.CENTER_VERTICAL);
        historyTitle.addView(history, historyLp);
        TextView historyClear = new TextView(activity);
        historyClear.setText("×");
        historyClear.setGravity(Gravity.CENTER);
        historyClear.setTextSize(14);
        historyClear.setTypeface(Typeface.DEFAULT_BOLD);
        historyClear.setTextColor(0xff9da3aa);
        historyClear.setBackground(roundedDrawable(0xffffffff, 0xffdde2e8, dp(activity, 11)));
        RelativeLayout.LayoutParams historyClearLp = new RelativeLayout.LayoutParams(dp(activity, 22), dp(activity, 22));
        historyClearLp.rightMargin = dp(activity, 28);
        historyClearLp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
        historyClearLp.addRule(RelativeLayout.CENTER_VERTICAL);
        historyTitle.addView(historyClear, historyClearLp);
        emptyPanel.addView(historyTitle, new LinearLayout.LayoutParams(-1, dp(activity, 50)));

        final LinearLayout chipBox = new LinearLayout(activity);
        chipBox.setOrientation(LinearLayout.VERTICAL);
        chipBox.setPadding(dp(activity, 20), 0, dp(activity, 20), 0);
        emptyPanel.addView(chipBox, new LinearLayout.LayoutParams(-1, -2));
        addSearchHistoryChips(activity, chipBox, all);
        historyClear.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                clearSearchHistory(activity);
                for (SearchEntry entry : all) {
                    entry.historyRank = -1;
                }
                chipBox.removeAllViews();
            }
        });

        final LinearLayout resultPanel = new LinearLayout(activity);
        resultPanel.setOrientation(LinearLayout.VERTICAL);
        resultPanel.setVisibility(View.GONE);
        root.addView(resultPanel, new LinearLayout.LayoutParams(-1, 0, 1));

        TextView appGroupTitle = new TextView(activity);
        appGroupTitle.setText("应用程序");
        appGroupTitle.setTextColor(0xffa4a9b0);
        appGroupTitle.setTextSize(15);
        appGroupTitle.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
        appGroupTitle.setGravity(Gravity.CENTER_VERTICAL);
        appGroupTitle.setPadding(dp(activity, 22), 0, 0, 0);
        appGroupTitle.setBackgroundColor(0xfff3f4f5);
        resultPanel.addView(appGroupTitle, new LinearLayout.LayoutParams(-1, dp(activity, 40)));

        final ListView list = new ListView(activity);
        list.setDividerHeight(1);
        list.setDivider(new android.graphics.drawable.ColorDrawable(0xffececef));
        list.setCacheColorHint(Color.TRANSPARENT);
        list.setBackgroundColor(0xffffffff);
        list.setSelector(new android.graphics.drawable.ColorDrawable(Color.TRANSPARENT));
        resultPanel.addView(list, new LinearLayout.LayoutParams(-1, 0, 1));

        final SearchAdapter adapter = new SearchAdapter(activity, context, resources, visible);
        list.setAdapter(adapter);

        clearButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                if (query.getText() != null && query.getText().length() > 0) {
                    query.setText("");
                } else {
                    activity.finish();
                }
            }
        });

        activity.setContentView(root);
        query.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            public void onTextChanged(CharSequence s, int start, int before, int count) {
                String text = s == null ? "" : s.toString();
                filterSearchEntries(text, all, visible, adapter);
                boolean searching = text.trim().length() > 0;
                emptyPanel.setVisibility(searching ? View.GONE : View.VISIBLE);
                resultPanel.setVisibility(searching ? View.VISIBLE : View.GONE);
            }

            public void afterTextChanged(Editable s) {
            }
        });
        query.requestFocus();
        query.postDelayed(new Runnable() {
            public void run() {
                Object service = activity.getSystemService(Context.INPUT_METHOD_SERVICE);
                if (service instanceof InputMethodManager) {
                    ((InputMethodManager) service).showSoftInput(query, InputMethodManager.SHOW_IMPLICIT);
                }
            }
        }, 250);
    }

    private static Drawable roundedDrawable(int color, int strokeColor, int radius) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        drawable.setCornerRadius(radius);
        drawable.setStroke(1, strokeColor);
        return drawable;
    }

    private static View searchShortcut(final Activity activity, final SearchEntry entry, int itemWidth) {
        LinearLayout item = new LinearLayout(activity);
        item.setOrientation(LinearLayout.VERTICAL);
        item.setGravity(Gravity.CENTER);
        item.setClickable(true);
        item.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                launchSearchEntry(activity, entry);
            }
        });

        ImageView icon = new ImageView(activity);
        icon.setImageDrawable(entry.icon);
        icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
        item.addView(icon, new LinearLayout.LayoutParams(dp(activity, 42), dp(activity, 42)));

        TextView label = new TextView(activity);
        label.setText(entry.label);
        label.setTextSize(11);
        label.setTextColor(0xff2f3440);
        label.setGravity(Gravity.CENTER);
        label.setSingleLine(true);
        label.setEllipsize(TextUtils.TruncateAt.END);
        int labelWidth = Math.max(dp(activity, 58), Math.min(itemWidth - dp(activity, 8), dp(activity, 78)));
        LinearLayout.LayoutParams labelLp = new LinearLayout.LayoutParams(labelWidth, dp(activity, 24));
        labelLp.topMargin = dp(activity, 5);
        item.addView(label, labelLp);
        return item;
    }

    private static void addSearchHistoryChips(final Activity activity, LinearLayout chipBox,
                                              ArrayList<SearchEntry> entries) {
        LinearLayout row = null;
        int added = 0;
        for (int i = 0; i < entries.size() && added < 8; i++) {
            final SearchEntry entry = entries.get(i);
            if (entry.historyRank < 0) {
                continue;
            }
            if (added % 4 == 0) {
                row = new LinearLayout(activity);
                row.setGravity(Gravity.LEFT);
                chipBox.addView(row, new LinearLayout.LayoutParams(-1, dp(activity, 40)));
            }
            LinearLayout chip = new LinearLayout(activity);
            chip.setOrientation(LinearLayout.HORIZONTAL);
            chip.setGravity(Gravity.CENTER);
            chip.setPadding(dp(activity, 10), 0, dp(activity, 12), 0);
            chip.setBackground(roundedDrawable(0xffffffff, 0xffd8dde4, dp(activity, 8)));
            ImageView icon = new ImageView(activity);
            icon.setImageDrawable(entry.icon);
            icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
            LinearLayout.LayoutParams iconLp = new LinearLayout.LayoutParams(dp(activity, 20), dp(activity, 20));
            iconLp.rightMargin = dp(activity, 7);
            chip.addView(icon, iconLp);

            TextView text = new TextView(activity);
            text.setText(entry.label);
            text.setSingleLine(true);
            text.setEllipsize(TextUtils.TruncateAt.END);
            text.setTextSize(14);
            text.setTextColor(0xff565d68);
            text.setGravity(Gravity.CENTER_VERTICAL);
            chip.addView(text, new LinearLayout.LayoutParams(-2, -1));
            chip.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    launchSearchEntry(activity, entry);
                }
            });
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-2, dp(activity, 30));
            lp.leftMargin = dp(activity, 4);
            lp.rightMargin = dp(activity, 4);
            if (row != null) {
                row.addView(chip, lp);
            }
            added++;
        }
    }

    private static void launchSearchEntry(Activity activity, SearchEntry entry) {
        try {
            recordSearchHistory(activity, entry);
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            intent.setClassName(entry.packageName, entry.className);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            if (isDoppelgangerUserId(entry.userId)) {
                startActivityForUser(activity, intent, null, entry.userId);
            } else {
                activity.startActivity(intent);
            }
            activity.finish();
        } catch (Throwable t) {
            Toast.makeText(activity, "无法启动应用", Toast.LENGTH_SHORT).show();
        }
    }

    private static void loadSearchEntries(Context context, ArrayList<SearchEntry> out) {
        out.clear();
        try {
            PackageManager pm = context.getPackageManager();
            final ArrayList<String> history = readSearchHistory(context);
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            List<ResolveInfo> infos = queryLauncherActivitiesWithProfiles(pm, intent, 0);
            for (ResolveInfo info : infos) {
                if (info == null || info.activityInfo == null) {
                    continue;
                }
                String pkg = info.activityInfo.packageName;
                String cls = info.activityInfo.name;
                if (pkg == null || cls == null) {
                    continue;
                }
                CharSequence label = info.loadLabel(pm);
                int userId = userIdForResolveInfo(info);
                Drawable icon = loadIcon(info, pm);
                if (icon == null) {
                    icon = info.loadIcon(pm);
                }
                if (isDoppelgangerUserId(userId)) {
                    icon = doppelgangerBadgeDrawable(icon, pm, null);
                }
                String title = label == null ? pkg : label.toString();
                SearchEntry entry = new SearchEntry(title, pkg, cls, userId, icon);
                entry.historyRank = history.indexOf(entry.key);
                out.add(entry);
            }
            Collections.sort(out, new Comparator<SearchEntry>() {
                public int compare(SearchEntry a, SearchEntry b) {
                    if (a.historyRank != b.historyRank) {
                        if (a.historyRank < 0) return 1;
                        if (b.historyRank < 0) return -1;
                        return a.historyRank - b.historyRank;
                    }
                    int byLabel = a.label.compareToIgnoreCase(b.label);
                    if (byLabel != 0) {
                        return byLabel;
                    }
                    return a.userId - b.userId;
                }
            });
        } catch (Throwable ignored) {
        }
    }

    private static void filterSearchEntries(String query, ArrayList<SearchEntry> all,
                                            ArrayList<SearchEntry> visible, SearchAdapter adapter) {
        visible.clear();
        String needle = query == null ? "" : query.trim().toLowerCase();
        adapter.setQuery(needle);
        for (SearchEntry entry : all) {
            int score = scoreSearchEntry(needle, entry);
            if (score >= 0) {
                entry.lastScore = score;
                visible.add(entry);
            }
        }
        Collections.sort(visible, new Comparator<SearchEntry>() {
            public int compare(SearchEntry a, SearchEntry b) {
                if (a.lastScore != b.lastScore) {
                    return a.lastScore - b.lastScore;
                }
                if (a.historyRank != b.historyRank) {
                    if (a.historyRank < 0) return 1;
                    if (b.historyRank < 0) return -1;
                    return a.historyRank - b.historyRank;
                }
                return a.label.compareToIgnoreCase(b.label);
            }
        });
        adapter.notifyDataSetChanged();
    }

    private static int scoreSearchEntry(String needle, SearchEntry entry) {
        if (needle == null || needle.length() == 0) {
            return 0;
        }
        boolean t9 = isDigitQuery(needle);
        if (entry.labelLower.equals(needle)) return 0;
        if (entry.labelLower.startsWith(needle)) return 10;
        if (entry.pinyinCompact.startsWith(needle)) return 15;
        if (entry.initials.startsWith(needle)) return 16;
        if (entry.packageName.toLowerCase().contains(needle)) return 28;
        if (entry.labelLower.contains(needle)) return 32;
        if (entry.pinyinCompact.contains(needle)) return 36;
        if (entry.pinyinSpaced.contains(needle)) return 38;
        if (entry.initials.contains(needle)) return 40;
        if (t9 && entry.t9Code.indexOf(needle) >= 0) return 45;
        return -1;
    }

    private static ArrayList<String> readSearchHistory(Context context) {
        ArrayList<String> out = new ArrayList<String>();
        try {
            String raw = context.getSharedPreferences(SEARCH_PREFS, Context.MODE_PRIVATE)
                    .getString(SEARCH_HISTORY_KEY, "");
            if (raw == null || raw.length() == 0) {
                return out;
            }
            String[] parts = raw.split("\\|");
            for (String part : parts) {
                if (part != null && part.length() > 0 && !out.contains(part)) {
                    out.add(part);
                }
            }
        } catch (Throwable ignored) {
        }
        return out;
    }

    private static void recordSearchHistory(Context context, SearchEntry entry) {
        if (context == null || entry == null) {
            return;
        }
        try {
            ArrayList<String> history = readSearchHistory(context);
            history.remove(entry.key);
            history.add(0, entry.key);
            while (history.size() > 16) {
                history.remove(history.size() - 1);
            }
            StringBuilder raw = new StringBuilder();
            for (int i = 0; i < history.size(); i++) {
                if (i > 0) {
                    raw.append('|');
                }
                raw.append(history.get(i));
            }
            context.getSharedPreferences(SEARCH_PREFS, Context.MODE_PRIVATE).edit()
                    .putString(SEARCH_HISTORY_KEY, raw.toString()).apply();
        } catch (Throwable ignored) {
        }
    }

    private static void clearSearchHistory(Context context) {
        if (context == null) {
            return;
        }
        try {
            context.getSharedPreferences(SEARCH_PREFS, Context.MODE_PRIVATE).edit()
                    .remove(SEARCH_HISTORY_KEY).apply();
        } catch (Throwable ignored) {
        }
    }

    private static void downloadQuickSearchApk(final Context context) {
        File baseDir = null;
        try {
            baseDir = context.getExternalCacheDir();
        } catch (Throwable ignored) {
        }
        if (baseDir == null) {
            baseDir = context.getFilesDir();
        }
        File dir = new File(baseDir, "downloaded_apps");
        if (!dir.exists()) {
            dir.mkdirs();
        }
        final File out = new File(dir, "SmartisanQuickSearch.apk");
        try {
            if (out.exists()) {
                out.delete();
            }
        } catch (Throwable ignored) {
        }
        Toast.makeText(context, "开始下载内置搜索...", Toast.LENGTH_SHORT).show();
        notifyUpdateDownload(context, "正在下载内置搜索...", -1, false);
        final Handler handler = new Handler(Looper.getMainLooper());
        final UpdateDownloadProgress ui = context instanceof Activity
                ? showApkDownloadProgress((Activity) context, "内置搜索", "正在下载内置搜索...")
                : null;
        new Thread(new Runnable() {
            public void run() {
                HttpURLConnection conn = null;
                InputStream input = null;
                FileOutputStream output = null;
                try {
                    conn = openDownloadConnection(QUICK_SEARCH_DOWNLOAD_URL);
                    int code = conn.getResponseCode();
                    if (code < 200 || code >= 300) {
                        throw new IllegalStateException("HTTP " + code);
                    }
                    long total = conn.getContentLength();
                    input = conn.getInputStream();
                    output = new FileOutputStream(out);
                    byte[] buffer = new byte[32768];
                    long downloaded = 0;
                    long lastUpdate = 0;
                    int read;
                    while ((read = input.read(buffer)) != -1) {
                        output.write(buffer, 0, read);
                        downloaded += read;
                        long now = System.currentTimeMillis();
                        if (now - lastUpdate > 300) {
                            lastUpdate = now;
                            final int percent = total > 0
                                    ? (int) Math.min(100, Math.max(0, (downloaded * 100L) / total))
                                    : -1;
                            handler.post(new Runnable() {
                                public void run() {
                                    String message = percent >= 0
                                            ? "正在下载内置搜索... " + percent + "%"
                                            : "正在下载内置搜索...";
                                    updateUpdateProgressUi(context instanceof Activity ? (Activity) context : null,
                                            ui, message, percent);
                                    notifyUpdateDownload(context, message, percent, false);
                                }
                            });
                        }
                    }
                    output.flush();
                    try {
                        out.setReadable(true, false);
                    } catch (Throwable ignored) {
                    }
                    handler.post(new Runnable() {
                        public void run() {
                            dismissUpdateDownloadProgress(ui);
                            notifyUpdateDownload(context, "内置搜索下载完成，正在启动安装...", 100, true);
                            Toast.makeText(context, "内置搜索下载完成，正在启动安装...", Toast.LENGTH_LONG).show();
                            installApkFile(context, out);
                        }
                    });
                } catch (final Throwable t) {
                    try {
                        if (out.exists()) {
                            out.delete();
                        }
                    } catch (Throwable ignored) {
                    }
                    handler.post(new Runnable() {
                        public void run() {
                            dismissUpdateDownloadProgress(ui);
                            cancelUpdateNotification(context);
                            Toast.makeText(context, "内置搜索下载失败: " + shortError(t), Toast.LENGTH_LONG).show();
                        }
                    });
                } finally {
                    try {
                        if (output != null) output.close();
                    } catch (Throwable ignored) {
                    }
                    try {
                        if (input != null) input.close();
                    } catch (Throwable ignored) {
                    }
                    if (conn != null) {
                        conn.disconnect();
                    }
                }
            }
        }, "quick-search-download").start();
    }

    private static void copyAssetToFile(Context context, String assetName, File out) throws Exception {
        InputStream input = null;
        FileOutputStream output = null;
        try {
            input = context.getAssets().open(assetName);
            output = new FileOutputStream(out);
            byte[] buffer = new byte[32768];
            int read;
            while ((read = input.read(buffer)) != -1) {
                output.write(buffer, 0, read);
            }
            output.flush();
        } finally {
            try {
                if (output != null) output.close();
            } catch (Throwable ignored) {
            }
            try {
                if (input != null) input.close();
            } catch (Throwable ignored) {
            }
        }
    }

    private static boolean isPackageInstalled(PackageManager pm, String packageName) {
        try {
            pm.getPackageInfo(packageName, 0);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void bindMainSettingIcon(Resources resources, View root, String viewName, String drawableName) {
        bindMainSettingIcon(resources, root, viewName, drawableName, false);
    }

    private static void bindMainSettingIcon(Resources resources, View root, String viewName, String drawableName, boolean framed) {
        View item = find(resources, root, viewName);
        int drawableId = resources.getIdentifier(drawableName, "drawable", SETTINGS_PKG);
        if (item instanceof SettingItemTextVertical && drawableId != 0) {
            SettingItemTextVertical settingItem = (SettingItemTextVertical) item;
            if (framed) {
                settingItem.setIconFrameVisible(false);
                settingItem.setPreviewIconBitmap(thumbnailFramedPreviewBitmap(resources, drawableBitmap(resources, drawableId)));
            } else {
                settingItem.setIconResource(drawableId);
            }
        }
    }

    public static Drawable iconOverrideDrawable(ResolveInfo info, PackageManager pm) {
        try {
            Context context = currentApplicationContext();
            if (context == null || !shouldShowIconEntry(info)) {
                return null;
            }
            SettingsResourceContext settings = createSettingsContext(context);
            Resources resources = settings.getResources();
            CharSequence label = null;
            try {
                label = info == null ? null : info.loadLabel(pm);
            } catch (Throwable ignored) {
            }
            return selectedIconDrawable(context, info, label, resources);
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static Drawable loadIcon(ResolveInfo info, PackageManager pm) {
        if (info == null || pm == null) {
            return null;
        }
        if (isOriginalIconForced(info)) {
            try {
                return normalizeLauncherIcon(info.loadIcon(pm));
            } catch (Throwable ignored) {
                return null;
            }
        }
        try {
            Drawable override = iconOverrideDrawable(info, pm);
            if (override != null) {
                return normalizeLauncherIcon(override);
            }
        } catch (Throwable ignored) {
        }
        try {
            return normalizeLauncherIcon(info.loadIcon(pm));
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static Bundle launcherIconBundle(Context context, Bundle extras) {
        Bundle result = new Bundle();
        if (context == null || extras == null) {
            return result;
        }
        try {
            String packageName = extras.getString("key_pkg");
            if (TextUtils.isEmpty(packageName)) {
                java.util.ArrayList<String> packages = extras.getStringArrayList("key_pkg_arraylist");
                if (packages != null && !packages.isEmpty()) {
                    packageName = packages.get(0);
                }
            }
            if (TextUtils.isEmpty(packageName)) {
                return result;
            }

            PackageManager pm = context.getPackageManager();
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            intent.setPackage(packageName);
            java.util.List<ResolveInfo> matches = pm.queryIntentActivities(intent, 0);
            if (matches == null || matches.isEmpty()) {
                return result;
            }

            ResolveInfo best = null;
            for (ResolveInfo info : matches) {
                if (info != null && info.activityInfo != null
                        && packageName.equals(info.activityInfo.packageName)) {
                    best = info;
                    break;
                }
            }
            if (best == null) {
                best = matches.get(0);
            }

            Drawable icon = null;
            if (!isOriginalIconForced(best) && shouldShowIconEntry(best)) {
                try {
                    SettingsResourceContext settings = createSettingsContext(context);
                    CharSequence label = best.loadLabel(pm);
                    icon = selectedIconDrawable(context, best, label, settings.getResources());
                } catch (Throwable ignored) {
                }
            }
            if (icon == null) {
                icon = best.loadIcon(pm);
            }
            icon = normalizeLauncherIcon(icon);
            Bitmap bitmap = drawableToBitmapForBadge(icon);
            if (bitmap == null) {
                return result;
            }
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, out);
            result.putByteArray("key_icon_png", out.toByteArray());
        } catch (Throwable ignored) {
        }
        return result;
    }

    public static Drawable normalizeLauncherIcon(Drawable icon) {
        return normalizeIconVisibleBounds(icon);
    }

    /**
     * Kept for the smali/API compatibility of older builds. All icon sources
     * now go through the same normalizer; replacement icons must not have a
     * separate size rule from package-manager icons.
     */
    public static Drawable normalizeImprovedIcon(Drawable icon) {
        return normalizeIconVisibleBounds(icon);
    }

    /**
     * Normalize the alpha-visible artwork instead of only the drawable canvas.
     * Android 16 applications commonly ship adaptive/legacy icons with very
     * different transparent margins. Scaling both down and up to one target
     * keeps original, improved and custom icons optically consistent.
     */
    private static Drawable normalizeIconVisibleBounds(Drawable icon) {
        if (icon == null) {
            return null;
        }
        try {
            Bitmap source = drawableToBitmapForBadge(icon);
            int width = source.getWidth();
            int height = source.getHeight();
            if (width <= 0 || height <= 0) {
                return icon;
            }

            int left = width;
            int top = height;
            int right = -1;
            int bottom = -1;
            int[] row = new int[width];
            for (int y = 0; y < height; y++) {
                source.getPixels(row, 0, width, 0, y, width, 1);
                for (int x = 0; x < width; x++) {
                    if ((row[x] >>> 24) > 8) {
                        if (x < left) left = x;
                        if (x > right) right = x;
                        if (y < top) top = y;
                        if (y > bottom) bottom = y;
                    }
                }
            }
            if (right < left || bottom < top) {
                return icon;
            }

            float visible = Math.max(right - left + 1, bottom - top + 1);
            float target = Math.min(width, height) * 0.90f;
            float scale = target / visible;
            // Avoid amplifying a tiny stray alpha pixel into a full-size icon.
            scale = Math.max(0.70f, Math.min(1.50f, scale));
            if (scale >= 0.995f) {
                if (scale <= 1.005f) {
                    return new android.graphics.drawable.BitmapDrawable(Resources.getSystem(), source);
                }
            }

            Bitmap output = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(output);
            Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
            float cx = (left + right + 1) * 0.5f;
            float cy = (top + bottom + 1) * 0.5f;
            float targetCx = width * 0.5f;
            float targetCy = height * 0.5f;
            canvas.translate(targetCx, targetCy);
            canvas.scale(scale, scale);
            canvas.translate(-cx, -cy);
            canvas.drawBitmap(source, 0f, 0f, paint);
            source.recycle();
            return new android.graphics.drawable.BitmapDrawable(Resources.getSystem(), output);
        } catch (Throwable ignored) {
            return icon;
        }
    }

    public static Drawable doppelgangerBadgeDrawable(Drawable original, PackageManager pm, Drawable systemBadged) {
        try {
            if (original == null) {
                return systemBadged;
            }
            Bitmap bitmap = drawableToBitmapForBadge(original);
            if (bitmap == null) {
                return original;
            }
            Bitmap badged = drawDoppelgangerBadge(bitmap);
            return badged == null ? original : new android.graphics.drawable.BitmapDrawable(null, badged);
        } catch (Throwable ignored) {
            return systemBadged == null ? original : systemBadged;
        }
    }

    public static Bitmap doppelgangerBitmap(Bitmap bitmap) {
        try {
            return bitmap == null ? null : drawDoppelgangerBadge(bitmap);
        } catch (Throwable ignored) {
            return bitmap;
        }
    }

    public static byte[] doppelgangerIconBytes(byte[] data, int userId) {
        if (data == null || !isDoppelgangerUserId(userId)) {
            return data;
        }
        ByteArrayOutputStream out = null;
        try {
            Bitmap bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
            Bitmap badged = doppelgangerBitmap(bitmap);
            if (badged == null || badged == bitmap) {
                return data;
            }
            out = new ByteArrayOutputStream();
            badged.compress(Bitmap.CompressFormat.PNG, 100, out);
            return out.toByteArray();
        } catch (Throwable ignored) {
            return data;
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static Bitmap drawableToBitmapForBadge(Drawable drawable) {
        int width = drawable.getIntrinsicWidth();
        int height = drawable.getIntrinsicHeight();
        if (width <= 0) {
            width = 96;
        }
        if (height <= 0) {
            height = width;
        }
        Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Rect oldBounds = new Rect(drawable.getBounds());
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        drawable.setBounds(oldBounds);
        return bitmap;
    }

    private static Bitmap drawDoppelgangerBadge(Bitmap base) {
        int width = base.getWidth();
        int height = base.getHeight();
        if (width <= 0 || height <= 0) {
            return base;
        }
        Bitmap out = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(out);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.DITHER_FLAG);
        canvas.drawBitmap(base, 0, 0, paint);

        float size = Math.max(14f, Math.min(width, height) * 0.23f);
        float left = Math.max(1f, width * 0.06f);
        float top = height - size - Math.max(1f, height * 0.12f);
        RectF shield = new RectF(left, top, left + size, top + size);
        float radius = size * 0.20f;

        paint.setStyle(Paint.Style.FILL);
        paint.setColor(0x33000000);
        canvas.drawRoundRect(new RectF(shield.left + 1f, shield.top + 1.5f,
                shield.right + 1f, shield.bottom + 1.5f), radius, radius, paint);
        paint.setColor(0xff2b3036);
        canvas.drawRoundRect(shield, radius, radius, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(Math.max(1.2f, size * 0.08f));
        paint.setColor(0xffffffff);
        canvas.drawRoundRect(shield, radius, radius, paint);

        RectF inner = new RectF(shield.left + size * 0.12f, shield.top + size * 0.12f,
                shield.right - size * 0.12f, shield.bottom - size * 0.12f);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(0xffffffff);
        canvas.drawCircle(inner.left + size * 0.25f, inner.top + size * 0.35f, size * 0.055f, paint);
        canvas.drawCircle(inner.left + size * 0.56f, inner.top + size * 0.35f, size * 0.055f, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(Math.max(1f, size * 0.055f));
        RectF smile = new RectF(inner.left + size * 0.23f, inner.top + size * 0.39f,
                inner.left + size * 0.62f, inner.top + size * 0.72f);
        canvas.drawArc(smile, 25, 130, false, paint);
        paint.setStyle(Paint.Style.FILL);
        return out;
    }

    public static boolean onActivityResult(Activity activity, int requestCode, int resultCode, Intent data) {
        if (requestCode == 10) {
            return onWallpaperPicked(activity, resultCode, data);
        }
        if (requestCode != REQUEST_PICK_CUSTOM_ICON) {
            return false;
        }
        if (activity == null || resultCode != Activity.RESULT_OK || data == null || data.getData() == null) {
            Toast.makeText(activity, "未选择图片", Toast.LENGTH_SHORT).show();
            return true;
        }
        String key = activity.getSharedPreferences(ICON_OVERRIDE_PREFS, Context.MODE_PRIVATE)
                .getString(PREF_PENDING_CUSTOM_ICON_KEY, "");
        if (key.length() == 0) {
            Toast.makeText(activity, "没有找到要替换的应用", Toast.LENGTH_SHORT).show();
            return true;
        }
        try {
            byte[] iconData = saveCustomIcon(activity, key, data.getData());
            String[] parts = splitIconKey(key);
            RedirectIconDB.updateCustomIcon(activity, parts[0], parts[1], iconData);
            activity.getSharedPreferences(ICON_OVERRIDE_PREFS, Context.MODE_PRIVATE).edit()
                    .remove(PREF_PENDING_CUSTOM_ICON_KEY).apply();
            applyIconChange(activity);
            if (!refreshIconRowInCurrentPage(activity, parts[0], parts[1])) {
                int scrollY = activity.getSharedPreferences(ICON_OVERRIDE_PREFS, Context.MODE_PRIVATE)
                        .getInt(PREF_PENDING_ICON_SCROLL_Y, 0);
                showIconPage(activity, scrollY);
            }
            Toast.makeText(activity, "已应用自定义图标", Toast.LENGTH_SHORT).show();
        } catch (Throwable t) {
            Toast.makeText(activity, "图片读取失败，换一张再试", Toast.LENGTH_SHORT).show();
        }
        return true;
    }

    private static boolean onWallpaperPicked(Activity activity, int resultCode, Intent data) {
        if (activity == null || resultCode != Activity.RESULT_OK || data == null || data.getData() == null) {
            Toast.makeText(activity, "未选择图片", Toast.LENGTH_SHORT).show();
            return true;
        }
        try {
            Uri uri = data.getData();
            try {
                int flags = data.getFlags() & (Intent.FLAG_GRANT_READ_URI_PERMISSION
                        | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
                activity.getContentResolver().takePersistableUriPermission(uri, flags);
            } catch (Throwable ignored) {
            }
            String launcherUri = saveLauncherWallpaperCopy(activity, uri);
            if (launcherUri == null || launcherUri.length() == 0) {
                launcherUri = uri.toString();
            }
            boolean systemWallpaperApplied = setWallpaperFromUri(activity, Uri.parse(launcherUri));
            if (!systemWallpaperApplied && !launcherUri.equals(uri.toString())) {
                systemWallpaperApplied = setWallpaperFromUri(activity, uri);
            }
            saveGaussianWallpaperCopy(activity, Uri.parse(launcherUri));
            String thumbPath = saveWallpaperThumbnail(activity, Uri.parse(launcherUri));
            syncLauncherWallpaperUri(activity, launcherUri);
            setLauncherWallpaperConstant(launcherUri);
            try {
                activity.getSharedPreferences(WALLPAPER_PREFS, Context.MODE_PRIVATE)
                        .edit()
                        .putString(PREF_WALLPAPER_URI, launcherUri)
                        .putString(PREF_WALLPAPER_THUMB, thumbPath == null ? "" : thumbPath)
                        .putBoolean(PREF_WALLPAPER_READY, true)
                        .commit();
            } catch (Throwable ignored) {
            }
            logOperation(activity, "WALLPAPER", "picked uri=" + launcherUri
                    + ", thumb=" + thumbPath
                    + ", setSystemWallpaper=" + systemWallpaperApplied);
            Log.d(LOG_TAG, "Wallpaper picked, set system wallpaper=" + systemWallpaperApplied
                    + ", uri=" + launcherUri);
            refreshLauncherWallpaperNow(activity);
            markWallpaperRefreshPending(activity, true);
            Toast.makeText(activity, "桌面壁纸已应用", Toast.LENGTH_SHORT).show();
            bindWallpaperSettingIcon(activity, activity.getResources(), activity.getWindow().getDecorView());
        } catch (Throwable t) {
            Toast.makeText(activity, "壁纸设置失败", Toast.LENGTH_SHORT).show();
        }
        return true;
    }

    private static boolean setWallpaperFromUri(Context context, Uri uri) {
        InputStream in = null;
        try {
            in = context.getContentResolver().openInputStream(uri);
            if (in == null) {
                return false;
            }
            WallpaperManager wallpaperManager = WallpaperManager.getInstance(context);
            if (Build.VERSION.SDK_INT >= 24) {
                try {
                    wallpaperManager.setStream(in, null, true, WallpaperManager.FLAG_SYSTEM);
                    Log.d(LOG_TAG, "set system wallpaper with FLAG_SYSTEM ok: " + uri);
                    return true;
                } catch (Throwable t) {
                    Log.w(LOG_TAG, "set system wallpaper with FLAG_SYSTEM failed, retry legacy: "
                            + shortError(t));
                    try {
                        in.close();
                    } catch (Throwable ignoredAgain) {
                    }
                    in = context.getContentResolver().openInputStream(uri);
                }
            }
            if (in == null) {
                return false;
            }
            wallpaperManager.setStream(in);
            Log.d(LOG_TAG, "set system wallpaper legacy ok: " + uri);
            return true;
        } catch (Throwable t) {
            Log.w(LOG_TAG, "set system wallpaper failed: " + shortError(t));
            return false;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static String saveWallpaperThumbnail(Context context, Uri uri) {
        Bitmap bitmap = decodeUriBitmap(context, uri, 256);
        if (bitmap == null) {
            return null;
        }
        File out = new File(context.getFilesDir(), "launcher_wallpaper_thumb_" + System.currentTimeMillis() + ".jpg");
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(out);
            bitmap.compress(Bitmap.CompressFormat.JPEG, 88, fos);
            return out.getAbsolutePath();
        } catch (Throwable ignored) {
            return null;
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (Throwable ignored) {
                }
            }
            try {
                bitmap.recycle();
            } catch (Throwable ignored) {
            }
        }
    }

    private static String saveLauncherWallpaperCopy(Context context, Uri uri) {
        InputStream in = null;
        FileOutputStream out = null;
        try {
            File file = new File(context.getFilesDir(), "launcher_wallpaper_" + System.currentTimeMillis() + ".jpg");
            in = context.getContentResolver().openInputStream(uri);
            if (in == null) {
                return null;
            }
            out = new FileOutputStream(file);
            byte[] buffer = new byte[16384];
            int read;
            while ((read = in.read(buffer)) != -1) {
                out.write(buffer, 0, read);
            }
            out.flush();
            cleanupOldWallpaperCopies(context, file);
            return Uri.fromFile(file).toString();
        } catch (Throwable ignored) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static void syncLauncherWallpaperUri(Context context, String uri) {
        if (uri == null || uri.length() == 0) {
            return;
        }
        try {
            context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .edit()
                    .putString(PREF_WALLPAPER_URI, uri)
                    .putString(KEY_DESKTOP_WALLPAPER_URI, uri)
                    .putString(KEY_LOCKSCREEN_BACKGROUND, uri)
                    .commit();
        } catch (Throwable ignored) {
        }
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .edit()
                    .putString(PREF_WALLPAPER_URI, uri)
                    .putString(KEY_DESKTOP_WALLPAPER_URI, uri)
                    .putString(KEY_LOCKSCREEN_BACKGROUND, uri)
                    .commit();
        } catch (Throwable ignored) {
        }
        try {
            Settings.Global.putString(context.getContentResolver(), PREF_WALLPAPER_URI, uri);
            logOperation(context, "WALLPAPER", "settings_global_write_ok");
        } catch (Throwable t) {
            logOperation(context, "WALLPAPER", "settings_global_write_failed " + shortError(t));
        }
    }

    private static boolean isOriginalIconForced(ResolveInfo info) {
        try {
            Context context = currentApplicationContext();
            ActivityInfo ai = info == null ? null : info.activityInfo;
            if (context == null || ai == null) {
                return false;
            }
            RedirectIconInfo redirect = RedirectIconDB.getRedirectIconInfo(context, ai.packageName, ai.name);
            return redirect != null && RedirectIconDB.MODE_ORIGINAL.equals(RedirectIconDB.modeOf(redirect));
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void saveGaussianWallpaperCopy(Context context, Uri uri) {
        Bitmap bitmap = decodeUriBitmap(context, uri, 1440);
        if (bitmap == null) {
            return;
        }
        FileOutputStream out = null;
        try {
            File file = new File(context.getFilesDir(), "gaussian_wallpaper.png");
            out = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, out);
            out.flush();
        } catch (Throwable ignored) {
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable ignored) {
                }
            }
            try {
                bitmap.recycle();
            } catch (Throwable ignored) {
            }
        }
    }

    private static void cleanupOldWallpaperCopies(Context context, File keep) {
        try {
            File dir = context.getFilesDir();
            File[] files = dir == null ? null : dir.listFiles();
            if (files == null) {
                return;
            }
            long keepTime = keep == null ? 0 : keep.lastModified();
            for (int i = 0; i < files.length; i++) {
                File file = files[i];
                if (file == null || file.equals(keep)) {
                    continue;
                }
                String name = file.getName();
                if (name == null) {
                    continue;
                }
                boolean wallpaperCopy = name.startsWith("launcher_wallpaper_")
                        && !name.startsWith("launcher_wallpaper_thumb_")
                        && name.endsWith(".jpg");
                boolean oldFixedCopy = "launcher_wallpaper.jpg".equals(name);
                if ((wallpaperCopy || oldFixedCopy) && keepTime > 0 && file.lastModified() < keepTime) {
                    file.delete();
                }
            }
        } catch (Throwable ignored) {
        }
    }

    public static Bitmap decodeLauncherWallpaperBitmap(Context context, String uri) {
        if (context == null) {
            return null;
        }
        if (uri == null || uri.length() == 0) {
            uri = selectedWallpaperUri(context);
        }
        if (uri == null || uri.length() == 0) {
            return null;
        }
        return decodeUriBitmap(context, Uri.parse(uri), 1440);
    }

    public static Drawable transparentWallpaperDrawableFallback(Context context) {
        try {
            WallpaperManager manager = WallpaperManager.getInstance(context);
            if (manager != null) {
                try {
                    Drawable drawable = manager.peekDrawable();
                    if (drawable != null) {
                        return drawable;
                    }
                } catch (Throwable ignored) {
                }
                try {
                    Drawable drawable = manager.getFastDrawable();
                    if (drawable != null) {
                        return drawable;
                    }
                } catch (Throwable ignored) {
                }
            }
            Bitmap bitmap = decodeLauncherWallpaperBitmap(context, currentLauncherWallpaperUri(context));
            if (bitmap == null) {
                return null;
            }
            Bitmap cropped = centerCropToScreen(context, bitmap);
            return new BitmapDrawable(context.getResources(), cropped == null ? bitmap : cropped);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Bitmap centerCropToScreen(Context context, Bitmap source) {
        if (context == null || source == null || source.isRecycled()) {
            return source;
        }
        int width = 0;
        int height = 0;
        try {
            Point point = new Point();
            WindowManager manager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
            if (manager != null && manager.getDefaultDisplay() != null) {
                manager.getDefaultDisplay().getRealSize(point);
                width = point.x;
                height = point.y;
            }
        } catch (Throwable ignored) {
        }
        if (width <= 0 || height <= 0) {
            try {
                width = context.getResources().getDisplayMetrics().widthPixels;
                height = context.getResources().getDisplayMetrics().heightPixels;
            } catch (Throwable ignored) {
            }
        }
        if (width <= 0 || height <= 0 || source.getWidth() <= 0 || source.getHeight() <= 0) {
            return source;
        }
        float scale = Math.max(width / (float) source.getWidth(), height / (float) source.getHeight());
        int scaledWidth = Math.round(source.getWidth() * scale);
        int scaledHeight = Math.round(source.getHeight() * scale);
        Rect src = new Rect(0, 0, source.getWidth(), source.getHeight());
        RectF dst = new RectF((width - scaledWidth) / 2f, (height - scaledHeight) / 2f,
                (width + scaledWidth) / 2f, (height + scaledHeight) / 2f);
        Bitmap result = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(result);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
        canvas.drawBitmap(source, src, dst, paint);
        return result;
    }

    public static String currentLauncherWallpaperUri(Context context) {
        return selectedWallpaperUri(context);
    }

    public static boolean isLauncherWallpaperTheme(Context context) {
        return shouldShowLauncherWallpaperSetting(context);
    }

    private static boolean shouldShowLauncherWallpaperSetting(Context context) {
        if (isTransparentThemeEnabled(context)) {
            return true;
        }
        String id = currentTheme(context);
        return "smartisan_theme_aero".equals(id);
    }

    private static Bitmap decodeUriBitmap(Context context, Uri uri, int target) {
        if (uri != null && "file".equalsIgnoreCase(uri.getScheme())) {
            try {
                BitmapFactory.Options bounds = new BitmapFactory.Options();
                bounds.inJustDecodeBounds = true;
                BitmapFactory.decodeFile(uri.getPath(), bounds);
                int sample = 1;
                int max = Math.max(bounds.outWidth, bounds.outHeight);
                while (max / sample > target * 2) {
                    sample *= 2;
                }
                BitmapFactory.Options opts = new BitmapFactory.Options();
                opts.inSampleSize = sample;
                opts.inPreferredConfig = Bitmap.Config.ARGB_8888;
                return BitmapFactory.decodeFile(uri.getPath(), opts);
            } catch (Throwable ignored) {
            }
        }
        InputStream in = null;
        try {
            BitmapFactory.Options bounds = new BitmapFactory.Options();
            bounds.inJustDecodeBounds = true;
            in = context.getContentResolver().openInputStream(uri);
            BitmapFactory.decodeStream(in, null, bounds);
            try {
                in.close();
            } catch (Throwable ignored) {
            }
            in = null;
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = sampleSize(bounds.outWidth, bounds.outHeight, target, target);
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            in = context.getContentResolver().openInputStream(uri);
            return BitmapFactory.decodeStream(in, null, options);
        } catch (Throwable ignored) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static Context currentApplicationContext() {
        try {
            Class<?> thread = Class.forName("android.app.ActivityThread");
            Object app = thread.getMethod("currentApplication").invoke(null);
            if (app instanceof Context) {
                return (Context) app;
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static void bindWallpaperSettingIcon(Context context, Resources resources, View root) {
        View item = find(resources, root, "item_id_launcher_wallpaper");
        if (item instanceof SettingItemTextVertical) {
            SettingItemTextVertical settingItem = (SettingItemTextVertical) item;
            bindIconFrame(resources, settingItem);
            settingItem.setIconFrameVisible(false);
            settingItem.setSubTitle("仅对毛玻璃 / 透明主题生效");
            Bitmap selected = selectedWallpaperThumbnail(context);
            if (selected != null) {
                settingItem.setPreviewIconBitmap(thumbnailFramedPreviewBitmap(resources, selected));
            } else {
                settingItem.setPreviewIconBitmap(thumbnailFramedPreviewBitmap(resources, wallpaperSettingBitmap(context, resources)));
            }
        }
    }

    private static void bindIconFrame(Resources resources, SettingItemTextVertical item) {
        int frameId = resources.getIdentifier("thumbnail_bg", "drawable", SETTINGS_PKG);
        if (frameId != 0) {
            item.setIconFrameResource(frameId);
        }
    }

    private static void bindCurrentThemePreviewIcon(Context context, Resources resources, View root) {
        bindCurrentThemePreviewIcon(context, resources, root, "item_id_themes");
    }

    private static void bindCurrentThemePreviewIcon(Context context, Resources resources, View root, String viewName) {
        View item = find(resources, root, viewName);
        if (item instanceof SettingItemTextVertical) {
            SettingItemTextVertical settingItem = (SettingItemTextVertical) item;
            bindIconFrame(resources, settingItem);
            settingItem.setIconFrameVisible(false);
            Bitmap bitmap = themePreviewBitmap(context, currentTheme(context));
            if (bitmap == null) {
                int drawableId = drawable(resources, readLauncherMode(context) == 20
                        ? "thumbnail_settings_16" : "thumbnail_settings");
                bitmap = drawableBitmap(resources, drawableId);
            }
            settingItem.setPreviewIconBitmap(thumbnailFramedPreviewBitmap(resources, bitmap));
        }
    }

    private static void showThemePage(final Activity activity) {
        showThemePage(activity, -1);
    }

    private static void showThemePage(final Activity activity, final int restoreScrollY) {
        logOperation(activity, "PAGE", "show_theme, restoreScrollY=" + restoreScrollY);
        try {
            tuneWindow(activity);
            final SettingsResourceContext context = createSettingsContext(activity);
            final Resources resources = context.getResources();
            View root = inflate(activity, context, "theme_preview_gridview");
            bindBackTitle(activity, resources, root, "view_title", getString(resources, "launcher_theme_text", "桌面主题"));
            GridView installed = asGrid(find(resources, root, "installed_list"));
            final ThemePreviewAdapter installedAdapter;
            if (installed != null) {
                installedAdapter = new ThemePreviewAdapter(activity, context, resources, true);
                installed.setAdapter(installedAdapter);
                installed.setNumColumns(2);
                installed.setVerticalSpacing(0);
                installed.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
                    public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                        stopThemePagePolling();
                        sThemePageScrollY = currentScrollY(activity);
                        showThemeItemPage(activity, installedAdapter.entryAt(position));
                    }
                });
            } else {
                installedAdapter = null;
            }
            GridView notInstalled = asGrid(find(resources, root, "not_installed_list"));
            final ThemePreviewAdapter onlineAdapter;
            if (notInstalled != null) {
                onlineAdapter = new ThemePreviewAdapter(activity, context, resources, false);
                notInstalled.setAdapter(onlineAdapter);
                notInstalled.setNumColumns(2);
                notInstalled.setVerticalSpacing(0);
                notInstalled.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
                    public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                        stopThemePagePolling();
                        sThemePageScrollY = currentScrollY(activity);
                        showThemeItemPage(activity, onlineAdapter.entryAt(position));
                    }
                });
            } else {
                onlineAdapter = null;
            }

            // Start dynamic progress polling
            stopThemePagePolling();
            sThemePageHandler = new android.os.Handler(android.os.Looper.getMainLooper());
            sThemePageRunnable = new Runnable() {
                public void run() {
                    boolean hasActive = false;
                    for (ThemeEntry entry : allThemeEntries()) {
                        if (entry.local || packageInstalled(activity, entry.pkg)) continue;
                        long downloadId = activity.getSharedPreferences(THEME_DOWNLOAD_PREFS, Context.MODE_PRIVATE)
                                .getLong(entry.pkg, -1);
                        if (downloadId != -1) {
                            int status = getDownloadStatus(activity, downloadId);
                            if (status == DownloadManager.STATUS_RUNNING || status == DownloadManager.STATUS_PENDING) {
                                hasActive = true;
                            }
                        }
                    }
                    if (installedAdapter != null) installedAdapter.notifyDataSetChanged();
                    if (onlineAdapter != null) onlineAdapter.notifyDataSetChanged();

                    if (hasActive && sThemePageHandler != null) {
                        sThemePageHandler.postDelayed(this, 1000);
                    }
                }
            };
            sThemePageHandler.post(sThemePageRunnable);

            tuneScrollBars(root);
            activity.setContentView(root);
            restoreScroll(root, restoreScrollY);
        } catch (Throwable t) {
            showFailure(activity, t);
        }
    }

    private static void stopThemePagePolling() {
        if (sThemePageHandler != null && sThemePageRunnable != null) {
            sThemePageHandler.removeCallbacks(sThemePageRunnable);
            sThemePageHandler = null;
            sThemePageRunnable = null;
        }
    }

    private static void showThemeItemPage(final Activity activity, final ThemeEntry initialEntry) {
        try {
            tuneWindow(activity);
            final SettingsResourceContext context = createSettingsContext(activity);
            final Resources resources = context.getResources();
            View root = inflate(activity, context, "activity_theme_item");

            final ThemeEntry[] entries = allThemeEntries();
            final int[] selected = new int[]{Math.max(0, indexOf(entries, initialEntry))};
            final ImageView previewImg = (ImageView) find(resources, root, "theme_preview_img_large");
            final TextView btnOk = (TextView) find(resources, root, "btn_ok");
            final View btnDownload = find(resources, root, "btn_download");
            final View statusIcon = find(resources, root, "status_icon_view");
            final LinearLayout dots = (LinearLayout) find(resources, root, "horizontal_linear_layout");

            TextView btnBack = (TextView) find(resources, root, "btn_back");
            if (btnBack != null) {
                btnBack.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        showThemePage(activity, sThemePageScrollY);
                    }
                });
            }
            if (statusIcon != null) {
                statusIcon.setVisibility(View.GONE);
            }
            if (dots != null) {
                bindThemeDots(activity, context, resources, dots, entries, selected, previewImg, btnOk, btnDownload, statusIcon);
            }
            updateThemeDetail(activity, resources, entries[selected[0]], previewImg, btnOk, btnDownload, statusIcon);

            tuneScrollBars(root);
            activity.setContentView(root);
            fitThemeDetailPreview(activity, resources, root);
            centerThemeDetailPreview(resources, root);
        } catch (Throwable t) {
            showFailure(activity, t);
        }
    }

    private static void fitThemeDetailPreview(final Activity activity, final Resources resources, final View root) {
        final View preview = find(resources, root, "phone_detail_preview");
        final View title = find(resources, root, "view_title");
        final View dots = find(resources, root, "theme_color_dot_list");
        final View image = find(resources, root, "theme_preview_img_large");
        final View frame = find(resources, root, "theme_preview_bg");
        if (preview == null || title == null || dots == null || image == null || frame == null) {
            return;
        }
        root.post(new Runnable() {
            public void run() {
                try {
                    int baseW = resources.getDimensionPixelSize(
                            resources.getIdentifier("theme_preview_detail_phone_black_w", "dimen", SETTINGS_PKG));
                    int baseH = resources.getDimensionPixelSize(
                            resources.getIdentifier("theme_preview_detail_phone_black_h", "dimen", SETTINGS_PKG));
                    int availableW = Math.max(1, preview.getWidth() - dp(activity, 24));
                    int availableH = Math.max(1, dots.getTop() - title.getBottom() - dp(activity, 18));
                    float scale = Math.min(1.0f, Math.min((float) availableW / baseW, (float) availableH / baseH));
                    int targetW = Math.max(1, Math.round(baseW * scale));
                    int targetH = Math.max(1, Math.round(baseH * scale));
                    resizeView(image, targetW, targetH);
                    resizeView(frame, targetW, targetH);
                    frame.setMinimumWidth(0);
                    frame.setMinimumHeight(0);
                } catch (Throwable ignored) {
                }
            }
        });
    }

    private static void resizeView(View view, int width, int height) {
        ViewGroup.LayoutParams lp = view.getLayoutParams();
        if (lp == null) {
            return;
        }
        if (lp.width == width && lp.height == height) {
            return;
        }
        lp.width = width;
        lp.height = height;
        view.setLayoutParams(lp);
    }

    private static void centerThemeDetailPreview(final Resources resources, final View root) {
        final View preview = find(resources, root, "phone_detail_preview");
        final View title = find(resources, root, "view_title");
        final View dots = find(resources, root, "theme_color_dot_list");
        if (preview == null || title == null || dots == null) {
            return;
        }
        root.post(new Runnable() {
            public void run() {
                int top = title.getBottom();
                int bottom = dots.getTop();
                int availableHeight = bottom - top;
                int previewHeight = preview.getHeight();
                if (availableHeight <= previewHeight || previewHeight <= 0) {
                    preview.setTranslationY(0);
                    return;
                }
                int targetTop = top + (availableHeight - previewHeight) / 2;
                preview.setTranslationY(targetTop - preview.getTop());
            }
        });
    }

    private static void showWallpaperPage(final Activity activity) {
        logOperation(activity, "PAGE", "show_wallpaper");
        try {
            armSettingsClickGuard();
            tuneWindow(activity);
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = inflate(activity, context, "app_icon_settings_layout");
            bindBackTitle(activity, resources, root, "view_title", getString(resources, "launcher_wallpaper_setting_text", "桌面壁纸"));
            ListView list = asList(find(resources, root, "icons_list_view"));
            if (list != null) {
                final SimpleTextAdapter adapter = new SimpleTextAdapter(activity, resources,
                        new String[]{
                                getString(resources, "launcher_wallpaper_pick_text", "选择图片"),
                                getString(resources, "launcher_wallpaper_restore_default_text", "恢复默认壁纸")
                        },
                        new String[]{
                                "从系统图片选择器选择桌面壁纸",
                                "恢复锤子桌面内置背景"
                        });
                View wallpaperScroll = replaceSimpleListWithScroll(activity, context, resources, list, adapter,
                        new View.OnClickListener[]{
                                new View.OnClickListener() {
                                    public void onClick(View v) {
                                        pickWallpaper(activity);
                                    }
                                },
                                new View.OnClickListener() {
                                    public void onClick(View v) {
                                        restoreDefaultWallpaper(activity);
                                    }
                                }
                        });
                if (isTransparentThemeEnabled(activity)) {
                    addWallpaperBlurSwitch(activity, context, resources, wallpaperScroll);
                }
            }
            tuneScrollBars(root);
            activity.setContentView(root);
        } catch (Throwable t) {
            showFailure(activity, t);
        }
    }

    private static void addWallpaperBlurSwitch(final Activity activity, SettingsResourceContext context,
                                               Resources resources, View replacedList) {
        if (!(replacedList instanceof ViewGroup)) {
            return;
        }
        ViewGroup scroll = (ViewGroup) replacedList;
        if (scroll.getChildCount() == 0 || !(scroll.getChildAt(0) instanceof LinearLayout)) {
            return;
        }
        LinearLayout content = (LinearLayout) scroll.getChildAt(0);
        final SettingItemSwitch item = new SettingItemSwitch(context);
        item.setTitle("桌面壁纸模糊效果");
        item.setChecked(readSystemBool(activity, KEY_TRANSPARENT_WALLPAPER_BLUR, false));
        setBackground(item, resources, "selector_setting_sub_item_bg_single");
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, dp(context, 72));
        lp.topMargin = dp(context, 12);
        content.addView(item, lp);
        View.OnClickListener listener = new View.OnClickListener() {
            public void onClick(View v) {
                boolean next = !item.isChecked();
                item.setCheckedAnimated(next);
                writeOriginalBoolIntSetting(activity, KEY_TRANSPARENT_WALLPAPER_BLUR, next);
                applyTransparentWallpaperBlur(activity);
            }
        };
        item.setOnClickListener(listener);
        if (item.getSwitch() != null) {
            item.getSwitch().setClickable(true);
            item.getSwitch().setOnTouchListener(new View.OnTouchListener() {
                public boolean onTouch(View v, MotionEvent event) {
                    if (event.getAction() == MotionEvent.ACTION_UP) {
                        boolean next = !item.isChecked();
                        item.setCheckedAnimated(next);
                        writeOriginalBoolIntSetting(activity, KEY_TRANSPARENT_WALLPAPER_BLUR, next);
                        applyTransparentWallpaperBlur(activity);
                    }
                    return true;
                }
            });
        }
    }

    private static void showPageFlipPage(final Activity activity) {
        try {
            tuneWindow(activity);
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            
            View root = inflate(activity, context, "launcher_anim_chooser_layout");
            bindBackTitle(activity, resources, root, "view_title", getString(resources, "flip_anim_title", "桌面翻页动画"));
            GridView grid = asGrid(find(resources, root, "grid_view"));
            if (grid != null) {
                final PageFlipAdapter adapter = new PageFlipAdapter(activity, context, resources);
                grid.setNumColumns(2);
                grid.setVerticalSpacing(0);
                grid.setHorizontalSpacing(0);
                grid.setPadding(dp(activity, 24), dp(activity, 50), dp(activity, 24), 0);
                grid.setClipToPadding(false);
                grid.setAdapter(adapter);
                grid.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
                    public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                        if (position >= 0 && position < adapter.getCount()) {
                            adapter.setSelected(position);
                            savePageAnimation(activity, adapter.valueAt(position));
                        }
                    }
                });
            }
            tuneScrollBars(root);
            activity.setContentView(root);
        } catch (Throwable t) {
            showFailure(activity, t);
        }
    }

    private static void showIconPage(final Activity activity) {
        showIconPage(activity, -1);
    }

    private static void showIconPage(final Activity activity, int restoreScrollY) {
        try {
            sRestoreIconPageScrollY = restoreScrollY;
            tuneWindow(activity);
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = inflate(activity, context, "app_icon_settings_layout");
            bindBackTitle(activity, resources, root, "view_title", getString(resources, "icon_setting_text", "应用图标"));
            root.setFocusableInTouchMode(true);
            root.requestFocus();
            ListView list = asList(find(resources, root, "icons_list_view"));
            if (list != null) {
                replaceIconListWithScroll(activity, context, resources, list);
            }
            tuneScrollBars(root);
            activity.setContentView(root);
            hideInputMethod(activity, root);
        } catch (Throwable t) {
            showFailure(activity, t);
        } finally {
            sRestoreIconPageScrollY = -1;
        }
    }

    private static ScrollView replaceSimpleListWithScroll(Activity activity, SettingsResourceContext context,
                                                    Resources resources, ListView list, SimpleTextAdapter adapter,
                                                    View.OnClickListener[] listeners) {
        ViewGroup parent = (ViewGroup) list.getParent();
        if (parent == null) {
            return null;
        }
        int index = parent.indexOfChild(list);
        ViewGroup.LayoutParams listLp = list.getLayoutParams();
        int id = list.getId();
        parent.removeView(list);
        ScrollView scroll = new ScrollView(context);
        scroll.setId(id);
        scroll.setFillViewport(false);
        scroll.setFocusable(false);
        scroll.setVerticalScrollBarEnabled(false);
        scroll.setOverScrollMode(View.OVER_SCROLL_NEVER);
        LinearLayout content = new LinearLayout(context);
        content.setOrientation(LinearLayout.VERTICAL);
        for (int i = 0; i < adapter.getCount(); i++) {
            View row = adapter.getView(i, null, content);
            if (listeners != null && i < listeners.length && listeners[i] != null) {
                row.setClickable(true);
                row.setOnClickListener(guardedSettingsClick("list_row_" + i, listeners[i]));
            }
            content.addView(row);
        }
        scroll.addView(content, new ScrollView.LayoutParams(-1, -2));
        parent.addView(scroll, index, listLp);
        if (sRestoreIconPageScrollY > 0) {
            final ScrollView target = scroll;
            final int scrollY = sRestoreIconPageScrollY;
            target.post(new Runnable() {
                public void run() {
                    target.scrollTo(0, scrollY);
                }
            });
        }
        return scroll;
    }

    private static void replaceIconListWithScroll(Activity activity, SettingsResourceContext context,
                                                  Resources resources, ListView list) {
        ViewGroup parent = (ViewGroup) list.getParent();
        if (parent == null) {
            return;
        }
        int index = parent.indexOfChild(list);
        ViewGroup.LayoutParams listLp = list.getLayoutParams();
        int id = list.getId();
        parent.removeView(list);

        ScrollView scroll = new ScrollView(context);
        scroll.setId(id);
        scroll.setFillViewport(false);
        scroll.setFocusable(false);
        scroll.setFocusableInTouchMode(false);
        scroll.setVerticalScrollBarEnabled(false);
        scroll.setHorizontalScrollBarEnabled(false);
        scroll.setOverScrollMode(View.OVER_SCROLL_NEVER);

        LinearLayout content = new LinearLayout(context);
        content.setOrientation(LinearLayout.VERTICAL);
        content.addView(iconPageHeader(activity, context, resources));
        final TextView loading = text(context, "正在加载应用图标...", 16, 0xff9d9fa6, false);
        loading.setGravity(Gravity.CENTER);
        content.addView(loading, new LinearLayout.LayoutParams(-1, dp(context, 88)));
        scroll.addView(content, new ScrollView.LayoutParams(-1, -2));
        parent.addView(scroll, index, listLp);
        final Activity targetActivity = activity;
        final SettingsResourceContext targetContext = context;
        final Resources targetResources = resources;
        final LinearLayout targetContent = content;
        final ScrollView targetScroll = scroll;
        final int restoreY = sRestoreIconPageScrollY;
        new Thread(new Runnable() {
            public void run() {
                final List<RedirectIconInfo> entries = AppIconAdapter.loadEntries(targetActivity);
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    public void run() {
                        try {
                            AppIconAdapter adapter = new AppIconAdapter(targetActivity, targetContext, targetResources, entries);
                            targetContent.removeView(loading);
                            int count = adapter.getCount();
                            for (int i = 0; i < count; i++) {
                                targetContent.addView(adapter.getView(i, null, targetContent));
                            }
                            targetContent.addView(iconPageFooter(targetActivity, targetContext, targetResources));
                            if (restoreY > 0) {
                                targetScroll.post(new Runnable() {
                                    public void run() {
                                        targetScroll.scrollTo(0, restoreY);
                                    }
                                });
                            }
                        } catch (Throwable ignored) {
                            loading.setText("应用图标加载失败");
                        }
                    }
                });
            }
        }, "smartisan-icon-list-loader").start();
    }

    private static void bindBackTitle(final Activity activity, Resources resources, View root, String idName, String titleText) {
        TextView btnBack = (TextView) find(resources, root, "btn_back");
        if (btnBack != null) {
            btnBack.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    stopThemePagePolling();
                    show(activity, sMainSettingsScrollY);
                }
            });
        }
        TextView tvTitle = (TextView) find(resources, root, "tv_title");
        if (tvTitle != null) {
            tvTitle.setText(titleText);
        }
        View title = find(resources, root, idName);
        if (title instanceof Title) {
            Title smartisanTitle = (Title) title;
            smartisanTitle.setTitle(titleText);
            smartisanTitle.setBackClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    show(activity, sMainSettingsScrollY);
                }
            });
        }
    }

    private static GridView asGrid(View view) {
        return view instanceof GridView ? (GridView) view : null;
    }

    private static ListView asList(View view) {
        return view instanceof ListView ? (ListView) view : null;
    }

    private static void restoreScroll(final View root, final int scrollY) {
        if (root == null || scrollY < 0) {
            return;
        }
        final ViewTreeObserver observer = root.getViewTreeObserver();
        if (observer == null || !observer.isAlive()) {
            root.post(new Runnable() {
                public void run() {
                    ScrollView scrollView = firstScrollView(root);
                    if (scrollView != null) {
                        scrollView.scrollTo(0, scrollY);
                    }
                }
            });
            return;
        }
        observer.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
            public boolean onPreDraw() {
                ViewTreeObserver currentObserver = root.getViewTreeObserver();
                if (currentObserver != null && currentObserver.isAlive()) {
                    currentObserver.removeOnPreDrawListener(this);
                }
                ScrollView scrollView = firstScrollView(root);
                if (scrollView != null) {
                    scrollView.scrollTo(0, scrollY);
                }
                return true;
            }
        });
    }

    private static void tuneScrollBars(View view) {
        if (view == null) {
            return;
        }
        view.setVerticalScrollBarEnabled(false);
        view.setHorizontalScrollBarEnabled(false);
        view.setOverScrollMode(View.OVER_SCROLL_NEVER);
        if (view instanceof AbsListView) {
            AbsListView list = (AbsListView) view;
            list.setFastScrollEnabled(false);
            list.setFastScrollAlwaysVisible(false);
            list.setSmoothScrollbarEnabled(false);
            list.setScrollingCacheEnabled(false);
            list.setTextFilterEnabled(false);
            list.clearTextFilter();
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                tuneScrollBars(group.getChildAt(i));
            }
        }
    }

    private static void hideInputMethod(Activity activity, View focusView) {
        try {
            Window window = activity.getWindow();
            window.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN
                    | WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);
            Object service = activity.getSystemService(Context.INPUT_METHOD_SERVICE);
            if (service instanceof InputMethodManager) {
                View target = focusView == null ? window.getDecorView() : focusView;
                ((InputMethodManager) service).hideSoftInputFromWindow(target.getWindowToken(), 0);
            }
        } catch (Throwable ignored) {
        }
    }

    private static String getString(Resources resources, String name, String fallback) {
        int id = resources.getIdentifier(name, "string", SETTINGS_PKG);
        return id == 0 ? fallback : resources.getString(id);
    }

    private static int drawable(Resources resources, String name) {
        if (name == null) {
            return 0;
        }
        return resources.getIdentifier(name, "drawable", SETTINGS_PKG);
    }

    private static void pickWallpaper(Activity activity) {
        if (isSettingsClickGuardActive("pick_wallpaper")) {
            return;
        }
        logOperation(activity, "ACTION", "pick_wallpaper");
        Log.d(LOG_TAG, "pickWallpaper requested by user");
        Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
        intent.setType("image/*");
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        try {
            activity.startActivityForResult(intent, 10);
        } catch (Throwable t) {
            Toast.makeText(activity, "当前没有可用的图片选择器", Toast.LENGTH_SHORT).show();
        }
    }

    private static void bindGrid(final Activity activity, Resources resources, View root) {
        final PreviewSettingItemView grid12 = asPreview(find(resources, root, "smartisan_launcher_9_grids"));
        final PreviewSettingItemView grid20 = asPreview(find(resources, root, "smartisan_launcher_16_grids"));
        if (grid12 == null || grid20 == null) {
            return;
        }
        grid12.setTitleText("十二宫格");
        grid20.setTitleText("二十宫格");
        grid12.setPreviewResource(drawable(resources, "grids_9_preview_normal"));
        grid20.setPreviewResource(drawable(resources, "grids_16_preview_normal"));
        updateGridChecks(activity, grid12, grid20);
        grid12.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                confirmLauncherMode(activity, 12);
            }
        });
        grid20.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                confirmLauncherMode(activity, 20);
            }
        });
    }

    private static PreviewSettingItemView asPreview(View view) {
        return view instanceof PreviewSettingItemView ? (PreviewSettingItemView) view : null;
    }

    private static Bitmap gridPreviewBitmap(boolean twenty) {
        int width = 222;
        int height = 368;
        Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.DITHER_FLAG);
        int cols = twenty ? 4 : 3;
        int rows = twenty ? 5 : 4;
        int top = 26;
        int bottomBar = 54;
        int gap = 7;
        int side = 14;
        int cell = Math.min((width - side * 2 - gap * (cols - 1)) / cols,
                (height - top - bottomBar - gap * (rows - 1) - 4) / rows);
        int gridW = cell * cols + gap * (cols - 1);
        int gridH = cell * rows + gap * (rows - 1);
        int left = (width - gridW) / 2;
        paint.setColor(0xffd3d5d8);
        canvas.drawRect(left, top - 13, left + gridW, top, paint);
        paint.setColor(0xfff6f6f6);
        for (int r = 0; r < rows; r++) {
            for (int c = 0; c < cols; c++) {
                int x = left + c * (cell + gap);
                int y = top + r * (cell + gap);
                canvas.drawRect(x, y, x + cell, y + cell, paint);
                paint.setColor(0xffd4d6d9);
                float dot = Math.max(12, cell * 0.32f);
                float cx = x + cell * 0.5f;
                float cy = y + cell * 0.5f;
                canvas.drawRoundRect(cx - dot / 2, cy - dot / 2, cx + dot / 2, cy + dot / 2, 4f, 4f, paint);
                paint.setColor(0xfff6f6f6);
            }
        }
        int dockTop = top + gridH + gap;
        paint.setColor(0xffd0d2d5);
        canvas.drawRect(left, dockTop, left + gridW, dockTop + bottomBar, paint);
        paint.setColor(0xffffffff);
        int dockCols = cols;
        int dockGap = Math.max(7, gap + 3);
        int dockCell = Math.max(24, (gridW - dockGap * (dockCols + 1)) / dockCols);
        for (int i = 0; i < dockCols; i++) {
            int x = left + dockGap + i * (dockCell + dockGap);
            int y = dockTop + (bottomBar - dockCell) / 2;
            canvas.drawRect(x, y, x + dockCell, y + dockCell, paint);
        }
        return bitmap;
    }

    private static void updateGridChecks(Context context, PreviewSettingItemView grid12, PreviewSettingItemView grid20) {
        int mode = readLauncherMode(context);
        grid12.setCheckedState(mode != 20);
        grid20.setCheckedState(mode == 20);
    }

    private static void bindSwitch(final Context context, Resources resources, View root, String idName, final String key, boolean def) {
        View view = find(resources, root, idName);
        if (!(view instanceof SettingItemSwitch)) {
            return;
        }
        final SettingItemSwitch item = (SettingItemSwitch) view;
        item.setChecked(readSystemBool(context, key, def));
        item.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                toggleBoundSwitch(context, item, key);
            }
        });
        if (item.getSwitch() != null) {
            item.getSwitch().setClickable(true);
            item.getSwitch().setOnTouchListener(new View.OnTouchListener() {
                public boolean onTouch(View v, MotionEvent event) {
                    if (event.getAction() == MotionEvent.ACTION_UP) {
                        toggleBoundSwitch(context, item, key);
                    }
                    return true;
                }
            });
        }
    }

    private static void bindTransparentThemeSwitch(final Activity activity, Resources resources, View root) {
        View view = find(resources, root, "item_id_transparent_theme");
        if (!(view instanceof SettingItemSwitch)) {
            return;
        }
        final SettingItemSwitch item = (SettingItemSwitch) view;
        item.setChecked(isTransparentThemeEnabled(activity));
        View.OnClickListener listener = new View.OnClickListener() {
            public void onClick(View v) {
                toggleTransparentTheme(activity, item);
            }
        };
        item.setOnClickListener(listener);
        if (item.getSwitch() != null) {
            item.getSwitch().setClickable(true);
            item.getSwitch().setOnTouchListener(new View.OnTouchListener() {
                public boolean onTouch(View v, MotionEvent event) {
                    if (event.getAction() == MotionEvent.ACTION_UP) {
                        toggleTransparentTheme(activity, item);
                    }
                    return true;
                }
            });
        }
    }

    private static void toggleTransparentTheme(Activity activity, SettingItemSwitch item) {
        boolean next = !readTransparentModeSetting(activity);
        if (next && !packageInstalled(activity, "com.smartisanos.launcher.theme.trans")) {
            item.setChecked(false);
            Toast.makeText(activity, "透明主题包未安装", Toast.LENGTH_SHORT).show();
            return;
        }
        item.setCheckedAnimated(next);
        applyTransparentThemeSetting(activity, next, true);
    }

    private static boolean isTransparentThemeEnabled(Context context) {
        return readTransparentModeSetting(context);
    }

    private static void applyTransparentThemeSetting(Context context) {
        applyTransparentThemeRuntimeFlags(context);
    }

    private static void applyTransparentThemeSetting(Activity activity, boolean transparent, boolean animate) {
        String targetTheme;
        if (transparent) {
            ensureTransparentThemeRegistered(activity);
            forceDefaultPageAnimation(activity);
            String current = currentTheme(activity);
            if (!"smartisan_theme_trans".equals(current)) {
                saveTransparentPreviousTheme(activity, current);
            }
            targetTheme = current;
            if (targetTheme == null || targetTheme.length() == 0 || "smartisan_theme_trans".equals(targetTheme)) {
                targetTheme = readTransparentPreviousTheme(activity);
            }
            if (targetTheme == null || targetTheme.length() == 0 || "smartisan_theme_trans".equals(targetTheme)) {
                targetTheme = "smartisan_theme_black";
            }
        } else {
            writeOriginalBoolIntSetting(activity, KEY_TRANSPARENT_WALLPAPER_BLUR, false);
            targetTheme = readTransparentPreviousTheme(activity);
            if (targetTheme == null || targetTheme.length() == 0 || "smartisan_theme_trans".equals(targetTheme)) {
                targetTheme = "smartisan_theme_black";
            }
        }
        writeTransparentModeSetting(activity, transparent);
        if (!transparent) {
            storeThemeSelection(activity, targetTheme);
        }
        if (transparent) {
            ensureTransparentThemeRegistered(activity);
        }
        applyTransparentThemeRuntimeFlags(activity, transparent);
        Toast.makeText(activity, transparent ? "正在应用透明主题" : "正在恢复桌面主题", Toast.LENGTH_SHORT).show();
        if (animate) {
            restartLauncher(activity);
        } else {
            reloadOriginalSettings(activity);
            rebuildLauncherLayoutForIconSize();
            applyIconChange(activity);
        }
    }

    private static void applyTransparentThemeRuntimeFlags(Context context) {
        applyTransparentThemeRuntimeFlags(context, isTransparentThemeEnabled(context));
    }

    private static void applyTransparentThemeRuntimeFlags(Context context, boolean transparent) {
        boolean blur = transparent && readSystemBool(context, KEY_TRANSPARENT_WALLPAPER_BLUR, false);
        if (transparent) {
            ensureTransparentThemeRegistered(context);
        }
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            constants.getField("isTransparentTheme").setBoolean(null, transparent);
            constants.getField("isTransWallpaperBlur").setBoolean(null, blur);
        } catch (Throwable ignored) {
        }
        notifyOriginalConfigChanged(KEY_TRANSPARENT_THEME_ENABLED);
        notifyOriginalConfigChanged(KEY_TRANSPARENT_WALLPAPER_BLUR);
        reloadOriginalSettings(context);
        rebuildLauncherLayoutForIconSize();
        applyIconChange(context);
    }

    private static void applyTransparentWallpaperBlur(Context context) {
        boolean transparent = isTransparentThemeEnabled(context);
        boolean blur = transparent && readSystemBool(context, KEY_TRANSPARENT_WALLPAPER_BLUR, false);
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            constants.getField("isTransWallpaperBlur").setBoolean(null, blur);
        } catch (Throwable ignored) {
        }
        notifyOriginalConfigChanged(KEY_TRANSPARENT_WALLPAPER_BLUR);
        try {
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView != null) {
                mainView.getClass().getMethod("lh").invoke(mainView);
            }
        } catch (Throwable ignored) {
        }
        refreshLauncherWallpaperSurface();
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(new Runnable() {
            public void run() {
                refreshLauncherWallpaperSurface();
            }
        }, 160);
    }

    private static boolean applyThemeViaOriginalLoading(final Activity activity, boolean transparent) {
        try {
            ensureTransparentThemeRegistered(activity);
            try {
                Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
                constants.getField("isTransparentTheme").setBoolean(null, transparent);
                constants.getField("isTransWallpaperBlur").setBoolean(null,
                        transparent && readSystemBool(activity, KEY_TRANSPARENT_WALLPAPER_BLUR, false));
            } catch (Throwable ignored) {
            }
            reloadOriginalSettings(activity);
            try {
                Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
                constants.getField("isTransparentTheme").setBoolean(null, transparent);
                constants.getField("isTransWallpaperBlur").setBoolean(null,
                        transparent && readSystemBool(activity, KEY_TRANSPARENT_WALLPAPER_BLUR, false));
            } catch (Throwable ignored) {
            }
            Class<?> manager = Class.forName("com.smartisanos.launcher.theme.X");
            Method currentThemeMethod = manager.getDeclaredMethod("va", Context.class);
            currentThemeMethod.setAccessible(true);
            Object theme = currentThemeMethod.invoke(null, activity);
            if (theme == null) {
                theme = manager.getMethod("eg").invoke(null);
            }
            if (theme == null) {
                Log.w(LOG_TAG, "Original theme loading skipped: current theme is null");
                return false;
            }
            Log.i(LOG_TAG, "Original theme loading target: " + describeTheme(theme)
                    + ", transparent=" + transparent);
            Object launcher = Class.forName("com.smartisanos.launcher.J")
                    .getMethod("getInstance").invoke(null);
            if (launcher == null) {
                Log.w(LOG_TAG, "Original theme loading skipped: launcher instance is null");
                return false;
            }
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView == null) {
                Log.w(LOG_TAG, "Original theme loading skipped: launcher view is null");
                return false;
            }
            String message = getString(activity.getResources(), "theme_changing", "Loading");
            Class<?> themeClass = Class.forName("com.smartisanos.launcher.theme.v");
            launcher.getClass()
                    .getMethod("a", themeClass, String.class)
                    .invoke(launcher, theme, message);
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                public void run() {
                    try {
                        activity.finish();
                        activity.overridePendingTransition(0, 0);
                    } catch (Throwable ignored) {
                    }
                }
            }, 120);
            return true;
        } catch (Throwable t) {
            Log.w(LOG_TAG, "Original theme loading failed", t);
            return false;
        }
    }

    private static String describeTheme(Object theme) {
        if (theme == null) {
            return "null";
        }
        try {
            Class<?> cls = theme.getClass();
            Object id = cls.getField("mId").get(theme);
            Object pkg = cls.getField("mPackage").get(theme);
            Object res = cls.getField("mResources").get(theme);
            return String.valueOf(id) + "/" + String.valueOf(pkg) + "/res=" + (res != null);
        } catch (Throwable ignored) {
            return String.valueOf(theme);
        }
    }

    private static void saveTransparentPreviousTheme(Context context, String theme) {
        if (theme == null || theme.length() == 0 || "smartisan_theme_trans".equals(theme)) {
            return;
        }
        try {
            context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .edit()
                    .putString(PREF_TRANSPARENT_PREVIOUS_THEME, theme)
                    .commit();
        } catch (Throwable ignored) {
        }
        try {
            Settings.Global.putString(context.getContentResolver(), PREF_TRANSPARENT_PREVIOUS_THEME, theme);
        } catch (Throwable ignored) {
        }
        try {
            Settings.System.putString(context.getContentResolver(), PREF_TRANSPARENT_PREVIOUS_THEME, theme);
        } catch (Throwable ignored) {
        }
    }

    private static void ensureTransparentThemeRegistered(Context context) {
        if (!packageInstalled(context, "com.smartisanos.launcher.theme.trans")) {
            return;
        }
        try {
            Class<?> themeClass = Class.forName("com.smartisanos.launcher.theme.v");
            Object theme = themeClass.getConstructor(String.class).newInstance("smartisan_theme_trans");
            themeClass.getField("mPackage").set(theme, "com.smartisanos.launcher.theme.trans");
            themeClass.getField("mName").set(theme, "透明");
            themeClass.getField("mResources").set(theme,
                    context.getPackageManager().getResourcesForApplication("com.smartisanos.launcher.theme.trans"));

            Class<?> manager = Class.forName("com.smartisanos.launcher.theme.X");
            java.lang.reflect.Field themeMapField = manager.getDeclaredField("gu");
            themeMapField.setAccessible(true);
            Object themeMapValue = themeMapField.get(null);
            if (themeMapValue instanceof Map) {
                ((Map) themeMapValue).put("smartisan_theme_trans", theme);
            }
            java.lang.reflect.Field themeListField = manager.getDeclaredField("fu");
            themeListField.setAccessible(true);
            Object themeListValue = themeListField.get(null);
            if (themeListValue instanceof List && !((List) themeListValue).contains("smartisan_theme_trans")) {
                ((List) themeListValue).add("smartisan_theme_trans");
            }
            try {
                java.lang.reflect.Field packageMapField = manager.getDeclaredField("hu");
                packageMapField.setAccessible(true);
                Object packageMapValue = packageMapField.get(null);
                if (packageMapValue instanceof Map) {
                    ((Map) packageMapValue).put("com.smartisanos.launcher.theme.trans", "smartisan_theme_trans");
                }
            } catch (Throwable ignored) {
            }
        } catch (Throwable ignored) {
        }
    }

    private static String readTransparentPreviousTheme(Context context) {
        try {
            String value = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .getString(PREF_TRANSPARENT_PREVIOUS_THEME, "");
            if (value != null && value.length() > 0 && !"smartisan_theme_trans".equals(value)) {
                return value;
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .getString(PREF_TRANSPARENT_PREVIOUS_THEME, "");
            if (value != null && value.length() > 0 && !"smartisan_theme_trans".equals(value)) {
                return value;
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.Global.getString(context.getContentResolver(), PREF_TRANSPARENT_PREVIOUS_THEME);
            if (value != null && value.length() > 0 && !"smartisan_theme_trans".equals(value)) {
                return value;
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.System.getString(context.getContentResolver(), PREF_TRANSPARENT_PREVIOUS_THEME);
            if (value != null && value.length() > 0 && !"smartisan_theme_trans".equals(value)) {
                return value;
            }
        } catch (Throwable ignored) {
        }
        try {
            return context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .getString(PREF_TRANSPARENT_PREVIOUS_THEME, "smartisan_theme_black");
        } catch (Throwable ignored) {
            return "smartisan_theme_black";
        }
    }

    private static void toggleBoundSwitch(Context context, SettingItemSwitch item, String key) {
        boolean next = !item.isChecked();
        item.setCheckedAnimated(next);
        writeBoolSetting(context, key, next);
        applyLauncherSettingChange(context, key);
    }

    private static void writeBoolSetting(Context context, String key, boolean value) {
        int intValue = value ? 1 : 0;
        try {
            Settings.System.putInt(context.getContentResolver(), key, intValue);
            Settings.System.putString(context.getContentResolver(), key, Boolean.toString(value));
        } catch (Throwable ignored) {
        }
        try {
            Settings.Global.putInt(context.getContentResolver(), key, intValue);
            Settings.Global.putString(context.getContentResolver(), key, Boolean.toString(value));
        } catch (Throwable ignored) {
        }
        context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                .edit()
                .putBoolean(key, value)
                .putInt(key + "_int", intValue)
                .commit();
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(key, value)
                    .putInt(key + "_int", intValue)
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    private static void writeOriginalBoolIntSetting(Context context, String key, boolean value) {
        int intValue = value ? 1 : 0;
        try {
            Settings.Global.putInt(context.getContentResolver(), key, intValue);
        } catch (Throwable ignored) {
        }
        try {
            if (Build.VERSION.SDK_INT < 23 || Settings.System.canWrite(context)) {
                Settings.System.putInt(context.getContentResolver(), key, intValue);
            }
        } catch (Throwable ignored) {
        }
        try {
            context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(key, value)
                    .putInt(key + "_int", intValue)
                    .commit();
        } catch (Throwable ignored) {
        }
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(key, value)
                    .putInt(key + "_int", intValue)
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    private static void writeTransparentModeSetting(Context context, boolean enabled) {
        int value = enabled ? 1 : 0;
        try {
            Settings.Global.putInt(context.getContentResolver(), KEY_TRANSPARENT_THEME_ENABLED, value);
        } catch (Throwable ignored) {
        }
        try {
            if (Build.VERSION.SDK_INT < 23 || Settings.System.canWrite(context)) {
                Settings.System.putInt(context.getContentResolver(), KEY_TRANSPARENT_THEME_ENABLED, value);
            }
        } catch (Throwable ignored) {
        }
        try {
            context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(KEY_TRANSPARENT_THEME_ENABLED, enabled)
                    .putInt(KEY_TRANSPARENT_THEME_ENABLED, value)
                    .commit();
        } catch (Throwable ignored) {
        }
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(KEY_TRANSPARENT_THEME_ENABLED, enabled)
                    .putInt(KEY_TRANSPARENT_THEME_ENABLED, value)
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    private static boolean readTransparentModeSetting(Context context) {
        if (context == null) {
            return false;
        }
        try {
            SharedPreferences prefs = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE);
            if (prefs.contains(KEY_TRANSPARENT_THEME_ENABLED)) {
                try {
                    return prefs.getInt(KEY_TRANSPARENT_THEME_ENABLED, 0) == 1;
                } catch (Throwable ignored) {
                    return prefs.getBoolean(KEY_TRANSPARENT_THEME_ENABLED, false);
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            SharedPreferences prefs = context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE);
            if (prefs.contains(KEY_TRANSPARENT_THEME_ENABLED)) {
                try {
                    return prefs.getInt(KEY_TRANSPARENT_THEME_ENABLED, 0) == 1;
                } catch (Throwable ignored) {
                    return prefs.getBoolean(KEY_TRANSPARENT_THEME_ENABLED, false);
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), KEY_TRANSPARENT_THEME_ENABLED, 0) == 1;
        } catch (Throwable ignored) {
        }
        try {
            return Settings.System.getInt(context.getContentResolver(), KEY_TRANSPARENT_THEME_ENABLED, 0) == 1;
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static void applyLauncherSettingChange(Context context, String key) {
        try {
            Intent intent = new Intent("com.smartisanos.launcher.setting_changed");
            intent.putExtra("key", key);
            context.sendBroadcast(intent);
        } catch (Throwable ignored) {
        }
        notifyOriginalConfigChanged(key);
        reloadOriginalSettings(context);
        if ("launcher_hide_lable".equals(key)) {
            applyShowAppName(!readSystemBool(context, key, false));
        }
    }

    public static List<ResolveInfo> queryLauncherActivitiesWithProfiles(
            PackageManager packageManager, Intent intent, int flags) {
        List<ResolveInfo> result = new ArrayList<ResolveInfo>();
        if (packageManager != null) {
            try {
                List<ResolveInfo> base = packageManager.queryIntentActivities(intent, flags);
                if (base != null) {
                    result.addAll(base);
                }
            } catch (Throwable ignored) {
            }
        }

        Context context = currentApplicationContext();
        if (context == null || Build.VERSION.SDK_INT < 21) {
            return result;
        }

        try {
            LauncherApps launcherApps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
            if (launcherApps == null) {
                return result;
            }
            Map<String, Boolean> seen = new HashMap<String, Boolean>();
            for (ResolveInfo info : result) {
                String key = resolveInfoKey(info);
                if (key != null) {
                    seen.put(key, Boolean.TRUE);
                }
            }

            List<UserHandle> profiles = launcherApps.getProfiles();
            if (profiles == null || profiles.size() == 0) {
                profiles = new ArrayList<UserHandle>();
                profiles.add(Process.myUserHandle());
            }
            UserHandle current = Process.myUserHandle();
            String packageFilter = intent == null ? null : intent.getPackage();
            for (UserHandle profile : profiles) {
                if (profile == null) {
                    continue;
                }
                if (profile.equals(current) && !result.isEmpty()) {
                    continue;
                }
                List<LauncherActivityInfo> activities = launcherApps.getActivityList(packageFilter, profile);
                if (activities == null) {
                    continue;
                }
                for (LauncherActivityInfo activityInfo : activities) {
                    ResolveInfo clone = resolveInfoFromLauncherActivity(packageManager, activityInfo, flags);
                    String key = resolveInfoKey(clone);
                    if (clone != null && key != null && !seen.containsKey(key)) {
                        result.add(clone);
                        seen.put(key, Boolean.TRUE);
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return result;
    }

    public static int userIdForResolveInfo(ResolveInfo info) {
        try {
            if (info != null && info.activityInfo != null
                    && info.activityInfo.applicationInfo != null) {
                return userIdFromUid(info.activityInfo.applicationInfo.uid);
            }
        } catch (Throwable ignored) {
        }
        return 0;
    }

    public static void startActivityForUser(Context context, Intent intent, android.os.Bundle options,
                                            int userId) throws Exception {
        if (context == null || intent == null) {
            return;
        }
        if (userId < 0) {
            context.startActivity(intent, options);
            return;
        }
        java.lang.reflect.Constructor<UserHandle> constructor =
                UserHandle.class.getDeclaredConstructor(Integer.TYPE);
        constructor.setAccessible(true);
        UserHandle user = constructor.newInstance(Integer.valueOf(userId));
        Method method = Context.class.getMethod("startActivityAsUser",
                Intent.class, android.os.Bundle.class, UserHandle.class);
        method.setAccessible(true);
        method.invoke(context, intent, options, user);
    }

    public static void openLauncherPasswordFallback(int requestCode) {
        try {
            Class<?> launcherClass = Class.forName("com.smartisanos.launcher.J");
            Object launcher = launcherClass.getMethod("getInstance").invoke(null);
            Context context = (Context) launcherClass.getMethod("getContext").invoke(launcher);
            if (context == null) {
                return;
            }
            try {
                Class<?> mainViewClass = Class.forName("com.smartisanos.launcher.view.Eb");
                Object mainView = mainViewClass.getMethod("getInstance").invoke(null);
                if (mainView != null) {
                    mainViewClass.getMethod("ca", Boolean.TYPE).invoke(mainView, Boolean.FALSE);
                }
            } catch (Throwable ignored) {
            }
            Intent intent = new Intent();
            intent.setClassName(context.getPackageName(),
                    "com.smartisanos.launcher.ConfirmPasswordActivity");
            intent.putExtra("FROM_LAUNCHER", true);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            launcherClass.getMethod("startActivityForResult", Intent.class, Integer.TYPE)
                    .invoke(launcher, intent, Integer.valueOf(requestCode));
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    private static ResolveInfo resolveInfoFromLauncherActivity(PackageManager packageManager,
                                                               LauncherActivityInfo launcherInfo,
                                                               int flags) {
        if (launcherInfo == null || launcherInfo.getComponentName() == null) {
            return null;
        }
        try {
            ComponentName component = launcherInfo.getComponentName();
            ActivityInfo activityInfo = null;
            try {
                if (packageManager != null) {
                    activityInfo = packageManager.getActivityInfo(component, flags);
                }
            } catch (Throwable ignored) {
            }
            if (activityInfo == null) {
                activityInfo = new ActivityInfo();
            }
            activityInfo.packageName = component.getPackageName();
            activityInfo.name = component.getClassName();
            ApplicationInfo appInfo = launcherInfo.getApplicationInfo();
            if (appInfo != null) {
                activityInfo.applicationInfo = appInfo;
            }
            ResolveInfo result = new ResolveInfo();
            result.activityInfo = activityInfo;
            result.nonLocalizedLabel = launcherInfo.getLabel();
            return result;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String resolveInfoKey(ResolveInfo info) {
        try {
            if (info == null || info.activityInfo == null) {
                return null;
            }
            String pkg = info.activityInfo.packageName;
            String cls = info.activityInfo.name;
            if (pkg == null || cls == null) {
                return null;
            }
            int userId = 0;
            if (info.activityInfo.applicationInfo != null) {
                userId = userIdFromUid(info.activityInfo.applicationInfo.uid);
            }
            return pkg + "/" + cls + "#" + userId;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static int userIdFromUid(int uid) {
        if (uid <= 0) {
            return 0;
        }
        return uid / 100000;
    }

    private static void applyWallpaperChange(Context context) {
        String uri = selectedWallpaperUri(context);
        if (uri != null && uri.length() > 0) {
            syncLauncherWallpaperUri(context, uri);
            setLauncherWallpaperConstant(uri);
        }
        logOperation(context, "WALLPAPER", "apply_change uri=" + uri
                + ", transparent=" + isTransparentThemeEnabled(context)
                + ", wallpaperTheme=" + isLauncherWallpaperTheme(context));
        try {
            Intent intent = new Intent("com.smartisanos.launcher.wallpaper_changed");
            context.sendBroadcast(intent);
        } catch (Throwable ignored) {
        }
        try {
            Intent intent = new Intent("CHANGE_LOCKSCREEN_WALLPAPER");
            intent.putExtra("WALLPAPER_URI", uri);
            context.sendBroadcast(intent);
        } catch (Throwable ignored) {
        }
        logOperation(context, "WALLPAPER", "skip_protected_wallpaper_changed_broadcast");
        try {
            notifyOriginalConfigChanged("launcher_wallpaper_uri");
            notifyOriginalConfigChanged(KEY_LOCKSCREEN_BACKGROUND);
            notifyOriginalConfigChanged(KEY_DESKTOP_WALLPAPER_URI);
        } catch (Throwable ignored) {
        }
        setLauncherWallpaperConstant(uri);
        try {
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView != null) {
                mainView.getClass().getMethod("lh").invoke(mainView);
            }
        } catch (Throwable ignored) {
        }
        try {
            Object renderer = Class.forName("com.smartisanos.smengine.Ra")
                    .getMethod("getInstance").invoke(null);
            if (renderer != null) {
                renderer.getClass().getMethod("wt").invoke(renderer);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void restoreDefaultWallpaper(Activity activity) {
        logOperation(activity, "ACTION", "restore_default_wallpaper");
        try {
            clearLauncherWallpaper(activity);
            Toast.makeText(activity, "已恢复默认壁纸", Toast.LENGTH_SHORT).show();
            bindWallpaperSettingIcon(activity, activity.getResources(), activity.getWindow().getDecorView());
        } catch (Throwable t) {
            Toast.makeText(activity, "恢复默认壁纸失败", Toast.LENGTH_SHORT).show();
        }
    }

    private static void clearLauncherWallpaper(Context context) {
        if (context == null) {
            return;
        }
        clearWallpaperPrefs(context, WALLPAPER_PREFS);
        clearWallpaperPrefs(context, "com.smartisanos.launcher_prefs");
        clearWallpaperSettings(context);
        deleteLauncherWallpaperFiles(context);
        setLauncherWallpaperConstant("");
        markWallpaperRefreshPending(context, false);
        try {
            notifyOriginalConfigChanged("launcher_wallpaper_uri");
            notifyOriginalConfigChanged(KEY_LOCKSCREEN_BACKGROUND);
            notifyOriginalConfigChanged(KEY_DESKTOP_WALLPAPER_URI);
        } catch (Throwable ignored) {
        }
        refreshLauncherWallpaperSurface();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            public void run() {
                refreshLauncherWallpaperSurface();
            }
        }, 180);
    }

    private static void clearWallpaperPrefs(Context context, String prefs) {
        try {
            context.getSharedPreferences(prefs, Context.MODE_PRIVATE).edit()
                    .remove(PREF_WALLPAPER_URI)
                    .remove(KEY_DESKTOP_WALLPAPER_URI)
                    .remove(KEY_LOCKSCREEN_BACKGROUND)
                    .remove(PREF_WALLPAPER_THUMB)
                    .putBoolean(PREF_WALLPAPER_READY, false)
                    .putBoolean(PREF_WALLPAPER_REFRESH_PENDING, false)
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    private static void clearWallpaperSettings(Context context) {
        try {
            Settings.Global.putString(context.getContentResolver(), PREF_WALLPAPER_URI, "");
            Settings.Global.putString(context.getContentResolver(), KEY_DESKTOP_WALLPAPER_URI, "");
            Settings.Global.putString(context.getContentResolver(), KEY_LOCKSCREEN_BACKGROUND, "");
        } catch (Throwable ignored) {
        }
        try {
            Settings.System.putString(context.getContentResolver(), PREF_WALLPAPER_URI, "");
            Settings.System.putString(context.getContentResolver(), KEY_DESKTOP_WALLPAPER_URI, "");
            Settings.System.putString(context.getContentResolver(), KEY_LOCKSCREEN_BACKGROUND, "");
        } catch (Throwable ignored) {
        }
    }

    private static void deleteLauncherWallpaperFiles(Context context) {
        try {
            File[] files = context.getFilesDir().listFiles();
            if (files == null) {
                return;
            }
            for (int i = 0; i < files.length; i++) {
                File file = files[i];
                String name = file.getName();
                if ("gaussian_wallpaper.png".equals(name)
                        || "launcher_wallpaper.jpg".equals(name)
                        || name.startsWith("launcher_wallpaper_")) {
                    file.delete();
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private static void confirmLauncherMode(final Activity activity, final int mode) {
        int current = readLauncherMode(activity);
        if (current == mode) {
            Toast.makeText(activity, "当前已经是" + mode + "宫格", Toast.LENGTH_SHORT).show();
            return;
        }
        showConfirmDialog(activity, "切换桌面宫格",
                "切换为" + mode + "宫格后，需要重新启动桌面才能生效。",
                "取消",
                "切换",
                new View.OnClickListener() {
                    public void onClick(View v) {
                        saveLauncherMode(activity, mode);
                    }
                });
    }

    private static void saveLauncherMode(Context context, int mode) {
        int pageMode = mode == 20 ? 9 : 12;
        int multiBlockMode = mode == 20 ? 0x50 : 0x30;
        int maintainedMultiBlockMode = mode == 20 ? 0x40 : 0x24;
        writeLauncherModePref(context, mode);
        try {
            Settings.Global.putInt(context.getContentResolver(), "launcher_mode", mode);
            Settings.Global.putInt(context.getContentResolver(), "launcher_multi_block_mode", multiBlockMode);
            Settings.Global.putInt(context.getContentResolver(), "multi_block_mode", maintainedMultiBlockMode);
            Settings.Global.putInt(context.getContentResolver(), "launcher_grids_x", mode == 20 ? 4 : 3);
            Settings.Global.putInt(context.getContentResolver(), "launcher_grids_y", mode == 20 ? 5 : 4);
        } catch (Throwable ignored) {
        }
        try {
            Class<?> cls = Class.forName("com.smartisanos.launcher.data.N");
            Object instance = cls.getMethod("getInstance").invoke(null);
            cls.getMethod("d", Context.class, Integer.TYPE).invoke(instance, context, pageMode);
        } catch (Throwable ignored) {
        }
        writeLauncherModePref(context, mode);
        reloadOriginalSettings(context);
        restartLauncher(context);
    }

    private static void restartLauncher(final Context context) {
        markThemeReloadLoadingPending(context, "正在加载桌面...");
        if (context instanceof Activity) {
            showRestartLoading((Activity) context);
        } else {
            scheduleLauncherRestart(context);
        }
        if (context instanceof Activity) {
            logOperation(context, "RESTART", "process_rebirth_for_launcher_reload");
            finishSettingsTask((Activity) context);
        } else {
            logOperation(context, "RESTART", "scheduled_process_rebirth_for_launcher_reload");
        }
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable ignored) {
            startLauncherFromForeground(context);
        }
    }

    private static void restartLauncherByRecreate(final Activity activity) {
        markThemeReloadLoadingPending(activity, "正在加载桌面...");
        showRestartLoading(activity);
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(new Runnable() {
            public void run() {
                try {
                    Intent intent = launcherActivityIntent(activity);
                    intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                            | Intent.FLAG_ACTIVITY_CLEAR_TASK
                            | Intent.FLAG_ACTIVITY_NO_ANIMATION);
                    activity.startActivity(intent);
                    try {
                        activity.overridePendingTransition(0, 0);
                    } catch (Throwable ignored) {
                    }
                    activity.finish();
                    try {
                        activity.overridePendingTransition(0, 0);
                    } catch (Throwable ignored) {
                    }
                } catch (Throwable ignored) {
                    restartLauncher(activity);
                }
            }
        }, 420);
    }

    private static void markThemeReloadLoadingPending(Context context, String message) {
        if (context == null) {
            return;
        }
        if (message == null || message.length() == 0) {
            message = "正在加载桌面...";
        }
        try {
            context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(PREF_THEME_RELOAD_LOADING_PENDING, true)
                    .putString(PREF_THEME_RELOAD_LOADING_MESSAGE, message)
                    .commit();
        } catch (Throwable ignored) {
        }
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(PREF_THEME_RELOAD_LOADING_PENDING, true)
                    .putString(PREF_THEME_RELOAD_LOADING_MESSAGE, message)
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    private static boolean consumeThemeReloadLoadingPending(Context context) {
        boolean pending = false;
        try {
            pending = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .getBoolean(PREF_THEME_RELOAD_LOADING_PENDING, false);
        } catch (Throwable ignored) {
        }
        if (!pending) {
            try {
                pending = context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                        .getBoolean(PREF_THEME_RELOAD_LOADING_PENDING, false);
            } catch (Throwable ignored) {
            }
        }
        return pending;
    }

    private static String themeReloadLoadingMessage(Context context) {
        String message = "";
        try {
            message = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .getString(PREF_THEME_RELOAD_LOADING_MESSAGE, "");
        } catch (Throwable ignored) {
        }
        if (message == null || message.length() == 0) {
            try {
                message = context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                        .getString(PREF_THEME_RELOAD_LOADING_MESSAGE, "");
            } catch (Throwable ignored) {
            }
        }
        return message == null || message.length() == 0 ? "正在加载桌面..." : message;
    }

    private static void clearThemeReloadLoadingPending(Context context) {
        try {
            context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(PREF_THEME_RELOAD_LOADING_PENDING, false)
                    .remove(PREF_THEME_RELOAD_LOADING_MESSAGE)
                    .commit();
        } catch (Throwable ignored) {
        }
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(PREF_THEME_RELOAD_LOADING_PENDING, false)
                    .remove(PREF_THEME_RELOAD_LOADING_MESSAGE)
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    private static void reloadOriginalSettings(Context context) {
        try {
            Class<?> cls = Class.forName("com.smartisanos.launcher.data.O");
            Object instance = cls.getMethod("getInstance").invoke(null);
            cls.getMethod("init", Context.class).invoke(instance, context);
        } catch (Throwable ignored) {
        }
    }

    private static void notifyOriginalConfigChanged(String key) {
        try {
            Class<?> cls = Class.forName("com.smartisanos.launcher.ja");
            Object instance = cls.getMethod("getInstance").invoke(null);
            cls.getMethod("r", String.class).invoke(instance, key);
        } catch (Throwable ignored) {
        }
    }

    private static void applyShowAppName(boolean show) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            constants.getField("SHOW_APP_NAME").setBoolean(null, show);
        } catch (Throwable ignored) {
        }
        try {
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView != null) {
                Object multi = mainView.getClass().getMethod("Gh").invoke(mainView);
                if (multi != null) {
                    multi.getClass().getMethod("Mb", Boolean.TYPE).invoke(multi, show);
                }
                Object single = mainView.getClass().getMethod("Ih").invoke(mainView);
                if (single != null) {
                    single.getClass().getMethod("Mb", Boolean.TYPE).invoke(single, show);
                }
                Object page = mainView.getClass().getMethod("zh").invoke(mainView);
                if (page != null) {
                    page.getClass().getMethod("Na", Boolean.TYPE).invoke(page, show);
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            Object renderer = Class.forName("com.smartisanos.smengine.Ra")
                    .getMethod("getInstance").invoke(null);
            if (renderer != null) {
                renderer.getClass().getMethod("wt").invoke(renderer);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void scheduleLauncherRestart(Context context) {
        try {
            Intent intent = launcherHomeIntent(context);
            int flags = PendingIntent.FLAG_CANCEL_CURRENT;
            if (Build.VERSION.SDK_INT >= 23) {
                flags |= PendingIntent.FLAG_IMMUTABLE;
            }
            PendingIntent pendingIntent = PendingIntent.getActivity(context, 1001, intent, flags);
            AlarmManager alarmManager = (AlarmManager) context.getSystemService(Context.ALARM_SERVICE);
            if (alarmManager != null) {
                alarmManager.set(AlarmManager.RTC, System.currentTimeMillis() + 650, pendingIntent);
            } else {
                context.startActivity(intent);
            }
        } catch (Throwable ignored) {
            startLauncherFromForeground(context);
        }
    }

    private static void cancelScheduledLauncherRestart(Context context) {
        try {
            Intent intent = launcherHomeIntent(context);
            int flags = PendingIntent.FLAG_NO_CREATE;
            if (Build.VERSION.SDK_INT >= 23) {
                flags |= PendingIntent.FLAG_IMMUTABLE;
            }
            PendingIntent pendingIntent = PendingIntent.getActivity(context, 1001, intent, flags);
            if (pendingIntent == null) {
                return;
            }
            AlarmManager alarmManager = (AlarmManager) context.getSystemService(Context.ALARM_SERVICE);
            if (alarmManager != null) {
                alarmManager.cancel(pendingIntent);
            }
            pendingIntent.cancel();
            logOperation(context, "RESTART", "cancel_stale_launcher_restart_alarm");
        } catch (Throwable ignored) {
        }
    }

    private static void startLauncherFromForeground(Context context) {
        try {
            Context launchContext = context;
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                Intent intent = launcherActivityIntent(activity);
                intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_SINGLE_TOP);
                activity.startActivity(intent);
                try {
                    activity.overridePendingTransition(0, 0);
                } catch (Throwable ignored) {
                }
                activity.finish();
                try {
                    activity.overridePendingTransition(0, 0);
                } catch (Throwable ignored) {
                }
                return;
            }
            launchContext.startActivity(launcherHomeIntent(launchContext));
        } catch (Throwable ignored) {
        }
    }

    private static void refreshLauncherWallpaperNow(final Context context) {
        applyWallpaperChange(context);
        refreshLauncherWallpaperSurface();
        refreshLauncherAfterWallpaperUriChanged(context);
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(new Runnable() {
            public void run() {
                refreshLauncherWallpaperSurface();
                refreshLauncherAfterWallpaperUriChanged(context);
            }
        }, 120);
        handler.postDelayed(new Runnable() {
            public void run() {
                refreshLauncherWallpaperSurface();
                refreshLauncherAfterWallpaperUriChanged(context);
            }
        }, 420);
    }

    private static void refreshLauncherAfterWallpaperUriChanged(Context context) {
        try {
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView != null) {
                try {
                    mainView.getClass().getMethod("Vh").invoke(mainView);
                    logOperation(context, "WALLPAPER", "refresh_mainview_vh_ok");
                    return;
                } catch (Throwable t) {
                    logOperation(context, "WALLPAPER", "refresh_mainview_vh_failed " + shortError(t));
                }
                try {
                    mainView.getClass().getMethod("oh").invoke(mainView);
                } catch (Throwable ignored) {
                }
                try {
                    mainView.getClass().getMethod("Z", Boolean.TYPE).invoke(mainView, Boolean.TRUE);
                } catch (Throwable ignored) {
                }
            }
        } catch (Throwable t) {
            logOperation(context, "WALLPAPER", "refresh_mainview_extra_failed " + shortError(t));
        }
        try {
            Object renderer = Class.forName("com.smartisanos.smengine.Ra")
                    .getMethod("getInstance").invoke(null);
            if (renderer != null) {
                renderer.getClass().getMethod("wt").invoke(renderer);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void markWallpaperRefreshPending(Context context, boolean pending) {
        try {
            context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(PREF_WALLPAPER_REFRESH_PENDING, pending)
                    .commit();
        } catch (Throwable ignored) {
        }
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(PREF_WALLPAPER_REFRESH_PENDING, pending)
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    public static void maybeRefreshLauncherWallpaper(Context context) {
        if (context == null) {
            return;
        }
        boolean pending = false;
        try {
            pending = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .getBoolean(PREF_WALLPAPER_REFRESH_PENDING, false);
        } catch (Throwable ignored) {
        }
        if (!pending) {
            try {
                pending = context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                        .getBoolean(PREF_WALLPAPER_REFRESH_PENDING, false);
            } catch (Throwable ignored) {
            }
        }
        if (!pending) {
            return;
        }
        String uri = selectedWallpaperUri(context);
        if (uri != null && uri.length() > 0) {
            syncLauncherWallpaperUri(context, uri);
            setLauncherWallpaperConstant(uri);
        }
        refreshLauncherWallpaperSurface();
        markWallpaperRefreshPending(context, false);
    }

    private static void refreshLauncherWallpaperSurface() {
        try {
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView != null) {
                mainView.getClass().getMethod("lh").invoke(mainView);
            }
        } catch (Throwable ignored) {
        }
        try {
            Object renderer = Class.forName("com.smartisanos.smengine.Ra")
                    .getMethod("getInstance").invoke(null);
            if (renderer != null) {
                renderer.getClass().getMethod("wt").invoke(renderer);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void setLauncherWallpaperConstant(String uri) {
        if (uri == null || uri.length() == 0) {
            return;
        }
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            constants.getField("sWallpaperUri").set(null, uri);
        } catch (Throwable ignored) {
        }
    }

    private static Intent launcherHomeIntent(Context context) {
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.setClassName(context.getPackageName(), "com.smartisanos.launcher.Launcher");
        intent.addCategory(Intent.CATEGORY_HOME);
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                | Intent.FLAG_ACTIVITY_CLEAR_TOP
                | Intent.FLAG_ACTIVITY_SINGLE_TOP);
        return intent;
    }

    private static Intent launcherActivityIntent(Context context) {
        Intent intent = new Intent();
        intent.setClassName(context.getPackageName(), "com.smartisanos.launcher.Launcher");
        return intent;
    }

    private static void finishSettingsTask(Activity activity) {
        try {
            activity.overridePendingTransition(0, 0);
        } catch (Throwable ignored) {
        }
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                activity.finishAndRemoveTask();
            } else {
                activity.finish();
            }
        } catch (Throwable ignored) {
            try {
                activity.finish();
            } catch (Throwable ignoredAgain) {
            }
        }
    }

    private static ThemeEntry[] allThemeEntries() {
        ThemeEntry[] entries = Arrays.copyOf(LOCAL_THEMES, LOCAL_THEMES.length + ONLINE_THEMES.length);
        System.arraycopy(ONLINE_THEMES, 0, entries, LOCAL_THEMES.length, ONLINE_THEMES.length);
        return entries;
    }

    private static List<ThemeEntry> themeEntriesFor(Context context, boolean local) {
        ArrayList<ThemeEntry> result = new ArrayList<ThemeEntry>();
        for (int i = 0; i < LOCAL_THEMES.length; i++) {
            if (local) {
                result.add(LOCAL_THEMES[i]);
            }
        }
        for (int i = 0; i < ONLINE_THEMES.length; i++) {
            ThemeEntry entry = ONLINE_THEMES[i];
            boolean installed = packageInstalled(context, entry.pkg);
            if (local == installed) {
                result.add(entry);
            }
        }
        return result;
    }

    private static int indexOf(ThemeEntry[] entries, ThemeEntry entry) {
        if (entry == null) {
            return 0;
        }
        for (int i = 0; i < entries.length; i++) {
            if (entries[i].id.equals(entry.id)) {
                return i;
            }
        }
        return 0;
    }

    private static void bindThemeDots(final Activity activity, final SettingsResourceContext context,
                                      final Resources resources, final LinearLayout dots,
                                      final ThemeEntry[] entries, final int[] selected,
                                      final ImageView previewImg, final TextView btnOk,
                                      final View btnDownload, final View statusIcon) {
        dots.removeAllViews();
        final List<View> dotViews = new ArrayList<View>();
        final int layoutId = resources.getIdentifier("theme_color_dot_item", "layout", SETTINGS_PKG);
        LayoutInflater inflater = LayoutInflater.from(activity).cloneInContext(context);
        for (int i = 0; i < entries.length; i++) {
            final int index = i;
            View item = layoutId == 0 ? themeDotFallback(activity) : inflater.inflate(layoutId, dots, false);
            ImageView dot = (ImageView) byId(item, resources, "theme_color_dot");
            TextView name = (TextView) byId(item, resources, "theme_item_dot_name");
            if (dot != null) {
                Bitmap bitmap = assetBitmap(activity, "theme_preview/" + entries[i].id + "/dot.png");
                if (bitmap != null) {
                    dot.setImageBitmap(bitmap);
                }
            }
            if (name != null) {
                name.setText(i == 0 ? "当前" : entries[i].name);
            }
            item.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    selected[0] = index;
                    updateThemeDots(resources, dotViews, selected[0]);
                    updateThemeDetail(activity, resources, entries[selected[0]], previewImg, btnOk, btnDownload, statusIcon);
                }
            });
            dots.addView(item);
            dotViews.add(item);
        }
        updateThemeDots(resources, dotViews, selected[0]);
    }

    private static View themeDotFallback(Context context) {
        LinearLayout box = new LinearLayout(context);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setGravity(Gravity.CENTER);
        box.setLayoutParams(new LinearLayout.LayoutParams(dp(context, 58), dp(context, 80)));
        ImageView dot = new ImageView(context);
        dot.setLayoutParams(new LinearLayout.LayoutParams(dp(context, 48), dp(context, 48)));
        TextView name = text(context, "", 10, 0xff777777, false);
        box.addView(dot);
        box.addView(name);
        return box;
    }

    private static void updateThemeDots(Resources resources, List<View> dotViews, int selected) {
        for (int i = 0; i < dotViews.size(); i++) {
            View selectedView = byId(dotViews.get(i), resources, "theme_color_dot_selected");
            if (selectedView != null) {
                selectedView.setVisibility(i == selected ? View.VISIBLE : View.INVISIBLE);
            }
        }
    }

    private static void updateThemeDetail(final Activity activity, final Resources resources,
                                          final ThemeEntry entry, ImageView previewImg,
                                          final TextView btnOk, final View btnDownload, final View statusIcon) {
        if (entry == null) {
            return;
        }
        tagThemeDetailControl(btnOk, entry);
        tagThemeDetailControl(btnDownload, entry);
        tagThemeDetailControl(statusIcon, entry);
        if (previewImg != null) {
            Bitmap bitmap = maskedThemeLargePreviewBitmapCached(activity, resources, entry.id);
            if (bitmap != null) {
                previewImg.setImageBitmap(bitmap);
            }
        }
        final boolean installed = entry.local || packageInstalled(activity, entry.pkg);
        final boolean current = entry.id.equals(currentTheme(activity));
        
        long downloadId = activity.getSharedPreferences(THEME_DOWNLOAD_PREFS, Context.MODE_PRIVATE)
                .getLong(entry.pkg, -1);
        int downloadStatus = downloadId != -1 ? getDownloadStatus(activity, downloadId) : -1;
        final boolean downloaded = downloadStatus == DownloadManager.STATUS_SUCCESSFUL;
        final boolean downloading = downloadStatus == DownloadManager.STATUS_RUNNING || downloadStatus == DownloadManager.STATUS_PENDING;

        if (installed) {
            if (btnOk != null) {
                btnOk.setVisibility(View.VISIBLE);
                btnOk.setEnabled(!current);
                btnOk.setText(getString(resources, "theme_title_bar_btn_setup", "设定"));
                btnOk.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        applyTheme(activity, entry.id, entry.pkg, entry.name);
                    }
                });
            }
            if (btnDownload != null) {
                btnDownload.setVisibility(View.GONE);
            }
            if (statusIcon != null) {
                statusIcon.setVisibility(View.GONE);
                statusIcon.setOnClickListener(null);
            }
        } else if (downloaded) {
            if (btnOk != null) {
                btnOk.setVisibility(View.VISIBLE);
                btnOk.setEnabled(true);
                btnOk.setText("安装");
                final long finalDownloadId = downloadId;
                btnOk.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        installApk(activity, finalDownloadId, entry, btnOk, btnDownload, statusIcon);
                    }
                });
            }
            if (btnDownload != null) {
                btnDownload.setVisibility(View.GONE);
            }
            if (statusIcon != null) {
                statusIcon.setVisibility(View.GONE);
                statusIcon.setOnClickListener(null);
            }
        } else {
            if (btnOk != null) {
                btnOk.setVisibility(View.GONE);
            }
            if (downloading) {
                if (btnDownload != null) {
                    btnDownload.setVisibility(View.GONE);
                    btnDownload.setOnClickListener(null);
                }
                showMaintainedStatusIcon(resources, statusIcon, "btn_downloading", downloadProgressPercent(activity, downloadId), null);
            } else if (btnDownload != null) {
                btnDownload.setVisibility(View.VISIBLE);
                btnDownload.setEnabled(true);
                setText(btnDownload, "下载");
                if (statusIcon != null) {
                    statusIcon.setVisibility(View.GONE);
                    statusIcon.setOnClickListener(null);
                }
                btnDownload.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        long id = downloadTheme(activity, entry);
                        if (id >= 0) {
                            tagThemeDetailControl(btnDownload, entry);
                            tagThemeDetailControl(statusIcon, entry);
                            btnDownload.setVisibility(View.GONE);
                            showMaintainedStatusIcon(resources, statusIcon, "btn_loading", -1, null);
                            monitorThemeDownload(activity, id, entry, btnOk, btnDownload, statusIcon);
                        }
                    }
                });
            }
        }
    }

    private static void showRestartLoading(Activity activity) {
        showRestartLoading(activity, "正在重启桌面...", false);
    }

    private static void showRestartLoading(Activity activity, String message, boolean keepReference) {
        try {
            Class<?> dialogClass = Class.forName("smartisanos.app.SmartisanProgressDialog");
            Object dialog = dialogClass.getConstructor(Context.class).newInstance(activity);
            
            int drawableId = activity.getResources().getIdentifier("loading_progress", "drawable", activity.getPackageName());
            if (drawableId != 0) {
                dialogClass.getMethod("setIndeterminateDrawableResource", int.class).invoke(dialog, drawableId);
            }
            dialogClass.getMethod("setCancelable", boolean.class).invoke(dialog, false);
            dialogClass.getMethod("setCanceledOnTouchOutside", boolean.class).invoke(dialog, false);
            dialogClass.getMethod("setMessage", String.class).invoke(dialog, message);
            dialogClass.getMethod("show").invoke(dialog);
            if (keepReference && dialog instanceof Dialog) {
                sLauncherReloadDialog = (Dialog) dialog;
            }
        } catch (Throwable t) {
            try {
                tuneWindowForLoading(activity);
                RestartLoadingView loadingView = new RestartLoadingView(activity);
                activity.setContentView(loadingView);
                loadingView.start();
            } catch (Throwable ignored) {
            }
        }
    }

    private static void tuneWindowForLoading(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.getWindow().setStatusBarColor(Color.BLACK);
            activity.getWindow().setNavigationBarColor(Color.BLACK);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            activity.getWindow().getDecorView().setSystemUiVisibility(0);
        }
    }

    private static final class RestartLoadingView extends View implements Runnable {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF rect = new RectF();
        private final Handler handler = new Handler(Looper.getMainLooper());
        private int frame;

        RestartLoadingView(Context context) {
            super(context);
            setBackgroundColor(Color.BLACK);
        }

        void start() {
            handler.removeCallbacks(this);
            handler.post(this);
        }

        public void run() {
            frame = (frame + 1) % 8;
            invalidate();
            handler.postDelayed(this, 120);
        }

        protected void onDetachedFromWindow() {
            handler.removeCallbacks(this);
            super.onDetachedFromWindow();
        }

        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int w = getWidth();
            int h = getHeight();
            if (w <= 0 || h <= 0) {
                return;
            }
            float density = getResources().getDisplayMetrics().density;
            float panelW = Math.min(w * 0.78f, 430f * density);
            float panelH = Math.max(74f * density, h * 0.092f);
            float left = (w - panelW) * 0.5f;
            float top = Math.max(0f, (h - panelH) * 0.5f);
            rect.set(left, top, left + panelW, top + panelH);
            paint.setColor(0xff151b1d);
            canvas.drawRoundRect(rect, panelH * 0.5f, panelH * 0.5f, paint);

            float block = Math.max(8f * density, panelH * 0.13f);
            float gap = block * 0.33f;
            float startX = left + panelW * 0.1f;
            float startY = top + (panelH - (block * 3f + gap * 2f)) * 0.5f;
            for (int row = 0; row < 3; row++) {
                for (int col = 0; col < 3; col++) {
                    int index = row * 3 + col;
                    int alpha = 170 + ((index + frame) % 4) * 20;
                    paint.setColor((alpha << 24) | 0x00eeeeee);
                    float x = startX + col * (block + gap);
                    float y = startY + row * (block + gap);
                    canvas.drawRoundRect(x, y, x + block, y + block, block * 0.12f, block * 0.12f, paint);
                }
            }
            canvas.save();
            paint.setColor(0xffeeeeee);
            float cx = startX + block * 1.15f;
            float cy = startY + block * 3.08f;
            canvas.rotate(22f + frame * 5f, cx, cy);
            canvas.drawRoundRect(cx - block * 0.45f, cy - block * 0.45f, cx + block * 0.45f, cy + block * 0.45f, block * 0.14f, block * 0.14f, paint);
            canvas.restore();
        }

    }

    private static void writeLauncherModePref(Context context, int mode) {
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                    .edit()
                    .putInt("prefs_key_launcher_mode", mode)
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    private static void showConfirmDialog(final Activity activity, String title, String message, String negative, String positive, final View.OnClickListener positiveClick) {
        final Dialog dialog = new Dialog(activity);
        LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(0, dp(activity, 18), 0, 0);
        root.setBackgroundColor(0xfffbfbfb);

        TextView titleView = text(activity, title, 18, 0xff333333, true);
        titleView.setGravity(Gravity.CENTER);
        root.addView(titleView, new LinearLayout.LayoutParams(-1, dp(activity, 40)));

        TextView messageView = text(activity, message, 14, 0xff777777, false);
        messageView.setGravity(Gravity.CENTER);
        messageView.setPadding(dp(activity, 30), 0, dp(activity, 30), dp(activity, 18));
        root.addView(messageView, new LinearLayout.LayoutParams(-1, -2));

        View line = new View(activity);
        line.setBackgroundColor(0xffeeeeee);
        root.addView(line, new LinearLayout.LayoutParams(-1, 1));

        LinearLayout buttons = new LinearLayout(activity);
        buttons.setOrientation(LinearLayout.HORIZONTAL);
        TextView cancel = dialogButton(activity, negative, 0xff555555);
        cancel.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                dialog.dismiss();
            }
        });
        TextView ok = dialogButton(activity, positive, 0xffd8504b);
        ok.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                dialog.dismiss();
                positiveClick.onClick(v);
            }
        });
        buttons.addView(cancel, new LinearLayout.LayoutParams(0, dp(activity, 50), 1.0f));
        View vLine = new View(activity);
        vLine.setBackgroundColor(0xffeeeeee);
        buttons.addView(vLine, new LinearLayout.LayoutParams(1, dp(activity, 50)));
        buttons.addView(ok, new LinearLayout.LayoutParams(0, dp(activity, 50), 1.0f));
        root.addView(buttons, new LinearLayout.LayoutParams(-1, dp(activity, 50)));

        dialog.setContentView(root);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
        }
        dialog.show();
        Window shown = dialog.getWindow();
        if (shown != null) {
            shown.setLayout(dp(activity, 294), -2);
        }
    }

    private static void cycleAnimation(Context context) {
        int current = readPageAnimation(context);
        int next = current == 0 ? 3 : (current == 3 ? 4 : (current == 4 ? 6 : 0));
        if (isTransparentThemeEnabled(context)) {
            next = 0;
        }
        writePageAnimation(context, next);
        Toast.makeText(context, "桌面翻页动画：" + animName(next), Toast.LENGTH_SHORT).show();
    }

    private static void savePageAnimation(Activity activity, int value) {
        int target = isTransparentThemeEnabled(activity) ? 0 : value;
        writePageAnimation(activity, target);
        refreshPageAnimation(target);
        Toast.makeText(activity, "桌面翻页动画：" + animName(target), Toast.LENGTH_SHORT).show();
    }

    private static void forceDefaultPageAnimation(Context context) {
        writePageAnimation(context, 0);
        refreshPageAnimation(0);
    }

    private static int readPageAnimation(Context context) {
        if (isTransparentThemeEnabled(context)) {
            return 0;
        }
        try {
            return context.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                    .getInt("launcher_page_animation", readGlobal(context, "launcher_page_animation", 0));
        } catch (Throwable ignored) {
            return readGlobal(context, "launcher_page_animation", 0);
        }
    }

    private static void writePageAnimation(Context context, int value) {
        if (isTransparentThemeEnabled(context)) {
            value = 0;
        }
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                    .edit()
                    .putInt("launcher_page_animation", value)
                    .commit();
        } catch (Throwable ignored) {
        }
        try {
            if (Build.VERSION.SDK_INT < 23 || Settings.System.canWrite(context)) {
                Settings.System.putInt(context.getContentResolver(), "launcher_page_animation", value);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void refreshPageAnimation(int value) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            constants.getField("SCROLL_ANIMATION_TYPE").setInt(null, value);
        } catch (Throwable ignored) {
        }
        try {
            Class<?> cls = Class.forName("com.smartisanos.launcher.ja");
            Object instance = cls.getMethod("getInstance").invoke(null);
            cls.getMethod("r", String.class).invoke(instance, "launcher_page_animation");
        } catch (Throwable ignored) {
        }
        try {
            Class.forName("com.smartisanos.launcher.animations.a.n")
                    .getMethod("xe")
                    .invoke(null);
        } catch (Throwable ignored) {
        }
    }

    private static void handleThemeClick(Activity activity, ThemeEntry entry) {
        if (entry == null) {
            return;
        }
        if (entry.local || packageInstalled(activity, entry.pkg)) {
            applyTheme(activity, entry.id, entry.pkg, entry.name);
            return;
        }
        downloadTheme(activity, entry);
    }

    private static boolean packageInstalled(Context context, String pkg) {
        if (pkg == null || pkg.length() == 0 || context.getPackageName().equals(pkg)) {
            return true;
        }
        try {
            context.getPackageManager().getPackageInfo(pkg, 0);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void applyTheme(Activity activity, String id, String name) {
        applyTheme(activity, id, idToPackage(id), name);
    }

    private static void applyTheme(Activity activity, String id, String pkg, String name) {
        logOperation(activity, "ACTION", "apply_theme id=" + id + ", pkg=" + pkg + ", name=" + name);
        pkg = normalizeThemePackage(activity, id, pkg);
        if ("smartisan_theme_trans".equals(id)) {
            ensureTransparentThemeRegistered(activity);
            String current = currentTheme(activity);
            if (current != null && current.length() > 0 && !"smartisan_theme_trans".equals(current)) {
                saveTransparentPreviousTheme(activity, current);
            }
            writeTransparentModeSetting(activity, true);
            applyTransparentThemeRuntimeFlags(activity);
            Toast.makeText(activity, "正在应用：" + name, Toast.LENGTH_SHORT).show();
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                public void run() {
                    restartLauncher(activity);
                }
            }, 120);
            return;
        } else {
            writeTransparentModeSetting(activity, false);
            writeOriginalBoolIntSetting(activity, KEY_TRANSPARENT_WALLPAPER_BLUR, false);
            applyTransparentThemeRuntimeFlags(activity);
        }
        boolean queued = queueThemeChangeForLauncher(id);
        if (queued) {
            Toast.makeText(activity, "正在应用：" + name, Toast.LENGTH_SHORT).show();
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                public void run() {
                    prepareThemeTransitionScreenshot(activity);
                    startLauncherFromForeground(activity);
                }
            }, 120);
            return;
        }
        boolean stored = applyThemeViaOriginalStack(activity, id, pkg);
        storeThemeSelection(activity, id);
        Toast.makeText(activity, (stored ? "正在应用：" : "已记录：") + name, Toast.LENGTH_SHORT).show();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            public void run() {
                prepareThemeTransitionScreenshot(activity);
                startLauncherFromForeground(activity);
            }
        }, 120);
    }

    private static void prepareThemeTransitionScreenshot(Activity activity) {
        Bitmap bitmap = captureActivityBitmap(activity);
        if (bitmap != null) {
            Bitmap old = sPendingThemeScreenshot;
            sPendingThemeScreenshot = bitmap;
            if (old != null && old != bitmap && !old.isRecycled()) {
                old.recycle();
            }
        }
    }

    private static Bitmap captureActivityBitmap(Activity activity) {
        try {
            View decor = activity.getWindow().getDecorView();
            int width = decor.getWidth();
            int height = decor.getHeight();
            if (width <= 0 || height <= 0) {
                return null;
            }
            Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            decor.draw(canvas);
            return bitmap;
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static void consumePendingThemeScreenshotIfAny() {
        consumePendingThemeScreenshotForAnimation();
    }

    public static boolean consumePendingThemeScreenshotForAnimation() {
        Bitmap bitmap = sPendingThemeScreenshot;
        if (bitmap == null) {
            return false;
        }
        try {
            Class<?> handler = Class.forName("com.smartisanos.launcher.theme.t");
            Object instance = handler.getMethod("getInstance").invoke(null);
            if (instance != null) {
                handler.getMethod("f", Bitmap.class).invoke(instance, bitmap);
                sPendingThemeScreenshot = null;
                return true;
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static boolean queueThemeChangeForLauncher(String id) {
        try {
            android.os.Message message = android.os.Message.obtain();
            message.what = 0x12;
            message.obj = id;
            message.arg1 = -5;
            Class<?> flow = Class.forName("com.smartisanos.launcher.a.r");
            flow.getField("sj").set(null, message);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean applyThemeViaOriginalStack(Activity activity, String id, String pkg) {
        boolean ok = false;
        Object theme = null;
        try {
            Class<?> manager = Class.forName("com.smartisanos.launcher.theme.X");
            if ("smartisan_theme_black".equals(id)) {
                theme = manager.getMethod("X", Context.class).invoke(null, activity);
                pkg = themePackage(theme, pkg);
            } else {
                theme = manager.getMethod("k", Context.class, String.class).invoke(null, activity, pkg);
            }
            if (theme == null) {
                theme = manager.getMethod("fa", String.class).invoke(null, id);
                pkg = themePackage(theme, pkg);
            }
            Object stored = manager.getMethod("ja", String.class).invoke(null, pkg + ":" + id);
            ok = Boolean.TRUE.equals(stored);
        } catch (Throwable ignored) {
        }
        Object handlerInstance = null;
        Class<?> handler = null;
        try {
            Class<?> require = Class.forName("com.smartisanos.launcher.theme.ChangeThemeHandler$RequireChangeFrom");
            Object setting = Enum.valueOf((Class<Enum>) require.asSubclass(Enum.class), "SETTING");
            handler = Class.forName("com.smartisanos.launcher.theme.t");
            handlerInstance = handler.getMethod("getInstance").invoke(null);
            if (handlerInstance != null) {
                handler.getMethod("a", require).invoke(handlerInstance, setting);
            }
        } catch (Throwable ignored) {
        }
        try {
            Class<?> settings = Class.forName("com.smartisanos.launcher.data.O");
            settings.getMethod("a", android.content.ContentResolver.class, String.class)
                    .invoke(null, activity.getContentResolver(), id);
            ok = true;
        } catch (Throwable ignored) {
        }
        try {
            Class<?> proxy = Class.forName("com.smartisanos.launcher.ja");
            Object instance = proxy.getMethod("getInstance").invoke(null);
            proxy.getMethod("l", Boolean.TYPE).invoke(instance, false);
        } catch (Throwable ignored) {
        }
        return ok;
    }

    private static void storeThemeSelection(Context context, String id) {
        try {
            SharedPreferences.Editor editor = context.getSharedPreferences("com.smartisanos.launcher_prefs", 0).edit();
            editor.putString("launcher_theme", id);
            editor.remove("launcher_theme_preview_res");
            editor.commit();
        } catch (Throwable ignored) {
        }
        try {
            context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .edit()
                    .putString("launcher_theme", id)
                    .commit();
        } catch (Throwable ignored) {
        }
        try {
            if (Build.VERSION.SDK_INT < 23 || Settings.System.canWrite(context)) {
                Settings.System.putString(context.getContentResolver(), "launcher_theme", id);
                Settings.System.putString(context.getContentResolver(), "launcher_theme_preview_res", null);
            }
        } catch (Throwable ignored) {
        }
        try {
            Settings.Global.putString(context.getContentResolver(), "launcher_theme", id);
            Settings.Global.putString(context.getContentResolver(), "launcher_theme_preview_res", null);
        } catch (Throwable ignored) {
        }
    }

    private static String normalizeThemePackage(Context context, String id, String pkg) {
        if ("smartisan_theme_black".equals(id)) {
            return context.getPackageName();
        }
        return pkg;
    }

    private static String themePackage(Object theme, String fallback) {
        if (theme == null) {
            return fallback;
        }
        try {
            Object value = theme.getClass().getField("mPackage").get(theme);
            if (value instanceof String && ((String) value).length() > 0) {
                return (String) value;
            }
        } catch (Throwable ignored) {
        }
        return fallback;
    }

    private static void submitThemeSnapshot(Activity activity) {
        try {
            Class<?> handler = Class.forName("com.smartisanos.launcher.theme.t");
            Object handlerInstance = handler.getMethod("getInstance").invoke(null);
            Bitmap shot = captureForThemeAnimation(activity);
            if (handlerInstance != null && shot != null) {
                handler.getMethod("f", Bitmap.class).invoke(handlerInstance, shot);
            }
        } catch (Throwable ignored) {
        }
    }

    public static boolean isLauncherReadyForThemeAnimation() {
        try {
            Class<?> mainViewClass = Class.forName("com.smartisanos.launcher.view.Eb");
            Object mainView = mainViewClass.getMethod("getInstance").invoke(null);
            if (mainView == null) {
                return false;
            }
            Object currentPages = mainViewClass.getMethod("Gh").invoke(mainView);
            if (currentPages == null) {
                return false;
            }
            Object pagesReady = currentPages.getClass().getMethod("Am").invoke(currentPages);
            if (!Boolean.TRUE.equals(pagesReady)) {
                return false;
            }
            Object windowPages = mainViewClass.getMethod("Ih").invoke(mainView);
            if (windowPages == null) {
                return false;
            }
            Object currentPage = windowPages.getClass().getMethod("Wq").invoke(windowPages);
            return currentPage != null;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static Bitmap captureForThemeAnimation(Activity activity) {
        try {
            View decor = activity.getWindow().getDecorView();
            decor.setDrawingCacheEnabled(true);
            decor.buildDrawingCache();
            Bitmap cache = decor.getDrawingCache();
            Bitmap result = cache == null ? null : Bitmap.createBitmap(cache);
            decor.setDrawingCacheEnabled(false);
            return result;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void showThemeChanging(Activity activity) {
        try {
            Class<?> dialogClass = Class.forName("smartisanos.app.SmartisanProgressDialog");
            Object dialog = dialogClass.getConstructor(Context.class).newInstance(activity);
            dialogClass.getMethod("setCancelable", boolean.class).invoke(dialog, false);
            dialogClass.getMethod("setCanceledOnTouchOutside", boolean.class).invoke(dialog, false);
            dialogClass.getMethod("setMessage", String.class).invoke(dialog, "正在加载主题");
            dialogClass.getMethod("show").invoke(dialog);
        } catch (Throwable t) {
            Toast.makeText(activity, "正在加载主题", Toast.LENGTH_SHORT).show();
        }
    }

    private static String idToPackage(String id) {
        for (int i = 0; i < LOCAL_THEMES.length; i++) {
            if (LOCAL_THEMES[i].id.equals(id)) return LOCAL_THEMES[i].pkg;
        }
        for (int i = 0; i < ONLINE_THEMES.length; i++) {
            if (ONLINE_THEMES[i].id.equals(id)) return ONLINE_THEMES[i].pkg;
        }
        return idToPackageName(id);
    }

    private static String idToPackageName(String id) {
        if (id == null || id.length() == 0) {
            return "";
        }
        if (id.startsWith("Literary")) {
            return "com.smartisanos.launcher.theme." + id;
        }
        String prefix = "smartisan_theme_";
        if (id.startsWith(prefix)) {
            return "com.smartisanos.launcher.theme." + id.substring(prefix.length()).replace("_", "");
        }
        return id;
    }

    private static int getDownloadStatus(Context context, long downloadId) {
        DownloadManager manager = (DownloadManager) context.getSystemService(Context.DOWNLOAD_SERVICE);
        if (manager == null) return -1;
        Cursor cursor = null;
        try {
            cursor = manager.query(new DownloadManager.Query().setFilterById(downloadId));
            if (cursor != null && cursor.moveToFirst()) {
                return cursor.getInt(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_STATUS));
            }
        } catch (Throwable ignored) {
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        return -1;
    }

    private static int[] getDownloadProgress(Context context, long downloadId) {
        DownloadManager manager = (DownloadManager) context.getSystemService(Context.DOWNLOAD_SERVICE);
        if (manager == null) return null;
        Cursor cursor = null;
        try {
            cursor = manager.query(new DownloadManager.Query().setFilterById(downloadId));
            if (cursor != null && cursor.moveToFirst()) {
                int status = cursor.getInt(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_STATUS));
                int downloaded = cursor.getInt(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_BYTES_DOWNLOADED_SO_FAR));
                int total = cursor.getInt(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_TOTAL_SIZE_BYTES));
                return new int[]{status, downloaded, total};
            }
        } catch (Throwable ignored) {
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        return null;
    }

    private static CachedUpdateDownload cachedUpdateDownload(Context context, String tag, String apkName) {
        try {
            SharedPreferences prefs = context.getSharedPreferences(THEME_DOWNLOAD_PREFS, Context.MODE_PRIVATE);
            long id = prefs.getLong(PREF_UPDATE_DOWNLOAD_ID, -1);
            if (id == -1) {
                return null;
            }
            String savedTag = prefs.getString(PREF_UPDATE_DOWNLOAD_ID + ".tag", "");
            String savedName = prefs.getString(PREF_UPDATE_DOWNLOAD_ID + ".name", "");
            if (tag != null && tag.length() > 0 && savedTag != null && savedTag.length() > 0
                    && !tag.equals(savedTag)) {
                return null;
            }
            if (apkName != null && apkName.length() > 0 && savedName != null && savedName.length() > 0
                    && !apkName.equals(savedName)) {
                return null;
            }
            int status = getDownloadStatus(context, id);
            if (status == DownloadManager.STATUS_SUCCESSFUL
                    || status == DownloadManager.STATUS_RUNNING
                    || status == DownloadManager.STATUS_PENDING) {
                return new CachedUpdateDownload(id, status);
            }
            if (status == DownloadManager.STATUS_FAILED || status == -1) {
                clearCachedUpdateDownload(context, id);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static void clearCachedUpdateDownload(Context context, long downloadId) {
        try {
            SharedPreferences prefs = context.getSharedPreferences(THEME_DOWNLOAD_PREFS, Context.MODE_PRIVATE);
            prefs.edit()
                    .remove(PREF_UPDATE_DOWNLOAD_ID)
                    .remove(PREF_UPDATE_DOWNLOAD_ID + ".path")
                    .remove(PREF_UPDATE_DOWNLOAD_ID + ".url")
                    .remove(PREF_UPDATE_DOWNLOAD_ID + ".tag")
                    .remove(PREF_UPDATE_DOWNLOAD_ID + ".name")
                    .remove(String.valueOf(downloadId))
                    .remove(String.valueOf(downloadId) + ".path")
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    private static void installApk(Activity activity, long downloadId) {
        installApk(activity, downloadId, null, null, null, null);
    }

    private static void installApk(final Activity activity, long downloadId, final ThemeEntry entry,
                                   final TextView btnOk, final View btnDownload, final View statusIcon) {
        DownloadManager manager = (DownloadManager) activity.getSystemService(Context.DOWNLOAD_SERVICE);
        if (manager == null) return;
        Uri uri = manager.getUriForDownloadedFile(downloadId);
        if (uri == null) {
            String path = findDownloadedThemePath(activity, downloadId);
            if (path != null) {
                disableFileUriDeath();
                uri = Uri.fromFile(new File(path));
            }
        }
        if (uri == null) {
            Toast.makeText(activity, "未找到下载的安装包，请重新下载", Toast.LENGTH_SHORT).show();
            return;
        }
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setDataAndType(uri, "application/vnd.android.package-archive");
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        try {
            activity.startActivity(intent);
            if (entry != null) {
                monitorThemeInstall(activity, entry, btnOk, btnDownload, statusIcon, 0);
            }
        } catch (Throwable t) {
            Toast.makeText(activity, "无法拉起安装程序: " + t.getMessage(), Toast.LENGTH_LONG).show();
        }
    }

    private static long downloadTheme(Activity activity, ThemeEntry entry) {
        String url = THEME_DOWNLOAD_BASE + entry.pkg + ".apk";
        try {
            if (!ensureDownloadPermission(activity)) {
                return -1;
            }
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(url));
            request.setTitle(entry.name);
            request.setDescription("锤子桌面主题");
            request.setMimeType("application/vnd.android.package-archive");
            File out = themeDownloadFile(entry);
            try {
                File parent = out.getParentFile();
                if (parent != null && !parent.exists()) {
                    parent.mkdirs();
                }
                if (out.exists()) {
                    out.delete();
                }
                request.setDestinationUri(Uri.fromFile(out));
            } catch (Throwable ignored) {
            }
            try {
                request.allowScanningByMediaScanner();
            } catch (Throwable ignored) {
            }
            if (Build.VERSION.SDK_INT >= 11) {
                request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
            }
            DownloadManager manager = (DownloadManager) activity.getSystemService(Context.DOWNLOAD_SERVICE);
            if (manager == null) {
                throw new IllegalStateException("DownloadManager unavailable");
            }
            long id = manager.enqueue(request);
            activity.getSharedPreferences(THEME_DOWNLOAD_PREFS, Context.MODE_PRIVATE)
                    .edit()
                    .putLong(entry.pkg, id)
                    .putString(entry.pkg + ".path", out.getAbsolutePath())
                    .putLong(String.valueOf(id), id)
                    .putString(String.valueOf(id) + ".path", out.getAbsolutePath())
                    .commit();
            Toast.makeText(activity, "已开始下载：" + entry.name, Toast.LENGTH_SHORT).show();
            return id;
        } catch (Throwable t) {
            try {
                activity.startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url)));
            } catch (Throwable ignored) {
                Toast.makeText(activity, "无法打开主题下载地址", Toast.LENGTH_SHORT).show();
            }
            return -1;
        }
    }

    private static void monitorThemeDownload(final Activity activity, final long downloadId,
                                             final ThemeEntry entry, final TextView btnOk,
                                             final View btnDownload, final View statusIcon) {
        final Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() {
            public void run() {
                if (!isThemeDetailControlCurrent(statusIcon, entry)
                        || !isThemeDetailControlCurrent(btnDownload, entry)
                        || !isThemeDetailControlCurrent(btnOk, entry)) {
                    return;
                }
                DownloadManager manager = (DownloadManager) activity.getSystemService(Context.DOWNLOAD_SERVICE);
                if (manager == null) {
                    return;
                }
                Cursor cursor = null;
                try {
                    cursor = manager.query(new DownloadManager.Query().setFilterById(downloadId));
                    if (cursor == null || !cursor.moveToFirst()) {
                        handler.postDelayed(this, 800);
                        return;
                    }
                    int status = cursor.getInt(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_STATUS));
                    int downloaded = cursor.getInt(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_BYTES_DOWNLOADED_SO_FAR));
                    int total = cursor.getInt(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_TOTAL_SIZE_BYTES));
                    if (status == DownloadManager.STATUS_SUCCESSFUL) {
                        Toast.makeText(activity, entry.name + " 下载完成，正在启动安装...", Toast.LENGTH_LONG).show();
                        installApk(activity, downloadId, entry, btnOk, btnDownload, statusIcon);
                        if (btnDownload != null) {
                            btnDownload.setEnabled(true);
                        }
                        if (isThemeDetailControlCurrent(statusIcon, entry)) {
                            updateThemeDetail(activity, getMaintainedResources(activity), entry, null, btnOk, btnDownload, statusIcon);
                        }
                        return;
                    }
                    if (status == DownloadManager.STATUS_FAILED) {
                        Toast.makeText(activity, entry.name + " 下载失败", Toast.LENGTH_SHORT).show();
                        if (btnDownload != null) {
                            btnDownload.setEnabled(true);
                        }
                        return;
                    }
                    if (total > 0) {
                        int percent = Math.max(1, Math.min(99, downloaded * 100 / total));
                        showMaintainedStatusIcon(getMaintainedResources(activity), statusIcon, "btn_downloading", percent, null);
                    } else {
                        showMaintainedStatusIcon(getMaintainedResources(activity), statusIcon, "btn_loading", -1, null);
                    }
                } catch (Throwable ignored) {
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
                handler.postDelayed(this, 1500);
            }
        });
    }

    private static File themeDownloadFile(ThemeEntry entry) {
        return new File(android.os.Environment.getExternalStoragePublicDirectory(
                android.os.Environment.DIRECTORY_DOWNLOADS), entry.pkg + ".apk");
    }

    private static void monitorThemeInstall(final Activity activity, final ThemeEntry entry,
                                            final TextView btnOk, final View btnDownload, final View statusIcon,
                                            final int count) {
        if (entry == null || count > 30) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            public void run() {
                if (!isThemeDetailControlCurrent(statusIcon, entry)
                        || !isThemeDetailControlCurrent(btnDownload, entry)
                        || !isThemeDetailControlCurrent(btnOk, entry)) {
                    return;
                }
                if (packageInstalled(activity, entry.pkg)) {
                    Toast.makeText(activity, "已安装：" + entry.name, Toast.LENGTH_SHORT).show();
                    clearThemeDownloadRecord(activity, entry);
                    updateThemeDetail(activity, getMaintainedResources(activity), entry, null, btnOk, btnDownload, statusIcon);
                } else {
                    monitorThemeInstall(activity, entry, btnOk, btnDownload, statusIcon, count + 1);
                }
            }
        }, 1000);
    }

    private static void clearThemeDownloadRecord(Context context, ThemeEntry entry) {
        if (entry == null) {
            return;
        }
        SharedPreferences prefs = context.getSharedPreferences(THEME_DOWNLOAD_PREFS, Context.MODE_PRIVATE);
        long downloadId = prefs.getLong(entry.pkg, -1);
        SharedPreferences.Editor editor = prefs.edit()
                .remove(entry.pkg)
                .remove(entry.pkg + ".path");
        if (downloadId != -1) {
            editor.remove(String.valueOf(downloadId))
                    .remove(String.valueOf(downloadId) + ".path");
        }
        editor.commit();
    }

    private static boolean ensureDownloadPermission(Activity activity) {
        if (Build.VERSION.SDK_INT < 23 || Build.VERSION.SDK_INT >= 30) {
            return true;
        }
        try {
            if (activity.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE")
                    == PackageManager.PERMISSION_GRANTED) {
                return true;
            }
            activity.requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 2301);
            Toast.makeText(activity, "请允许存储权限后再次下载主题", Toast.LENGTH_SHORT).show();
            return false;
        } catch (Throwable ignored) {
            return true;
        }
    }

    private static String findDownloadedThemePath(Context context, long downloadId) {
        SharedPreferences prefs = context.getSharedPreferences(THEME_DOWNLOAD_PREFS, Context.MODE_PRIVATE);
        String path = prefs.getString(String.valueOf(downloadId) + ".path", null);
        if (path != null && new File(path).exists()) {
            return path;
        }
        for (ThemeEntry entry : allThemeEntries()) {
            long id = prefs.getLong(entry.pkg, -1);
            if (id == downloadId) {
                path = prefs.getString(entry.pkg + ".path", null);
                if (path != null && new File(path).exists()) {
                    return path;
                }
                File file = themeDownloadFile(entry);
                if (file.exists()) {
                    return file.getAbsolutePath();
                }
            }
        }
        return null;
    }

    private static int downloadProgressPercent(Context context, long downloadId) {
        int[] progress = getDownloadProgress(context, downloadId);
        if (progress != null && progress[2] > 0) {
            return Math.max(1, Math.min(99, progress[1] * 100 / progress[2]));
        }
        return -1;
    }

    private static void showMaintainedStatusIcon(Resources resources, View statusIcon, String drawableName,
                                                 int progress, View.OnClickListener listener) {
        if (statusIcon == null) {
            return;
        }
        statusIcon.setVisibility(View.VISIBLE);
        statusIcon.setOnClickListener(listener);
        int drawableId = drawable(resources, drawableName);
        if (drawableId != 0) {
            try {
                statusIcon.getClass().getMethod("setStatusImageAndProgress", Integer.TYPE, Integer.TYPE)
                        .invoke(statusIcon, drawableId, progress);
            } catch (Throwable ignored) {
            }
        }
        statusIcon.setContentDescription(progress >= 0 ? "下载中 " + progress + "%" : "下载中");
    }

    private static void setDownloadButtonText(Context context, View button, long downloadId, boolean downloading) {
        if (downloadId == -1 || !downloading) {
            setText(button, "下载");
            return;
        }
        int[] progress = getDownloadProgress(context, downloadId);
        if (progress != null && progress[2] > 0) {
            int percent = Math.max(1, Math.min(99, progress[1] * 100 / progress[2]));
            setText(button, "下载中 " + percent + "%");
        } else {
            setText(button, "下载中");
        }
    }

    private static void setText(View view, String text) {
        if (view instanceof TextView) {
            ((TextView) view).setText(text);
        } else if (view instanceof LinearLayout) {
            LinearLayout layout = (LinearLayout) view;
            for (int i = 0; i < layout.getChildCount(); i++) {
                View child = layout.getChildAt(i);
                if (child instanceof ImageView) {
                    child.setVisibility(View.VISIBLE);
                } else if (child instanceof TextView) {
                    ((TextView) child).setText(text);
                }
            }
            view.setContentDescription(text);
        }
    }

    private static void disableFileUriDeath() {
        try {
            Class<?> cls = Class.forName("android.os.StrictMode");
            cls.getMethod("disableDeathOnFileUriExposure").invoke(null);
        } catch (Throwable ignored) {
        }
    }

    private static Resources getMaintainedResources(Activity activity) {
        try {
            return createSettingsContext(activity).getResources();
        } catch (Throwable ignored) {
            return activity.getResources();
        }
    }

    private static String animName(int value) {
        if (value == 3) return "立体翻转";
        if (value == 4) return "百叶窗";
        if (value == 6) return "切牌";
        return "默认动画";
    }

    private static void openDefaultHomeSettings(Activity activity) {
        logOperation(activity, "ACTION", "open_default_home_settings");
        if (requestHomeRole(activity)) return;
        if (startAction(activity, "android.settings.HOME_SETTINGS")) return;
        if (startAction(activity, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS")) return;
        if (startAction(activity, "miui.intent.action.PREFERRED_APPLICATION_SETTINGS")) return;
        if (startAction(activity, Settings.ACTION_SETTINGS)) return;
        Toast.makeText(activity, "请在系统设置中将锤子桌面设为默认桌面", Toast.LENGTH_LONG).show();
    }

    private static boolean requestHomeRole(Activity activity) {
        if (Build.VERSION.SDK_INT < 29) {
            return false;
        }
        try {
            Object roleManager = activity.getSystemService("role");
            if (roleManager == null) return false;
            Class<?> cls = Class.forName("android.app.role.RoleManager");
            String roleHome = (String) cls.getField("ROLE_HOME").get(null);
            Boolean available = (Boolean) cls.getMethod("isRoleAvailable", String.class).invoke(roleManager, roleHome);
            if (!available.booleanValue()) return false;
            Boolean held = (Boolean) cls.getMethod("isRoleHeld", String.class).invoke(roleManager, roleHome);
            if (held.booleanValue()) return false;
            Intent intent = (Intent) cls.getMethod("createRequestRoleIntent", String.class).invoke(roleManager, roleHome);
            activity.startActivityForResult(intent, 0);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean startAction(Activity activity, String action) {
        try {
            activity.startActivity(new Intent(action));
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static int readLauncherMode(Context context) {
        try {
            SharedPreferences prefs = context.getSharedPreferences("com.smartisanos.launcher_prefs", 0);
            int mode = prefs.getInt("prefs_key_launcher_mode", -1);
            if (mode == 20 || mode == 12) {
                return mode;
            }
        } catch (Throwable ignored) {
        }
        int global = readGlobal(context, "launcher_mode", 12);
        return global == 20 || global == 9 ? 20 : 12;
    }

    private static int readGlobal(Context context, String key, int def) {
        if ("launcher_page_animation".equals(key)) {
            int globalValue = def;
            try {
                globalValue = Settings.Global.getInt(context.getContentResolver(), key, def);
            } catch (Throwable ignored) {
            }
            try {
                return context.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                        .getInt(key, globalValue);
            } catch (Throwable ignored) {
                return globalValue;
            }
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), key, def);
        } catch (Throwable e) {
            return def;
        }
    }

    private static boolean readSystemBool(Context context, String key, boolean def) {
        try {
            SharedPreferences prefs = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                return prefs.getBoolean(key, def);
            }
        } catch (Throwable ignored) {
        }
        try {
            SharedPreferences prefs = context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                return prefs.getBoolean(key, def);
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.System.getString(context.getContentResolver(), key);
            if (value != null) {
                return "1".equals(value) || Boolean.parseBoolean(value);
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.Global.getString(context.getContentResolver(), key);
            if (value != null) {
                return "1".equals(value) || Boolean.parseBoolean(value);
            }
        } catch (Throwable ignored) {
        }
        return def;
    }

    private static void clickToast(Context context, Resources resources, View root, String idName, String message) {
        click(context, resources, root, idName, toastClick(context, message));
    }

    private static void checkForUpdates(final Activity activity) {
        logOperation(activity, "ACTION", "check_for_updates");
        Toast.makeText(activity, "正在检查更新...", Toast.LENGTH_SHORT).show();
        final Handler handler = new Handler(Looper.getMainLooper());
        new Thread(new Runnable() {
            public void run() {
                HttpURLConnection conn = null;
                try {
                    URL url = new URL(UPDATE_RELEASE_API);
                    conn = (HttpURLConnection) url.openConnection();
                    conn.setConnectTimeout(8000);
                    conn.setReadTimeout(10000);
                    conn.setRequestProperty("Accept", "application/vnd.github+json");
                    int code = conn.getResponseCode();
                    if (code == 404) {
                        postUpdateInfo(handler, activity, "检查更新",
                                "当前仓库还没有发布 Release\n当前版本：" + appVersion(activity)
                                        + "\n\n后续在 GitHub 发布 APK 后，这里会提示下载更新。");
                        return;
                    }
                    if (code < 200 || code >= 300) {
                        throw new IllegalStateException("HTTP " + code);
                    }
                    String json = readText(conn.getInputStream());
                    JSONObject release = softwareReleaseFromResponse(json);
                    if (release == null) {
                        postUpdateInfo(handler, activity, "检查更新",
                                "当前没有找到桌面软件 Release\n当前版本：" + appVersion(activity));
                        return;
                    }
                    final String tag = release.optString("tag_name", "");
                    final String name = release.optString("name", tag);
                    final String body = release.optString("body", "");
                    String apkUrl = null;
                    String apkName = null;
                    JSONArray assets = release.optJSONArray("assets");
                    if (assets != null) {
                        String fallbackApkUrl = null;
                        String fallbackApkName = null;
                        for (int i = 0; i < assets.length(); i++) {
                            JSONObject asset = assets.optJSONObject(i);
                            if (asset == null) continue;
                            String assetName = asset.optString("name", "");
                            String downloadUrl = asset.optString("browser_download_url", "");
                            if (!isApkAssetName(assetName) || downloadUrl.length() == 0) {
                                continue;
                            }
                            if (isLauncherUpdateApkName(assetName)) {
                                apkName = assetName;
                                apkUrl = downloadUrl;
                                break;
                            }
                            if (fallbackApkUrl == null && !isNonLauncherUpdateApkName(assetName)) {
                                fallbackApkName = assetName;
                                fallbackApkUrl = downloadUrl;
                            }
                        }
                        if (apkUrl == null) {
                            apkName = fallbackApkName;
                            apkUrl = fallbackApkUrl;
                        }
                    }
                    final String finalApkUrl = apkUrl;
                    final String finalApkName = apkName == null ? "smartisan-launcher-update.apk" : apkName;
                    final String finalName = name.length() == 0 ? tag : name;
                    final String finalBody = body;
                    handler.post(new Runnable() {
                        public void run() {
                            String current = appVersionName(activity);
                            boolean same = sameVersionTag(tag, current);
                            if (finalApkUrl == null) {
                                showInfoDialog(activity, "检查更新",
                                        "已找到线上版本：" + finalName
                                                + "\n但该 Release 没有桌面主 APK 安装包\n当前版本：" + appVersion(activity));
                                return;
                            }
                            if (same) {
                                showInfoDialog(activity, "检查更新",
                                        "当前已是最新版本\n版本：" + appVersion(activity));
                                return;
                            }
                            String message = "发现线上版本：" + finalName
                                    + "\n当前版本：" + appVersion(activity);
                            if (finalBody != null && finalBody.length() > 0) {
                                String shortBody = finalBody.length() > 120
                                        ? finalBody.substring(0, 120) + "..."
                                        : finalBody;
                                message += "\n\n" + shortBody;
                            }
                            final CachedUpdateDownload cached = cachedUpdateDownload(activity, tag, finalApkName);
                            String positive = "下载";
                            if (cached != null && cached.status == DownloadManager.STATUS_SUCCESSFUL) {
                                positive = "安装";
                            } else if (cached != null && (cached.status == DownloadManager.STATUS_RUNNING
                                    || cached.status == DownloadManager.STATUS_PENDING)) {
                                positive = "下载中";
                            }
                            showConfirmDialog(activity, "发现新版本", message, "取消", positive, new View.OnClickListener() {
                                public void onClick(View v) {
                                    if (cached != null && cached.status == DownloadManager.STATUS_SUCCESSFUL) {
                                        installApk(activity, cached.downloadId);
                                        return;
                                    }
                                    if (cached != null && (cached.status == DownloadManager.STATUS_RUNNING
                                            || cached.status == DownloadManager.STATUS_PENDING)) {
                                        Toast.makeText(activity, "更新包正在后台下载，请稍后安装", Toast.LENGTH_SHORT).show();
                                        return;
                                    }
                                    downloadUpdateApk(activity, finalApkUrl, finalApkName, tag);
                                }
                            });
                        }
                    });
                } catch (Throwable t) {
                    final String error = shortError(t);
                    postUpdateInfo(handler, activity, "检查更新",
                            "无法获取线上版本信息\n当前版本：" + appVersion(activity)
                                    + "\n\n" + error);
                } finally {
                    if (conn != null) {
                        conn.disconnect();
                    }
                }
            }
        }, "launcher-update-check").start();
    }

    private static void postUpdateInfo(Handler handler, final Activity activity, final String title, final String message) {
        handler.post(new Runnable() {
            public void run() {
                showInfoDialog(activity, title, message);
            }
        });
    }

    private static String readText(InputStream input) throws Exception {
        BufferedReader reader = new BufferedReader(new InputStreamReader(input, "UTF-8"));
        StringBuilder out = new StringBuilder();
        char[] buf = new char[2048];
        try {
            int read;
            while ((read = reader.read(buf)) != -1) {
                out.append(buf, 0, read);
            }
        } finally {
            try {
                reader.close();
            } catch (Throwable ignored) {
            }
        }
        return out.toString();
    }

    private static JSONObject softwareReleaseFromResponse(String json) throws Exception {
        String text = json == null ? "" : json.trim();
        if (text.startsWith("[")) {
            JSONArray releases = new JSONArray(text);
            JSONObject best = null;
            for (int i = 0; i < releases.length(); i++) {
                JSONObject item = releases.optJSONObject(i);
                if (item == null) {
                    continue;
                }
                String tag = item.optString("tag_name", "");
                if (tag.startsWith("launcher-") || tag.startsWith("Launcher-")) {
                    if (best == null || compareVersionTag(tag, best.optString("tag_name", "")) > 0) {
                        best = item;
                    }
                }
            }
            return best;
        }
        return new JSONObject(text);
    }

    private static boolean isApkAssetName(String name) {
        return name != null && name.toLowerCase().endsWith(".apk");
    }

    private static boolean isLauncherUpdateApkName(String name) {
        if (!isApkAssetName(name) || isNonLauncherUpdateApkName(name)) {
            return false;
        }
        String lower = name.toLowerCase();
        return lower.contains("launcher") || lower.contains("smartisan");
    }

    private static boolean isNonLauncherUpdateApkName(String name) {
        if (name == null) {
            return true;
        }
        String lower = name.toLowerCase();
        return lower.contains("quicksearch")
                || lower.contains("quick_search")
                || lower.contains("theme")
                || lower.contains("trans");
    }

    private static int compareVersionTag(String left, String right) {
        String[] a = normalizeVersionTag(left).split("[^0-9]+");
        String[] b = normalizeVersionTag(right).split("[^0-9]+");
        int count = Math.max(a.length, b.length);
        for (int i = 0; i < count; i++) {
            int ai = i < a.length ? parseVersionPart(a[i]) : 0;
            int bi = i < b.length ? parseVersionPart(b[i]) : 0;
            if (ai != bi) {
                return ai > bi ? 1 : -1;
            }
        }
        return normalizeVersionTag(left).compareToIgnoreCase(normalizeVersionTag(right));
    }

    private static int parseVersionPart(String part) {
        if (part == null || part.length() == 0) {
            return 0;
        }
        try {
            return Integer.parseInt(part);
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static boolean sameVersionTag(String online, String current) {
        String a = normalizeVersionTag(online);
        String b = normalizeVersionTag(current);
        return a.length() > 0 && a.equalsIgnoreCase(b);
    }

    private static String normalizeVersionTag(String value) {
        if (value == null) {
            return "";
        }
        String out = value.trim();
        if (out.startsWith("launcher-") || out.startsWith("Launcher-")) {
            out = out.substring("launcher-".length());
        }
        while (out.length() > 1 && (out.charAt(0) == 'v' || out.charAt(0) == 'V')) {
            out = out.substring(1);
        }
        return out;
    }

    private static void downloadUpdateApk(Activity activity, String url, String name, String tag) {
        try {
            if (!ensureDownloadPermission(activity)) {
                return;
            }
            File dir = activity.getExternalFilesDir(null);
            if (dir == null) {
                dir = activity.getFilesDir();
            }
            File out = new File(dir, name);
            try {
                File parent = out.getParentFile();
                if (parent != null && !parent.exists()) {
                    parent.mkdirs();
                }
                if (out.exists()) {
                    out.delete();
                }
            } catch (Throwable ignored) {
            }
            cancelUpdateNotification(activity);
            cancelPreviousUpdateDownload(activity);
            Toast.makeText(activity, "已开始下载更新包", Toast.LENGTH_SHORT).show();
            downloadUpdateApkWithDownloadManager(activity, updateDownloadCandidates(tag, name, url), out, tag,
                    showUpdateDownloadProgress(activity));
        } catch (Throwable t) {
            try {
                activity.startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url)));
            } catch (Throwable ignored) {
                Toast.makeText(activity, "无法下载更新包", Toast.LENGTH_SHORT).show();
            }
        }
    }

    private static String[] updateDownloadCandidates(String tag, String name, String githubUrl) {
        ArrayList<String> urls = new ArrayList<String>();
        if (tag != null && tag.length() > 0 && name != null && name.length() > 0) {
            urls.add(UPDATE_RELEASE_GITEE_MIRROR + Uri.encode(tag) + "/" + Uri.encode(name));
        }
        if (githubUrl != null && githubUrl.length() > 0 && !urls.contains(githubUrl)) {
            urls.add(githubUrl);
        }
        return urls.toArray(new String[urls.size()]);
    }

    private static void downloadUpdateApkWithDownloadManager(final Activity activity, final String[] urls,
                                                             final File out, final String tag,
                                                             final UpdateDownloadProgress ui) {
        downloadUpdateApkWithDownloadManager(activity, urls, out, tag, ui, 0);
    }

    private static void downloadUpdateApkWithDownloadManager(final Activity activity, final String[] urls,
                                                             final File out, final String tag,
                                                             final UpdateDownloadProgress ui,
                                                             final int index) {
        try {
            DownloadManager manager = (DownloadManager) activity.getSystemService(Context.DOWNLOAD_SERVICE);
            if (manager == null || urls == null || urls.length == 0 || index >= urls.length) {
                throw new IllegalStateException("DownloadManager unavailable");
            }
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(urls[index]));
            request.setTitle("锤子桌面更新");
            request.setDescription("正在下载更新包");
            request.setMimeType("application/vnd.android.package-archive");
            try {
                request.setDestinationUri(Uri.fromFile(out));
            } catch (Throwable ignored) {
            }
            try {
                request.allowScanningByMediaScanner();
            } catch (Throwable ignored) {
            }
            if (Build.VERSION.SDK_INT >= 11) {
                request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
            }
            final long downloadId = manager.enqueue(request);
            activity.getSharedPreferences(THEME_DOWNLOAD_PREFS, Context.MODE_PRIVATE)
                    .edit()
                    .putLong(PREF_UPDATE_DOWNLOAD_ID, downloadId)
                    .putString(PREF_UPDATE_DOWNLOAD_ID + ".path", out.getAbsolutePath())
                    .putString(PREF_UPDATE_DOWNLOAD_ID + ".url", urls[index])
                    .putString(PREF_UPDATE_DOWNLOAD_ID + ".tag", tag == null ? "" : tag)
                    .putString(PREF_UPDATE_DOWNLOAD_ID + ".name", out.getName())
                    .putLong(String.valueOf(downloadId), downloadId)
                    .putString(String.valueOf(downloadId) + ".path", out.getAbsolutePath())
                    .commit();
            updateUpdateProgressUi(activity, ui, index == 0 ? "正在连接国内镜像..." : "正在连接下载...", -1);
            notifyUpdateDownload(activity, index == 0 ? "正在连接国内镜像..." : "正在连接下载...", -1, false, downloadId);
            monitorUpdateDownload(activity, downloadId, ui, urls, out, tag, index);
        } catch (Throwable t) {
            dismissUpdateDownloadProgress(ui);
            notifyUpdateDownload(activity, "更新包下载失败", 0, true);
            Toast.makeText(activity, "更新包下载失败", Toast.LENGTH_SHORT).show();
        }
    }

    private static void downloadUpdateApkDirect(final Activity activity, final String[] urls,
                                                final File out, final UpdateDownloadProgress ui) {
        final Handler handler = new Handler(Looper.getMainLooper());
        updateUpdateProgressUi(activity, ui, "正在连接下载...", -1);
        notifyUpdateDownload(activity, "正在连接下载...", -1, false);
        new Thread(new Runnable() {
            public void run() {
                HttpURLConnection conn = null;
                InputStream input = null;
                FileOutputStream output = null;
                try {
                    Throwable lastError = null;
                    for (int i = 0; i < urls.length; i++) {
                        final boolean mirror = i == 0 && urls[i].startsWith(UPDATE_RELEASE_GITEE_MIRROR);
                        try {
                            handler.post(new Runnable() {
                                public void run() {
                                    updateUpdateProgressUi(activity, ui,
                                            mirror ? "正在连接国内镜像..." : "正在连接下载...", -1);
                                    notifyUpdateDownload(activity,
                                            mirror ? "正在连接国内镜像..." : "正在连接下载...", -1, false);
                                }
                            });
                            conn = openDownloadConnection(urls[i]);
                            int code = conn.getResponseCode();
                            if (code >= 200 && code < 300) {
                                break;
                            }
                            lastError = new IllegalStateException("HTTP " + code);
                            conn.disconnect();
                            conn = null;
                        } catch (Throwable t) {
                            lastError = t;
                            if (conn != null) {
                                try {
                                    conn.disconnect();
                                } catch (Throwable ignored) {
                                }
                                conn = null;
                            }
                        }
                    }
                    if (conn == null) {
                        throw lastError == null ? new IllegalStateException("No download url") : lastError;
                    }
                    long total = conn.getContentLength();
                    input = conn.getInputStream();
                    output = new FileOutputStream(out);
                    byte[] buffer = new byte[32768];
                    long downloaded = 0;
                    long lastUpdate = 0;
                    int read;
                    while ((read = input.read(buffer)) != -1) {
                        output.write(buffer, 0, read);
                        downloaded += read;
                        long now = System.currentTimeMillis();
                        if (now - lastUpdate > 300) {
                            lastUpdate = now;
                            final int percent = total > 0
                                    ? (int) Math.min(100, Math.max(0, (downloaded * 100L) / total))
                                    : -1;
                            handler.post(new Runnable() {
                                public void run() {
                                    updateUpdateProgressUi(activity, ui, percent >= 0
                                            ? "正在下载更新包... " + percent + "%"
                                            : "正在下载更新包...", percent);
                                    notifyUpdateDownload(activity, percent >= 0
                                            ? "正在下载更新包... " + percent + "%"
                                            : "正在下载更新包...", percent, false);
                                }
                            });
                        }
                    }
                    output.flush();
                    handler.post(new Runnable() {
                        public void run() {
                            dismissUpdateDownloadProgress(ui);
                            notifyUpdateDownload(activity, "下载完成，点击可手动安装", 100, true, out);
                            Toast.makeText(activity, "更新包下载完成，正在启动安装...", Toast.LENGTH_LONG).show();
                            installApkFile(activity, out);
                        }
                    });
                } catch (final Throwable t) {
                    try {
                        if (out.exists()) {
                            out.delete();
                        }
                    } catch (Throwable ignored) {
                    }
                    handler.post(new Runnable() {
                        public void run() {
                            dismissUpdateDownloadProgress(ui);
                            String error = "下载失败: " + shortError(t);
                            notifyUpdateDownload(activity, error, 0, true);
                            Toast.makeText(activity, "更新包" + error, Toast.LENGTH_LONG).show();
                        }
                    });
                } finally {
                    try {
                        if (output != null) output.close();
                    } catch (Throwable ignored) {
                    }
                    try {
                        if (input != null) input.close();
                    } catch (Throwable ignored) {
                    }
                    if (conn != null) {
                        conn.disconnect();
                    }
                }
            }
        }, "launcher-update-direct-download").start();
    }

    private static HttpURLConnection openDownloadConnection(String url) throws Exception {
        String current = url;
        for (int i = 0; i < 5; i++) {
            HttpURLConnection conn = (HttpURLConnection) new URL(current).openConnection();
            conn.setInstanceFollowRedirects(false);
            conn.setConnectTimeout(12000);
            conn.setReadTimeout(20000);
            conn.setRequestProperty("User-Agent", "SmartisanLauncherUpdate/1.0");
            conn.setRequestProperty("Accept", "application/octet-stream");
            int code = conn.getResponseCode();
            if (code == HttpURLConnection.HTTP_MOVED_PERM
                    || code == HttpURLConnection.HTTP_MOVED_TEMP
                    || code == HttpURLConnection.HTTP_SEE_OTHER
                    || code == 307
                    || code == 308) {
                String next = conn.getHeaderField("Location");
                conn.disconnect();
                if (next == null || next.length() == 0) {
                    throw new IllegalStateException("Redirect without Location");
                }
                current = next;
                continue;
            }
            return conn;
        }
        throw new IllegalStateException("Too many redirects");
    }

    private static UpdateDownloadProgress showUpdateDownloadProgress(Activity activity) {
        return showApkDownloadProgress(activity, "检查更新", "正在下载更新包...");
    }

    private static UpdateDownloadProgress showApkDownloadProgress(Activity activity, String title, String initialMessage) {
        final UpdateDownloadProgress ui = new UpdateDownloadProgress();
        try {
            int padding = dp(activity, 22);
            LinearLayout content = new LinearLayout(activity);
            content.setOrientation(LinearLayout.VERTICAL);
            content.setPadding(padding, dp(activity, 12), padding, dp(activity, 4));

            TextView message = new TextView(activity);
            message.setText(initialMessage);
            message.setTextSize(18);
            message.setTextColor(Color.rgb(80, 86, 104));
            message.setGravity(Gravity.CENTER_HORIZONTAL);
            content.addView(message, new LinearLayout.LayoutParams(-1, -2));

            ProgressBar progress = new ProgressBar(activity, null, android.R.attr.progressBarStyleHorizontal);
            progress.setIndeterminate(true);
            progress.setMax(100);
            LinearLayout.LayoutParams progressLp = new LinearLayout.LayoutParams(-1, dp(activity, 8));
            progressLp.topMargin = dp(activity, 18);
            content.addView(progress, progressLp);

            Dialog dialog = new AlertDialog.Builder(activity)
                    .setTitle(title)
                    .setView(content)
                    .setNegativeButton("后台下载", null)
                    .create();
            dialog.show();
            ui.dialog = dialog;
            ui.message = message;
            ui.progress = progress;
        } catch (Throwable ignored) {
        }
        return ui;
    }

    private static void monitorUpdateDownload(final Activity activity, final long downloadId,
                                              final UpdateDownloadProgress ui) {
        monitorUpdateDownload(activity, downloadId, ui, null, null, null, 0);
    }

    private static void monitorUpdateDownload(final Activity activity, final long downloadId,
                                              final UpdateDownloadProgress ui, final String[] urls,
                                              final File out, final String tag, final int index) {
        final Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() {
            public void run() {
                DownloadManager manager = (DownloadManager) activity.getSystemService(Context.DOWNLOAD_SERVICE);
                if (manager == null) {
                    return;
                }
                Cursor cursor = null;
                try {
                    cursor = manager.query(new DownloadManager.Query().setFilterById(downloadId));
                    if (cursor == null || !cursor.moveToFirst()) {
                        handler.postDelayed(this, 800);
                        return;
                    }
                    int status = cursor.getInt(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_STATUS));
                    updateDownloadProgressUi(activity, ui, status,
                            cursor.getInt(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_BYTES_DOWNLOADED_SO_FAR)),
                            cursor.getInt(cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_TOTAL_SIZE_BYTES)));
                    if (status == DownloadManager.STATUS_SUCCESSFUL) {
                        dismissUpdateDownloadProgress(ui);
                        notifyUpdateDownload(activity, "下载完成，点击可手动安装", 100, true, downloadId);
                        Toast.makeText(activity, "更新包下载完成，正在启动安装...", Toast.LENGTH_LONG).show();
                        installApk(activity, downloadId);
                        return;
                    }
                    if (status == DownloadManager.STATUS_FAILED) {
                        if (urls != null && out != null && index + 1 < urls.length) {
                            try {
                                manager.remove(downloadId);
                            } catch (Throwable ignored) {
                            }
                            updateUpdateProgressUi(activity, ui, "国内镜像下载失败，切换备用地址...", -1);
                            notifyUpdateDownload(activity, "国内镜像下载失败，切换备用地址...", -1, false);
                            downloadUpdateApkWithDownloadManager(activity, urls, out, tag, ui, index + 1);
                        } else {
                            dismissUpdateDownloadProgress(ui);
                            notifyUpdateDownload(activity, "更新包下载失败", 0, true);
                            Toast.makeText(activity, "更新包下载失败", Toast.LENGTH_SHORT).show();
                        }
                        return;
                    }
                } catch (Throwable ignored) {
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
                handler.postDelayed(this, 1200);
            }
        });
    }

    private static void updateUpdateProgressUi(Activity activity, UpdateDownloadProgress ui,
                                               String message, int percent) {
        if (ui == null || ui.message == null || ui.progress == null) {
            return;
        }
        try {
            ui.message.setText(message);
            if (percent >= 0) {
                ui.progress.setIndeterminate(false);
                ui.progress.setProgress(percent);
            } else {
                ui.progress.setIndeterminate(true);
            }
        } catch (Throwable ignored) {
        }
    }

    public static void stabilizeLauncherResume(final Activity activity) {
        if (activity == null) {
            return;
        }
        disableLegacyTouchSizeSweepOnModernAndroid();
        applyLauncherNavigationBarSetting(activity);
        requestLauncherFrame(activity);
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(new Runnable() {
            public void run() {
                requestLauncherFrame(activity);
            }
        }, 80);
        handler.postDelayed(new Runnable() {
            public void run() {
                requestLauncherFrame(activity);
            }
        }, 260);
        handler.postDelayed(new Runnable() {
            public void run() {
                requestLauncherFrame(activity);
                dismissPendingLauncherReloadLoading();
            }
        }, 1200);
    }

    private static void disableLegacyTouchSizeSweepOnModernAndroid() {
        if (Build.VERSION.SDK_INT < 35) {
            return;
        }
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            constants.getField("sweep_threshold").setInt(null, 100);
        } catch (Throwable ignored) {
        }
    }

    public static void showPendingLauncherReloadLoading(final Activity activity) {
        if (activity == null || !consumeThemeReloadLoadingPending(activity)) {
            return;
        }
        String message = themeReloadLoadingMessage(activity);
        clearThemeReloadLoadingPending(activity);
        showRestartLoading(activity, message, true);
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(new Runnable() {
            public void run() {
                requestLauncherFrame(activity);
            }
        }, 320);
        handler.postDelayed(new Runnable() {
            public void run() {
                requestLauncherFrame(activity);
            }
        }, 760);
        handler.postDelayed(new Runnable() {
            public void run() {
                requestLauncherFrame(activity);
                dismissPendingLauncherReloadLoading();
            }
        }, 1600);
    }

    private static void dismissPendingLauncherReloadLoading() {
        Dialog dialog = sLauncherReloadDialog;
        sLauncherReloadDialog = null;
        if (dialog == null) {
            return;
        }
        try {
            if (dialog.isShowing()) {
                dialog.dismiss();
            }
        } catch (Throwable ignored) {
        }
    }

    private static void requestLauncherFrame(Activity activity) {
        try {
            Window window = activity.getWindow();
            if (window != null) {
                View decor = window.getDecorView();
                if (decor != null) {
                    decor.setVisibility(View.VISIBLE);
                    decor.requestLayout();
                    decor.invalidate();
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            Class<?> launcherClass = Class.forName("com.smartisanos.launcher.J");
            Object launcher = launcherClass.getMethod("getInstance").invoke(null);
            if (launcher == null) {
                return;
            }
            Object surface = launcherClass.getMethod("Oa").invoke(launcher);
            if (surface instanceof View) {
                View view = (View) surface;
                view.setVisibility(View.VISIBLE);
                view.requestLayout();
                view.invalidate();
                try {
                    surface.getClass().getMethod("requestRender").invoke(surface);
                } catch (Throwable ignored) {
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private static void updateDownloadProgressUi(Activity activity, UpdateDownloadProgress ui,
                                                 int status, int downloaded, int total) {
        if (ui == null || ui.message == null || ui.progress == null) {
            return;
        }
        try {
            if (total > 0 && downloaded >= 0) {
                int percent = (int) Math.min(100, Math.max(0, (downloaded * 100L) / total));
                ui.progress.setIndeterminate(false);
                ui.progress.setProgress(percent);
                ui.message.setText("正在下载更新包... " + percent + "%");
            } else {
                ui.progress.setIndeterminate(status == DownloadManager.STATUS_RUNNING
                        || status == DownloadManager.STATUS_PENDING);
                ui.message.setText(status == DownloadManager.STATUS_PENDING
                        ? "等待开始下载..."
                        : "正在下载更新包...");
            }
        } catch (Throwable ignored) {
        }
    }

    private static void dismissUpdateDownloadProgress(UpdateDownloadProgress ui) {
        if (ui == null || ui.dialog == null) {
            return;
        }
        try {
            if (ui.dialog.isShowing()) {
                ui.dialog.dismiss();
            }
        } catch (Throwable ignored) {
        }
    }

    private static final class UpdateDownloadProgress {
        Dialog dialog;
        TextView message;
        ProgressBar progress;
    }

    private static final class CachedUpdateDownload {
        final long downloadId;
        final int status;

        CachedUpdateDownload(long downloadId, int status) {
            this.downloadId = downloadId;
            this.status = status;
        }
    }

    private static void installApkFile(Context activity, File file) {
        if (file == null || !file.exists()) {
            Toast.makeText(activity, "未找到下载的安装包，请重新下载", Toast.LENGTH_SHORT).show();
            return;
        }
        if (Build.VERSION.SDK_INT >= 21 && installApkWithPackageInstaller(activity, file)) {
            return;
        }
        Uri uri = apkInstallUri(activity, file);
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setDataAndType(uri, "application/vnd.android.package-archive");
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        try {
            grantInstallUri(activity, intent, uri);
            activity.startActivity(intent);
        } catch (Throwable t) {
            Intent fallback = new Intent(Intent.ACTION_INSTALL_PACKAGE);
            fallback.setData(uri);
            fallback.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            fallback.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            fallback.putExtra(Intent.EXTRA_RETURN_RESULT, false);
            try {
                grantInstallUri(activity, fallback, uri);
                activity.startActivity(fallback);
            } catch (Throwable ignored) {
                if (Build.VERSION.SDK_INT >= 21 && installApkWithPackageInstaller(activity, file)) {
                    return;
                }
                Toast.makeText(activity, "无法拉起安装程序，请确认系统有应用安装器", Toast.LENGTH_LONG).show();
            }
        }
    }

    private static Uri apkInstallUri(Context context, File file) {
        disableFileUriDeath();
        return Uri.fromFile(file);
    }

    private static void grantInstallUri(Context context, Intent intent, Uri uri) {
        if (context == null || intent == null || uri == null || !"content".equalsIgnoreCase(uri.getScheme())) {
            return;
        }
        try {
            List<ResolveInfo> targets = context.getPackageManager()
                    .queryIntentActivities(intent, Build.VERSION.SDK_INT >= 23 ? 0x00020000 : 0);
            if (targets == null) {
                return;
            }
            for (int i = 0; i < targets.size(); i++) {
                ResolveInfo info = targets.get(i);
                ActivityInfo activityInfo = info == null ? null : info.activityInfo;
                if (activityInfo != null && activityInfo.packageName != null) {
                    context.grantUriPermission(activityInfo.packageName, uri,
                            Intent.FLAG_GRANT_READ_URI_PERMISSION);
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private static boolean installApkWithPackageInstaller(Context context, File file) {
        PackageInstaller.Session session = null;
        InputStream input = null;
        OutputStream output = null;
        try {
            PackageInstaller installer = context.getPackageManager().getPackageInstaller();
            PackageInstaller.SessionParams params =
                    new PackageInstaller.SessionParams(PackageInstaller.SessionParams.MODE_FULL_INSTALL);
            String packageName = packageNameFromArchive(context, file);
            if (packageName != null && packageName.length() > 0) {
                params.setAppPackageName(packageName);
            }
            int sessionId = installer.createSession(params);
            session = installer.openSession(sessionId);
            input = new java.io.FileInputStream(file);
            output = session.openWrite(file.getName(), 0, file.length());
            byte[] buffer = new byte[65536];
            int read;
            while ((read = input.read(buffer)) != -1) {
                output.write(buffer, 0, read);
            }
            session.fsync(output);
            output.close();
            output = null;
            Intent callback = new Intent(QUICK_SEARCH_INSTALL_ACTION);
            callback.setPackage(context.getPackageName());
            callback.setClassName(context, MaintainedLauncherSettingsHost.QuickSearchInstallReceiver.class.getName());
            PendingIntent pendingIntent = PendingIntent.getBroadcast(context, sessionId, callback,
                    Build.VERSION.SDK_INT >= 23 ? PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE
                            : PendingIntent.FLAG_UPDATE_CURRENT);
            session.commit(pendingIntent.getIntentSender());
            Toast.makeText(context, "正在准备安装", Toast.LENGTH_SHORT).show();
            return true;
        } catch (Throwable ignored) {
            try {
                if (session != null) {
                    session.abandon();
                }
            } catch (Throwable ignored2) {
            }
            return false;
        } finally {
            try {
                if (output != null) output.close();
            } catch (Throwable ignored) {
            }
            try {
                if (input != null) input.close();
            } catch (Throwable ignored) {
            }
            try {
                if (session != null) session.close();
            } catch (Throwable ignored) {
            }
        }
    }

    private static String packageNameFromArchive(Context context, File file) {
        try {
            PackageManager pm = context.getPackageManager();
            android.content.pm.PackageInfo info = pm.getPackageArchiveInfo(file.getAbsolutePath(), 0);
            return info == null ? null : info.packageName;
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static final class QuickSearchInstallReceiver extends BroadcastReceiver {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (context == null || intent == null) {
                return;
            }
            if (UPDATE_INSTALL_ACTION.equals(intent.getAction())) {
                String path = intent.getStringExtra(EXTRA_UPDATE_APK_PATH);
                if (!TextUtils.isEmpty(path)) {
                    installApkFile(context, new File(path));
                } else {
                    Toast.makeText(context, "未找到下载的安装包，请重新下载", Toast.LENGTH_SHORT).show();
                }
                return;
            }
            int status = intent.getIntExtra(PackageInstaller.EXTRA_STATUS, PackageInstaller.STATUS_FAILURE);
            if (status == PackageInstaller.STATUS_SUCCESS) {
                Toast.makeText(context, "安装完成", Toast.LENGTH_SHORT).show();
                cancelUpdateNotification(context);
                return;
            }
            if (status == PackageInstaller.STATUS_PENDING_USER_ACTION) {
                Intent confirm = intent.getParcelableExtra(Intent.EXTRA_INTENT);
                if (confirm != null) {
                    confirm.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    try {
                        context.startActivity(confirm);
                        return;
                    } catch (Throwable ignored) {
                    }
                    notifyInstallConfirmation(context, confirm);
                    return;
                }
            }
            String message = intent.getStringExtra(PackageInstaller.EXTRA_STATUS_MESSAGE);
            if (TextUtils.isEmpty(message)) {
                message = "无法拉起安装程序，请确认系统有应用安装器";
            }
            notifyUpdateDownload(context, "安装未完成，点击可重试安装", 100, true, newestDownloadedUpdateApk(context));
            Toast.makeText(context, message, Toast.LENGTH_LONG).show();
        }
    }

    private static void notifyUpdateDownload(Context context, String message, int percent, boolean complete) {
        notifyUpdateDownload(context, message, percent, complete, null);
    }

    private static void notifyUpdateDownload(Context context, String message, int percent,
                                             boolean complete, File installFile) {
        notifyUpdateDownload(context, message, percent, complete, installFile, -1);
    }

    private static void notifyUpdateDownload(Context context, String message, int percent,
                                             boolean complete, long downloadId) {
        notifyUpdateDownload(context, message, percent, complete, null, downloadId);
    }

    private static void notifyUpdateDownload(Context context, String message, int percent,
                                             boolean complete, File installFile, long downloadId) {
        try {
            NotificationManager manager = (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
            if (manager == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationChannel channel = new NotificationChannel(UPDATE_NOTIFICATION_CHANNEL,
                        "桌面更新下载", NotificationManager.IMPORTANCE_LOW);
                manager.createNotificationChannel(channel);
            }
            Notification.Builder builder = Build.VERSION.SDK_INT >= 26
                    ? new Notification.Builder(context, UPDATE_NOTIFICATION_CHANNEL)
                    : new Notification.Builder(context);
            int icon = context.getApplicationInfo().icon;
            if (icon == 0) {
                icon = android.R.drawable.stat_sys_download;
            }
            builder.setSmallIcon(icon)
                    .setContentTitle("锤子桌面更新")
                    .setContentText(message)
                    .setOngoing(!complete)
                    .setAutoCancel(complete)
                    .setWhen(System.currentTimeMillis())
                    .setShowWhen(true);
            if (complete) {
                PendingIntent installIntent = updateInstallPendingIntent(context, installFile, downloadId);
                if (installIntent != null) {
                    builder.setContentIntent(installIntent);
                    builder.addAction(icon, "安装", installIntent);
                }
            }
            if (!complete) {
                builder.setProgress(100, Math.max(0, percent), percent < 0);
            } else {
                builder.setProgress(0, 0, false);
            }
            manager.notify(UPDATE_NOTIFICATION_ID, builder.build());
        } catch (Throwable ignored) {
        }
    }

    private static void cancelUpdateNotification(Context context) {
        try {
            NotificationManager manager = (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
            if (manager != null) {
                manager.cancel(UPDATE_NOTIFICATION_ID);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void cancelPreviousUpdateDownload(Context context) {
        try {
            SharedPreferences prefs = context.getSharedPreferences(THEME_DOWNLOAD_PREFS, Context.MODE_PRIVATE);
            long id = prefs.getLong(PREF_UPDATE_DOWNLOAD_ID, -1);
            if (id != -1) {
                DownloadManager manager = (DownloadManager) context.getSystemService(Context.DOWNLOAD_SERVICE);
                if (manager != null) {
                    manager.remove(id);
                }
            }
            prefs.edit()
                    .remove(PREF_UPDATE_DOWNLOAD_ID)
                    .remove(PREF_UPDATE_DOWNLOAD_ID + ".path")
                    .remove(PREF_UPDATE_DOWNLOAD_ID + ".url")
                    .remove(PREF_UPDATE_DOWNLOAD_ID + ".tag")
                    .remove(PREF_UPDATE_DOWNLOAD_ID + ".name")
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    private static void openBatteryOptimizationSettings(Activity activity) {
        String packageName = activity.getPackageName();
        Uri packageUri = Uri.parse("package:" + packageName);
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                PowerManager powerManager = (PowerManager) activity.getSystemService(Context.POWER_SERVICE);
                if (powerManager == null || !powerManager.isIgnoringBatteryOptimizations(packageName)) {
                    Intent intent = new Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS);
                    intent.setData(packageUri);
                    activity.startActivity(intent);
                    return;
                }
            } catch (Throwable ignored) {
            }
        }
        try {
            Intent intent = new Intent(Settings.ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS);
            activity.startActivity(intent);
            return;
        } catch (Throwable ignored) {
        }
        try {
            Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
            intent.setData(packageUri);
            activity.startActivity(intent);
            return;
        } catch (Throwable ignored) {
        }
        try {
            Intent intent = new Intent(Settings.ACTION_SETTINGS);
            activity.startActivity(intent);
        } catch (Throwable t) {
            Toast.makeText(activity, "无法打开系统电池优化设置：" + shortError(t), Toast.LENGTH_LONG).show();
        }
    }

    private static void showAboutPage(final Activity activity) {
        try {
            final SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = inflate(activity, context, "setting_about_us");
            bindBackTitle(activity, resources, root, "view_title",
                    getString(resources, "setting_about_us", "关于我们"));
            hide(resources, root, "setting_more_product");
            bindOperationLogSection(activity, root, resources);
            tuneScrollBars(root);
            activity.setContentView(root);
        } catch (Throwable t) {
            showInfoDialog(activity, "关于我们",
                    "锤子桌面 original-port\n版本：" + appVersion(activity)
                            + "\n包名：" + activity.getPackageName());
        }
    }

    private static GradientDrawable cardBg(Context context) {
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(0xffffffff);
        bg.setStroke(1, 0xffdddddd);
        bg.setCornerRadius(dp(context, 5));
        return bg;
    }

    private static LinearLayout.LayoutParams sectionTitleLp(Context context) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, dp(context, 46));
        lp.topMargin = dp(context, 18);
        return lp;
    }

    private static TextView sectionTitle(Context context, String value) {
        TextView title = text(context, value, 18, 0xff7d828d, false);
        title.setGravity(Gravity.CENTER_VERTICAL);
        title.setPadding(dp(context, 20), 0, 0, 0);
        return title;
    }

    private static void addAboutAppRow(final Activity activity, LinearLayout parent, String title, String subtitle, int color) {
        LinearLayout row = new LinearLayout(activity);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(dp(activity, 22), 0, dp(activity, 22), 0);
        TextView icon = text(activity, title.substring(0, 1), 22, 0xffffffff, true);
        icon.setGravity(Gravity.CENTER);
        GradientDrawable iconBg = new GradientDrawable();
        iconBg.setColor(color);
        iconBg.setCornerRadius(dp(activity, 4));
        icon.setBackgroundDrawable(iconBg);
        row.addView(icon, new LinearLayout.LayoutParams(dp(activity, 54), dp(activity, 54)));

        LinearLayout labels = new LinearLayout(activity);
        labels.setOrientation(LinearLayout.VERTICAL);
        labels.setPadding(dp(activity, 18), 0, dp(activity, 10), 0);
        TextView tvTitle = text(activity, title, 18, 0xff666b76, false);
        TextView tvSub = text(activity, subtitle, 13, 0xffb1b4bb, false);
        tvSub.setSingleLine(true);
        labels.addView(tvTitle, new LinearLayout.LayoutParams(-1, -2));
        labels.addView(tvSub, new LinearLayout.LayoutParams(-1, -2));
        row.addView(labels, new LinearLayout.LayoutParams(0, -2, 1.0f));

        TextView install = text(activity, "安装", 16, 0xff555d6d, false);
        install.setGravity(Gravity.CENTER);
        GradientDrawable buttonBg = new GradientDrawable();
        buttonBg.setColor(0xfffbfbfb);
        buttonBg.setStroke(1, 0xffd8d8d8);
        buttonBg.setCornerRadius(dp(activity, 4));
        install.setBackgroundDrawable(buttonBg);
        install.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Toast.makeText(activity, "暂无内置安装源", Toast.LENGTH_SHORT).show();
            }
        });
        row.addView(install, new LinearLayout.LayoutParams(dp(activity, 118), dp(activity, 48)));
        parent.addView(row, new LinearLayout.LayoutParams(-1, dp(activity, 92)));
    }

    private static void bindOperationLogSection(final Activity activity, View root, Resources resources) {
        LinearLayout content = aboutContent(root, resources);
        if (content == null) {
            return;
        }
        addAboutSectionTitle(activity, content, "操作日志");
        TextView status = text(activity, operationLogStatus(activity), 13, 0xff8a8f99, false);
        status.setPadding(dp(activity, 20), 0, dp(activity, 20), dp(activity, 8));
        status.setLineSpacing(dp(activity, 2), 1.0f);
        content.addView(status, new LinearLayout.LayoutParams(-1, -2));

        LinearLayout actions = new LinearLayout(activity);
        actions.setOrientation(LinearLayout.HORIZONTAL);
        actions.setPadding(dp(activity, 20), 0, dp(activity, 20), 0);
        final boolean active = isOperationLogActive(activity);
        TextView toggle = aboutActionButton(activity, active ? "结束并保存" : "开始记录", active ? 0xffd85b5b : 0xff5f8fe8);
        toggle.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                if (isOperationLogActive(activity)) {
                    stopOperationLog(activity, "user_stop");
                    Toast.makeText(activity, "日志已保存", Toast.LENGTH_SHORT).show();
                } else {
                    startOperationLog(activity);
                    Toast.makeText(activity, "已开始记录操作日志", Toast.LENGTH_SHORT).show();
                }
                showAboutPage(activity);
            }
        });
        actions.addView(toggle, new LinearLayout.LayoutParams(0, dp(activity, 48), 1.0f));

        TextView refresh = aboutActionButton(activity, "刷新列表", 0xff555d6d);
        refresh.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                showAboutPage(activity);
            }
        });
        LinearLayout.LayoutParams refreshLp = new LinearLayout.LayoutParams(0, dp(activity, 48), 1.0f);
        refreshLp.leftMargin = dp(activity, 10);
        actions.addView(refresh, refreshLp);
        content.addView(actions, new LinearLayout.LayoutParams(-1, dp(activity, 58)));

        File[] logs = operationLogFiles(activity);
        if (logs.length == 0) {
            TextView empty = text(activity, "暂无日志。开始记录后，日志会按日期保存在应用私有目录。", 14, 0xff999999, false);
            empty.setPadding(dp(activity, 20), dp(activity, 8), dp(activity, 20), dp(activity, 16));
            content.addView(empty, new LinearLayout.LayoutParams(-1, -2));
            return;
        }
        for (int i = 0; i < logs.length && i < 8; i++) {
            addOperationLogRow(activity, content, logs[i]);
        }
    }

    private static PendingIntent updateInstallPendingIntent(Context context, File file, long downloadId) {
        if (downloadId == -1 && (file == null || !file.exists())) {
            return null;
        }
        try {
            Intent intent = new Intent(UPDATE_INSTALL_ACTION);
            intent.setClassName(context.getPackageName(),
                    "com.smartisanos.launcher.theme.ThemeChooserActivity");
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            intent.addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP);
            if (downloadId != -1) {
                intent.putExtra(EXTRA_UPDATE_DOWNLOAD_ID, downloadId);
            } else {
                intent.putExtra(EXTRA_UPDATE_APK_PATH, file.getAbsolutePath());
            }
            int flags = PendingIntent.FLAG_UPDATE_CURRENT;
            if (Build.VERSION.SDK_INT >= 23) {
                flags |= PendingIntent.FLAG_IMMUTABLE;
            }
            return PendingIntent.getActivity(context, UPDATE_NOTIFICATION_ID, intent, flags);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void notifyInstallConfirmation(Context context, Intent confirm) {
        try {
            NotificationManager manager = (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
            if (manager == null || confirm == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationChannel channel = new NotificationChannel(UPDATE_NOTIFICATION_CHANNEL,
                        "桌面更新下载", NotificationManager.IMPORTANCE_DEFAULT);
                manager.createNotificationChannel(channel);
            }
            confirm.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            int flags = PendingIntent.FLAG_UPDATE_CURRENT;
            if (Build.VERSION.SDK_INT >= 23) {
                flags |= PendingIntent.FLAG_IMMUTABLE;
            }
            PendingIntent pendingIntent = PendingIntent.getActivity(context,
                    UPDATE_INSTALL_NOTIFICATION_ID, confirm, flags);
            Notification.Builder builder = Build.VERSION.SDK_INT >= 26
                    ? new Notification.Builder(context, UPDATE_NOTIFICATION_CHANNEL)
                    : new Notification.Builder(context);
            int icon = context.getApplicationInfo().icon;
            if (icon == 0) {
                icon = android.R.drawable.stat_sys_download_done;
            }
            builder.setSmallIcon(icon)
                    .setContentTitle("锤子桌面更新")
                    .setContentText("点击确认安装")
                    .setContentIntent(pendingIntent)
                    .setAutoCancel(true)
                    .setWhen(System.currentTimeMillis())
                    .setShowWhen(true)
                    .addAction(icon, "确认安装", pendingIntent);
            manager.notify(UPDATE_INSTALL_NOTIFICATION_ID, builder.build());
        } catch (Throwable ignored) {
        }
    }

    private static File newestDownloadedUpdateApk(Context context) {
        try {
            File dir = context.getExternalFilesDir(null);
            if (dir == null) {
                dir = context.getFilesDir();
            }
            File[] files = dir.listFiles();
            File newest = null;
            if (files != null) {
                for (File file : files) {
                    String name = file.getName();
                    if (file.isFile() && name != null && name.toLowerCase().endsWith(".apk")) {
                        if (newest == null || file.lastModified() > newest.lastModified()) {
                            newest = file;
                        }
                    }
                }
            }
            return newest;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static LinearLayout aboutContent(View root, Resources resources) {
        View scroll = byId(root, resources, "about_us_scrollview");
        if (scroll instanceof ScrollView) {
            View child = ((ScrollView) scroll).getChildAt(0);
            if (child instanceof LinearLayout) {
                return (LinearLayout) child;
            }
        }
        return null;
    }

    private static void addAboutSectionTitle(Context context, LinearLayout parent, String title) {
        TextView view = text(context, title, 18, 0xff666b76, true);
        view.setGravity(Gravity.CENTER_VERTICAL);
        view.setPadding(dp(context, 20), dp(context, 20), dp(context, 20), dp(context, 8));
        parent.addView(view, new LinearLayout.LayoutParams(-1, dp(context, 64)));
    }

    private static TextView aboutActionButton(Context context, String label, int color) {
        TextView button = text(context, label, 15, color, false);
        button.setGravity(Gravity.CENTER);
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(0xfffbfbfb);
        bg.setStroke(1, 0xffd8d8d8);
        bg.setCornerRadius(dp(context, 4));
        button.setBackgroundDrawable(bg);
        return button;
    }

    private static void addOperationLogRow(final Activity activity, LinearLayout parent, final File file) {
        LinearLayout row = new LinearLayout(activity);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(dp(activity, 20), dp(activity, 4), dp(activity, 20), dp(activity, 4));

        LinearLayout labels = new LinearLayout(activity);
        labels.setOrientation(LinearLayout.VERTICAL);
        TextView name = text(activity, file.getName(), 14, 0xff555d6d, false);
        TextView meta = text(activity, readableBytes(file.length()) + "  " + formatTime(file.lastModified()), 12, 0xff9a9fa8, false);
        labels.addView(name, new LinearLayout.LayoutParams(-1, -2));
        labels.addView(meta, new LinearLayout.LayoutParams(-1, -2));
        row.addView(labels, new LinearLayout.LayoutParams(0, -2, 1.0f));

        TextView view = aboutActionButton(activity, "查看", 0xff5f8fe8);
        view.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                showOperationLogPreview(activity, file);
            }
        });
        row.addView(view, new LinearLayout.LayoutParams(dp(activity, 74), dp(activity, 42)));

        TextView delete = aboutActionButton(activity, "删除", 0xffd85b5b);
        delete.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                if (file.equals(sOperationLogFile) && isOperationLogActive(activity)) {
                    Toast.makeText(activity, "正在记录的日志不能删除", Toast.LENGTH_SHORT).show();
                    return;
                }
                if (file.delete()) {
                    Toast.makeText(activity, "已删除日志", Toast.LENGTH_SHORT).show();
                } else {
                    Toast.makeText(activity, "删除失败", Toast.LENGTH_SHORT).show();
                }
                showAboutPage(activity);
            }
        });
        LinearLayout.LayoutParams deleteLp = new LinearLayout.LayoutParams(dp(activity, 74), dp(activity, 42));
        deleteLp.leftMargin = dp(activity, 8);
        row.addView(delete, deleteLp);
        parent.addView(row, new LinearLayout.LayoutParams(-1, dp(activity, 62)));
    }

    private static void startOperationLog(Context context) {
        synchronized (OPERATION_LOG_LOCK) {
            try {
                File dir = operationLogDir(context);
                if (!dir.exists()) {
                    dir.mkdirs();
                }
                String stamp = new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.US).format(new Date());
                sOperationLogFile = new File(dir, "operation-" + stamp + ".log");
                sOperationLogcatFile = new File(dir, "operation-logcat-" + stamp + ".log");
                sOperationLogWriter = new BufferedWriter(new OutputStreamWriter(
                        new FileOutputStream(sOperationLogFile, true), "UTF-8"));
                context.getSharedPreferences(OPERATION_LOG_PREFS, Context.MODE_PRIVATE).edit()
                        .putBoolean(PREF_OPERATION_LOG_ACTIVE, true)
                        .putString(PREF_OPERATION_LOG_FILE, sOperationLogFile.getAbsolutePath())
                        .apply();
                installOperationLogExceptionHandler(context.getApplicationContext() == null
                        ? context : context.getApplicationContext());
                writeOperationLogLocked("START", "package=" + context.getPackageName()
                        + ", version=" + appVersionName(context)
                        + ", sdk=" + Build.VERSION.SDK_INT);
                writeOperationLogLocked("INFO", "main_log=" + sOperationLogFile.getAbsolutePath());
                writeOperationLogLocked("INFO", "logcat_log=" + sOperationLogcatFile.getAbsolutePath());
                startOperationLogcatThread();
                pruneOperationLogs(context, 30);
            } catch (Throwable t) {
                closeQuietly(sOperationLogWriter);
                sOperationLogWriter = null;
                Toast.makeText(context, "无法开始记录日志：" + shortError(t), Toast.LENGTH_LONG).show();
            }
        }
    }

    private static void stopOperationLog(Context context, String reason) {
        synchronized (OPERATION_LOG_LOCK) {
            if (sOperationLogWriter == null) {
                File active = activeOperationLogFile(context);
                if (active != null) {
                    appendText(active, operationLogLine("END", "recovered_after_process_restart, reason=" + reason));
                }
            } else {
                writeOperationLogLocked("END", "reason=" + reason);
            }
            context.getSharedPreferences(OPERATION_LOG_PREFS, Context.MODE_PRIVATE).edit()
                    .putBoolean(PREF_OPERATION_LOG_ACTIVE, false)
                    .remove(PREF_OPERATION_LOG_FILE)
                    .apply();
            stopOperationLogcatThread();
            closeQuietly(sOperationLogWriter);
            sOperationLogWriter = null;
            sOperationLogFile = null;
            sOperationLogcatFile = null;
        }
    }

    private static boolean isOperationLogActive(Context context) {
        if (sOperationLogWriter != null) {
            return true;
        }
        return context.getSharedPreferences(OPERATION_LOG_PREFS, Context.MODE_PRIVATE)
                .getBoolean(PREF_OPERATION_LOG_ACTIVE, false);
    }

    private static String operationLogStatus(Context context) {
        File dir = operationLogDir(context);
        String path = dir.getAbsolutePath();
        if (isOperationLogActive(context)) {
            File active = activeOperationLogFile(context);
            return "正在记录。日志目录：" + path
                    + (active == null ? "" : "\n当前文件：" + active.getName());
        }
        return "未记录。开启后会在后台自动写入关键操作和异常信息；正常使用不弹出日志。"
                + "\n系统 logcat 会另存为配套文件，供 ADB 排查时读取。"
                + "\nADB 路径：" + path;
    }

    private static File activeOperationLogFile(Context context) {
        String path = context.getSharedPreferences(OPERATION_LOG_PREFS, Context.MODE_PRIVATE)
                .getString(PREF_OPERATION_LOG_FILE, null);
        if (path == null || path.length() == 0) {
            return null;
        }
        return new File(path);
    }

    private static File operationLogDir(Context context) {
        return new File(context.getFilesDir(), OPERATION_LOG_DIR);
    }

    private static File[] operationLogFiles(Context context) {
        File dir = operationLogDir(context);
        File[] files = dir.listFiles();
        if (files == null) {
            return new File[0];
        }
        ArrayList<File> result = new ArrayList<File>();
        for (int i = 0; i < files.length; i++) {
            File file = files[i];
            if (file != null && file.isFile() && file.getName().startsWith("operation-")
                    && !file.getName().startsWith("operation-logcat-")
                    && file.getName().endsWith(".log")) {
                result.add(file);
            }
        }
        Collections.sort(result, new Comparator<File>() {
            public int compare(File a, File b) {
                long diff = b.lastModified() - a.lastModified();
                return diff == 0 ? b.getName().compareTo(a.getName()) : (diff > 0 ? 1 : -1);
            }
        });
        return result.toArray(new File[result.size()]);
    }

    private static void pruneOperationLogs(Context context, int keep) {
        File[] files = operationLogFiles(context);
        for (int i = keep; i < files.length; i++) {
            try {
                files[i].delete();
            } catch (Throwable ignored) {
            }
        }
    }

    private static void resumeOperationLogIfNeeded(Context context) {
        if (context == null || !isOperationLogActive(context)) {
            return;
        }
        installOperationLogExceptionHandler(context.getApplicationContext() == null
                ? context : context.getApplicationContext());
        logOperation(context, "RESUME_CHECK", "settings_host_loaded");
    }

    private static void installOperationLogExceptionHandler(final Context context) {
        if (sOperationLogHandlerInstalled) {
            return;
        }
        sPreviousUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
            public void uncaughtException(Thread thread, Throwable ex) {
                logOperation(context, "UNCAUGHT", threadName(thread) + " " + stackTraceText(ex));
                if (sPreviousUncaughtExceptionHandler != null) {
                    sPreviousUncaughtExceptionHandler.uncaughtException(thread, ex);
                }
            }
        });
        sOperationLogHandlerInstalled = true;
    }

    private static void logOperation(Context context, String event, String detail) {
        if (context == null || !isOperationLogActive(context)) {
            return;
        }
        synchronized (OPERATION_LOG_LOCK) {
            try {
                if (sOperationLogWriter == null) {
                    File active = activeOperationLogFile(context);
                    if (active == null) {
                        return;
                    }
                    sOperationLogFile = active;
                    sOperationLogWriter = new BufferedWriter(new OutputStreamWriter(
                            new FileOutputStream(active, true), "UTF-8"));
                    writeOperationLogLocked("RESUME", "writer_reopened");
                }
                writeOperationLogLocked(event, detail);
            } catch (Throwable ignored) {
            }
        }
    }

    private static void writeOperationLogLocked(String event, String detail) {
        if (sOperationLogWriter == null) {
            return;
        }
        try {
            sOperationLogWriter.write(operationLogLine(event, detail));
            sOperationLogWriter.flush();
        } catch (Throwable ignored) {
        }
    }

    private static String operationLogLine(String event, String detail) {
        return formatTime(System.currentTimeMillis()) + " [" + event + "] "
                + (detail == null ? "" : detail) + "\n";
    }

    private static void startOperationLogcatThread() {
        if (sOperationLogcatFile == null || sOperationLogcatThread != null) {
            return;
        }
        final File out = sOperationLogcatFile;
        sOperationLogcatThread = new Thread(new Runnable() {
            public void run() {
                BufferedReader reader = null;
                BufferedWriter writer = null;
                try {
                    sOperationLogcatProcess = Runtime.getRuntime().exec(new String[]{"logcat", "-v", "threadtime"});
                    reader = new BufferedReader(new InputStreamReader(sOperationLogcatProcess.getInputStream()));
                    writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(out, true), "UTF-8"));
                    String line;
                    while ((line = reader.readLine()) != null) {
                        writer.write(line);
                        writer.newLine();
                        writer.flush();
                    }
                } catch (Throwable t) {
                    appendText(out, operationLogLine("LOGCAT_ERROR", shortError(t)));
                } finally {
                    closeQuietly(reader);
                    closeQuietly(writer);
                }
            }
        }, "LauncherOperationLogcat");
        sOperationLogcatThread.start();
    }

    private static void stopOperationLogcatThread() {
        try {
            if (sOperationLogcatProcess != null) {
                sOperationLogcatProcess.destroy();
            }
        } catch (Throwable ignored) {
        }
        sOperationLogcatProcess = null;
        sOperationLogcatThread = null;
    }

    private static void showOperationLogPreview(Activity activity, File file) {
        showInfoDialog(activity, file.getName(), tailText(file, 6000));
    }

    private static String tailText(File file, int maxChars) {
        BufferedReader reader = null;
        try {
            StringBuilder builder = new StringBuilder();
            reader = new BufferedReader(new InputStreamReader(new java.io.FileInputStream(file), "UTF-8"));
            String line;
            while ((line = reader.readLine()) != null) {
                builder.append(line).append('\n');
                if (builder.length() > maxChars) {
                    builder.delete(0, builder.length() - maxChars);
                }
            }
            return builder.length() == 0 ? "空日志" : builder.toString();
        } catch (Throwable t) {
            return "读取失败：" + shortError(t);
        } finally {
            closeQuietly(reader);
        }
    }

    private static void appendText(File file, String text) {
        BufferedWriter writer = null;
        try {
            writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), "UTF-8"));
            writer.write(text);
            writer.flush();
        } catch (Throwable ignored) {
        } finally {
            closeQuietly(writer);
        }
    }

    private static String stackTraceText(Throwable throwable) {
        if (throwable == null) {
            return "";
        }
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        java.io.PrintWriter writer = new java.io.PrintWriter(out);
        throwable.printStackTrace(writer);
        writer.flush();
        return out.toString();
    }

    private static String threadName(Thread thread) {
        return thread == null ? "unknown-thread" : thread.getName();
    }

    private static String readableBytes(long bytes) {
        if (bytes < 1024L) {
            return bytes + " B";
        }
        long kb = bytes / 1024L;
        if (kb < 1024L) {
            return kb + " KB";
        }
        return (kb / 1024L) + " MB";
    }

    private static String formatTime(long time) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date(time));
    }

    private static void closeQuietly(java.io.Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Throwable ignored) {
        }
    }

    private static void addFollowRow(Context context, LinearLayout parent, String left, String right) {
        LinearLayout row = new LinearLayout(context);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(dp(context, 20), 0, dp(context, 20), 0);
        TextView title = text(context, left, 20, 0xff555d6d, false);
        row.addView(title, new LinearLayout.LayoutParams(0, -1, 1.0f));
        TextView value = text(context, right, 16, 0xff6f91df, false);
        value.setGravity(Gravity.CENTER_VERTICAL | Gravity.RIGHT);
        row.addView(value, new LinearLayout.LayoutParams(0, -1, 1.0f));
        parent.addView(row, new LinearLayout.LayoutParams(-1, dp(context, 72)));
    }

    private static void addDivider(Context context, LinearLayout parent) {
        View line = new View(context);
        line.setBackgroundColor(0xffeeeeee);
        parent.addView(line, new LinearLayout.LayoutParams(-1, 1));
    }

    private static void showOcdOptionsPage(final Activity activity) {
        try {
            final SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = inflate(activity, context, "setting_ocd_options");
            bindBackTitle(activity, resources, root, "view_title",
                    getString(resources, "obsession_header_title", "OCD Settings"));
            bindSwitch(activity, resources, root, "item_id_hide_lable", "launcher_hide_lable", false);
            bindSwitch(activity, resources, root, "item_id_hide_navigation_bar", "launcher_hide_navigation_bar", false);
            bindSwitch(activity, resources, root, "item_id_hide_badge", "launcher_hide_badge", false);
            bindSwitch(activity, resources, root, "item_id_unlock_anim", "launcher_unlock_animation_enabled", false);
            bindSwitch(activity, resources, root, "item_id_search_page_enabled", KEY_SEARCH_PAGE_ENABLED, true);
            tuneScrollBars(root);
            activity.setContentView(root);
        } catch (Throwable t) {
            showInfoDialog(activity, "OCD Settings", "Unable to open OCD settings");
        }
    }

    private static void showInfoDialog(final Activity activity, String title, String message) {
        final Dialog dialog = new Dialog(activity);
        LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(0, 0, 0, 0);
        GradientDrawable bg = new GradientDrawable();
        bg.setColor(0xfffbfbfb);
        bg.setCornerRadius(dp(activity, 4));
        root.setBackground(bg);

        TextView titleView = text(activity, title, 18, 0xff333333, true);
        titleView.setGravity(Gravity.CENTER);
        root.addView(titleView, new LinearLayout.LayoutParams(-1, dp(activity, 54)));

        View line = new View(activity);
        line.setBackgroundColor(0xffe5e5e5);
        root.addView(line, new LinearLayout.LayoutParams(-1, 1));

        final boolean longMessage = message != null && message.length() > 600;
        TextView messageView = text(activity, message, longMessage ? 12 : 14, 0xff666666, false);
        messageView.setGravity(longMessage ? (Gravity.LEFT | Gravity.TOP) : Gravity.CENTER);
        messageView.setLineSpacing(dp(activity, 2), 1.0f);
        messageView.setPadding(dp(activity, 24), dp(activity, 20), dp(activity, 24), dp(activity, 20));
        if (longMessage) {
            ScrollView messageScroll = new ScrollView(activity);
            messageScroll.setFillViewport(false);
            messageScroll.setOverScrollMode(View.OVER_SCROLL_IF_CONTENT_SCROLLS);
            messageScroll.addView(messageView, new ScrollView.LayoutParams(-1, -2));
            int maxHeight = Math.max(dp(activity, 260),
                    activity.getResources().getDisplayMetrics().heightPixels - dp(activity, 260));
            root.addView(messageScroll, new LinearLayout.LayoutParams(-1, maxHeight));
        } else {
            root.addView(messageView, new LinearLayout.LayoutParams(-1, -2));
        }

        View footerLine = new View(activity);
        footerLine.setBackgroundColor(0xffe5e5e5);
        root.addView(footerLine, new LinearLayout.LayoutParams(-1, 1));

        TextView ok = dialogButton(activity, "确定", 0xff5f8fe8);
        ok.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                dialog.dismiss();
            }
        });
        root.addView(ok, new LinearLayout.LayoutParams(-1, dp(activity, 48)));

        dialog.setContentView(root);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
        }
        dialog.show();
        Window shown = dialog.getWindow();
        if (shown != null) {
            shown.setLayout(dp(activity, 300), -2);
        }
    }

    private static String appVersion(Context context) {
        try {
            android.content.pm.PackageInfo info = context.getPackageManager()
                    .getPackageInfo(context.getPackageName(), 0);
            if (info.versionName != null && info.versionName.length() > 0) {
                return info.versionName + " (" + info.versionCode + ")";
            }
            return String.valueOf(info.versionCode);
        } catch (Throwable ignored) {
            return "unknown";
        }
    }

    private static String appVersionName(Context context) {
        try {
            android.content.pm.PackageInfo info = context.getPackageManager()
                    .getPackageInfo(context.getPackageName(), 0);
            return info.versionName == null ? "" : info.versionName;
        } catch (Throwable ignored) {
            return "";
        }
    }

    private static void click(Context context, Resources resources, View root, String idName, View.OnClickListener listener) {
        View view = find(resources, root, idName);
        if (view != null) {
            view.setOnClickListener(guardedSettingsClick(idName, listener));
            view.setClickable(true);
        }
    }

    private static void armSettingsClickGuard() {
        sSettingsClickBlockedUntil = android.os.SystemClock.uptimeMillis() + SETTINGS_CLICK_GUARD_MS;
    }

    private static boolean isSettingsClickGuardActive(String source) {
        long remain = sSettingsClickBlockedUntil - android.os.SystemClock.uptimeMillis();
        if (remain > 0L) {
            Log.d(LOG_TAG, "Ignore early settings click: " + source + ", remain=" + remain + "ms");
            logOperation(null, "CLICK_BLOCKED", source + ", remain=" + remain + "ms");
            return true;
        }
        return false;
    }

    private static View.OnClickListener guardedSettingsClick(final String source, final View.OnClickListener listener) {
        return new View.OnClickListener() {
            public void onClick(View v) {
                if (listener == null || isSettingsClickGuardActive(source)) {
                    return;
                }
                logOperation(v == null ? null : v.getContext(), "CLICK", source);
                listener.onClick(v);
            }
        };
    }

    private static void hide(Resources resources, View root, String idName) {
        View view = find(resources, root, idName);
        if (view != null) {
            view.setVisibility(View.GONE);
        }
    }

    private static View find(Resources resources, View root, String idName) {
        int id = resources.getIdentifier(idName, "id", SETTINGS_PKG);
        return id == 0 ? null : root.findViewById(id);
    }

    private static View.OnClickListener toastClick(final Context context, final String message) {
        return new View.OnClickListener() {
            public void onClick(View v) {
                Toast.makeText(context, message, Toast.LENGTH_SHORT).show();
            }
        };
    }

    private static Bitmap assetBitmap(Context context, String name) {
        try {
            InputStream in = context.getAssets().open(name);
            try {
                return BitmapFactory.decodeStream(in);
            } finally {
                in.close();
            }
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Bitmap sampledAssetBitmap(Context context, String name, int targetW, int targetH) {
        String key = name + "#" + targetW + "x" + targetH;
        synchronized (sThemePreviewCache) {
            Bitmap cached = sThemePreviewCache.get(key);
            if (cached != null && !cached.isRecycled()) {
                return cached;
            }
        }
        InputStream in = null;
        try {
            BitmapFactory.Options bounds = new BitmapFactory.Options();
            bounds.inJustDecodeBounds = true;
            in = context.getAssets().open(name);
            BitmapFactory.decodeStream(in, null, bounds);
            try {
                in.close();
            } catch (Throwable ignored) {
            }
            in = null;
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = sampleSize(bounds.outWidth, bounds.outHeight, targetW, targetH);
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            in = context.getAssets().open(name);
            Bitmap bitmap = BitmapFactory.decodeStream(in, null, options);
            if (bitmap != null) {
                synchronized (sThemePreviewCache) {
                    if (sThemePreviewCache.size() > 48) {
                        sThemePreviewCache.clear();
                    }
                    sThemePreviewCache.put(key, bitmap);
                }
            }
            return bitmap;
        } catch (Throwable ignored) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static int sampleSize(int width, int height, int targetW, int targetH) {
        int sample = 1;
        if (width <= 0 || height <= 0 || targetW <= 0 || targetH <= 0) {
            return sample;
        }
        while ((width / (sample * 2)) >= targetW && (height / (sample * 2)) >= targetH) {
            sample *= 2;
        }
        return sample;
    }

    private static Bitmap themePreviewBitmap(Context context, String themeId) {
        int mode = readLauncherMode(context);
        String[] candidates = new String[]{
                "theme_preview/" + themeId + "/" + mode + "/trident_S.jpg",
                "theme_preview/" + themeId + "/12/trident_S.jpg",
                "theme_preview/" + themeId + "/20/trident_S.jpg",
                "theme_preview/" + themeId + "/" + mode + "/delta_L.jpg",
        };
        for (int i = 0; i < candidates.length; i++) {
            Bitmap bitmap = sampledAssetBitmap(context, candidates[i], 180, 210);
            if (bitmap != null) {
                return bitmap;
            }
        }
        return null;
    }

    private static Bitmap thumbnailFramedPreviewBitmap(Resources resources, Bitmap source) {
        int width = 180;
        int height = 210;
        Bitmap out = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(out);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
        RectF frameRect = new RectF(0, 0, width, height);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(Color.WHITE);
        canvas.drawRoundRect(frameRect, 9, 9, paint);
        if (source != null && source.getWidth() > 0 && source.getHeight() > 0) {
            Rect dst = new Rect(12, 12, width - 12, height - 12);
            Rect src = centerCropRect(source.getWidth(), source.getHeight(), dst.width(), dst.height());
            canvas.drawBitmap(source, src, dst, paint);
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(2);
        paint.setColor(Color.argb(35, 0, 0, 0));
        canvas.drawRoundRect(new RectF(1, 1, width - 1, height - 1), 9, 9, paint);
        paint.setStyle(Paint.Style.FILL);
        return out;
    }

    private static Bitmap drawableBitmap(Resources resources, int drawableId) {
        try {
            Drawable drawable = resources.getDrawable(drawableId);
            int width = Math.max(1, drawable.getIntrinsicWidth());
            int height = Math.max(1, drawable.getIntrinsicHeight());
            Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            drawable.setBounds(0, 0, width, height);
            drawable.draw(canvas);
            return bitmap;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Bitmap wallpaperTextureBitmap() {
        int size = 96;
        Bitmap bitmap = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);

        int inset = 0;
        canvas.save();
        canvas.clipRect(inset, inset, size - inset, size - inset);
        paint.setColor(Color.rgb(42, 46, 47));
        canvas.drawRect(inset, inset, size - inset, size - inset, paint);

        paint.setAntiAlias(false);
        for (int i = inset; i < size - inset; i += 3) {
            int alpha = 18 + (i % 9);
            paint.setColor(Color.argb(alpha, 255, 255, 255));
            canvas.drawLine(i, inset, i, size - inset, paint);
            paint.setColor(Color.argb(alpha, 0, 0, 0));
            canvas.drawLine(inset, i, size - inset, i, paint);
        }
        for (int y = inset; y < size - inset; y += 2) {
            for (int x = inset + (y % 4); x < size - inset; x += 4) {
                int alpha = 10 + ((x + y) % 16);
                paint.setColor(Color.argb(alpha, 255, 255, 255));
                canvas.drawPoint(x, y, paint);
            }
        }
        canvas.restore();
        return bitmap;
    }

    private static Bitmap wallpaperSettingBitmap(Context context, Resources resources) {
        int width = 256;
        int height = 233;
        Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.DITHER_FLAG);

        paint.setColor(Color.TRANSPARENT);
        canvas.drawRect(0, 0, width, height, paint);

        paint.setColor(Color.WHITE);
        RectF topTab = new RectF(70, 0, 186, 18);
        RectF bottomTab = new RectF(70, height - 18, 186, height);
        canvas.drawRoundRect(topTab, 4, 4, paint);
        canvas.drawRoundRect(bottomTab, 4, 4, paint);

        Rect texture = new Rect(22, 18, width - 22, height - 18);
        Bitmap selected = selectedWallpaperThumbnail(context);
        if (selected != null) {
            Rect src = centerCropRect(selected.getWidth(), selected.getHeight(), texture.width(), texture.height());
            canvas.drawBitmap(selected, src, texture, paint);
        } else {
            paint.setColor(Color.rgb(34, 38, 39));
            canvas.drawRect(texture, paint);
            paint.setAntiAlias(false);
            for (int x = texture.left; x < texture.right; x += 4) {
                paint.setColor(Color.argb(22 + (x % 12), 255, 255, 255));
                canvas.drawLine(x, texture.top, x, texture.bottom, paint);
            }
            for (int y = texture.top; y < texture.bottom; y += 4) {
                paint.setColor(Color.argb(26 + (y % 12), 0, 0, 0));
                canvas.drawLine(texture.left, y, texture.right, y, paint);
            }
            paint.setAntiAlias(true);
        }
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(2);
        paint.setColor(Color.argb(80, 0, 0, 0));
        canvas.drawRect(texture, paint);
        paint.setStyle(Paint.Style.FILL);
        return bitmap;
    }

    private static String selectedWallpaperUri(Context context) {
        if (context == null) {
            return "";
        }
        String uri = "";
        if (isWallpaperReady(context, WALLPAPER_PREFS)) {
            uri = readWallpaperUriFromPrefs(context, WALLPAPER_PREFS);
            if (uri.length() > 0) {
                return uri;
            }
        }
        if (isWallpaperReady(context, "com.smartisanos.launcher_prefs")) {
            uri = readWallpaperUriFromPrefs(context, "com.smartisanos.launcher_prefs");
            if (uri.length() > 0) {
                return uri;
            }
        }
        uri = localGaussianWallpaperUri(context);
        if (uri.length() > 0) {
            return uri;
        }
        uri = readWallpaperUriFromSettings(context, false);
        if (uri.length() > 0) {
            return uri;
        }
        uri = readWallpaperUriFromSettings(context, true);
        if (uri.length() > 0) {
            return uri;
        }
        return localLauncherWallpaperUri(context);
    }

    private static String readWallpaperUriFromPrefs(Context context, String prefs) {
        try {
            SharedPreferences shared = context.getSharedPreferences(prefs, Context.MODE_PRIVATE);
            String uri = shared.getString(PREF_WALLPAPER_URI, "");
            if (uri == null || uri.length() == 0) {
                uri = shared.getString(KEY_DESKTOP_WALLPAPER_URI, "");
            }
            if (uri == null || uri.length() == 0) {
                uri = shared.getString(KEY_LOCKSCREEN_BACKGROUND, "");
            }
            return uri == null ? "" : uri;
        } catch (Throwable ignored) {
            return "";
        }
    }

    private static String readWallpaperUriFromSettings(Context context, boolean global) {
        try {
            String uri = global
                    ? Settings.Global.getString(context.getContentResolver(), PREF_WALLPAPER_URI)
                    : Settings.System.getString(context.getContentResolver(), PREF_WALLPAPER_URI);
            if (uri == null || uri.length() == 0) {
                uri = global
                        ? Settings.Global.getString(context.getContentResolver(), KEY_DESKTOP_WALLPAPER_URI)
                        : Settings.System.getString(context.getContentResolver(), KEY_DESKTOP_WALLPAPER_URI);
            }
            if (uri == null || uri.length() == 0) {
                uri = global
                        ? Settings.Global.getString(context.getContentResolver(), KEY_LOCKSCREEN_BACKGROUND)
                        : Settings.System.getString(context.getContentResolver(), KEY_LOCKSCREEN_BACKGROUND);
            }
            return uri == null ? "" : uri;
        } catch (Throwable ignored) {
            return "";
        }
    }

    private static String localLauncherWallpaperUri(Context context) {
        try {
            File file = new File(context.getFilesDir(), "launcher_wallpaper.jpg");
            if (file.exists() && file.length() > 0) {
                return Uri.fromFile(file).toString();
            }
        } catch (Throwable ignored) {
        }
        return "";
    }

    private static boolean isWallpaperReady(Context context, String prefs) {
        try {
            return context.getSharedPreferences(prefs, Context.MODE_PRIVATE)
                    .getBoolean(PREF_WALLPAPER_READY, false);
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static String localGaussianWallpaperUri(Context context) {
        try {
            File file = new File(context.getFilesDir(), "gaussian_wallpaper.png");
            if (file.exists() && file.length() > 0) {
                return Uri.fromFile(file).toString();
            }
        } catch (Throwable ignored) {
        }
        return "";
    }

    private static String newestLocalWallpaperUri(Context context) {
        try {
            File launcher = new File(context.getFilesDir(), "launcher_wallpaper.jpg");
            File gaussian = new File(context.getFilesDir(), "gaussian_wallpaper.png");
            boolean launcherOk = launcher.exists() && launcher.length() > 0;
            boolean gaussianOk = gaussian.exists() && gaussian.length() > 0;
            if (launcherOk && (!gaussianOk || launcher.lastModified() >= gaussian.lastModified())) {
                return Uri.fromFile(launcher).toString();
            }
            if (gaussianOk) {
                return Uri.fromFile(gaussian).toString();
            }
            if (launcherOk) {
                return Uri.fromFile(launcher).toString();
            }
        } catch (Throwable ignored) {
        }
        return "";
    }

    private static Bitmap selectedWallpaperThumbnail(Context context) {
        if (context == null) {
            return null;
        }
        String uri = selectedWallpaperUri(context);
        try {
            if (uri != null && uri.length() > 0) {
                Bitmap bitmap = decodeUriBitmap(context, Uri.parse(uri), 256);
                if (bitmap != null) {
                    return bitmap;
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            String path = context.getSharedPreferences(WALLPAPER_PREFS, Context.MODE_PRIVATE)
                    .getString(PREF_WALLPAPER_THUMB, "");
            if (path != null && path.length() > 0) {
                Bitmap bitmap = BitmapFactory.decodeFile(path);
                if (bitmap != null) {
                    return bitmap;
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static Rect centerCropRect(int srcW, int srcH, int dstW, int dstH) {
        if (srcW <= 0 || srcH <= 0 || dstW <= 0 || dstH <= 0) {
            return new Rect(0, 0, Math.max(1, srcW), Math.max(1, srcH));
        }
        float srcRatio = (float) srcW / srcH;
        float dstRatio = (float) dstW / dstH;
        if (srcRatio > dstRatio) {
            int cropW = Math.max(1, Math.round(srcH * dstRatio));
            int left = (srcW - cropW) / 2;
            return new Rect(left, 0, left + cropW, srcH);
        }
        int cropH = Math.max(1, Math.round(srcW / dstRatio));
        int top = (srcH - cropH) / 2;
        return new Rect(0, top, srcW, top + cropH);
    }

    private static Bitmap themeLargePreviewBitmap(Context context, String themeId) {
        int mode = readLauncherMode(context);
        String[] candidates = new String[]{
                "theme_preview/" + themeId + "/" + mode + "/delta_L.jpg",
                "theme_preview/" + themeId + "/" + mode + "/trident_L.jpg",
                "theme_preview/" + themeId + "/12/delta_L.jpg",
                "theme_preview/" + themeId + "/20/delta_L.jpg"
        };
        for (int i = 0; i < candidates.length; i++) {
            Bitmap bitmap = assetBitmap(context, candidates[i]);
            if (bitmap != null) {
                return bitmap;
            }
        }
        return null;
    }

    private static Bitmap maskedThemeLargePreviewBitmapCached(Context context, Resources resources, String themeId) {
        String key = themeId + ":" + readLauncherMode(context);
        synchronized (sThemeLargePreviewCache) {
            if (sThemeLargePreviewCache.containsKey(key)) {
                return sThemeLargePreviewCache.get(key);
            }
        }
        Bitmap source = themeLargePreviewBitmap(context, themeId);
        Bitmap masked = source == null ? null : maskedThemeLargePreviewBitmap(resources, source);
        synchronized (sThemeLargePreviewCache) {
            sThemeLargePreviewCache.put(key, masked);
        }
        return masked;
    }

    private static Bitmap maskedThemeLargePreviewBitmap(Resources resources, Bitmap source) {
        if (source == null) {
            return null;
        }
        Bitmap frame = null;
        try {
            int frameId = drawable(resources, "theme_preview_detail_phone_white");
            if (frameId != 0) {
                frame = drawableBitmap(resources, frameId);
            }
        } catch (Throwable ignored) {
        }
        if (frame == null || frame.getWidth() <= 0 || frame.getHeight() <= 0) {
            return source;
        }

        int width = frame.getWidth();
        int height = frame.getHeight();
        int[] framePixels = new int[width * height];
        frame.getPixels(framePixels, 0, width, 0, 0, width, height);
        boolean[] screenMask = new boolean[width * height];
        Rect screenBounds = new Rect(width, height, 0, 0);

        for (int y = 0; y < height; y++) {
            int row = y * width;
            int leftOpaque = -1;
            int rightOpaque = -1;
            for (int x = 0; x < width; x++) {
                if (Color.alpha(framePixels[row + x]) > 10) {
                    if (leftOpaque < 0) {
                        leftOpaque = x;
                    }
                    rightOpaque = x;
                }
            }
            if (leftOpaque < 0 || rightOpaque <= leftOpaque) {
                continue;
            }
            for (int x = leftOpaque + 1; x < rightOpaque; x++) {
                if (Color.alpha(framePixels[row + x]) < 245) {
                    screenMask[row + x] = true;
                    if (x < screenBounds.left) screenBounds.left = x;
                    if (x + 1 > screenBounds.right) screenBounds.right = x + 1;
                    if (y < screenBounds.top) screenBounds.top = y;
                    if (y + 1 > screenBounds.bottom) screenBounds.bottom = y + 1;
                }
            }
        }

        if (screenBounds.isEmpty()) {
            return source;
        }

        Bitmap out = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(out);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
        canvas.drawBitmap(source, null, screenBounds, paint);
        Rect contentBounds = new Rect(screenBounds);
        contentBounds.left += Math.max(2, width / 90);
        contentBounds.right -= Math.max(2, width / 90);
        contentBounds.top += Math.max(8, height / 55);
        contentBounds.bottom -= Math.max(6, height / 80);
        if (contentBounds.width() > 0 && contentBounds.height() > 0) {
            canvas.drawBitmap(source, null, contentBounds, paint);
        }

        int[] outPixels = new int[width * height];
        out.getPixels(outPixels, 0, width, 0, 0, width, height);
        for (int i = 0; i < outPixels.length; i++) {
            if (!screenMask[i]) {
                outPixels[i] = 0;
            }
        }
        out.setPixels(outPixels, 0, width, 0, 0, width, height);
        return out;
    }

    public static boolean isTransparentThemeWithWallpaper(Context context, boolean originalTransparentVal) {
        return originalTransparentVal || isTransparentThemeEnabled(context);
    }

    private static String currentTheme(Context context) {
        try {
            Class<?> cls = Class.forName("com.smartisanos.launcher.data.O");
            Object value = cls.getMethod("j", android.content.ContentResolver.class)
                    .invoke(null, context.getContentResolver());
            if (value instanceof String && ((String) value).length() > 0) {
                String theme = (String) value;
                if (!"smartisan_theme_trans".equals(theme)) {
                    return theme;
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .getString("launcher_theme", "");
            if (value != null && value.length() > 0 && !"smartisan_theme_trans".equals(value)) {
                return value;
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = context.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                    .getString("launcher_theme", "smartisan_theme_black");
            if (value != null && value.length() > 0 && !"smartisan_theme_trans".equals(value)) {
                return value;
            }
        } catch (Throwable ignored) {
        }
        return "smartisan_theme_black";
    }

    private static View iconPageHeader(final Activity activity, SettingsResourceContext context, Resources resources) {
        LinearLayout root = new LinearLayout(context);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setLayoutParams(new AbsListView.LayoutParams(-1, dp(context, 168)));

        root.addView(iconHeaderRow(activity, context, resources, "改进版图标", null,
                "selector_setting_sub_item_bg_top", new View.OnClickListener() {
            public void onClick(View v) {
                toggleImprovedIcon(activity);
            }
        }, true),
                new LinearLayout.LayoutParams(-1, dp(context, 56)));

        View.OnClickListener iconSizeClick = new View.OnClickListener() {
            public void onClick(View v) {
                showIconSizeDialog(activity);
            }
        };
        View iconSizeRow = iconHeaderRow(activity, context, resources, "桌面图标大小", iconSizeSubtitle(activity),
                "selector_setting_sub_item_bg_middle", iconSizeClick, false);
        iconSizeRow.setClickable(true);
        iconSizeRow.setOnClickListener(iconSizeClick);
        root.addView(iconSizeRow, new LinearLayout.LayoutParams(-1, dp(context, 56)));

        root.addView(iconHeaderRow(activity, context, resources, "图标包", iconPackSubtitle(activity),
                "selector_setting_sub_item_bg_bottom", new View.OnClickListener() {
            public void onClick(View v) {
                chooseIconPack(activity);
            }
        }, false), new LinearLayout.LayoutParams(-1, dp(context, 56)));
        return root;
    }

    private static View iconHeaderRow(final Activity activity, Context context, Resources resources, String titleText,
                                      String subtitleText, String bgName, View.OnClickListener click,
                                      boolean switchRow) {
        if (switchRow) {
            final SettingItemSwitch item = new SettingItemSwitch(context);
            item.setTitle(titleText);
            item.setChecked(isImprovedIconEnabled(context));
            setBackground(item, resources, bgName);
            item.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    toggleImprovedIcon(activity, item);
                }
            });
            if (item.getSwitch() != null) {
                item.getSwitch().setClickable(true);
                item.getSwitch().setOnTouchListener(new View.OnTouchListener() {
                    public boolean onTouch(View v, MotionEvent event) {
                        if (event.getAction() == MotionEvent.ACTION_UP) {
                            toggleImprovedIcon(activity, item);
                        }
                        return true;
                    }
                });
            }
            return item;
        }
        RelativeLayout row = new RelativeLayout(context);
        setBackground(row, resources, bgName);
        row.setClickable(click != null);

        LinearLayout texts = new LinearLayout(context);
        texts.setGravity(Gravity.CENTER_VERTICAL);
        texts.setOrientation(LinearLayout.HORIZONTAL);
        RelativeLayout.LayoutParams textsLp = new RelativeLayout.LayoutParams(-2, -1);
        textsLp.leftMargin = dp(context, 30);
        textsLp.addRule(RelativeLayout.CENTER_VERTICAL);
        row.addView(texts, textsLp);

        TextView title = new TextView(context);
        title.setGravity(Gravity.CENTER_VERTICAL);
        title.setSingleLine(true);
        title.setText(titleText);
        title.setTextColor(0xff454a5c);
        title.setTextSize(18);
        texts.addView(title, new LinearLayout.LayoutParams(-2, -1));

        boolean iconSizeRow = "桌面图标大小".equals(titleText);
        boolean iconPackRow = "图标包".equals(titleText);
        if (iconSizeRow || iconPackRow) {
            ImageView arrow = new ImageView(context);
            int arrowId = resources.getIdentifier("setting_next", "drawable", SETTINGS_PKG);
            if (arrowId != 0) {
                arrow.setImageDrawable(resources.getDrawable(arrowId));
            }
            arrow.setScaleType(ImageView.ScaleType.CENTER);
            RelativeLayout.LayoutParams arrowLp = new RelativeLayout.LayoutParams(dp(context, 42), -1);
            arrowLp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
            arrowLp.addRule(RelativeLayout.CENTER_VERTICAL);
            arrowLp.rightMargin = dp(context, 8);
            row.addView(arrow, arrowLp);
        }

        if (subtitleText != null && subtitleText.length() > 0) {
            TextView subtitle = new TextView(context);
            subtitle.setGravity(Gravity.CENTER_VERTICAL);
            subtitle.setSingleLine(true);
            subtitle.setText(subtitleText);
            subtitle.setTextColor(0xff9d9fa6);
            subtitle.setTextSize(14);
            RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(-2, -1);
            lp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
            lp.addRule(RelativeLayout.CENTER_VERTICAL);
            lp.rightMargin = (iconSizeRow || iconPackRow) ? dp(context, 58) : dp(context, 24);
            row.addView(subtitle, lp);
            if (iconSizeRow) {
                subtitle.setTag(TAG_ICON_SIZE_SUBTITLE);
            }
            if (click != null) {
                subtitle.setClickable(true);
                subtitle.setOnClickListener(click);
                subtitle.setContentDescription(subtitleText);
            }
        } else if (click != null) {
            row.setOnClickListener(click);
        }
        return row;
    }

    private static String iconSizeSubtitle(Context context) {
        return normalizeIconSizePercent(readIconSizePercent(context)) + "%";
    }

    private static int readIconSizePercent(Context context) {
        int percent = 100;
        try {
            SharedPreferences prefs = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE);
            if (prefs.contains(KEY_LAUNCHER_ICON_SIZE)) {
                percent = prefs.getInt(KEY_LAUNCHER_ICON_SIZE, 100);
            } else {
                SharedPreferences launcherPrefs =
                        context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE);
                if (launcherPrefs.contains(KEY_LAUNCHER_ICON_SIZE)) {
                    percent = launcherPrefs.getInt(KEY_LAUNCHER_ICON_SIZE, 100);
                } else {
                    try {
                        percent = Settings.Global.getInt(context.getContentResolver(), KEY_LAUNCHER_ICON_SIZE, 100);
                    } catch (Throwable ignored) {
                        percent = Settings.System.getInt(context.getContentResolver(), KEY_LAUNCHER_ICON_SIZE, 100);
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return normalizeIconSizePercent(percent);
    }

    private static int normalizeIconSizePercent(int percent) {
        if (percent == 0) {
            return 100;
        }
        if (percent == 1) {
            return 110;
        }
        if (percent == 2) {
            return 120;
        }
        if (percent < 50) {
            return 50;
        }
        if (percent > 150) {
            return 150;
        }
        return percent;
    }

    private static void showIconSizeDialog(final Activity activity) {
        final int current = normalizeIconSizePercent(readIconSizePercent(activity));
        final Dialog dialog = new Dialog(activity);
        LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(0, 0, 0, 0);
        GradientDrawable background = new GradientDrawable();
        background.setColor(0xfff5f5f5);
        background.setCornerRadius(dp(activity, 5));
        background.setStroke(1, 0xffd0d0d0);
        root.setBackgroundDrawable(background);

        TextView title = new TextView(activity);
        title.setGravity(Gravity.CENTER);
        title.setSingleLine(true);
        title.setText("桌面图标大小");
        title.setTextColor(0xff5c5c5c);
        title.setTextSize(17);
        title.setTypeface(null, android.graphics.Typeface.NORMAL);
        root.addView(title, new LinearLayout.LayoutParams(-1, dp(activity, 60)));
        root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

        LinearLayout content = new LinearLayout(activity);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setGravity(Gravity.CENTER_HORIZONTAL);
        content.setBackgroundColor(0xfffafafa);
        content.setPadding(dp(activity, 22), dp(activity, 20), dp(activity, 22), dp(activity, 24));

        final TextView percentText = new TextView(activity);
        percentText.setGravity(Gravity.CENTER);
        percentText.setTextColor(0xff454a5c);
        percentText.setTextSize(24);
        percentText.setText(current + "%");
        LinearLayout.LayoutParams percentLp = new LinearLayout.LayoutParams(-1, dp(activity, 44));
        content.addView(percentText, percentLp);

        LinearLayout previewPanel = new LinearLayout(activity);
        previewPanel.setOrientation(LinearLayout.VERTICAL);
        previewPanel.setPadding(dp(activity, 14), dp(activity, 16), dp(activity, 14), dp(activity, 12));
        GradientDrawable previewBg = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM,
                new int[]{0xffffffff, 0xfff3f3f3});
        previewBg.setCornerRadius(dp(activity, 4));
        previewBg.setStroke(1, 0xffdddddd);
        previewPanel.setBackgroundDrawable(previewBg);
        LinearLayout.LayoutParams previewPanelLp = new LinearLayout.LayoutParams(-1, -2);
        previewPanelLp.topMargin = dp(activity, 14);
        content.addView(previewPanel, previewPanelLp);

        LinearLayout preview = new LinearLayout(activity);
        preview.setGravity(Gravity.CENTER);
        preview.setOrientation(LinearLayout.HORIZONTAL);
        final TextView smallPreview = iconSizePreviewText(activity, "小", 15);
        final TextView standardPreview = iconSizePreviewText(activity, "中", 22);
        final TextView largePreview = iconSizePreviewText(activity, "大", 29);
        preview.addView(smallPreview, new LinearLayout.LayoutParams(0, dp(activity, 72), 1));
        preview.addView(standardPreview, new LinearLayout.LayoutParams(0, dp(activity, 72), 1));
        preview.addView(largePreview, new LinearLayout.LayoutParams(0, dp(activity, 72), 1));
        previewPanel.addView(preview, new LinearLayout.LayoutParams(-1, dp(activity, 72)));

        final SeekBar seekBar = new SeekBar(activity);
        seekBar.setMax(100);
        seekBar.setProgress(current - 50);
        seekBar.setProgressDrawable(iconSizeSeekBarProgress(activity));
        seekBar.setThumb(iconSizeSeekBarThumb(activity));
        LinearLayout.LayoutParams seekLp = new LinearLayout.LayoutParams(-1, dp(activity, 42));
        seekLp.leftMargin = dp(activity, 8);
        seekLp.rightMargin = dp(activity, 8);
        previewPanel.addView(seekBar, seekLp);

        LinearLayout labels = new LinearLayout(activity);
        labels.setOrientation(LinearLayout.HORIZONTAL);
        labels.setGravity(Gravity.CENTER_VERTICAL);
        TextView small = iconSizeLabel(activity, "50%");
        TextView standard = iconSizeLabel(activity, "100%");
        TextView large = iconSizeLabel(activity, "150%");
        labels.setPadding(dp(activity, 2), 0, dp(activity, 2), 0);
        labels.addView(small, new LinearLayout.LayoutParams(0, dp(activity, 30), 1));
        labels.addView(standard, new LinearLayout.LayoutParams(0, dp(activity, 30), 1));
        labels.addView(large, new LinearLayout.LayoutParams(0, dp(activity, 30), 1));
        previewPanel.addView(labels, new LinearLayout.LayoutParams(-1, dp(activity, 31)));
        root.addView(content, new LinearLayout.LayoutParams(-1, -2));
        root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

        LinearLayout buttons = new LinearLayout(activity);
        buttons.setGravity(Gravity.CENTER);
        buttons.setOrientation(LinearLayout.HORIZONTAL);
        TextView cancel = smartisanDialogActionButton(activity, "取消", false, -1);
        TextView ok = smartisanDialogActionButton(activity, "确定", true, 1);
        buttons.addView(cancel, new LinearLayout.LayoutParams(0, dp(activity, 56), 1));
        buttons.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(1, dp(activity, 56)));
        buttons.addView(ok, new LinearLayout.LayoutParams(0, dp(activity, 56), 1));
        root.addView(buttons, new LinearLayout.LayoutParams(-1, dp(activity, 56)));

        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            public void onProgressChanged(SeekBar bar, int progress, boolean fromUser) {
                percentText.setText((progress + 50) + "%");
            }

            public void onStartTrackingTouch(SeekBar bar) {
            }

            public void onStopTrackingTouch(SeekBar bar) {
            }
        });
        smallPreview.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                seekBar.setProgress(0);
                percentText.setText("50%");
            }
        });
        standardPreview.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                seekBar.setProgress(50);
                percentText.setText("100%");
            }
        });
        largePreview.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                seekBar.setProgress(100);
                percentText.setText("150%");
            }
        });

        cancel.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                dialog.dismiss();
            }
        });
        ok.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                int percent = normalizeIconSizePercent(seekBar.getProgress() + 50);
                if (percent != current) {
                    saveIconSizePercent(activity, current, percent);
                }
                dialog.dismiss();
            }
        });

        dialog.setContentView(root);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(Color.TRANSPARENT));
        }
        dialog.show();
        window = dialog.getWindow();
        if (window != null) {
            WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
            lp.copyFrom(window.getAttributes());
            lp.width = activity.getResources().getDisplayMetrics().widthPixels - dp(activity, 64);
            lp.height = WindowManager.LayoutParams.WRAP_CONTENT;
            window.setAttributes(lp);
        }
    }

    private static TextView iconSizeLabel(Context context, String text) {
        TextView label = new TextView(context);
        label.setGravity(Gravity.CENTER);
        label.setSingleLine(true);
        label.setText(text);
        label.setTextColor(0xff9d9fa6);
        label.setTextSize(12);
        return label;
    }

    private static TextView iconSizePreviewText(Context context, String text, int textSize) {
        TextView view = new TextView(context);
        view.setGravity(Gravity.CENTER);
        view.setSingleLine(true);
        view.setText(text);
        view.setTextColor(0xff4d5a73);
        view.setTextSize(textSize);
        view.setTypeface(null, android.graphics.Typeface.NORMAL);
        return view;
    }

    private static View smartisanDivider(Context context) {
        View view = new View(context);
        view.setBackgroundColor(0xffdfdfdf);
        return view;
    }

    private static TextView smartisanDialogActionButton(Context context, String text, boolean primary, int side) {
        TextView button = new TextView(context);
        button.setGravity(Gravity.CENTER);
        button.setSingleLine(true);
        button.setText(text);
        button.setTextColor(primary ? 0xff5f8fe9 : 0xff5f6268);
        button.setTextSize(13);
        button.setTypeface(null, android.graphics.Typeface.NORMAL);
        button.setBackgroundDrawable(smartisanButtonBackground(context, side));
        return button;
    }

    private static Drawable smartisanButtonBackground(Context context, int side) {
        android.graphics.drawable.StateListDrawable states = new android.graphics.drawable.StateListDrawable();
        states.addState(new int[]{android.R.attr.state_pressed},
                smartisanButtonShape(context, side, true));
        states.addState(new int[]{}, smartisanButtonShape(context, side, false));
        return states;
    }

    private static Drawable smartisanButtonShape(Context context, int side, boolean pressed) {
        int[] colors = pressed
                ? new int[]{0xffe8eefb, 0xffdfe8f8}
                : new int[]{0xfff2f2f2, 0xffebebeb};
        GradientDrawable drawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, colors);
        float radius = dp(context, 5);
        if (side < 0) {
            drawable.setCornerRadii(new float[]{0, 0, 0, 0, 0, 0, radius, radius});
        } else if (side > 0) {
            drawable.setCornerRadii(new float[]{0, 0, 0, 0, radius, radius, 0, 0});
        }
        return drawable;
    }

    private static Drawable iconSizeSeekBarProgress(Context context) {
        GradientDrawable background = new GradientDrawable();
        background.setColor(0xffc9c9c9);
        background.setCornerRadius(dp(context, 2));
        background.setSize(1, dp(context, 4));

        GradientDrawable progress = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT,
                new int[]{0xff79a7f3, 0xff5f8fe9});
        progress.setCornerRadius(dp(context, 2));
        progress.setSize(1, dp(context, 4));

        android.graphics.drawable.ClipDrawable clip =
                new android.graphics.drawable.ClipDrawable(progress, Gravity.LEFT, android.graphics.drawable.ClipDrawable.HORIZONTAL);
        android.graphics.drawable.LayerDrawable layer =
                new android.graphics.drawable.LayerDrawable(new Drawable[]{background, clip});
        layer.setId(0, android.R.id.background);
        layer.setId(1, android.R.id.progress);
        int inset = dp(context, 5);
        layer.setLayerInset(0, inset, dp(context, 15), inset, dp(context, 15));
        layer.setLayerInset(1, inset, dp(context, 15), inset, dp(context, 15));
        return layer;
    }

    private static Drawable iconSizeSeekBarThumb(Context context) {
        int size = dp(context, 24);
        Bitmap bitmap = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        float cx = size / 2f;
        float cy = size / 2f;
        paint.setColor(0x26000000);
        canvas.drawCircle(cx, cy + dp(context, 1), dp(context, 10), paint);
        paint.setColor(0xffffffff);
        canvas.drawCircle(cx, cy, dp(context, 10), paint);
        paint.setColor(0xff5f8fe9);
        canvas.drawCircle(cx, cy, dp(context, 7), paint);
        paint.setColor(0x66ffffff);
        canvas.drawCircle(cx - dp(context, 3), cy - dp(context, 4), dp(context, 2), paint);
        return new android.graphics.drawable.BitmapDrawable(context.getResources(), bitmap);
    }

    private static TextView dialogButton(Context context, String text) {
        TextView button = new TextView(context);
        button.setGravity(Gravity.CENTER);
        button.setSingleLine(true);
        button.setText(text);
        button.setTextColor(0xff9d4d45);
        button.setTextSize(17);
        return button;
    }

    private static void refreshIconSizeSubtitle(Activity activity, int percent) {
        try {
            refreshIconSizeSubtitleInTree(activity.getWindow().getDecorView(), percent);
        } catch (Throwable ignored) {
        }
    }

    private static boolean refreshIconSizeSubtitleInTree(View view, int percent) {
        if (view == null) {
            return false;
        }
        Object tag = view.getTag();
        if (TAG_ICON_SIZE_SUBTITLE.equals(tag) && view instanceof TextView) {
            ((TextView) view).setText(normalizeIconSizePercent(percent) + "%");
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                if (refreshIconSizeSubtitleInTree(group.getChildAt(i), percent)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void applyRuntimeIconSizePercent(int oldPercent, int newPercent) {
        oldPercent = normalizeIconSizePercent(oldPercent);
        newPercent = normalizeIconSizePercent(newPercent);
        if (oldPercent <= 0 || oldPercent == newPercent) {
            return;
        }
        float scale = ((float) newPercent) / ((float) oldPercent);
        try {
            Class.forName("com.smartisanos.launcher.data.LayoutPropertyAdapter")
                    .getMethod("setUserIconScale", Float.TYPE)
                    .invoke(null, ((float) newPercent) / 100.0f);
        } catch (Throwable ignored) {
        }
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            java.lang.reflect.Field mapField = constants.getDeclaredField("layoutPropertyMap");
            mapField.setAccessible(true);
            Object value = mapField.get(null);
            if (!(value instanceof Map)) {
                return;
            }
            Map map = (Map) value;
            for (Object item : map.values()) {
                scaleLayoutProperty(item, scale);
            }
        } catch (Throwable ignored) {
        }
        try {
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView != null) {
                mainView.getClass().getMethod("requestLayout").invoke(mainView);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void scaleLayoutProperty(Object property, float scale) {
        if (property == null || scale <= 0f) {
            return;
        }
        try {
            scaleFloatField(property, "icon_size_origin", scale);
            scaleFloatField(property, "icon_size_with_shadow", scale);
            scaleFloatField(property, "icon_size_origin_resize", scale);
            scaleIntField(property, "name_off_set_y", (1f + scale) * 0.5f);
            Class.forName("com.smartisanos.launcher.data.LayoutPropertyAdapter")
                    .getMethod("scaleFolderPreviewForIconSize", Object.class, Float.TYPE)
                    .invoke(null, property, scale);
        } catch (Throwable ignored) {
        }
    }

    private static void scaleFloatField(Object target, String name, float scale) {
        try {
            java.lang.reflect.Field field = target.getClass().getField(name);
            field.setFloat(target, field.getFloat(target) * scale);
        } catch (Throwable ignored) {
        }
    }

    private static void scaleIntField(Object target, String name, float scale) {
        try {
            java.lang.reflect.Field field = target.getClass().getField(name);
            field.setInt(target, Math.round(field.getInt(target) * scale));
        } catch (Throwable ignored) {
        }
    }

    private static void saveIconSizePercent(Context context, int oldPercent, int percent) {
        percent = normalizeIconSizePercent(percent);
        try {
            Settings.System.putInt(context.getContentResolver(), KEY_LAUNCHER_ICON_SIZE, percent);
        } catch (Throwable ignored) {
        }
        try {
            Settings.Global.putInt(context.getContentResolver(), KEY_LAUNCHER_ICON_SIZE, percent);
        } catch (Throwable ignored) {
        }
        context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                .edit()
                .putInt(KEY_LAUNCHER_ICON_SIZE, percent)
                .commit();
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .edit()
                    .putInt(KEY_LAUNCHER_ICON_SIZE, percent)
                    .commit();
        } catch (Throwable ignored) {
        }
        notifyOriginalConfigChanged(KEY_LAUNCHER_ICON_SIZE);
        if (context instanceof Activity) {
            refreshIconSizeSubtitle((Activity) context, percent);
            restartLauncherForIconSizeChange((Activity) context, oldPercent, percent);
        }
    }

    private static void restartLauncherForIconSizeChange(Activity activity,
            int oldPercent, int newPercent) {
        markThemeReloadLoadingPending(activity, "正在加载桌面...");
        showRestartLoading(activity);
        // Existing icon SceneNodes retain their geometry even after a page update;
        // partially scaling LayoutProperty only breaks folder previews. Start an
        // explicit fresh Launcher process after killing this one so Constants,
        // grid points, regular icons and folder previews are created atomically.
        scheduleIconSizeLauncherRestart(activity);
        logOperation(activity, "RESTART", "icon_size_exact_process_rebirth");
        finishSettingsTask(activity);
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable ignored) {
            startLauncherFromForeground(activity);
        }
    }

    private static void scheduleIconSizeLauncherRestart(Context context) {
        try {
            Intent intent = launcherHomeIntent(context);
            int flags = PendingIntent.FLAG_CANCEL_CURRENT;
            if (Build.VERSION.SDK_INT >= 23) {
                flags |= PendingIntent.FLAG_IMMUTABLE;
            }
            PendingIntent pendingIntent = PendingIntent.getActivity(context, 1002, intent, flags);
            AlarmManager alarmManager = (AlarmManager) context.getSystemService(Context.ALARM_SERVICE);
            if (alarmManager == null) {
                throw new IllegalStateException("AlarmManager unavailable");
            }
            long trigger = android.os.SystemClock.elapsedRealtime() + 350L;
            if (Build.VERSION.SDK_INT >= 23) {
                alarmManager.setExactAndAllowWhileIdle(
                        AlarmManager.ELAPSED_REALTIME_WAKEUP, trigger, pendingIntent);
            } else {
                alarmManager.setExact(AlarmManager.ELAPSED_REALTIME_WAKEUP, trigger, pendingIntent);
            }
        } catch (Throwable ignored) {
            startLauncherFromForeground(context);
        }
    }

    private static void cancelScheduledIconSizeLauncherRestart(Context context) {
        if (context == null) {
            return;
        }
        try {
            Intent intent = launcherHomeIntent(context);
            int flags = PendingIntent.FLAG_NO_CREATE;
            if (Build.VERSION.SDK_INT >= 23) {
                flags |= PendingIntent.FLAG_IMMUTABLE;
            }
            PendingIntent pendingIntent = PendingIntent.getActivity(context, 1002, intent, flags);
            if (pendingIntent != null) {
                AlarmManager alarmManager =
                        (AlarmManager) context.getSystemService(Context.ALARM_SERVICE);
                if (alarmManager != null) {
                    alarmManager.cancel(pendingIntent);
                }
                pendingIntent.cancel();
            }
        } catch (Throwable ignored) {
        }
    }

    private static void markPendingIconSizeRuntimeChange(Context context, int oldPercent, int percent) {
        try {
            context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(PREF_ICON_SIZE_RUNTIME_DIRTY, oldPercent != percent)
                    .putInt(PREF_ICON_SIZE_RUNTIME_OLD, normalizeIconSizePercent(oldPercent))
                    .putInt(PREF_ICON_SIZE_RUNTIME_NEW, normalizeIconSizePercent(percent))
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    public static void clearPendingIconSizeRuntimeChange(Context context) {
        try {
            context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(PREF_ICON_SIZE_RUNTIME_DIRTY, false)
                    .commit();
        } catch (Throwable ignored) {
        }
    }

    public static synchronized void maybeApplyLauncherIconSize(Context context) {
        try {
            if (sIconSizeAppliedThisProcess) {
                return;
            }
            sIconSizeAppliedThisProcess = true;
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE);
            int newPercent = normalizeIconSizePercent(readIconSizePercent(context));
            prefs.edit().putBoolean(PREF_ICON_SIZE_RUNTIME_DIRTY, false).commit();
            if (newPercent == 100) {
                return;
            }
            // Every launcher process starts from the unscaled XML layout map.
            // Reapply the saved percentage once, regardless of the previous process.
            applyRuntimeIconSizePercent(100, newPercent);
            applyIconChange(context);
            rebuildLauncherLayoutForIconSize();
        } catch (Throwable ignored) {
        }
    }

    private static void rebuildLauncherLayoutForIconSize() {
        try {
            Object launcher = Class.forName("com.smartisanos.launcher.J")
                    .getMethod("getInstance").invoke(null);
            if (launcher != null) {
                launcher.getClass().getMethod("onConfigurationChanged").invoke(launcher);
            }
        } catch (Throwable ignored) {
        }
        try {
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView != null) {
                try {
                    mainView.getClass().getMethod("ph").invoke(mainView);
                } catch (Throwable ignored) {
                }
                try {
                    mainView.getClass().getMethod("update").invoke(mainView);
                } catch (Throwable ignored) {
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            Object renderer = Class.forName("com.smartisanos.smengine.Ra")
                    .getMethod("getInstance").invoke(null);
            if (renderer != null) {
                renderer.getClass().getMethod("wt").invoke(renderer);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void setBackground(View view, Resources resources, String drawableName) {
        if (view == null || resources == null || drawableName == null) {
            return;
        }
        try {
            int resId = drawable(resources, drawableName);
            if (resId != 0) {
                view.setBackgroundDrawable(resources.getDrawable(resId));
            }
        } catch (Throwable ignored) {
        }
    }

    private static void setFirstChildText(Resources resources, View root, String idName, String value) {
        View row = find(resources, root, idName);
        if (!(row instanceof ViewGroup)) {
            return;
        }
        ViewGroup group = (ViewGroup) row;
        for (int i = 0; i < group.getChildCount(); i++) {
            View child = group.getChildAt(i);
            if (child instanceof TextView) {
                ((TextView) child).setText(value);
                return;
            }
        }
    }

    private static boolean isImprovedIconEnabled(Context context) {
        try {
            return context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .getBoolean(PREF_IMPROVED_ICON_ENABLED, true);
        } catch (Throwable ignored) {
            return true;
        }
    }

    private static void setImprovedIconEnabled(Context context, boolean enabled) {
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .edit().putBoolean(PREF_IMPROVED_ICON_ENABLED, enabled).apply();
        } catch (Throwable ignored) {
        }
    }

    private static void toggleImprovedIcon(Context context) {
        toggleImprovedIcon(context, (SettingItemSwitch) null);
    }

    private static void toggleImprovedIcon(Context context, SettingItemSwitch item) {
        boolean enabled = !isImprovedIconEnabled(context);
        setImprovedIconEnabled(context, enabled);
        if (item != null) {
            item.setCheckedAnimated(enabled);
        }
        applyIconChange(context);
        applyGlobalImprovedSelection(context, enabled);
        reloadOriginalSettings(context);
        if (context instanceof Activity) {
            refreshIconRowsInCurrentPage((Activity) context);
        }
    }

    private static void toggleImprovedIcon(Context context, SwitchEx toggle) {
        boolean enabled = !isImprovedIconEnabled(context);
        setImprovedIconEnabled(context, enabled);
        if (toggle != null) {
            toggle.setCheckedAnimated(enabled);
        }
        applyIconChange(context);
        applyGlobalImprovedSelection(context, enabled);
        reloadOriginalSettings(context);
        if (context instanceof Activity) {
            refreshIconRowsInCurrentPage((Activity) context);
        }
    }

    private static void applyGlobalImprovedSelection(Context context, boolean enabled) {
        if (context == null) {
            return;
        }
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            int flags = Build.VERSION.SDK_INT >= 23 ? 0x00020000 : 0;
            List<ResolveInfo> apps = context.getPackageManager().queryIntentActivities(intent, flags);
            Resources resources = settingsResources(context);
            for (int i = 0; i < apps.size(); i++) {
                ResolveInfo info = apps.get(i);
                ActivityInfo ai = info == null ? null : info.activityInfo;
                if (ai == null || ai.packageName == null || ai.name == null || !shouldShowIconEntry(info)) {
                    continue;
                }
                RedirectIconInfo redirect = RedirectIconDB.getRedirectIconInfo(context, ai.packageName, ai.name);
                String mode = RedirectIconDB.modeOf(redirect);
                if (RedirectIconDB.MODE_CUSTOM.equals(mode) || RedirectIconDB.MODE_RESOURCE.equals(mode)) {
                    continue;
                }
                if (enabled && smartisanIconDrawable(context, info, resources) != null) {
                    RedirectIconDB.updateAutoIcon(context, ai.packageName, ai.name);
                } else if (!enabled) {
                    RedirectIconDB.resetIconToDefault(context, ai.packageName, ai.name);
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private static void refreshIconRowsInCurrentPage(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = activity.getWindow().getDecorView();
            refreshIconRowsInTree(root, new IconManager(activity), activity, context, resources);
        } catch (Throwable ignored) {
        }
    }

    private static boolean refreshIconRowInCurrentPage(Activity activity, String pkg, String cmp) {
        if (activity == null || pkg == null || cmp == null) {
            return false;
        }
        try {
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = activity.getWindow().getDecorView();
            return refreshIconRowInTree(root, new IconManager(activity), activity, resources, pkg, cmp);
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean refreshIconRowInTree(View view, IconManager iconManager, Activity activity,
                                                Resources resources, String pkg, String cmp) {
        if (view == null) {
            return false;
        }
        Object tag = view.getTag();
        if (tag instanceof RedirectIconInfo && byId(view, resources, "official_icon_layout") != null) {
            RedirectIconInfo info = (RedirectIconInfo) tag;
            if (pkg.equals(info.packageName) && cmp.equals(info.componentName)) {
                refreshIconRow(view, info, iconManager, activity, resources);
                return true;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                if (refreshIconRowInTree(group.getChildAt(i), iconManager, activity, resources, pkg, cmp)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void refreshIconRowsInTree(View view, IconManager iconManager, Activity activity,
                                              SettingsResourceContext context, Resources resources) {
        if (view == null) {
            return;
        }
        Object tag = view.getTag();
        if (tag instanceof RedirectIconInfo && byId(view, resources, "official_icon_layout") != null) {
            refreshIconRow(view, (RedirectIconInfo) tag, iconManager, activity, resources);
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                refreshIconRowsInTree(group.getChildAt(i), iconManager, activity, context, resources);
            }
        }
    }

    private static void refreshIconRow(View row, RedirectIconInfo info, IconManager iconManager,
                                       Activity activity, Resources resources) {
        if (row == null || info == null || iconManager == null) {
            return;
        }
        RedirectIconInfo latest = RedirectIconDB.getRedirectIconInfo(activity, info.packageName, info.componentName);
        if (latest != null) {
            info = latest;
            row.setTag(latest);
        }
        ResolveInfo resolveInfo = iconManager.getResolveInfo(info.packageName, info.componentName);
        Drawable official = iconManager.getOfficialIcon(info);
        Drawable candidate = singleAppChoiceDrawable(activity, resolveInfo, resources);
        setImage(row, resources, "official_icon", official);
        setImage(row, resources, "unofficial_icon", candidate == null
                ? safeDrawable(resources, drawable(resources, "ic_add_icon_plus")) : candidate);
        boolean improved = isIconRowImprovedSelected(activity, info, candidate);
        View officialFrame = byId(row, resources, "official_icon_frame");
        View unofficialFrame = byId(row, resources, "unofficial_icon_frame");
        if (officialFrame != null) {
            officialFrame.setVisibility(improved ? View.GONE : View.VISIBLE);
        }
        if (unofficialFrame != null) {
            unofficialFrame.setVisibility(improved ? View.VISIBLE : View.GONE);
        }
        TextView author = (TextView) byId(row, resources, "icon_author_name");
        if (author != null) {
            author.setText(improved ? getString(resources, "unofficial_icon", "改进版图标")
                    : getString(resources, "official_icon", "可替换图标"));
        }
    }

    private static void setImage(View root, Resources resources, String idName, Drawable icon) {
        View view = byId(root, resources, idName);
        if (view instanceof ImageView && icon != null) {
            ((ImageView) view).setImageDrawable(icon);
        }
    }

    private static boolean isIconRowImprovedSelected(Context context, RedirectIconInfo info, Drawable candidate) {
        if (info == null || candidate == null) {
            return false;
        }
        String mode = RedirectIconDB.modeOf(info);
        if (RedirectIconDB.MODE_CUSTOM.equals(mode) || RedirectIconDB.MODE_RESOURCE.equals(mode)) {
            return true;
        }
        if (isImprovedIconEnabled(context)) {
            return true;
        }
        return !RedirectIconDB.MODE_ORIGINAL.equals(mode) && info.useImprovedAppIcon;
    }

    private static String iconPackHeaderText(Context context) {
        try {
            Class<?> cls = Class.forName("com.smartisanos.home.settings.icons.IconPackManager");
            String pkg = (String) cls.getMethod("getSelectedIconPackPackage", Context.class).invoke(null, context);
            String label = (String) cls.getMethod("getIconPackLabel", Context.class, String.class).invoke(null, context, pkg);
            return "已重绘\n未重绘    图标包：" + label + "（点此切换）";
        } catch (Throwable ignored) {
            return "已重绘\n未重绘";
        }
    }

    private static boolean isIconPackEnabled(Context context) {
        try {
            Class<?> cls = Class.forName("com.smartisanos.home.settings.icons.IconPackManager");
            String pkg = (String) cls.getMethod("getSelectedIconPackPackage", Context.class).invoke(null, context);
            return !"__disabled__".equals(pkg);
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static String iconPackSubtitle(Context context) {
        try {
            Class<?> cls = Class.forName("com.smartisanos.home.settings.icons.IconPackManager");
            String pkg = (String) cls.getMethod("getSelectedIconPackPackage", Context.class).invoke(null, context);
            if (pkg == null || pkg.length() == 0) {
                return "自动选择";
            }
            if ("__disabled__".equals(pkg)) {
                return "不使用图标包";
            }
            String label = (String) cls.getMethod("getIconPackLabel", Context.class, String.class).invoke(null, context, pkg);
            return label == null || label.length() == 0 ? "未使用" : label;
        } catch (Throwable ignored) {
            return "未使用";
        }
    }

    private static void chooseIconPack(final Context context) {
        if (!(context instanceof Activity)) {
            return;
        }
        final Activity activity = (Activity) context;
        try {
            final Class<?> cls = Class.forName("com.smartisanos.home.settings.icons.IconPackManager");
            final ArrayList<String> packs = (ArrayList<String>) cls.getMethod("getIconPackPackages", Context.class)
                    .invoke(null, activity);
            final String[] labels = new String[packs.size() + 2];
            labels[0] = "自动选择";
            labels[1] = "不使用图标包";
            for (int i = 0; i < packs.size(); i++) {
                labels[i + 2] = (String) cls.getMethod("getIconPackLabel", Context.class, String.class)
                        .invoke(null, activity, packs.get(i));
            }
            new AlertDialog.Builder(activity)
                    .setTitle("选择图标包")
                    .setItems(labels, new android.content.DialogInterface.OnClickListener() {
                        public void onClick(android.content.DialogInterface dialog, int which) {
                            try {
                                String value = which == 0 ? "" : (which == 1 ? "__disabled__" : packs.get(which - 2));
                                cls.getMethod("setSelectedIconPackPackage", Context.class, String.class)
                                        .invoke(null, activity, value);
                            } catch (Throwable ignored) {
                            }
                            applyIconChange(activity);
                            Toast.makeText(activity, "已切换图标包，正在刷新桌面", Toast.LENGTH_SHORT).show();
                        }
                    })
                    .show();
        } catch (Throwable t) {
            Toast.makeText(activity, "未发现可用图标包", Toast.LENGTH_SHORT).show();
        }
    }

    private static void applyIconChange(Context context) {
        try {
            Class.forName("com.smartisanos.home.settings.icons.IconPackManager")
                    .getMethod("resetCache").invoke(null);
        } catch (Throwable ignored) {
        }
        try {
            Intent intent = new Intent("com.smartisanos.launcher.update_icon");
            String packages = allLauncherPackages(context);
            if (packages.length() > 0) {
                intent.putExtra("extra_packagename", packages);
            }
            try {
                Class.forName("com.smartisanos.launcher.Aa")
                        .getMethod("c", Intent.class).invoke(null, intent);
            } catch (Throwable ignored) {
            }
            context.sendBroadcast(intent);
        } catch (Throwable ignored) {
        }
        reloadOriginalSettings(context);
    }

    private static String allLauncherPackages(Context context) {
        StringBuilder out = new StringBuilder();
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            int flags = Build.VERSION.SDK_INT >= 23 ? 0x00020000 : 0;
            List<ResolveInfo> apps = context.getPackageManager().queryIntentActivities(intent, flags);
            for (int i = 0; i < apps.size(); i++) {
                ResolveInfo info = apps.get(i);
                if (info == null || info.activityInfo == null || info.activityInfo.packageName == null) {
                    continue;
                }
                if (out.length() > 0) {
                    out.append(',');
                }
                out.append(info.activityInfo.packageName);
            }
        } catch (Throwable ignored) {
        }
        return out.toString();
    }

    private static void forceUpdateIcon(Context context, RedirectIconInfo info) {
        try {
            Class.forName("com.smartisanos.home.settings.icons.IconPackManager")
                    .getMethod("resetCache").invoke(null);
        } catch (Throwable ignored) {
        }
        try {
            Intent intent = new Intent("com.smartisanos.launcher.update_icon");
            if (info != null && info.packageName != null) {
                intent.putExtra("extra_packagename", info.packageName);
            }
            try {
                Class.forName("com.smartisanos.launcher.Aa")
                        .getMethod("c", Intent.class).invoke(null, intent);
            } catch (Throwable ignored) {
            }
            context.sendBroadcast(intent);
        } catch (Throwable ignored) {
        }
        reloadOriginalSettings(context);
    }

    private static void beginPickCustomIcon(Activity activity) {
        try {
            activity.getSharedPreferences(ICON_OVERRIDE_PREFS, Context.MODE_PRIVATE).edit()
                    .putInt(PREF_PENDING_ICON_SCROLL_Y, currentScrollY(activity)).apply();
        } catch (Throwable ignored) {
        }
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        intent.setType("image/*");
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        try {
            activity.startActivityForResult(intent, REQUEST_PICK_CUSTOM_ICON);
        } catch (Throwable first) {
            try {
                Intent fallback = new Intent(Intent.ACTION_GET_CONTENT);
                fallback.setType("image/*");
                fallback.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
                activity.startActivityForResult(fallback, REQUEST_PICK_CUSTOM_ICON);
            } catch (Throwable second) {
                Toast.makeText(activity, "没有可用的图片选择器", Toast.LENGTH_SHORT).show();
            }
        }
    }

    private static int currentScrollY(Activity activity) {
        try {
            ScrollView scroll = firstScrollView(activity.getWindow().getDecorView());
            return scroll == null ? 0 : scroll.getScrollY();
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static ScrollView firstScrollView(View view) {
        if (view instanceof ScrollView) {
            return (ScrollView) view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                ScrollView found = firstScrollView(group.getChildAt(i));
                if (found != null) {
                    return found;
                }
            }
        }
        return null;
    }


    private static byte[] saveCustomIcon(Context context, String key, Uri uri) throws Exception {
        InputStream in = context.getContentResolver().openInputStream(uri);
        if (in == null) {
            throw new IllegalArgumentException("openInputStream returned null");
        }
        Bitmap source;
        try {
            source = BitmapFactory.decodeStream(in);
        } finally {
            in.close();
        }
        if (source == null) {
            throw new IllegalArgumentException("decodeStream returned null");
        }
        Bitmap icon = squareIcon(source, 192);
        File dir = new File(context.getFilesDir(), "custom_icons");
        if (!dir.exists() && !dir.mkdirs()) {
            throw new IllegalStateException("mkdirs failed: " + dir);
        }
        String fileName = Integer.toHexString(key.hashCode()) + ".png";
        File out = new File(dir, fileName);
        java.io.ByteArrayOutputStream bytes = new java.io.ByteArrayOutputStream();
        icon.compress(Bitmap.CompressFormat.PNG, 100, bytes);
        FileOutputStream fos = new FileOutputStream(out);
        try {
            fos.write(bytes.toByteArray());
        } finally {
            fos.close();
        }
        if (icon != source) {
            icon.recycle();
        }
        source.recycle();
        return bytes.toByteArray();
    }

    private static Bitmap squareIcon(Bitmap source, int size) {
        int width = source.getWidth();
        int height = source.getHeight();
        int side = Math.min(width, height);
        int left = (width - side) / 2;
        int top = (height - side) / 2;
        Bitmap out = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(out);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
        Rect src = new Rect(left, top, left + side, top + side);
        Rect dst = new Rect(0, 0, size, size);
        canvas.drawBitmap(source, src, dst, paint);
        return out;
    }

    private static View iconPageFooter(Context context, SettingsResourceContext settingsContext, Resources resources) {
        int layoutId = resources.getIdentifier("app_icon_settings_footer", "layout", SETTINGS_PKG);
        if (layoutId != 0) {
            try {
                return LayoutInflater.from(context).cloneInContext(settingsContext)
                        .inflate(layoutId, null, false);
            } catch (Throwable ignored) {
            }
        }
        TextView footer = text(context, getString(resources, "icon_setting_footer_text",
                "你可以选择一个普适性图标来替换未被重绘的应用程序的图标，在该应用的图标被重绘后，图标将被替换"),
                12, 0xff999999, false);
        footer.setPadding(dp(context, 30), dp(context, 18), dp(context, 30), dp(context, 18));
        footer.setGravity(Gravity.LEFT | Gravity.CENTER_VERTICAL);
        footer.setLayoutParams(new AbsListView.LayoutParams(-1, dp(context, 64)));
        return footer;
    }

    private static View iconPageUnavailableView(Context context) {
        LinearLayout root = new LinearLayout(context);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER);
        root.setPadding(dp(context, 38), dp(context, 90), dp(context, 38), dp(context, 90));
        root.setLayoutParams(new AbsListView.LayoutParams(-1, dp(context, 360)));

        TextView title = text(context, "应用图标功能后续接入", 18, 0xff666666, true);
        title.setGravity(Gravity.CENTER);
        TextView body = text(context,
                "该功能需要原生主题/图标包服务支持。当前版本先隐藏错误的图标替换列表，避免显示不真实的锤子图标映射。",
                14, 0xff999999, false);
        body.setGravity(Gravity.CENTER);
        body.setPadding(0, dp(context, 16), 0, 0);
        body.setSingleLine(false);

        root.addView(title, new LinearLayout.LayoutParams(-1, -2));
        root.addView(body, new LinearLayout.LayoutParams(-1, -2));
        return root;
    }

    private static TextView dialogButton(Context context, String label, int color) {
        TextView button = text(context, label, 16, color, false);
        button.setGravity(Gravity.CENTER);
        button.setClickable(true);
        return button;
    }

    private static TextView text(Context context, String value, int sp, int color, boolean bold) {
        TextView tv = new TextView(context);
        tv.setText(value);
        tv.setTextSize(sp);
        tv.setTextColor(color);
        tv.setGravity(Gravity.CENTER_VERTICAL);
        tv.setIncludeFontPadding(true);
        if (bold) {
            tv.setTypeface(android.graphics.Typeface.create("sans-serif-medium", 0));
        }
        return tv;
    }

    private static int dp(Context context, int value) {
        return (int) (value * context.getResources().getDisplayMetrics().density + 0.5f);
    }

    private static void showFailure(Activity activity, Throwable t) {
        LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER);
        root.setPadding(dp(activity, 24), dp(activity, 24), dp(activity, 24), dp(activity, 24));
        root.setBackgroundColor(0xfff4f4f7);
        TextView message = text(activity,
                "maintained 桌面设置页加载失败\n\n" + shortError(t),
                16, 0xff333333, false);
        message.setGravity(Gravity.CENTER);
        root.addView(message, new LinearLayout.LayoutParams(-1, -2));
        activity.setContentView(root);
        Toast.makeText(activity, "maintained 设置页加载失败：" + t.getClass().getSimpleName(), Toast.LENGTH_LONG).show();
    }

    private static String shortError(Throwable t) {
        StringBuilder sb = new StringBuilder();
        Throwable cur = t;
        int depth = 0;
        while (cur != null && depth < 5) {
            if (depth > 0) sb.append("\n<- ");
            sb.append(cur.getClass().getSimpleName());
            if (cur.getMessage() != null) {
                sb.append(": ").append(cur.getMessage());
            }
            cur = cur.getCause();
            depth++;
        }
        return sb.toString();
    }

    private static final class PageFlipAdapter extends BaseAdapter {
        private final Activity activity;
        private final SettingsResourceContext context;
        private final Resources resources;
        private final String[] names;
        private final int[] values = new int[]{0, 3, 4, 6};
        private final String[] thumbnails = new String[]{
                "flip_animation_thumbnail_default",
                "flip_animation_thumbnail_grid_flip",
                "flip_animation_thumbnail_shutter",
                "flip_animation_thumbnail_cut_card"
        };
        private final String[] previews = new String[]{
                "flip_animation_default",
                "flip_animation_grid_flip",
                "flip_animation_shutter",
                "flip_animation_cut_card"
        };
        private int selected;

        PageFlipAdapter(Activity activity, SettingsResourceContext context, Resources resources) {
            this.activity = activity;
            this.context = context;
            this.resources = resources;
            int arrayId = resources.getIdentifier("page_flip_anim_name", "array", SETTINGS_PKG);
            this.names = arrayId == 0
                    ? new String[]{"默认动画", "立体翻转", "百叶窗", "切牌"}
                    : resources.getStringArray(arrayId);
            int current = readPageAnimation(activity);
            this.selected = 0;
            for (int i = 0; i < values.length; i++) {
                if (values[i] == current) {
                    this.selected = i;
                    break;
                }
            }
        }

        public int getCount() {
            return Math.min(names.length, values.length);
        }

        public Object getItem(int position) {
            return names[position];
        }

        public long getItemId(int position) {
            return position;
        }

        public View getView(int position, View convertView, android.view.ViewGroup parent) {
            if (convertView == null) {
                int layoutId = resources.getIdentifier("gridview_chooser_item_layout", "layout", SETTINGS_PKG);
                convertView = LayoutInflater.from(activity).cloneInContext(context).inflate(layoutId, parent, false);
            }
            ImageView icon = (ImageView) byId(convertView, resources, "icon");
            ImageView checked = (ImageView) byId(convertView, resources, "checked_image");
            TextView name = (TextView) byId(convertView, resources, "name");
            TextView current = (TextView) byId(convertView, resources, "current");
            
            if (icon != null) {
                int thumbId = drawable(resources, thumbnails[position]);
                if (thumbId != 0) {
                    icon.setImageResource(thumbId);
                }
            }
            if (name != null) {
                name.setText(names[position]);
            }
            if (checked != null) {
                checked.setVisibility(position == selected ? View.VISIBLE : View.GONE);
            }
            if (current != null) {
                current.setVisibility(position == selected ? View.VISIBLE : View.GONE);
            }
            int bg = drawable(resources, gridCellBackground(position, getCount()));
            if (bg != 0) {
                convertView.setBackgroundResource(bg);
            }
            return convertView;
        }

        void setSelected(int position) {
            selected = position;
            notifyDataSetChanged();
        }

        int getSelected() {
            return selected;
        }

        int valueAt(int position) {
            return values[position];
        }

        String nameAt(int position) {
            return names[position];
        }
        
        String previewAt(int position) {
            return previews[position];
        }
    }

    private static final class ThemeEntry {
        final String id;
        final String pkg;
        final String name;
        final boolean local;

        ThemeEntry(String id, String pkg, String name, boolean local) {
            this.id = id;
            this.pkg = pkg;
            this.name = name;
            this.local = local;
        }
    }

    private static final class ThemePreviewAdapter extends BaseAdapter {
        private final Activity activity;
        private final SettingsResourceContext context;
        private final Resources resources;
        private final boolean local;
        private final ArrayList<ThemeEntry> entries;
        private String currentThemeId;

        ThemePreviewAdapter(Activity activity, SettingsResourceContext context, Resources resources, boolean local) {
            this.activity = activity;
            this.context = context;
            this.resources = resources;
            this.local = local;
            this.entries = new ArrayList<ThemeEntry>(themeEntriesFor(activity, local));
            this.currentThemeId = currentTheme(activity);
        }

        public int getCount() {
            return entries.size();
        }

        public Object getItem(int position) {
            return entryAt(position);
        }

        public long getItemId(int position) {
            return position;
        }

        ThemeEntry entryAt(int position) {
            return position >= 0 && position < entries.size() ? entries.get(position) : null;
        }

        public void notifyDataSetChanged() {
            currentThemeId = currentTheme(activity);
            super.notifyDataSetChanged();
        }

        public View getView(int position, View convertView, android.view.ViewGroup parent) {
            if (convertView == null) {
                int layoutId = resources.getIdentifier("theme_preview_block", "layout", SETTINGS_PKG);
                convertView = LayoutInflater.from(activity).cloneInContext(context).inflate(layoutId, parent, false);
            }
            ThemeEntry entry = entryAt(position);
            if (entry == null) {
                return convertView;
            }
            ImageView preview = (ImageView) byId(convertView, resources, "theme_preview_block");
            TextView name = (TextView) byId(convertView, resources, "theme_name_preview");
            TextView downloading = (TextView) byId(convertView, resources, "theme_downloading_text");
            View progress = byId(convertView, resources, "theme_block_downloading_progress");
            if (preview != null) {
                Bitmap bitmap = themePreviewBitmap(activity, entry.id);
                if (bitmap != null) {
                    preview.setImageBitmap(bitmap);
                } else {
                    int fallback = drawable(resources, "theme_preview_phone_black");
                    if (fallback != 0) {
                        preview.setImageResource(fallback);
                    }
                }
            }
            if (name != null) {
                name.setText(entry.name);
            }
            
            boolean installed = local || entry.local || packageInstalled(activity, entry.pkg);
            long downloadId = activity.getSharedPreferences(THEME_DOWNLOAD_PREFS, Context.MODE_PRIVATE)
                    .getLong(entry.pkg, -1);
            
            boolean current = entry.id.equals(currentThemeId);
            if (installed) {
                if (downloading != null) {
                    downloading.setText(current ? "当前" : "");
                    downloading.setVisibility(current ? View.VISIBLE : View.GONE);
                }
                if (progress != null) {
                    progress.setVisibility(View.GONE);
                }
            } else if (downloadId != -1) {
                int[] prog = getDownloadProgress(activity, downloadId);
                if (prog != null) {
                    int status = prog[0];
                    int downloadedBytes = prog[1];
                    int totalBytes = prog[2];
                    if (status == DownloadManager.STATUS_SUCCESSFUL) {
                        if (downloading != null) {
                            downloading.setText("待安装");
                            downloading.setVisibility(View.VISIBLE);
                        }
                        if (progress != null) {
                            progress.setVisibility(View.GONE);
                        }
                    } else if (status == DownloadManager.STATUS_RUNNING || status == DownloadManager.STATUS_PENDING) {
                        if (downloading != null) {
                            int percent = totalBytes > 0 ? Math.max(1, Math.min(99, downloadedBytes * 100 / totalBytes)) : 1;
                            downloading.setText("下载中: " + percent + "%");
                            downloading.setVisibility(View.VISIBLE);
                        }
                        if (progress != null) {
                            progress.setVisibility(View.VISIBLE);
                        }
                    } else {
                        if (downloading != null) {
                            downloading.setText("");
                            downloading.setVisibility(View.GONE);
                        }
                        if (progress != null) {
                            progress.setVisibility(View.GONE);
                        }
                    }
                } else {
                    if (downloading != null) {
                        downloading.setText("");
                        downloading.setVisibility(View.GONE);
                    }
                    if (progress != null) {
                        progress.setVisibility(View.GONE);
                    }
                }
            } else {
                if (downloading != null) {
                    downloading.setText("");
                    downloading.setVisibility(View.GONE);
                }
                if (progress != null) {
                    progress.setVisibility(View.GONE);
                }
            }
            
            ImageView checked = (ImageView) byId(convertView, resources, "checked_image");
            if (checked != null) {
                checked.setVisibility(current ? View.VISIBLE : View.GONE);
            }
            int bg = drawable(resources, gridCellBackground(position, getCount()));
            if (bg != 0) {
                convertView.setBackgroundResource(bg);
            }
            return convertView;
        }
    }

    private static String gridCellBackground(int position, int count) {
        boolean left = (position % 2) == 0;
        int rows = (count + 1) / 2;
        int row = position / 2;
        String side = left ? "left" : "right";
        if (rows <= 1) {
            return "selector_theme_list_item_single_" + side;
        }
        if (row == 0) {
            return "selector_theme_list_item_top_" + side;
        }
        if (row == rows - 1) {
            return "selector_theme_list_item_bottom_" + side;
        }
        return "selector_theme_list_item_mid_" + side;
    }

    private static final class SimpleTextAdapter extends BaseAdapter {
        private final Context context;
        private final Resources resources;
        private final String[] titles;
        private final String[] subtitles;

        SimpleTextAdapter(Context context, Resources resources, String[] titles, String[] subtitles) {
            this.context = context;
            this.resources = resources;
            this.titles = titles;
            this.subtitles = subtitles;
        }

        public int getCount() {
            return titles.length;
        }

        public Object getItem(int position) {
            return titles[position];
        }

        public long getItemId(int position) {
            return position;
        }

        public View getView(int position, View convertView, android.view.ViewGroup parent) {
            LinearLayout row;
            if (convertView instanceof LinearLayout) {
                row = (LinearLayout) convertView;
            } else {
                row = new LinearLayout(context);
                row.setOrientation(LinearLayout.VERTICAL);
                row.setGravity(Gravity.CENTER_VERTICAL);
                row.setPadding(dp(context, 30), 0, dp(context, 30), 0);
                row.setLayoutParams(new AbsListView.LayoutParams(-1, dp(context, 86)));
            }
            row.removeAllViews();
            TextView title = text(context, titles[position], 20, 0xff333333, false);
            TextView subtitle = text(context, subtitles[position], 14, 0xff999999, false);
            row.addView(title, new LinearLayout.LayoutParams(-1, -2));
            row.addView(subtitle, new LinearLayout.LayoutParams(-1, -2));
            row.setBackgroundColor(0xfff7f7f7);
            return row;
        }

        private String backgroundFor(int position, int count) {
            if (count == 1) return "selector_setting_sub_item_bg_single";
            if (position == 0) return "selector_setting_sub_item_bg_top";
            if (position == count - 1) return "selector_setting_sub_item_bg_bottom";
            return "selector_setting_sub_item_bg_middle";
        }
    }

    private static final class AppIconAdapter extends BaseAdapter {
        private final Activity activity;
        private final SettingsResourceContext context;
        private final Resources resources;
        private final IconManager iconManager;
        private final List<RedirectIconInfo> apps = new ArrayList<RedirectIconInfo>();
        private final LayoutInflater inflater;

        AppIconAdapter(Activity activity, SettingsResourceContext context, Resources resources) {
            this.activity = activity;
            this.context = context;
            this.resources = resources;
            this.inflater = LayoutInflater.from(activity).cloneInContext(context);
            this.iconManager = new IconManager(activity);
            this.apps.addAll(loadEntries(activity, this.iconManager));
        }

        AppIconAdapter(Activity activity, SettingsResourceContext context, Resources resources,
                       List<RedirectIconInfo> entries) {
            this.activity = activity;
            this.context = context;
            this.resources = resources;
            this.inflater = LayoutInflater.from(activity).cloneInContext(context);
            this.iconManager = new IconManager(activity);
            if (entries != null) {
                this.apps.addAll(entries);
            }
        }

        static List<RedirectIconInfo> loadEntries(Activity activity) {
            return loadEntries(activity, new IconManager(activity));
        }

        private static List<RedirectIconInfo> loadEntries(Activity activity, final IconManager iconManager) {
            final ArrayList<RedirectIconInfo> result = new ArrayList<RedirectIconInfo>();
            try {
                List<RedirectIconInfo> resolved = iconManager.getIconRedirectedApplications();
                for (int i = 0; i < resolved.size(); i++) {
                    RedirectIconInfo info = resolved.get(i);
                    ResolveInfo resolveInfo = iconManager.getResolveInfo(info.packageName, info.componentName);
                    if (shouldShowIconEntry(resolveInfo)) {
                        result.add(info);
                    }
                }
                final HashMap<String, String> labels = new HashMap<String, String>();
                Collections.sort(result, new Comparator<RedirectIconInfo>() {
                    public int compare(RedirectIconInfo a, RedirectIconInfo b) {
                        String la = cachedLabel(labels, iconManager, a);
                        String lb = cachedLabel(labels, iconManager, b);
                        return la.compareToIgnoreCase(lb);
                    }
                });
            } catch (Throwable ignored) {
            }
            return result;
        }

        private static String cachedLabel(HashMap<String, String> labels, IconManager iconManager,
                                          RedirectIconInfo info) {
            if (info == null) {
                return "";
            }
            String key = info.packageName + ";" + info.componentName;
            String label = labels.get(key);
            if (label == null) {
                label = iconManager.getLableForPackage(info.packageName, info.componentName);
                if (label == null) {
                    label = "";
                }
                labels.put(key, label);
            }
            return label;
        }

        public int getCount() {
            return Math.min(apps.size(), 120);
        }

        public Object getItem(int position) {
            return apps.get(position);
        }

        public long getItemId(int position) {
            return position;
        }

        public View getView(int position, View convertView, android.view.ViewGroup parent) {
            if (convertView == null) {
                convertView = createIconRow(parent);
            }
            final View rowView = convertView;
            final RedirectIconInfo info = apps.get(position);
            convertView.setTag(info);
            ResolveInfo resolveInfo = iconManager.getResolveInfo(info.packageName, info.componentName);
            Drawable official = iconManager.getOfficialIcon(info);
            Drawable candidate = singleAppChoiceDrawable(activity, resolveInfo, resources);
            setIcon(convertView, resources, "official_icon", official);
            setIcon(convertView, resources, "unofficial_icon", candidate == null ? plusIcon(resources) : candidate);

            View officialFrame = byId(convertView, resources, "official_icon_frame");
            View unofficialFrame = byId(convertView, resources, "unofficial_icon_frame");
            boolean improved = isImprovedSelected(info, candidate);
            if (officialFrame != null) {
                officialFrame.setVisibility(improved ? View.GONE : View.VISIBLE);
            }
            if (unofficialFrame != null) {
                unofficialFrame.setVisibility(improved ? View.VISIBLE : View.GONE);
            }

            bindIconClick(convertView, info, "official_icon_layout", new View.OnClickListener() {
                public void onClick(View v) {
                    selectOriginal(rowView, info);
                }
            });
            bindIconClick(convertView, info, "unofficial_icon_layout", new View.OnClickListener() {
                public void onClick(View v) {
                    selectImprovedOrPick(rowView, info);
                }
            });
            convertView.setClickable(false);
            convertView.setOnClickListener(null);
            TextView name = (TextView) byId(convertView, resources, "app_name");
            TextView author = (TextView) byId(convertView, resources, "icon_author_name");
            if (name != null) {
                name.setText(iconManager.getLableForPackage(info.packageName, info.componentName));
            }
            if (author != null) {
                author.setText(improved ? getString(resources, "unofficial_icon", "改进版图标")
                        : getString(resources, "official_icon", "可替换图标"));
            }
            return convertView;
        }

        private View createIconRow(android.view.ViewGroup parent) {
            int layoutId = resources.getIdentifier("app_icon_settings_item_layout", "layout", SETTINGS_PKG);
            View row = layoutId == 0 ? new LinearLayout(activity) : inflater.inflate(layoutId, parent, false);
            row.setLayoutParams(new AbsListView.LayoutParams(-1, dp(activity, 92)));
            View officialFrame = byId(row, resources, "official_icon_frame");
            View unofficialFrame = byId(row, resources, "unofficial_icon_frame");
            if (officialFrame != null) {
                officialFrame.setVisibility(View.INVISIBLE);
            }
            if (unofficialFrame != null) {
                unofficialFrame.setVisibility(View.INVISIBLE);
            }
            return row;
        }

        private Drawable plusIcon(Resources resources) {
            Drawable icon = safeDrawable(resources, drawable(resources, "ic_add_icon_plus"));
            if (icon == null) {
                icon = safeDrawable(resources, drawable(resources, "default_icon_1"));
            }
            return icon;
        }

        private void bindIconClick(View row, RedirectIconInfo info, String idName, View.OnClickListener listener) {
            View target = byId(row, resources, idName);
            if (target != null) {
                target.setTag(info);
                target.setClickable(true);
                target.setFocusable(false);
                target.setOnClickListener(listener);
                if (target instanceof android.view.ViewGroup) {
                    ((android.view.ViewGroup) target).setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);
                }
            }
        }

        private void selectOriginal(View row, RedirectIconInfo info) {
            if (info == null) {
                return;
            }
            info.useImprovedAppIcon = false;
            info.drawableName = RedirectIconDB.MODE_ORIGINAL;
            info.iconData = null;
            RedirectIconDB.resetIconToDefault(activity, info.packageName, info.componentName);
            forceUpdateIcon(activity, info);
            refreshIconRow(row, info, iconManager, activity, resources);
        }

        private void selectImprovedOrPick(View row, RedirectIconInfo info) {
            if (info == null) {
                return;
            }
            ResolveInfo resolveInfo = iconManager.getResolveInfo(info.packageName, info.componentName);
            Drawable candidate = singleAppChoiceDrawable(activity, resolveInfo, resources);
            if (candidate == null) {
                pickCustomIcon(info);
                return;
            }
            showIconChoiceDialog(row, info);
        }

        private void showIconChoiceDialog(final View row, final RedirectIconInfo info) {
            ResolveInfo resolveInfo = iconManager.getResolveInfo(info.packageName, info.componentName);
            final Drawable candidate = singleAppChoiceDrawable(activity, resolveInfo, resources);
            final String[] labels = candidate == null
                    ? new String[]{"从相册选择图片"}
                    : new String[]{"使用推荐图标", "从相册选择图片"};
            new AlertDialog.Builder(activity)
                    .setTitle(iconManager.getLableForPackage(info.packageName, info.componentName))
                    .setItems(labels, new android.content.DialogInterface.OnClickListener() {
                        public void onClick(android.content.DialogInterface dialog, int which) {
                            if (candidate != null && which == 0) {
                                useImprovedIcon(row, info);
                            } else {
                                pickCustomIcon(info);
                            }
                        }
                    })
                    .show();
        }

        private void pickCustomIcon(RedirectIconInfo info) {
            activity.getSharedPreferences(ICON_OVERRIDE_PREFS, Context.MODE_PRIVATE).edit()
                    .putString(PREF_PENDING_CUSTOM_ICON_KEY, info.getPrimaryId()).apply();
            beginPickCustomIcon(activity);
        }

        private void useImprovedIcon(View row, RedirectIconInfo info) {
            info.useImprovedAppIcon = true;
            info.drawableName = RedirectIconDB.MODE_AUTO;
            info.iconData = null;
            RedirectIconDB.updateAutoIcon(activity, info.packageName, info.componentName);
            forceUpdateIcon(activity, info);
            refreshIconRow(row, info, iconManager, activity, resources);
        }

        private boolean isImprovedSelected(RedirectIconInfo info, Drawable candidate) {
            if (info == null || candidate == null) {
                return false;
            }
            String mode = RedirectIconDB.modeOf(info);
            if (RedirectIconDB.MODE_CUSTOM.equals(mode) || RedirectIconDB.MODE_RESOURCE.equals(mode)) {
                return true;
            }
            if (isImprovedIconEnabled(activity)) {
                return true;
            }
            if (RedirectIconDB.MODE_ORIGINAL.equals(mode) || !info.useImprovedAppIcon) {
                return false;
            }
            if (info.useImprovedAppIcon) {
                return true;
            }
            return RedirectIconDB.getRedirectIconInfo(activity, info.packageName, info.componentName) == null
                    && isImprovedIconEnabled(activity);
        }

        private Drawable packedIcon(Context context, ResolveInfo info) {
            try {
                ActivityInfo ai = info == null ? null : info.activityInfo;
                if (ai == null || ai.packageName == null) {
                    return null;
                }
                Class<?> cls = Class.forName("com.smartisanos.home.settings.icons.IconPackManager");
                Object icon = cls.getMethod("getPackedIcon", Context.class, String.class)
                        .invoke(null, context, ai.packageName);
                return icon instanceof Drawable ? (Drawable) icon : null;
            } catch (Throwable ignored) {
                return null;
            }
        }

        private void setIcon(View root, Resources resources, String idName, Drawable icon) {
            ImageView view = (ImageView) byId(root, resources, idName);
            if (view != null && icon != null) {
                view.setImageDrawable(icon);
            }
        }

        private Drawable safeDrawable(Resources resources, int resId) {
            try {
                return resources.getDrawable(resId);
            } catch (Throwable ignored) {
                return null;
            }
        }

    }

    private static boolean shouldShowIconEntry(ResolveInfo info) {
        if (info == null || info.activityInfo == null || info.activityInfo.packageName == null) {
            return false;
        }
        String pkg = info.activityInfo.packageName;
        return !"app.lawnchair".equals(pkg)
                && !"com.smartisanos.launcher".equals(pkg)
                && !pkg.startsWith("com.smartisanos.launcher.theme");
    }

    private static Drawable selectedIconDrawable(Context context, ResolveInfo info, CharSequence label, Resources resources) {
        if (context == null || info == null || info.activityInfo == null) {
            return null;
        }
        ActivityInfo ai = info.activityInfo;
        RedirectIconInfo redirect = RedirectIconDB.getRedirectIconInfo(context, ai.packageName, ai.name);
        if (redirect == null) {
            return candidateIconDrawable(context, info, resources);
        }
        if (!redirect.useImprovedAppIcon) {
            return null;
        }
        String mode = RedirectIconDB.modeOf(redirect);
        if (RedirectIconDB.MODE_ORIGINAL.equals(mode)) {
            return null;
        }
        return candidateIconDrawable(context, info, resources);
    }

    private static Drawable candidateIconDrawable(Context context, ResolveInfo info, Resources resources) {
        if (context == null || info == null || info.activityInfo == null) {
            return null;
        }
        ActivityInfo ai = info.activityInfo;
        RedirectIconInfo redirect = RedirectIconDB.getRedirectIconInfo(context, ai.packageName, ai.name);
        String mode = RedirectIconDB.modeOf(redirect);
        if (RedirectIconDB.MODE_CUSTOM.equals(mode) && redirect != null && redirect.iconData != null) {
            Bitmap bitmap = BitmapFactory.decodeByteArray(redirect.iconData, 0, redirect.iconData.length);
            if (bitmap != null) {
                return new android.graphics.drawable.BitmapDrawable(context.getResources(), bitmap);
            }
        }
        if (RedirectIconDB.MODE_RESOURCE.equals(mode)) {
            Drawable custom = safeDrawable(resources, drawable(resources, RedirectIconDB.resourceNameOf(redirect)));
            if (custom != null) {
                return custom;
            }
        }
        Drawable packed = packedIcon(context, info);
        if (packed != null) {
            return packed;
        }
        if (redirect != null && redirect.useImprovedAppIcon && RedirectIconDB.MODE_AUTO.equals(mode)) {
            Drawable smartisan = smartisanIconDrawable(context, info, resources);
            if (smartisan != null) {
                return smartisan;
            }
        }
        if (redirect == null && isImprovedIconEnabled(context)) {
            Drawable smartisan = smartisanIconDrawable(context, info, resources);
            if (smartisan != null) {
                return smartisan;
            }
        }
        return null;
    }

    private static Drawable singleAppChoiceDrawable(Context context, ResolveInfo info, Resources resources) {
        if (context == null || info == null || info.activityInfo == null) {
            return null;
        }
        ActivityInfo ai = info.activityInfo;
        RedirectIconInfo redirect = RedirectIconDB.getRedirectIconInfo(context, ai.packageName, ai.name);
        String mode = RedirectIconDB.modeOf(redirect);
        if (RedirectIconDB.MODE_CUSTOM.equals(mode) && redirect != null && redirect.iconData != null) {
            Bitmap bitmap = BitmapFactory.decodeByteArray(redirect.iconData, 0, redirect.iconData.length);
            if (bitmap != null) {
                return new android.graphics.drawable.BitmapDrawable(context.getResources(), bitmap);
            }
        }
        if (RedirectIconDB.MODE_RESOURCE.equals(mode)) {
            Drawable custom = safeDrawable(resources, drawable(resources, RedirectIconDB.resourceNameOf(redirect)));
            if (custom != null) {
                return custom;
            }
        }
        return smartisanIconDrawable(context, info, resources);
    }

    private static Drawable smartisanIconDrawable(Context context, ResolveInfo info, Resources resources) {
        Drawable local = maintainedResourceIcon(context, resources, smartisanIconNameFor(context, info));
        if (local != null) {
            return local;
        }
        return smartisanNetworkIconDrawable(context, info);
    }

    private static String smartisanIconNameFor(Context context, ResolveInfo info) {
        ActivityInfo ai = info == null ? null : info.activityInfo;
        if (ai == null) {
            return null;
        }
        String pkg = ai.packageName == null ? "" : ai.packageName;
        String cls = ai.name == null ? "" : ai.name;
        String key = (pkg + " " + cls).toLowerCase();
        String label = "";
        try {
            CharSequence loaded = context == null ? null : info.loadLabel(context.getPackageManager());
            label = loaded == null ? "" : loaded.toString();
        } catch (Throwable ignored) {
        }
        if ("com.smartisanos.weather".equals(pkg) || "com.android.weather".equals(pkg)
                || (isSystemApp(ai) && (key.contains("weather") || "天气".equals(label)))) {
            return "app_icon_weather";
        }
        if ("com.smartisanos.appstore".equals(pkg) || "com.android.vending".equals(pkg)
                || "com.sec.android.app.samsungapps".equals(pkg)
                || key.contains("appstore")
                || "应用商店".equals(label) || "应用市场".equals(label)) {
            return "app_icon_app_store";
        }
        if ("com.smartisanos.reader".equals(pkg) || (isSmartisanPackage(pkg) && key.contains("reader"))
                || "阅读".equals(label)) {
            return "app_icon_reader";
        }
        if ("com.google.android.googlequicksearchbox".equals(pkg)
                || (isSystemApp(ai) && key.contains("googlequicksearchbox"))
                || "搜索".equals(label)) {
            return "app_icon_search";
        }
        if ("com.smartisanos.notes".equals(pkg) || (isSmartisanPackage(pkg) && key.contains("note"))
                || "便签".equals(label)
                || "笔记".equals(label)) {
            return "app_icon_notes";
        }
        if ("com.smartisanos.gamecenter".equals(pkg) || (isSmartisanPackage(pkg) && key.contains("gamecenter"))
                || "游戏中心".equals(label)) {
            return "app_icon_game_center";
        }
        if ("com.smartisanos.cloudsync".equals(pkg) || (isSmartisanPackage(pkg) && key.contains("cloudsync"))
                || "欢喜云".equals(label)) {
            return "app_icon_smile_cloud";
        }
        if ("com.smartisanos.bbs".equals(pkg) || (isSmartisanPackage(pkg) && key.contains("bbs"))
                || "锤子论坛".equals(label)) {
            return "app_icon_bbs";
        }

        if (!isSystemApp(ai)) {
            return null;
        }
        if ("com.android.dialer".equals(pkg) || "com.android.phone".equals(pkg)
                || "com.google.android.dialer".equals(pkg) || "com.smartisanos.phone".equals(pkg)
                || key.contains("dialer")
                || "电话".equals(label) || "拨号".equals(label)) {
            return "app_icon_phone";
        }
        if ("com.android.mms".equals(pkg) || "com.google.android.apps.messaging".equals(pkg)
                || key.contains("mms") || key.contains("messaging")
                || "短信".equals(label) || "信息".equals(label)) {
            return "app_icon_mms";
        }
        if ("com.android.contacts".equals(pkg) || "com.google.android.contacts".equals(pkg)
                || "com.smartisanos.contacts".equals(pkg) || key.contains("contacts")
                || "联系人".equals(label) || "通讯录".equals(label) || "电话本".equals(label)) {
            return "source_contactcommon_icon";
        }
        if ("com.android.calendar".equals(pkg) || "com.google.android.calendar".equals(pkg)
                || "com.smartisanos.calendar".equals(pkg) || key.contains("calendar") || "日历".equals(label)) {
            return "calendar";
        }
        if ("com.android.deskclock".equals(pkg) || "com.google.android.deskclock".equals(pkg)
                || "com.smartisanos.clock".equals(pkg) || key.contains("clock") || "时钟".equals(label)) {
            return "clock";
        }
        if ("com.android.settings".equals(pkg) || "com.smartisanos.settings".equals(pkg)
                || key.contains("settings") || "设置".equals(label)) {
            return null;
        }
        return null;
    }

    private static boolean isSmartisanPackage(String pkg) {
        return pkg != null && pkg.startsWith("com.smartisanos.");
    }

    private static boolean isSystemApp(ActivityInfo ai) {
        try {
            ApplicationInfo app = ai == null ? null : ai.applicationInfo;
            return app != null && (app.flags & (ApplicationInfo.FLAG_SYSTEM | ApplicationInfo.FLAG_UPDATED_SYSTEM_APP)) != 0;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void tagThemeDetailControl(View view, ThemeEntry entry) {
        if (view != null && entry != null) {
            view.setTag(entry.pkg);
        }
    }

    private static boolean isThemeDetailControlCurrent(View view, ThemeEntry entry) {
        if (view == null || entry == null) {
            return true;
        }
        Object tag = view.getTag();
        return tag == null || entry.pkg.equals(tag);
    }

    private static Drawable maintainedResourceIcon(Context context, Resources resources, String name) {
        Drawable icon = safeDrawable(resources, drawable(resources, name));
        if (icon != null || context == null || name == null) {
            return icon;
        }
        try {
            Resources appResources = context.getResources();
            return safeDrawable(appResources, appResources.getIdentifier(name, "drawable", context.getPackageName()));
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Drawable smartisanNetworkIconDrawable(Context context, ResolveInfo info) {
        ActivityInfo ai = info == null ? null : info.activityInfo;
        if (context == null || ai == null || ai.packageName == null || ai.packageName.length() == 0) {
            return null;
        }
        Bitmap bitmap = smartisanNetworkIconBitmap(context, ai.packageName);
        return bitmap == null ? null : new android.graphics.drawable.BitmapDrawable(context.getResources(), bitmap);
    }

    private static Bitmap smartisanNetworkIconBitmap(Context context, String packageName) {
        if (packageName == null || packageName.length() == 0) {
            return null;
        }
        synchronized (sSmartisanIconCache) {
            if (sSmartisanIconCache.containsKey(packageName)) {
                return sSmartisanIconCache.get(packageName);
            }
        }
        Bitmap cached = readCachedSmartisanIcon(context, packageName);
        if (cached != null) {
            synchronized (sSmartisanIconCache) {
                sSmartisanIconCache.put(packageName, cached);
            }
            return cached;
        }
        if (shouldSkipSmartisanIconFetch(context, packageName)) {
            return null;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            scheduleSmartisanIconFetch(context, packageName);
            return null;
        }
        Bitmap bitmap = null;
        InputStream in = null;
        StrictMode.ThreadPolicy oldPolicy = null;
        try {
            oldPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(oldPolicy).permitNetwork().build());
            URL url = new URL("http://icon.smartisan.com/drawable/" + packageName + "/icon_provided_by_smartisan.png");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setConnectTimeout(900);
            conn.setReadTimeout(1200);
            conn.setUseCaches(true);
            if (conn.getResponseCode() == 200) {
                in = conn.getInputStream();
                byte[] data = readAllBytes(in, 64 * 1024);
                bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
                writeCachedSmartisanIcon(context, packageName, bitmap);
            }
        } catch (Throwable ignored) {
        } finally {
            if (oldPolicy != null) {
                try {
                    StrictMode.setThreadPolicy(oldPolicy);
                } catch (Throwable ignored) {
                }
            }
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        }
        synchronized (sSmartisanIconCache) {
            sSmartisanIconCache.put(packageName, bitmap);
        }
        if (bitmap == null) {
            markSmartisanIconMiss(context, packageName);
        }
        return bitmap;
    }

    private static void scheduleSmartisanIconFetch(final Context context, final String packageName) {
        if (context == null || packageName == null) {
            return;
        }
        synchronized (sSmartisanIconFetchPending) {
            if (sSmartisanIconFetchPending.containsKey(packageName)) {
                return;
            }
            sSmartisanIconFetchPending.put(packageName, Boolean.TRUE);
        }
        final Context appContext = context.getApplicationContext() == null ? context : context.getApplicationContext();
        new Thread(new Runnable() {
            public void run() {
                try {
                    smartisanNetworkIconBitmap(appContext, packageName);
                } finally {
                    synchronized (sSmartisanIconFetchPending) {
                        sSmartisanIconFetchPending.remove(packageName);
                    }
                }
            }
        }, "SmartisanIconFetch").start();
    }

    private static Bitmap readCachedSmartisanIcon(Context context, String packageName) {
        try {
            File file = smartisanIconCacheFile(context, packageName);
            if (file == null || !file.exists()) {
                return null;
            }
            Bitmap bitmap = BitmapFactory.decodeFile(file.getAbsolutePath());
            if (bitmap == null) {
                file.delete();
            }
            return bitmap;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void writeCachedSmartisanIcon(Context context, String packageName, Bitmap bitmap) {
        if (bitmap == null) {
            return;
        }
        FileOutputStream out = null;
        try {
            File file = smartisanIconCacheFile(context, packageName);
            if (file == null) {
                return;
            }
            File dir = file.getParentFile();
            if (dir != null && !dir.exists()) {
                dir.mkdirs();
            }
            out = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, out);
            context.getSharedPreferences(SMARTISAN_ICON_CACHE_PREFS, Context.MODE_PRIVATE).edit()
                    .remove("miss." + packageName).apply();
        } catch (Throwable ignored) {
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static boolean shouldSkipSmartisanIconFetch(Context context, String packageName) {
        try {
            long lastMiss = context.getSharedPreferences(SMARTISAN_ICON_CACHE_PREFS, Context.MODE_PRIVATE)
                    .getLong("miss." + packageName, 0L);
            return lastMiss > 0L && System.currentTimeMillis() - lastMiss < SMARTISAN_ICON_MISS_RETRY_MS;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void markSmartisanIconMiss(Context context, String packageName) {
        try {
            context.getSharedPreferences(SMARTISAN_ICON_CACHE_PREFS, Context.MODE_PRIVATE).edit()
                    .putLong("miss." + packageName, System.currentTimeMillis()).apply();
        } catch (Throwable ignored) {
        }
    }

    private static File smartisanIconCacheFile(Context context, String packageName) {
        if (context == null || packageName == null) {
            return null;
        }
        return new File(new File(context.getCacheDir(), SMARTISAN_ICON_CACHE_DIR),
                Integer.toHexString(packageName.hashCode()) + ".png");
    }

    private static byte[] readAllBytes(InputStream in, int maxBytes) throws java.io.IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        byte[] buffer = new byte[8192];
        int total = 0;
        int read;
        while ((read = in.read(buffer)) != -1) {
            total += read;
            if (total > maxBytes) {
                throw new java.io.IOException("icon too large");
            }
            out.write(buffer, 0, read);
        }
        return out.toByteArray();
    }

    private static boolean isBrowserApp(ResolveInfo info) {
        ActivityInfo ai = info == null ? null : info.activityInfo;
        if (ai == null) {
            return false;
        }
        String pkg = ai.packageName == null ? "" : ai.packageName;
        String cls = ai.name == null ? "" : ai.name;
        String key = (pkg + " " + cls).toLowerCase();
        return "com.android.browser".equals(pkg)
                || "com.smartisanos.browser".equals(pkg)
                || key.contains("browser")
                || key.contains("chrome");
    }

    private static Drawable packedIcon(Context context, ResolveInfo info) {
        try {
            ActivityInfo ai = info == null ? null : info.activityInfo;
            if (ai == null || ai.packageName == null) {
                return null;
            }
            Class<?> cls = Class.forName("com.smartisanos.home.settings.icons.IconPackManager");
            try {
                Object icon = cls.getMethod("getPackedIcon", Context.class, String.class, String.class)
                        .invoke(null, context, ai.packageName, ai.name);
                if (icon instanceof Drawable) {
                    return (Drawable) icon;
                }
            } catch (NoSuchMethodException ignored) {
            }
            Object icon = cls.getMethod("getPackedIcon", Context.class, String.class)
                    .invoke(null, context, ai.packageName);
            return icon instanceof Drawable ? (Drawable) icon : null;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String iconSourceText(Context context, ResolveInfo info, CharSequence label, Resources resources) {
        ActivityInfo ai = info == null ? null : info.activityInfo;
        RedirectIconInfo redirect = ai == null ? null : RedirectIconDB.getRedirectIconInfo(context, ai.packageName, ai.name);
        String mode = RedirectIconDB.modeOf(redirect);
        if (RedirectIconDB.MODE_CUSTOM.equals(mode)) {
            return "相册自定义图标";
        }
        if (RedirectIconDB.MODE_RESOURCE.equals(mode)) {
            return "自定义图标";
        }
        if (packedIcon(context, info) != null) {
            return "图标包图标";
        }
        if (isImprovedIconEnabled(context) && smartisanIconDrawable(context, info, resources) != null) {
            return "改进版图标";
        }
        return "系统原图，可自定义";
    }

    private static Drawable safeDrawable(Resources resources, int resId) {
        if (resources == null || resId == 0) {
            return null;
        }
        try {
            return resources.getDrawable(resId);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String iconKey(ResolveInfo info) {
        ActivityInfo ai = info == null ? null : info.activityInfo;
        if (ai == null) {
            return "";
        }
        return String.valueOf(ai.packageName) + ";" + String.valueOf(ai.name);
    }

    private static String[] splitIconKey(String key) {
        String[] parts = key == null ? new String[0] : key.split(";", 2);
        if (parts.length == 2) {
            return parts;
        }
        return new String[]{"", ""};
    }

    private static View byId(View root, Resources resources, String idName) {
        int id = resources.getIdentifier(idName, "id", SETTINGS_PKG);
        return id == 0 ? null : root.findViewById(id);
    }

    private static final class SearchAdapter extends BaseAdapter {
        private final Activity activity;
        private final SettingsResourceContext context;
        private final Resources resources;
        private final ArrayList<SearchEntry> entries;
        private String query = "";

        SearchAdapter(Activity activity, SettingsResourceContext context, Resources resources,
                      ArrayList<SearchEntry> entries) {
            this.activity = activity;
            this.context = context;
            this.resources = resources;
            this.entries = entries;
        }

        public int getCount() {
            return entries.size();
        }

        public Object getItem(int position) {
            return entries.get(position);
        }

        public long getItemId(int position) {
            return position;
        }

        void setQuery(String query) {
            this.query = query == null ? "" : query.trim().toLowerCase();
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            final SearchEntry entry = entries.get(position);
            View row = convertView == null ? createSearchResultRow(activity) : convertView;

            ImageView icon = (ImageView) row.findViewById(0x53500101);
            if (icon != null) {
                icon.setVisibility(View.VISIBLE);
                icon.setImageDrawable(entry.icon);
            }

            TextView label = (TextView) row.findViewById(0x53500102);
            if (label != null) {
                label.setText(highlightMatch(entry.label, query));
                label.setSingleLine(true);
            }

            row.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    launchSearchEntry(activity, entry);
                }
            });
            return row;
        }
    }

    private static View createSearchResultRow(Activity activity) {
        LinearLayout row = new LinearLayout(activity);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(dp(activity, 27), 0, dp(activity, 24), 0);
        row.setMinimumHeight(dp(activity, 56));
        row.setLayoutParams(new AbsListView.LayoutParams(-1, dp(activity, 56)));
        row.setBackground(searchRowBackground());

        ImageView icon = new ImageView(activity);
        icon.setId(0x53500101);
        icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
        LinearLayout.LayoutParams iconLp = new LinearLayout.LayoutParams(dp(activity, 42), dp(activity, 42));
        row.addView(icon, iconLp);

        TextView label = new TextView(activity);
        label.setId(0x53500102);
        label.setSingleLine(true);
        label.setIncludeFontPadding(false);
        label.setTextColor(0xff333743);
        label.setTextSize(15);
        label.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams labelLp = new LinearLayout.LayoutParams(0, -1, 1);
        labelLp.leftMargin = dp(activity, 17);
        row.addView(label, labelLp);
        return row;
    }

    private static Drawable searchRowBackground() {
        android.graphics.drawable.StateListDrawable states = new android.graphics.drawable.StateListDrawable();
        GradientDrawable pressed = new GradientDrawable();
        pressed.setColor(0xfff1f2f3);
        pressed.setStroke(1, 0xffe6e8eb);
        GradientDrawable normal = new GradientDrawable();
        normal.setColor(0xffffffff);
        normal.setStroke(1, 0xffececef);
        states.addState(new int[]{android.R.attr.state_pressed}, pressed);
        states.addState(new int[]{}, normal);
        return states;
    }

    private static CharSequence highlightMatch(String label, String query) {
        if (label == null || query == null || query.length() == 0) {
            return label;
        }
        String lower = label.toLowerCase();
        int index = lower.indexOf(query.toLowerCase());
        if (index < 0) {
            return label;
        }
        android.text.SpannableString span = new android.text.SpannableString(label);
        span.setSpan(new android.text.style.ForegroundColorSpan(0xffd94b45),
                index, Math.min(label.length(), index + query.length()),
                android.text.Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        return span;
    }

    private static final class SearchEntry {
        final String label;
        final String labelLower;
        final String packageName;
        final String className;
        final int userId;
        final String key;
        final String pinyinSpaced;
        final String pinyinCompact;
        final String initials;
        final String t9Code;
        final Drawable icon;
        int historyRank = -1;
        int lastScore;

        SearchEntry(String label, String packageName, String className, int userId, Drawable icon) {
            this.label = label;
            this.labelLower = label == null ? "" : label.toLowerCase();
            this.packageName = packageName;
            this.className = className;
            this.userId = userId;
            this.key = packageName + "\t" + className + "\t" + userId;
            this.pinyinSpaced = toLatinPinyin(label);
            this.pinyinCompact = compactLetters(this.pinyinSpaced);
            this.initials = pinyinInitials(this.pinyinSpaced);
            this.t9Code = toT9Code(label + " " + packageName + " " + pinyinCompact + " " + initials);
            this.icon = icon;
        }
    }

    private static String toLatinPinyin(String text) {
        if (text == null || text.length() == 0) {
            return "";
        }
        try {
            Class<?> cls = Class.forName("android.icu.text.Transliterator");
            Object instance = cls.getMethod("getInstance", String.class)
                    .invoke(null, "Han-Latin/Names; Latin-ASCII; Lower()");
            Object value = cls.getMethod("transliterate", String.class).invoke(instance, text);
            return value == null ? "" : value.toString().toLowerCase();
        } catch (Throwable ignored) {
            StringBuilder out = new StringBuilder();
            for (int i = 0; i < text.length(); i++) {
                char c = Character.toLowerCase(text.charAt(i));
                char initial = chineseInitial(c);
                out.append(initial == 0 ? c : initial).append(' ');
            }
            return out.toString().trim();
        }
    }

    private static String compactLetters(String text) {
        StringBuilder out = new StringBuilder();
        if (text == null) {
            return "";
        }
        for (int i = 0; i < text.length(); i++) {
            char c = Character.toLowerCase(text.charAt(i));
            if ((c >= 'a' && c <= 'z') || (c >= '0' && c <= '9')) {
                out.append(c);
            }
        }
        return out.toString();
    }

    private static String pinyinInitials(String text) {
        StringBuilder out = new StringBuilder();
        if (text == null) {
            return "";
        }
        boolean atWordStart = true;
        for (int i = 0; i < text.length(); i++) {
            char c = Character.toLowerCase(text.charAt(i));
            if (c >= 'a' && c <= 'z') {
                if (atWordStart) {
                    out.append(c);
                    atWordStart = false;
                }
            } else {
                atWordStart = true;
            }
        }
        return out.toString();
    }

    private static boolean isDigitQuery(String text) {
        if (text == null || text.length() == 0) {
            return false;
        }
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (c < '0' || c > '9') {
                return false;
            }
        }
        return true;
    }

    private static String toT9Code(String text) {
        StringBuilder out = new StringBuilder();
        if (text == null) {
            return "";
        }
        for (int i = 0; i < text.length(); i++) {
            char c = Character.toLowerCase(text.charAt(i));
            if (c >= '0' && c <= '9') {
                out.append(c);
                continue;
            }
            if (c >= 'a' && c <= 'z') {
                out.append(letterToT9(c));
                continue;
            }
            char initial = chineseInitial(c);
            if (initial != 0) {
                out.append(letterToT9(initial));
            }
        }
        return out.toString();
    }

    private static char letterToT9(char c) {
        if (c >= 'a' && c <= 'c') return '2';
        if (c >= 'd' && c <= 'f') return '3';
        if (c >= 'g' && c <= 'i') return '4';
        if (c >= 'j' && c <= 'l') return '5';
        if (c >= 'm' && c <= 'o') return '6';
        if (c >= 'p' && c <= 's') return '7';
        if (c >= 't' && c <= 'v') return '8';
        if (c >= 'w' && c <= 'z') return '9';
        return '0';
    }

    private static char chineseInitial(char c) {
        String table = "的一是在不了有和人这中大为上个国我以要他"
                + "时来用们生到作地于出就分对成会可主发年动"
                + "同工也能下过子说产种面而方后多定行学法所"
                + "民得经十三之进着等部度家电力里如水化高自"
                + "二理起小物现实加量都两体制机当使点从业本"
                + "去把性好应开它合还因由其些然前外天政四日";
        int index = table.indexOf(c);
        if (index < 0) {
            return 0;
        }
        char[] initials = new char[]{
                'd','y','s','z','b','l','y','h','r','z','z','d','w','s','g','g','w','y','y','t',
                's','l','y','m','s','d','z','d','y','c','j','f','d','c','h','k','z','f','n','d',
                't','g','y','n','x','g','z','s','c','z','m','e','f','h','d','x','x','f','s','m',
                'd','j','s','s','z','j','z','d','b','d','j','d','z','t','b','q','x','w','x','j',
                'l','d','l','t','l','t','z','j','d','s','d','c','y','b','q','b','q','h','y','q',
                'x','r','q','w','t','z','s','r'
        };
        return index < initials.length ? initials[index] : 0;
    }

    private static final class WrapContentGridView extends GridView {
        WrapContentGridView(Context context, android.util.AttributeSet attrs) {
            super(context, attrs);
        }

        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            int expandSpec = View.MeasureSpec.makeMeasureSpec(Integer.MAX_VALUE >> 2, View.MeasureSpec.AT_MOST);
            super.onMeasure(widthMeasureSpec, expandSpec);
        }
    }

    private static final class SettingsResourceContext extends ContextWrapper {
        private final Resources resources;
        private final Resources.Theme theme;

        SettingsResourceContext(Context base, Resources resources) {
            super(base);
            this.resources = resources;
            this.theme = resources.newTheme();
            this.theme.setTo(base.getTheme());
        }

        public Resources getResources() {
            return resources;
        }

        public AssetManager getAssets() {
            return resources.getAssets();
        }

        public Resources.Theme getTheme() {
            return theme;
        }

        public String getPackageName() {
            return SETTINGS_PKG;
        }

        public ClassLoader getClassLoader() {
            return MaintainedLauncherSettingsHost.class.getClassLoader();
        }

        public Object getSystemService(String name) {
            Object service = super.getSystemService(name);
            if (Context.LAYOUT_INFLATER_SERVICE.equals(name) && service instanceof LayoutInflater) {
                return ((LayoutInflater) service).cloneInContext(this);
            }
            return service;
        }
    }
}
