package com.smartisanos.launcher.theme;

import android.Manifest;
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
import android.content.ContentValues;
import android.content.BroadcastReceiver;
import android.content.DialogInterface;
import android.content.Intent;
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
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.os.StrictMode;
import android.os.UserHandle;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.Editable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.RelativeSizeSpan;
import android.util.Log;
import android.util.LruCache;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsetsController;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.AbsListView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.GridView;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Space;
import android.widget.TextView;
import android.widget.Toast;
import com.smartisanos.launcher.reload.LauncherColdReloadCoordinator;

import com.smartisanos.home.settings.PreviewSettingItemView;
import com.smartisanos.home.settings.SettingItemSwitch;
import com.smartisanos.home.settings.SettingItemTextVertical;
import com.smartisanos.home.settings.icons.IconManager;
import com.smartisanos.home.settings.icons.IconPreviewRepository;
import com.smartisanos.home.settings.icons.IconPackManager;
import com.smartisanos.home.settings.icons.IconSourceManager;
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
import java.lang.ref.WeakReference;
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
import java.util.WeakHashMap;

import org.json.JSONArray;
import org.json.JSONObject;

public final class MaintainedLauncherSettingsHost {
    private static final String LOG_TAG = "MaintainedSettings";
    private static android.os.Handler sThemePageHandler;
    private static Runnable sThemePageRunnable;
    private static volatile String sPendingThemeLoadingThemeId;
    private static ThemeLoadingSystemBarsState sThemeLoadingSystemBars;
    private static boolean sDynamicWeatherLocationPermissionPending;
    private static WeakReference<SettingItemSwitch> sDynamicWeatherLocationPermissionItem;
    private static WeakReference<SettingItemSwitch> sBadgeReminderSwitch;
    private static WeakReference<SettingItemSwitch> sBadgeSwipeCleanSwitch;
    private static boolean sBadgeNotificationAccessDialogShowing;
    private static volatile Resources sSettingsResources;
    private static boolean sSettingsResourcesWarmPending;
    private static List<WeatherBridge.CityResult> sBundledWeatherCities;
    private static File sSettingsApk;
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
    private static final String PROFILE_APPS_PREFS = "launcher_profile_apps";
    private static final String PROFILE_DISABLED_PREFIX = "disabled.";
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
    private static final String KEY_LEGACY_SEARCH_PAGE_ENABLED = "launcher_search_page_enabled";
    public static final String KEY_SWIPE_UP_SEARCH_ENABLED = "swipe_up_search_enabled";
    public static final String KEY_SWIPE_DOWN_SYSTEM_PANELS_ENABLED =
            "swipe_down_system_panels_enabled";
    private static final String KEY_DYNAMIC_WEATHER_CALENDAR =
            "launcher_dynamic_weather_calendar_enabled";
    private static final int REQUEST_DYNAMIC_WEATHER_LOCATION = 2414;
    private static final String PREF_DYNAMIC_WEATHER_LOCATION_REQUESTED =
            "dynamic_weather_location_permission_requested";
    private static final String KEY_BADGE_HIDE = "launcher_hide_badge";
    private static final String KEY_BADGE_SWIPE_CLEAN = "launcher_badge_swipe_clean";
    private static final String PREF_BADGE_NOTIFICATION_ACCESS_PENDING =
            "badge_notification_access_pending_target";
    private static final String BADGE_PENDING_NONE = "";
    private static final String BADGE_PENDING_REMINDER = "badge_reminder";
    private static final String BADGE_PENDING_SWIPE_CLEAN = "badge_swipe_clean";
    private static final String KEY_TRANSPARENT_THEME_ENABLED = "launcher_grid_theme";
    private static final String KEY_TRANSPARENT_WALLPAPER_BLUR = "original_launcher_wallpaper_blur_on";
    private static final String PREF_TRANSPARENT_PREVIOUS_THEME = "transparent_previous_theme";
    private static final String KEY_LAUNCHER_ICON_SIZE = "launcher_icon_size";
    private static final String TAG_ICON_SIZE_SUBTITLE = "launcher_icon_size_subtitle";
    private static final String TAG_ICON_PACK_SUBTITLE = "launcher_icon_pack_subtitle";
    private static final String PREF_ICON_SIZE_RUNTIME_DIRTY = "launcher_icon_size_runtime_dirty";
    private static final String PREF_ICON_SIZE_RUNTIME_OLD = "launcher_icon_size_runtime_old";
    private static final String PREF_ICON_SIZE_RUNTIME_NEW = "launcher_icon_size_runtime_new";
    private static final String KEY_DESKTOP_WALLPAPER_URI = "desktop_wallpaper_uri";
    private static final String KEY_LOCKSCREEN_BACKGROUND = "lockscreen_background";
    private static final String PREF_PENDING_CUSTOM_ICON_KEY = "pending_custom_icon_key";
    private static final String PREF_PENDING_ICON_SCROLL_Y = "pending_icon_scroll_y";
    private static final String PREF_PENDING_CUSTOM_ICON_RETURN_SCROLL_Y = "pending_custom_icon_return_scroll_y";
    private static final String PREF_PENDING_CUSTOM_ICON_CHOICE_SCROLL_Y = "pending_custom_icon_choice_scroll_y";
    private static final String PREF_PENDING_CUSTOM_ICON_RESTORE_CHOICE = "pending_custom_icon_restore_choice";
    private static final String EXTRA_PASSWORD_TARGET_PACKAGE = "launcher_password_target_package";
    private static final String EXTRA_PASSWORD_TARGET_CLASS = "launcher_password_target_class";
    private static final String EXTRA_PASSWORD_TARGET_USER = "launcher_password_target_user";
    private static final String EXTRA_PASSWORD_TARGET_SERIAL = "launcher_password_target_serial";
    private static final String EXTRA_PASSWORD_SET_MODE = "launcher_password_set_mode";
    private static final int REQUEST_PICK_CUSTOM_ICON = 53026;
    private static final long SETTINGS_CLICK_GUARD_MS = 90L;
    private static long sSettingsClickBlockedUntil;
    private static boolean sIconSizeAppliedThisProcess;
    private static int sRestoreIconPageScrollY = -1;
    private static int sIconPageLoadGeneration;
    private static int sIconPreviewGeneration;
    private static IconPageData sIconPageDataCache;
    private static long sIconPageDataCacheUptime;
    private static java.lang.ref.WeakReference<AppIconAdapter> sActiveAppIconAdapter;
    private static long sImprovedIconGeneration;
    private static final long ICON_PAGE_CACHE_FRESH_MS = 5L * 60L * 1000L;
    private static int sMainSettingsScrollY = -1;
    private static int sThemePageScrollY = -1;
    private static final Map<String, Bitmap> sThemePreviewCache = new HashMap<String, Bitmap>();
    private static final Map<String, Bitmap> sThemeLargePreviewCache = new HashMap<String, Bitmap>();
    private static final Map<String, Boolean> sThemePreviewFetchPending = new HashMap<String, Boolean>();
    private static final java.util.concurrent.ExecutorService THEME_PREVIEW_FETCH_EXECUTOR =
            java.util.concurrent.Executors.newFixedThreadPool(2);
    private static final LruCache<String, Bitmap> sSmartisanIconCache =
            new LruCache<String, Bitmap>(8 * 1024) {
                protected int sizeOf(String key, Bitmap bitmap) {
                    if (bitmap == null) return 0;
                    return Math.max(1, bitmap.getRowBytes() * bitmap.getHeight() / 1024);
                }
            };
    private static final Map<String, Boolean> sSmartisanIconFetchPending = new HashMap<String, Boolean>();
    private static final java.util.HashSet<String> sSmartisanIconRefreshPackages =
            new java.util.HashSet<String>();
    private static boolean sSmartisanIconRefreshScheduled;
    private static boolean sDoppelgangerBootstrapScheduled;
    private static boolean sDoppelgangerIconRefreshRunning;
    private static boolean sLauncherPausedForScreenOff;
    private static long sThemeChangeGuardUntilUptime;
    private static boolean sProcessCompatApplied;
    private static Object sLastNavigationWindowToken;
    private static boolean sLastHideNavigationBar;
    private static int sLastSystemUiVisibility = Integer.MIN_VALUE;
    private static int sLastNavigationBarColor = Integer.MIN_VALUE;
    private static Boolean sLastBadgeHidden;
    private static WeakReference<Activity> sDeferredLauncherActivity;
    private static WeakReference<Activity> sPendingReloadSettingsActivity;
    private static boolean sLauncherFirstFrameReady;
    private static boolean sDeferredLauncherTasksPosted;
    private static final Map<Activity, PasswordPageExit> sPasswordPageExits =
            new WeakHashMap<Activity, PasswordPageExit>();
    private static final Object SETTINGS_BACK_LOCK = new Object();
    private static SettingsBackEntry sSettingsBackEntry;
    public static volatile boolean sLauncherFrameReportPending;
    private static final String SMARTISAN_ICON_CACHE_PREFS = "online_icon_cache_v3";
    private static final String SMARTISAN_ICON_CACHE_DIR = "online_icon_cache_v3";
    // Keep only the opaque artwork before the original launcher generates its
    // dark/light/transparent shadow bitmaps. Low-alpha pixels in the online
    // library are usually a baked legacy shadow and would otherwise double up.
    private static final int UNIFORM_ICON_ART_ALPHA_CUTOFF = 128;
    private static final float UNIFORM_ICON_VISIBLE_RATIO = 0.90f;
    private static Map<String, List<String>> sIconVariants;
    // Mirrors can fail temporarily. A week-long miss cache made recognized
    // system apps (notably vendor Gallery aliases) look permanently unknown.
    private static final long SMARTISAN_ICON_MISS_RETRY_MS = 60L * 60L * 1000L;
    private static final java.util.concurrent.ExecutorService SMARTISAN_ICON_FETCH_EXECUTOR =
            // Launcher usually needs dozens of independent small PNG files on
            // first run. Two workers made later desktop rows wait behind slow
            // mirrors; six remains modest while removing most queue latency.
            java.util.concurrent.Executors.newFixedThreadPool(6);
    private static final String[] ONLINE_ICON_BASE_URLS = new String[]{
            "https://gitee.com/RANH-F/Smartisan-original-launcher-download/raw/master/icons/drawable/",
            "https://raw.githubusercontent.com/RANH-F/Smartisan-original-launcher/main/icons/drawable/"
    };
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

    private static final class SettingsBackEntry {
        final WeakReference<Activity> owner;
        final String page;
        final Runnable action;
        boolean dispatching;

        SettingsBackEntry(Activity activity, String page, Runnable action) {
            owner = new WeakReference<Activity>(activity);
            this.page = page == null ? "unknown" : page;
            this.action = action;
        }
    }

    public static void registerSettingsBackActionPublic(Activity activity, String page,
                                                         Runnable action) {
        if (activity == null) return;
        synchronized (SETTINGS_BACK_LOCK) {
            if (action == null) {
                SettingsBackEntry current = sSettingsBackEntry;
                Activity owner = current == null ? null : current.owner.get();
                if (owner == null || owner == activity) sSettingsBackEntry = null;
                Log.i("SettingsNavigation", "SETTINGS_BACK_CLEAR page=" + page
                        + " activity=" + activity.getClass().getSimpleName());
                return;
            }
            sSettingsBackEntry = new SettingsBackEntry(activity, page, action);
        }
        Log.i("SettingsNavigation", "SETTINGS_BACK_REGISTER page=" + page
                + " activity=" + activity.getClass().getSimpleName());
    }

    public static boolean handleSettingsBackPublic(Activity activity) {
        if (activity == null) return false;
        final SettingsBackEntry entry;
        synchronized (SETTINGS_BACK_LOCK) {
            entry = sSettingsBackEntry;
            if (entry == null) {
                Log.i("SettingsNavigation", "SETTINGS_BACK_NO_ACTION activity="
                        + activity.getClass().getSimpleName());
                return false;
            }
            Activity owner = entry.owner.get();
            if (owner != activity) {
                Log.w("SettingsNavigation", "SETTINGS_BACK_OWNER_MISMATCH expected="
                        + (owner == null ? "null" : owner.getClass().getSimpleName())
                        + " actual=" + activity.getClass().getSimpleName());
                if (owner == null) sSettingsBackEntry = null;
                return false;
            }
            if (entry.action == null) return false;
            if (entry.dispatching) {
                Log.w("SettingsNavigation", "SETTINGS_BACK_DUPLICATE_BLOCKED page=" + entry.page);
                return true;
            }
            entry.dispatching = true;
        }
        try {
            Log.i("SettingsNavigation", "SETTINGS_BACK_DISPATCH page=" + entry.page
                    + " source=activity_back");
            entry.action.run();
            Log.i("SettingsNavigation", "SETTINGS_BACK_HANDLED page=" + entry.page);
            return true;
        } catch (Throwable error) {
            Log.e("SettingsNavigation", "SETTINGS_BACK_ACTION_FAILED page=" + entry.page, error);
            return true;
        } finally {
            synchronized (SETTINGS_BACK_LOCK) {
                entry.dispatching = false;
            }
        }
    }

    public static void clearSettingsBackActionPublic(Activity activity) {
        if (activity == null) return;
        synchronized (SETTINGS_BACK_LOCK) {
            if (sSettingsBackEntry != null && sSettingsBackEntry.owner.get() == activity) {
                sSettingsBackEntry = null;
            }
        }
        Log.i("SettingsNavigation", "SETTINGS_BACK_DESTROY_CLEAR activity="
                + activity.getClass().getSimpleName());
    }

    public static void logSettingsBackFallbackPublic(Activity activity) {
        Log.i("SettingsNavigation", "SETTINGS_BACK_FALLBACK_FINISH page=MAIN activity="
                + (activity == null ? "null" : activity.getClass().getSimpleName()));
    }

    public static void show(Activity activity) {
        show(activity, -1, false);
    }

    private static void show(Activity activity, int restoreScrollY) {
        show(activity, restoreScrollY, false);
    }

    private static void show(Activity activity, int restoreScrollY, boolean animateBack) {
        try {
            resumeOperationLogIfNeeded(activity);
            cancelScheduledLauncherRestart(activity);
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
            setSettingsContentView(activity, context, resources, root, !animateBack, animateBack);
            registerSettingsBackActionPublic(activity, "MAIN", null);
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
        if (!isImprovedIconEnabled(context)) {
            prefs.edit().putBoolean(key, true).apply();
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
        if (!isImprovedIconEnabled(context)) {
            prefs.edit().putBoolean(key, true).apply();
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
        if (!com.smartisanos.home.settings.icons.IconPackManager
                .isIconPackSelectionEnabled(context)) {
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
        new Thread(new Runnable() {
            @Override
            public void run() {
                // Match the maintained launcher: enumerate installed icon packs
                // and cache their mappings only. This never downloads icons.
                try {
                    Class.forName("com.smartisanos.home.settings.icons.IconPackManager")
                            .getMethod("warmUpIconPackList", Context.class).invoke(null, app);
                } catch (Throwable ignored) {
                }
            }
        }, "IconPackWarmup").start();
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
        bootstrapDoppelgangerPackages(app);
    }

    private static void bootstrapDoppelgangerPackages(final Context context) {
        if (context == null) {
            return;
        }
        new Thread(new Runnable() {
            public void run() {
                HashMap<Integer, HashMap<String, Boolean>> packagesByUser =
                        new HashMap<Integer, HashMap<String, Boolean>>();
                List<ProfileAppEntry> entries = discoverProfileApps(context, true);
                for (ProfileAppEntry entry : entries) {
                    if (entry != null && isProfileAppEnabled(context, entry)) {
                        addDoppelgangerPackage(packagesByUser, entry.userId, entry.packageName);
                        removeLegacyProfileShortcutRows(context, entry);
                        ArrayList params = new ArrayList();
                        params.add(entry.packageName);
                        params.add(Integer.valueOf(entry.userId));
                        postDatabaseUserPackageAdded(params);
                        // Existing clone rows keep their cached bitmap on ADDED.
                        // CHANGED rebuilds it from the primary app's current icon.
                        postDatabaseUserPackageChanged(params);
                    }
                }
                if (!packagesByUser.isEmpty()) {
                    requestLauncherFrameFromContext(context);
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
        if (userId > 0 && Build.VERSION.SDK_INT >= 21) {
            try {
                Context context = currentApplicationContext();
                LauncherApps launcherApps = context == null ? null
                        : (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
                List<UserHandle> profiles = launcherApps == null ? null : launcherApps.getProfiles();
                if (profiles != null) {
                    for (UserHandle profile : profiles) {
                        if (profile == null || userIdentifier(profile) != userId) {
                            continue;
                        }
                        List<LauncherActivityInfo> activities = launcherApps.getActivityList(
                                intent.getPackage(), profile);
                        if (activities != null) {
                            for (LauncherActivityInfo activity : activities) {
                                ResolveInfo resolved = resolveInfoFromLauncherActivity(pm, activity, flags);
                                if (resolved != null) {
                                    out.add(resolved);
                                }
                            }
                        }
                        logOperation(context, "PROFILE_QUERY", "launcher_apps userId=" + userId
                                + ", package=" + intent.getPackage() + ", count=" + out.size());
                        return out;
                    }
                }
            } catch (Throwable t) {
                logOperation(currentApplicationContext(), "PROFILE_QUERY",
                        "launcher_apps_failed userId=" + userId + ", error=" + shortError(t));
            }
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

    public static List queryProfileLauncherActivities(Context context, String packageName, int userId) {
        ArrayList out = new ArrayList();
        if (context == null || TextUtils.isEmpty(packageName) || userId <= 0
                || Build.VERSION.SDK_INT < 21) {
            return out;
        }
        try {
            LauncherApps launcherApps =
                    (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
            List<UserHandle> profiles = launcherApps == null ? null : launcherApps.getProfiles();
            if (profiles == null) {
                return out;
            }
            PackageManager pm = context.getPackageManager();
            for (UserHandle profile : profiles) {
                if (profile == null || userIdentifier(profile) != userId) {
                    continue;
                }
                List<LauncherActivityInfo> activities = launcherApps.getActivityList(packageName, profile);
                if (activities != null) {
                    for (LauncherActivityInfo activity : activities) {
                        ResolveInfo resolved = resolveInfoFromLauncherActivity(pm, activity, 0);
                        if (resolved != null) {
                            out.add(resolved);
                        }
                    }
                }
                logOperation(context, "PROFILE_QUERY", "direct_context userId=" + userId
                        + ", package=" + packageName + ", count=" + out.size());
                return out;
            }
        } catch (Throwable t) {
            logOperation(context, "PROFILE_QUERY", "direct_context_failed userId=" + userId
                    + ", package=" + packageName + ", error=" + shortError(t));
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

    private static void refreshEnabledDoppelgangerIcons(final Context context) {
        if (context == null || !hasEnabledProfileApps(context)) {
            return;
        }
        synchronized (MaintainedLauncherSettingsHost.class) {
            if (sDoppelgangerIconRefreshRunning) {
                return;
            }
            sDoppelgangerIconRefreshRunning = true;
        }
        final Context app = context.getApplicationContext() == null
                ? context : context.getApplicationContext();
        new Thread(new Runnable() {
            public void run() {
                boolean changed = false;
                try {
                    List<ProfileAppEntry> entries = discoverProfileApps(app, true);
                    for (ProfileAppEntry entry : entries) {
                        if (entry == null || !isProfileAppEnabled(app, entry)) {
                            continue;
                        }
                        ArrayList params = new ArrayList();
                        params.add(entry.packageName);
                        params.add(Integer.valueOf(entry.userId));
                        postDatabaseUserPackageChanged(params);
                        changed = true;
                    }
                } finally {
                    synchronized (MaintainedLauncherSettingsHost.class) {
                        sDoppelgangerIconRefreshRunning = false;
                    }
                }
                if (changed) {
                    requestLauncherFrameFromContext(app);
                }
            }
        }, "DoppelgangerIconRefresh").start();
    }

    private static void postDatabaseUserPackageRemoved(ArrayList params) {
        postDatabaseUserPackageEvent("EVENT_USER_PACKAGE_REMOVED", params);
    }

    private static void postDatabaseUserPackageEvent(String eventName, ArrayList params) {
        WeatherBridge.invalidateWeatherApplicationCache();
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
        bindBadgeVisibilitySwitch(activity, resources, root);
        bindSwitch(activity, resources, root, "item_id_badge_swipe_clean", "launcher_badge_swipe_clean", false);
        bindSwitch(activity, resources, root, "item_id_unlock_anim", "launcher_unlock_animation_enabled", true);
        bindSwitch(activity, resources, root, "setting_dynamic_weather",
                KEY_DYNAMIC_WEATHER_CALENDAR, false);
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
        hide(resources, root, "item_id_badge_swipe_clean");
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
            setBackground(find(resources, root, "item_id_icons"), resources, "selector_setting_sub_item_bg_middle");
            setBackground(find(resources, root, "item_id_profile_apps"), resources, "selector_setting_sub_item_bg_middle");
            setBackground(find(resources, root, "item_id_privacy_password"), resources, "selector_setting_sub_item_bg_bottom");
        }
        bindMainSettingIcon(resources, root, "item_page_flip_anims", "page_flip_animation_default_upper", true);
        bindMainSettingIcon(resources, root, "item_id_icons", "icon_setting_icon");
        bindMainSettingIcon(resources, root, "item_id_profile_apps", "app_operation");
        bindMainSettingIcon(resources, root, "item_id_privacy_password", "privacy_password_lock_icon");
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
        click(activity, resources, root, "item_id_profile_apps", new View.OnClickListener() {
            public void onClick(View v) {
                sMainSettingsScrollY = currentScrollY(activity);
                showProfileAppsPage(activity);
            }
        });
        click(activity, resources, root, "item_id_privacy_password", new View.OnClickListener() {
            public void onClick(View v) {
                sMainSettingsScrollY = currentScrollY(activity);
                showSettingsPagePasswordEntry(activity);
            }
        });
        click(activity, resources, root, "setting_ocd_options", new View.OnClickListener() {
            public void onClick(View v) {
                sMainSettingsScrollY = currentScrollY(activity);
                showOcdOptionsPage(activity);
            }
        });
        click(activity, resources, root, "setting_dynamic_weather", new View.OnClickListener() {
            public void onClick(View v) {
                sMainSettingsScrollY = currentScrollY(activity);
                showDynamicWeatherPage(activity);
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
        applyNavigationBarIfChanged(activity);
    }

    public static void applyNavigationBarIfChanged(Activity activity) {
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
            Object windowToken = decor.getWindowToken();
            if (windowToken == null) {
                windowToken = window;
            }
            int navigationBarColor = Build.VERSION.SDK_INT >= 21
                    ? window.getNavigationBarColor() : Color.TRANSPARENT;
            boolean cacheMatches = windowToken == sLastNavigationWindowToken
                    && hideNavigation == sLastHideNavigationBar
                    && visibility == sLastSystemUiVisibility
                    && navigationBarColor == sLastNavigationBarColor;
            boolean flagsMatch = (window.getAttributes().flags
                    & WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS) != 0
                    && (window.getAttributes().flags
                    & WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS) == 0;
            boolean cutoutMatches = Build.VERSION.SDK_INT < 28
                    || window.getAttributes().layoutInDisplayCutoutMode
                    == WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
            if (cacheMatches && decor.getSystemUiVisibility() == visibility
                    && flagsMatch && cutoutMatches) {
                return;
            }
            if (decor.getSystemUiVisibility() != visibility) {
                decor.setSystemUiVisibility(visibility);
            }
            if (!flagsMatch) {
                window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
                window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (window.getStatusBarColor() != Color.TRANSPARENT) {
                    window.setStatusBarColor(Color.TRANSPARENT);
                }
                // Keep both system bars on the same Launcher surface while a
                // theme reload recreates the activity. Leaving navigation at
                // the ROM default produced a visibly different bottom strip.
                if (window.getNavigationBarColor() != Color.TRANSPARENT) {
                    window.setNavigationBarColor(Color.TRANSPARENT);
                }
            }
            if (Build.VERSION.SDK_INT >= 28 && !cutoutMatches) {
                WindowManager.LayoutParams attrs = window.getAttributes();
                attrs.layoutInDisplayCutoutMode =
                        WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
                window.setAttributes(attrs);
            }
            sLastNavigationWindowToken = windowToken;
            sLastHideNavigationBar = hideNavigation;
            sLastSystemUiVisibility = visibility;
            sLastNavigationBarColor = Color.TRANSPARENT;
        } catch (Throwable ignored) {
        }
    }

    public static void openLauncherSearch(Context context) {
        openLauncherSearchInternal(context);
    }

    public static boolean isSwipeUpSearchEnabled(Context context) {
        migrateSearchGestureSetting(context);
        return readSystemBool(context, KEY_SWIPE_UP_SEARCH_ENABLED, true);
    }

    public static void openLauncherSearchFromSwipeUp(Context context) {
        if (!isSwipeUpSearchEnabled(context)) {
            Log.i(LOG_TAG, "SWIPE_UP_SEARCH_DISABLED");
            return;
        }
        Log.i(LOG_TAG, "SWIPE_UP_SEARCH_GESTURE_DETECTED");
        openLauncherSearchInternal(context);
        Log.i(LOG_TAG, "SWIPE_UP_SEARCH_LAUNCHED");
    }

    private static void openLauncherSearchInternal(Context context) {
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

        // PackageManager label/icon loading can take several seconds on a cold start.
        // Keep it off the UI thread so the search shell and keyboard appear immediately.
        final Context appContext = activity.getApplicationContext() == null
                ? activity : activity.getApplicationContext();
        new Thread(new Runnable() {
            public void run() {
                final ArrayList<SearchEntry> loaded = new ArrayList<SearchEntry>();
                loadSearchEntries(appContext, loaded);
                activity.runOnUiThread(new Runnable() {
                    public void run() {
                        if (activity.isFinishing()
                                || (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed())) {
                            return;
                        }
                        all.clear();
                        all.addAll(loaded);
                        chipBox.removeAllViews();
                        addSearchHistoryChips(activity, chipBox, all);
                        CharSequence currentQuery = query.getText();
                        filterSearchEntries(currentQuery == null ? "" : currentQuery.toString(),
                                all, visible, adapter);
                    }
                });
            }
        }, "launcher-search-loader").start();
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
            com.smartisanos.launcher.badge.BadgeBridge.onPackageLaunched(
                    activity, entry.packageName);
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            intent.setClassName(entry.packageName, entry.className);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            if (shouldVerifySearchLaunch(activity, entry)) {
                openLauncherPasswordForSearchTarget(activity, entry);
                activity.finish();
                return;
            }
            if (entry.profileUser != null) {
                LauncherApps launcherApps = (LauncherApps) activity.getSystemService(Context.LAUNCHER_APPS_SERVICE);
                if (launcherApps == null) {
                    throw new IllegalStateException("LauncherApps unavailable");
                }
                launcherApps.startMainActivity(new ComponentName(entry.packageName, entry.className),
                        entry.profileUser, null, null);
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
            List<ResolveInfo> infos = pm.queryIntentActivities(intent, 0);
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
            List<ProfileAppEntry> profileApps = discoverProfileApps(context, false);
            for (ProfileAppEntry profile : profileApps) {
                if (profile == null || profile.componentName == null) {
                    continue;
                }
                Drawable icon = profile.icon;
                if (icon == null) {
                    try {
                        icon = pm.getApplicationIcon(profile.packageName);
                    } catch (Throwable ignored) {
                    }
                }
                icon = doppelgangerBadgeDrawable(icon, pm, null);
                SearchEntry entry = new SearchEntry(profile.label, profile.packageName,
                        profile.componentName.getClassName(), profile.userId, icon,
                        profile.profileUser, profile.profileSerial);
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
            Resources resources = sSettingsResources;
            if (resources == null) {
                scheduleSettingsResourcesWarm(context);
                resources = context.getResources();
            }
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

    static List<WeatherBridge.CityResult> searchBundledCities(Context context, String query,
            int limit) {
        List<WeatherBridge.CityResult> all = bundledWeatherCities(context);
        ArrayList<WeatherBridge.CityResult> exact = new ArrayList<WeatherBridge.CityResult>();
        ArrayList<WeatherBridge.CityResult> partial = new ArrayList<WeatherBridge.CityResult>();
        String wanted = query == null ? "" : query.trim().toLowerCase(Locale.ROOT);
        if (wanted.length() == 0) return exact;
        for (WeatherBridge.CityResult city : all) {
            String name = city.name.toLowerCase(Locale.ROOT);
            String admin = city.admin.toLowerCase(Locale.ROOT);
            if (name.equals(wanted)) exact.add(city);
            else if (name.contains(wanted) || admin.contains(wanted)) partial.add(city);
        }
        exact.addAll(partial);
        if (exact.size() > limit) {
            return new ArrayList<WeatherBridge.CityResult>(exact.subList(0, limit));
        }
        return exact;
    }

    static WeatherBridge.CityResult nearestBundledCity(Context context, double latitude,
            double longitude) {
        WeatherBridge.CityResult nearest = null;
        double best = Double.MAX_VALUE;
        for (WeatherBridge.CityResult city : bundledWeatherCities(context)) {
            double dy = city.latitude - latitude;
            double dx = (city.longitude - longitude)
                    * Math.cos(Math.toRadians((city.latitude + latitude) * 0.5));
            double distance = dx * dx + dy * dy;
            if (distance < best) { best = distance; nearest = city; }
        }
        // Roughly 3 degrees keeps foreign coordinates out of the China station path.
        return best <= 9.0 ? nearest : null;
    }

    private static synchronized List<WeatherBridge.CityResult> bundledWeatherCities(
            Context context) {
        if (sBundledWeatherCities != null) return sBundledWeatherCities;
        ArrayList<WeatherBridge.CityResult> result = new ArrayList<WeatherBridge.CityResult>();
        try {
            Resources resources = settingsResources(context);
            int namesId = resources.getIdentifier("city_cn", "array", SETTINGS_PKG);
            int baseId = resources.getIdentifier("city_base", "array", SETTINGS_PKG);
            String[] names = resources.getStringArray(namesId);
            String[] bases = resources.getStringArray(baseId);
            int count = Math.min(names.length, bases.length);
            for (int i = 0; i < count; i++) {
                List<String> nameFields = quotedFields(names[i]);
                List<String> baseFields = quotedFields(bases[i]);
                if (nameFields.size() < 6 || baseFields.size() < 4) continue;
                double longitude = Double.parseDouble(baseFields.get(2));
                double latitude = Double.parseDouble(baseFields.get(3));
                result.add(new WeatherBridge.CityResult(nameFields.get(2), nameFields.get(4),
                        nameFields.get(5), latitude, longitude, 0L, "PPLA",
                        nameFields.get(1)));
            }
        } catch (Throwable error) {
            Log.w(LOG_TAG, "Unable to load bundled weather cities", error);
        }
        sBundledWeatherCities = result;
        return sBundledWeatherCities;
    }

    private static List<String> quotedFields(String row) {
        ArrayList<String> fields = new ArrayList<String>();
        if (row == null) return fields;
        java.util.regex.Matcher matcher = java.util.regex.Pattern.compile("'([^']*)'")
                .matcher(row);
        while (matcher.find()) fields.add(matcher.group(1));
        return fields;
    }

    /**
     * ColorOS/OriginOS may skip USER_PRESENT for the selected HOME process.
     * Record a pause only after the display is really non-interactive, so an
     * app launch, back gesture, settings screen, or theme reload cannot be
     * mistaken for a device unlock.
     */
    public static void onLauncherPausedForUnlock(final Activity activity) {
        if (activity == null) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    PowerManager power = (PowerManager) activity.getSystemService(Context.POWER_SERVICE);
                    if (power != null && !power.isInteractive()) {
                        sLauncherPausedForScreenOff = true;
                        android.util.Log.i(LOG_TAG, "launcher pause confirmed as screen-off");
                        if (com.smartisanos.launcher.gesture.UnlockAnimationCoordinator.onRealScreenOff("LIFECYCLE", activity)) {
                            dispatchOriginalLockAction(activity, "action_keyguard_on", false);
                        }
                    }
                } catch (Throwable error) {
                    android.util.Log.w(LOG_TAG, "unable to inspect screen-off pause", error);
                }
            }
        }, 250L);
    }

    public static void onLauncherResumedForUnlock(final Activity activity) {
        if (activity == null) {
            return;
        }
        if (!sLauncherPausedForScreenOff) {
            com.smartisanos.launcher.gesture.UnlockAnimationCoordinator.logResumeNotARealUnlock("NOT_SCREEN_OFF_PAUSED");
            return;
        }
        sLauncherPausedForScreenOff = false;
        if (shouldSkipUnlockAnimation()) {
            android.util.Log.i(LOG_TAG, "lifecycle unlock fallback skipped: transient launcher UI state");
            String reason = "RELOAD_IN_PROGRESS";
            if (android.os.SystemClock.uptimeMillis() < sThemeChangeGuardUntilUptime) {
                reason = "THEME_TRANSITION";
            } else {
                try {
                    Class<?> themeHandler = Class.forName("com.smartisanos.launcher.theme.t");
                    Object handler = themeHandler.getMethod("getInstance").invoke(null);
                    if (handler != null && Boolean.TRUE.equals(themeHandler.getMethod("Wf").invoke(handler))) {
                        reason = "THEME_TRANSITION";
                    }
                } catch (Throwable ignored) {
                }
                try {
                    Class<?> mainView = Class.forName("com.smartisanos.launcher.view.Eb");
                    Object view = mainView.getMethod("getInstance").invoke(null);
                    if (view != null) {
                        Object folderController = mainView.getMethod("Bh").invoke(view);
                        if (folderController != null) {
                            Object openFolder = folderController.getClass().getMethod("hh").invoke(folderController);
                            if (openFolder != null) {
                                reason = "FOLDER_OPEN";
                            }
                        }
                    }
                } catch (Throwable ignored) {
                }
            }
            com.smartisanos.launcher.gesture.UnlockAnimationCoordinator.logResumeNotARealUnlock(reason);
            return;
        }
        if (com.smartisanos.launcher.gesture.UnlockAnimationCoordinator.requestLifecycleFallbackPlay(activity)) {
            clearStalePendingThemeBeforeUnlock();
            android.util.Log.i(LOG_TAG, "dispatching claimed lifecycle unlock fallback");
            dispatchOriginalLockAction(activity, Intent.ACTION_USER_PRESENT, true);
        } else {
            com.smartisanos.launcher.gesture.UnlockAnimationCoordinator.logResumeNotARealUnlock("ALREADY_CLAIMED_OR_NOT_UNLOCKED");
        }
    }

    public static boolean shouldSkipUnlockAnimation() {
        if (android.os.SystemClock.uptimeMillis() < sThemeChangeGuardUntilUptime) {
            return true;
        }
        try {
            Class<?> themeHandler = Class.forName("com.smartisanos.launcher.theme.t");
            Object handler = themeHandler.getMethod("getInstance").invoke(null);
            if (handler != null && Boolean.TRUE.equals(themeHandler.getMethod("Wf").invoke(handler))) {
                return true;
            }
        } catch (Throwable ignored) {
        }
        try {
            Class<?> mainView = Class.forName("com.smartisanos.launcher.view.Eb");
            Object view = mainView.getMethod("getInstance").invoke(null);
            if (view == null) {
                return false;
            }
            Object folderController = mainView.getMethod("Bh").invoke(view);
            if (folderController == null) {
                return false;
            }
            Object openFolder = folderController.getClass().getMethod("hh").invoke(folderController);
            if (openFolder != null) {
                android.util.Log.i(LOG_TAG, "unlock animation skipped while folder is open");
                return true;
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static void dispatchOriginalLockAction(Context context, String action, boolean lifecycleClaimedPlay) {
        try {
            Class<?> proxyClass = Class.forName("com.smartisanos.launcher.ja");
            Object proxy = proxyClass.getMethod("getInstance").invoke(null);
            if (proxy == null) {
                android.util.Log.w(LOG_TAG, "unlock fallback ignored: ApplicationProxy is not ready");
                return;
            }
            Class<?> receiverClass = Class.forName("com.smartisanos.launcher.ia");
            java.lang.reflect.Constructor<?> constructor = receiverClass.getDeclaredConstructor(proxyClass);
            constructor.setAccessible(true);
            Object receiver = constructor.newInstance(proxy);
            Intent intent = new Intent(action);
            if (lifecycleClaimedPlay) {
                intent.putExtra(com.smartisanos.launcher.gesture.UnlockAnimationCoordinator.EXTRA_LIFECYCLE_CLAIMED_PLAY, true);
            }
            receiverClass.getMethod("onReceive", Context.class, Intent.class)
                    .invoke(receiver, context, intent);
        } catch (Throwable error) {
            android.util.Log.e(LOG_TAG, "unable to dispatch original lock action " + action, error);
        }
    }

    /** Load first-frame icons through the same component-aware path as refreshes. */
    public static Drawable loadIconForComponent(Context context, String packageName, String className) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return null;
        }
        try {
            PackageManager pm = context.getPackageManager();
            ResolveInfo info = resolveLauncherActivity(pm, packageName, className);
            if (info != null) {
                return loadIcon(info, pm);
            }
            return normalizeLauncherIcon(pm.getApplicationIcon(packageName));
        } catch (Throwable ignored) {
            return null;
        }
    }

    /**
     * Desktop ItemInfo keeps the actual launcher title. On several vendor ROMs
     * the contacts alias still targets a dialer-named Activity, so that title
     * is more precise than package/class metadata after a database refresh.
     */
    public static Drawable loadIconForDesktopItem(Context context, String packageName,
                                                  String className, String title) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return null;
        }
        RedirectIconInfo redirect = desktopRedirectIconInfo(context, packageName, className);
        String identityTitle = redirect != null && !TextUtils.isEmpty(redirect.originalName)
                ? redirect.originalName : title;
        String normalizedTitle = identityTitle == null ? "" : identityTitle.trim().toLowerCase();
        try {
            SettingsResourceContext settings = createSettingsContext(context);
            Resources resources = settings.getResources();
            if (com.smartisanos.home.settings.icons.IconManager.isContactsLabel(normalizedTitle)) {
                Drawable online = smartisanNetworkIconDrawable(context, "com.android.contacts");
                Drawable contact = online != null ? online
                        : maintainedResourceIcon(context, resources, "source_contactcommon_icon");
                if (contact != null) {
                    return normalizeLauncherIcon(contact);
                }
            } else if (com.smartisanos.home.settings.icons.IconManager.isDialerLabel(normalizedTitle)) {
                Drawable phone = maintainedResourceIcon(context, resources, "app_icon_phone");
                if (phone != null) {
                    return normalizeLauncherIcon(phone);
                }
            }
            // The icon-choice page always resolves choices with this maintained
            // resource context. Do the same for an existing desktop Cell instead
            // of relying on the optional sSettingsResources warm cache in
            // iconOverrideDrawable(): when that cache is not ready, a selected
            // library icon silently falls back to the vendor application icon.
            ResolveInfo resolved = resolveLauncherActivity(context.getPackageManager(), packageName,
                    redirect == null ? className : redirect.componentName);
            Drawable selected = selectedIconDrawable(context, resolved, null, resources);
            if (selected != null) {
                return normalizeLauncherIcon(selected);
            }
        } catch (Throwable ignored) {
        }
        return loadIconForComponent(context, packageName, className);
    }

    /**
     * Keeps the default desktop frame on the original PackageManager path.
     * This predicate only reads persisted mode metadata; it never decodes an
     * icon, parses appfilter or starts an online request.
     */
    public static boolean shouldUseManagedIcon(Context context, String packageName,
                                               String className) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return false;
        }
        boolean iconPackEnabled = com.smartisanos.home.settings.icons.IconPackManager
                .isIconPackSelectionEnabled(context);
        if (isImprovedIconEnabled(context) || iconPackEnabled) {
            return true;
        }
        RedirectIconInfo redirect = desktopRedirectIconInfo(context, packageName, className);
        return redirect != null && redirect.useImprovedAppIcon
                && !RedirectIconDB.MODE_ORIGINAL.equals(RedirectIconDB.modeOf(redirect));
    }

    /**
     * Desktop database rows from an older launcher session can retain an obsolete
     * component name even though the package now exposes one current launcher
     * Activity. Settings always saves the current ActivityInfo.name, so preserve
     * the exact-component lookup first and use the current record only when the
     * package has exactly one launcher entry. Multi-entry applications never
     * receive this fallback and therefore cannot have choices crossed.
     */
    private static RedirectIconInfo desktopRedirectIconInfo(Context context, String packageName,
                                                            String componentName) {
        RedirectIconInfo exact = RedirectIconDB.getRedirectIconInfo(context, packageName, componentName);
        if (exact != null || context == null || TextUtils.isEmpty(packageName)) {
            return exact;
        }
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            intent.setPackage(packageName);
            List<ResolveInfo> activities = context.getPackageManager().queryIntentActivities(intent, 0);
            if (activities == null || activities.size() != 1) {
                return null;
            }
            ActivityInfo activity = activities.get(0) == null ? null : activities.get(0).activityInfo;
            if (activity == null || TextUtils.isEmpty(activity.name)) {
                return null;
            }
            RedirectIconInfo current = RedirectIconDB.getRedirectIconInfo(context,
                    packageName, activity.name);
            if (current != null) {
                Log.i(LOG_TAG, "DESKTOP_ICON_COMPONENT_FALLBACK package=" + packageName
                        + " storedComponent=" + componentName
                        + " currentComponent=" + activity.name);
            }
            return current;
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static void onSelectedIconPackPreloaded(final Context context) {
        if (context == null) return;
        final Context app = context.getApplicationContext() == null
                ? context : context.getApplicationContext();
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                applyIconChanges(app, com.smartisanos.home.settings.icons.IconPackManager
                        .getLoadedIconPackages());
            }
        });
    }

    private static ResolveInfo resolveLauncherActivity(PackageManager pm, String packageName, String className) {
        if (pm == null || TextUtils.isEmpty(packageName)) {
            return null;
        }
        String normalizedClass = className;
        if (!TextUtils.isEmpty(normalizedClass)) {
            try {
                ComponentName component;
                if (normalizedClass.indexOf('/') >= 0) {
                    component = ComponentName.unflattenFromString(normalizedClass);
                } else {
                    if (normalizedClass.startsWith(".")) normalizedClass = packageName + normalizedClass;
                    component = new ComponentName(packageName, normalizedClass);
                }
                if (component != null) {
                    ActivityInfo activityInfo = pm.getActivityInfo(component, 0);
                    if (activityInfo != null) {
                        ResolveInfo exact = new ResolveInfo();
                        exact.activityInfo = activityInfo;
                        exact.resolvePackageName = packageName;
                        return exact;
                    }
                }
            } catch (Throwable ignored) {
            }
        }
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            intent.setPackage(packageName);
            List<ResolveInfo> matches = pm.queryIntentActivities(intent, 0);
            if (matches == null || matches.isEmpty()) return null;
            if (!TextUtils.isEmpty(className)) {
                for (ResolveInfo candidate : matches) {
                    ActivityInfo ai = candidate == null ? null : candidate.activityInfo;
                    if (ai != null && (className.equals(ai.name) || className.endsWith("/" + ai.name))) {
                        return candidate;
                    }
                }
            }
            return matches.get(0);
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

            String className = extras.getString("key_component");
            if (TextUtils.isEmpty(className)) className = extras.getString("key_componentname");
            if (TextUtils.isEmpty(className)) className = extras.getString("key_class");
            if (TextUtils.isEmpty(className)) className = extras.getString("extra_componentname");
            PackageManager pm = context.getPackageManager();
            ResolveInfo best = resolveLauncherActivity(pm, packageName, className);
            if (best == null) return result;

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
     * Normalizes icon artwork after removing a baked source shadow. The
     * original launcher then generates its three theme-specific shadow bitmaps
     * from this clean result; adding another shadow here would double them.
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

            Bitmap artwork = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            int left = width;
            int top = height;
            int right = -1;
            int bottom = -1;
            int[] row = new int[width];
            int[] cleanedRow = new int[width];
            for (int y = 0; y < height; y++) {
                source.getPixels(row, 0, width, 0, y, width, 1);
                for (int x = 0; x < width; x++) {
                    int pixel = row[x];
                    int alpha = pixel >>> 24;
                    // Strip the existing soft exterior shadow from online/icon-pack
                    // artwork. The original HolographicOutlineHelper derives its
                    // three shadows from the remaining body.
                    if (alpha < UNIFORM_ICON_ART_ALPHA_CUTOFF) {
                        cleanedRow[x] = 0;
                        continue;
                    }
                    cleanedRow[x] = pixel;
                    if (alpha >= UNIFORM_ICON_ART_ALPHA_CUTOFF) {
                        if (x < left) left = x;
                        if (x > right) right = x;
                        if (y < top) top = y;
                        if (y > bottom) bottom = y;
                    }
                }
                artwork.setPixels(cleanedRow, 0, width, 0, y, width, 1);
            }
            if (right < left || bottom < top) {
                artwork.recycle();
                source.recycle();
                return icon;
            }

            float visible = Math.max(right - left + 1, bottom - top + 1);
            float target = Math.min(width, height) * UNIFORM_ICON_VISIBLE_RATIO;
            float scale = target / visible;
            scale = Math.max(0.70f, Math.min(1.50f, scale));
            Bitmap normalized = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(normalized);
            Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
            float cx = (left + right + 1) * 0.5f;
            float cy = (top + bottom + 1) * 0.5f;
            float targetCx = width * 0.5f;
            float targetCy = height * 0.5f;
            canvas.save();
            canvas.translate(targetCx, targetCy);
            canvas.scale(scale, scale);
            canvas.translate(-cx, -cy);
            canvas.drawBitmap(artwork, 0f, 0f, paint);
            canvas.restore();

            artwork.recycle();
            source.recycle();
            return new android.graphics.drawable.BitmapDrawable(Resources.getSystem(), normalized);
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
        if (hasDoppelgangerBadge(base, width, height)) {
            return base;
        }
        Bitmap out = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(out);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.DITHER_FLAG);
        canvas.drawBitmap(base, 0, 0, paint);

        float size = Math.max(13f, Math.min(width, height) * 0.19f);
        float left = Math.max(1f, width * 0.125f);
        float bottom = height - Math.max(1f, height * 0.155f);
        float top = bottom - size;
        RectF shield = new RectF(left, top, left + size, bottom);
        Path shieldPath = buildDoppelgangerBadgePath(shield);

        paint.setStyle(Paint.Style.FILL);
        paint.setColor(0x2a000000);
        canvas.save();
        canvas.translate(Math.max(0.8f, size * 0.035f), Math.max(1.2f, size * 0.055f));
        canvas.drawPath(shieldPath, paint);
        canvas.restore();

        paint.setColor(0xff2b3036);
        canvas.drawPath(shieldPath, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(Math.max(1.05f, size * 0.06f));
        paint.setColor(0xfafafafa);
        canvas.drawPath(shieldPath, paint);

        RectF inner = new RectF(shield.left + size * 0.15f, shield.top + size * 0.15f,
                shield.right - size * 0.15f, shield.bottom - size * 0.18f);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(0xffffffff);
        canvas.drawCircle(inner.left + size * 0.20f, inner.top + size * 0.28f, size * 0.045f, paint);
        canvas.drawCircle(inner.left + size * 0.48f, inner.top + size * 0.28f, size * 0.045f, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(Math.max(0.9f, size * 0.045f));
        paint.setStrokeCap(Paint.Cap.ROUND);
        RectF smile = new RectF(inner.left + size * 0.12f, inner.top + size * 0.27f,
                inner.left + size * 0.57f, inner.top + size * 0.63f);
        canvas.drawArc(smile, 20, 140, false, paint);
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.BUTT);
        return out;
    }

    private static boolean hasDoppelgangerBadge(Bitmap bitmap, int width, int height) {
        try {
            float size = Math.max(13f, Math.min(width, height) * 0.19f);
            float left = Math.max(1f, width * 0.125f);
            float bottom = height - Math.max(1f, height * 0.155f);
            float top = bottom - size;
            int sampleX = clamp(Math.round(left + size * 0.5f), 0, width - 1);
            int sampleY = clamp(Math.round(top + size * 0.45f), 0, height - 1);
            int center = bitmap.getPixel(sampleX, sampleY);
            if (!isNearColor(center, 0xff2b3036, 52)) {
                return false;
            }
            int borderX = clamp(Math.round(left + size * 0.22f), 0, width - 1);
            int borderY = clamp(Math.round(top + size * 0.18f), 0, height - 1);
            int border = bitmap.getPixel(borderX, borderY);
            return isNearColor(border, 0xffffffff, 72) || isNearColor(border, 0xfff0f0f0, 72);
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static Path buildDoppelgangerBadgePath(RectF rect) {
        float width = rect.width();
        float height = rect.height();
        float radius = width * 0.18f;
        float bottomArcDepth = height * 0.18f;
        Path path = new Path();
        path.moveTo(rect.left + radius, rect.top);
        path.lineTo(rect.right - radius, rect.top);
        path.quadTo(rect.right, rect.top, rect.right, rect.top + radius);
        path.lineTo(rect.right, rect.bottom - height * 0.34f);
        path.quadTo(rect.right, rect.bottom - height * 0.08f,
                rect.centerX(), rect.bottom + bottomArcDepth * 0.16f);
        path.quadTo(rect.left, rect.bottom - height * 0.08f,
                rect.left, rect.bottom - height * 0.34f);
        path.lineTo(rect.left, rect.top + radius);
        path.quadTo(rect.left, rect.top, rect.left + radius, rect.top);
        path.close();
        return path;
    }

    private static int clamp(int value, int min, int max) {
        if (value < min) {
            return min;
        }
        if (value > max) {
            return max;
        }
        return value;
    }

    private static boolean isNearColor(int color, int expected, int tolerance) {
        return Math.abs(Color.red(color) - Color.red(expected)) <= tolerance
                && Math.abs(Color.green(color) - Color.green(expected)) <= tolerance
                && Math.abs(Color.blue(color) - Color.blue(expected)) <= tolerance
                && Math.abs(Color.alpha(color) - Color.alpha(expected)) <= tolerance;
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
        SharedPreferences iconPrefs = activity.getSharedPreferences(ICON_OVERRIDE_PREFS, Context.MODE_PRIVATE);
        String key = iconPrefs.getString(PREF_PENDING_CUSTOM_ICON_KEY, "");
        if (key.length() == 0) {
            Toast.makeText(activity, "没有找到要替换的应用", Toast.LENGTH_SHORT).show();
            return true;
        }
        try {
            byte[] iconData = saveCustomIcon(activity, key, data.getData());
            String[] parts = splitIconKey(key);
            RedirectIconDB.updateCustomIcon(activity, parts[0], parts[1], iconData);
            int returnScrollY = iconPrefs.getInt(PREF_PENDING_CUSTOM_ICON_RETURN_SCROLL_Y, 0);
            int choiceScrollY = iconPrefs.getInt(PREF_PENDING_CUSTOM_ICON_CHOICE_SCROLL_Y, 0);
            boolean restoreChoice = iconPrefs.getBoolean(PREF_PENDING_CUSTOM_ICON_RESTORE_CHOICE, false);
            iconPrefs.edit().remove(PREF_PENDING_CUSTOM_ICON_KEY)
                    .remove(PREF_PENDING_CUSTOM_ICON_RETURN_SCROLL_Y)
                    .remove(PREF_PENDING_CUSTOM_ICON_CHOICE_SCROLL_Y)
                    .remove(PREF_PENDING_CUSTOM_ICON_RESTORE_CHOICE).apply();
            applyIconChanges(activity, Collections.singleton(parts[0]));
            if (restoreChoice) {
                reopenIconChoicePage(activity, parts[0], parts[1], returnScrollY, choiceScrollY);
            } else if (!invalidateActiveIconAdapter()) {
                showIconPage(activity, returnScrollY);
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
        final Uri uri = data.getData();
        try {
            int flags = data.getFlags() & (Intent.FLAG_GRANT_READ_URI_PERMISSION
                    | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
            activity.getContentResolver().takePersistableUriPermission(uri, flags);
        } catch (Throwable ignored) {
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                persistPickedWallpaper(activity, uri);
            }
        }, "LauncherWallpaperSave").start();
        return true;
    }

    private static void persistPickedWallpaper(final Activity activity, Uri uri) {
        try {
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
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override
                public void run() {
                    boolean refreshed = refreshLauncherWallpaperNow(activity);
                    markWallpaperRefreshPending(activity, !refreshed);
                    Toast.makeText(activity, "桌面壁纸已应用", Toast.LENGTH_SHORT).show();
                    bindWallpaperSettingIcon(activity, activity.getResources(),
                            activity.getWindow().getDecorView());
                }
            });
        } catch (Throwable t) {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override
                public void run() {
                    Toast.makeText(activity, "壁纸设置失败", Toast.LENGTH_SHORT).show();
                }
            });
        }
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
        return "smartisan_theme_aero".equals(currentTheme(context));
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

    public static String displayNameForDesktopItem(String packageName, String componentName,
                                                    String fallback) {
        try {
            Context context = currentApplicationContext();
            RedirectIconInfo info = RedirectIconDB.getRedirectIconInfo(context, packageName, componentName);
            if (info != null && !TextUtils.isEmpty(info.displayName)) {
                return info.displayName;
            }
        } catch (Throwable ignored) {
        }
        return fallback;
    }

    private static void showThemePage(final Activity activity, final int restoreScrollY) {
        showThemePage(activity, restoreScrollY, true);
    }

    private static void showThemePage(final Activity activity, final int restoreScrollY, boolean forward) {
        logOperation(activity, "PAGE", "show_theme, restoreScrollY=" + restoreScrollY);
        try {
            tuneWindow(activity);
            final SettingsResourceContext context = createSettingsContext(activity);
            final Resources resources = context.getResources();
            final View root = inflate(activity, context, "theme_preview_gridview");
            bindBackTitle(activity, resources, root, "view_title", getString(resources, "launcher_theme_text", "桌面主题"),
                    "THEME_LIST", new Runnable() { public void run() { stopThemePagePolling(); show(activity, sMainSettingsScrollY, true); } });
            final GridView installed = asGrid(find(resources, root, "installed_list"));
            if (installed != null) {
                installed.setSelector(android.R.color.transparent);
                installed.setNumColumns(2);
                installed.setVerticalSpacing(0);
            }
            final GridView notInstalled = asGrid(find(resources, root, "not_installed_list"));
            if (notInstalled != null) {
                notInstalled.setSelector(android.R.color.transparent);
                notInstalled.setNumColumns(2);
                notInstalled.setVerticalSpacing(0);
            }
            stopThemePagePolling();
            tuneScrollBars(root);
            // Follow the maintained ThemeChooserActivity ordering: attach the adapters and
            // begin preview work immediately.  setSettingsContentView() waits for this root's
            // first layout while it is off-screen, then starts the slide.
            bindThemeGridContent(activity, context, resources, root, installed, notInstalled,
                    restoreScrollY);
            setSettingsContentView(activity, context, resources, root, forward);
        } catch (Throwable t) {
            showFailure(activity, t);
        }
    }

    private static void bindThemeGridContent(final Activity activity,
                                             final SettingsResourceContext context,
                                             final Resources resources,
                                             final View root,
                                             final GridView installed,
                                             final GridView notInstalled,
                                             final int restoreScrollY) {
        final ThemePreviewAdapter installedAdapter = installed == null ? null
                : new ThemePreviewAdapter(activity, context, resources, true);
        final ThemePreviewAdapter onlineAdapter = notInstalled == null ? null
                : new ThemePreviewAdapter(activity, context, resources, false);
        if (installed != null) {
            installed.setAdapter(installedAdapter);
            installed.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
                public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                    stopThemePagePolling();
                    sThemePageScrollY = currentScrollY(activity);
                    showThemeItemPage(activity, installedAdapter.entryAt(position));
                }
            });
        }
        if (notInstalled != null) {
            notInstalled.setAdapter(onlineAdapter);
            notInstalled.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
                public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                    stopThemePagePolling();
                    sThemePageScrollY = currentScrollY(activity);
                    showThemeItemPage(activity, onlineAdapter.entryAt(position));
                }
            });
        }
        startThemePagePolling(activity, installedAdapter, onlineAdapter);
        restoreScroll(root, restoreScrollY);
    }

    private static void startThemePagePolling(final Activity activity,
                                              final ThemePreviewAdapter installedAdapter,
                                              final ThemePreviewAdapter onlineAdapter) {
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

            registerSettingsBackActionPublic(activity, "THEME_DETAIL", new Runnable() {
                public void run() { showThemePage(activity, sThemePageScrollY, false); }
            });
            TextView btnBack = (TextView) find(resources, root, "btn_back");
            if (btnBack != null) btnBack.setOnClickListener(settingsTitleBackClick(activity, "THEME_DETAIL"));
            if (statusIcon != null) {
                statusIcon.setVisibility(View.GONE);
            }
            if (dots != null) {
                bindThemeDots(activity, context, resources, dots, entries, selected, previewImg, btnOk, btnDownload, statusIcon);
            }
            updateThemeDetail(activity, resources, entries[selected[0]], previewImg, btnOk, btnDownload, statusIcon);

            tuneScrollBars(root);
            setSettingsContentView(activity, context, resources, root, true);
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
            bindBackTitle(activity, resources, root, "view_title", getString(resources, "launcher_wallpaper_setting_text", "桌面壁纸"),
                    "WALLPAPER", backToMainAction(activity));
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
            setSettingsContentView(activity, context, resources, root, true);
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
        bindSwitchControlOnly(item, listener);
    }

    private static void showPageFlipPage(final Activity activity) {
        try {
            tuneWindow(activity);
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            
            View root = inflate(activity, context, "launcher_anim_chooser_layout");
            bindBackTitle(activity, resources, root, "view_title", getString(resources, "flip_anim_title", "桌面翻页动画"),
                    "PAGE_FLIP", backToMainAction(activity));
            GridView grid = asGrid(find(resources, root, "grid_view"));
            if (grid != null) {
                final PageFlipAdapter adapter = new PageFlipAdapter(activity, context, resources);
                grid.setNumColumns(2);
                grid.setVerticalSpacing(0);
                grid.setHorizontalSpacing(0);
                grid.setSelector(android.R.color.transparent);
                grid.setPadding(dp(activity, 12), dp(activity, 42), dp(activity, 12), 0);
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
            setSettingsContentView(activity, context, resources, root, true);
        } catch (Throwable t) {
            showFailure(activity, t);
        }
    }

    private static void showIconPage(final Activity activity) {
        showIconPage(activity, -1);
    }

    private static void showIconPage(final Activity activity, int restoreScrollY) {
        showIconPage(activity, restoreScrollY, true);
    }

    private static void showIconPage(final Activity activity, int restoreScrollY, boolean forward) {
        try {
            sRestoreIconPageScrollY = restoreScrollY;
            try {
                Class.forName("com.smartisanos.home.settings.icons.IconPackManager")
                        .getMethod("warmUpIconPackList", Context.class).invoke(null, activity);
            } catch (Throwable ignored) {
            }
            tuneWindow(activity);
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = inflate(activity, context, "app_icon_settings_layout");
            bindBackTitle(activity, resources, root, "view_title", getString(resources, "icon_setting_text", "应用图标"),
                    "ICON_LIST", backToMainAction(activity));
            root.setFocusableInTouchMode(true);
            root.requestFocus();
            ListView list = asList(find(resources, root, "icons_list_view"));
            if (list != null) {
                replaceIconListWithScroll(activity, context, resources, list);
            }
            tuneScrollBars(root);
            setSettingsContentView(activity, context, resources, root, forward);
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
        scroll.setOverScrollMode(View.OVER_SCROLL_ALWAYS);
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
        final int generation = ++sIconPageLoadGeneration;
        list.setDivider(null);
        list.setDividerHeight(0);
        list.setVerticalScrollBarEnabled(false);
        list.setOverScrollMode(View.OVER_SCROLL_ALWAYS);
        list.addHeaderView(iconPageHeader(activity, context, resources), null, false);
        final LinearLayout footer = new LinearLayout(context);
        footer.setOrientation(LinearLayout.VERTICAL);
        final TextView loading = text(context, "正在加载应用图标...", 16, 0xff9d9fa6, false);
        loading.setGravity(Gravity.CENTER);
        footer.addView(loading, new LinearLayout.LayoutParams(-1, dp(context, 88)));
        list.addFooterView(footer, null, false);
        final Activity targetActivity = activity;
        final SettingsResourceContext targetContext = context;
        final Resources targetResources = resources;
        final ListView targetList = list;
        final int restoreY = sRestoreIconPageScrollY;
        final IconPageData cached = cachedIconPageData();
        if (cached != null) {
            // Do not show a loading-only page when the application list is already known.
            renderIconPageList(targetActivity, targetContext, targetResources, targetList,
                    footer, cached, restoreY);
            if (!isIconPageDataFresh()) {
                targetList.postDelayed(new Runnable() {
                    public void run() {
                        loadIconPageDataAsync(generation, targetActivity, targetContext,
                                targetResources, targetList, footer, true, -1);
                    }
                }, 480L);
            }
            return;
        }
        list.setAdapter(new BaseAdapter() {
            public int getCount() { return 0; }
            public Object getItem(int position) { return null; }
            public long getItemId(int position) { return position; }
            public View getView(int position, View convertView, ViewGroup parent) { return new View(parent.getContext()); }
        });
        list.post(new Runnable() {
            public void run() {
                loadIconPageDataAsync(generation, targetActivity, targetContext,
                        targetResources, targetList, footer, false, restoreY);
            }
        });
    }

    private static IconPageData cachedIconPageData() {
        synchronized (MaintainedLauncherSettingsHost.class) {
            return sIconPageDataCache;
        }
    }

    private static boolean isIconPageDataFresh() {
        synchronized (MaintainedLauncherSettingsHost.class) {
            return sIconPageDataCache != null
                    && android.os.SystemClock.uptimeMillis() - sIconPageDataCacheUptime
                    < ICON_PAGE_CACHE_FRESH_MS;
        }
    }

    private static void loadIconPageDataAsync(final int generation, final Activity activity,
                                              final SettingsResourceContext context,
                                              final Resources resources, final ListView list,
                                              final LinearLayout footer, final boolean forceRefresh,
                                              final int restorePosition) {
        if (generation != sIconPageLoadGeneration || list.getWindowToken() == null) {
            return;
        }
        new Thread(new Runnable() {
            public void run() {
                long started = android.os.SystemClock.elapsedRealtime();
                logOperation(activity, "ICON_LIST", forceRefresh ? "refresh_start" : "load_start");
                final IconPageData data = loadIconPageData(activity, forceRefresh);
                logOperation(activity, "ICON_LIST", "load_complete count=" + data.entries.size()
                        + ", elapsed_ms=" + (android.os.SystemClock.elapsedRealtime() - started));
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    public void run() {
                        if (generation != sIconPageLoadGeneration || list.getWindowToken() == null) {
                            return;
                        }
                        renderIconPageList(activity, context, resources, list, footer, data,
                                forceRefresh ? list.getFirstVisiblePosition() : restorePosition);
                    }
                });
            }
        }, "smartisan-icon-list-loader").start();
    }

    private static void renderIconPageList(Activity activity, SettingsResourceContext context,
                                           Resources resources, ListView list, LinearLayout footer,
                                           IconPageData data, int restorePosition) {
        try {
            AppIconAdapter adapter = new AppIconAdapter(activity, context, resources,
                    data.entries, data.iconManager);
            synchronized (MaintainedLauncherSettingsHost.class) {
                sActiveAppIconAdapter = new java.lang.ref.WeakReference<AppIconAdapter>(adapter);
            }
            footer.removeAllViews();
            footer.addView(iconPageFooter(activity, context, resources),
                    new LinearLayout.LayoutParams(-1, -2));
            list.setAdapter(adapter);
            list.setOnScrollListener(new AbsListView.OnScrollListener() {
                public void onScrollStateChanged(AbsListView view, int state) {
                    if (state == AbsListView.OnScrollListener.SCROLL_STATE_IDLE) {
                        int first = list.getFirstVisiblePosition();
                        int visible = Math.max(1, list.getChildCount());
                        adapter.requestVisibleRange(first, visible,
                                IconPreviewRepository.Priority.P0_VISIBLE);
                        adapter.requestVisibleRange(Math.max(0, first - visible), visible * 3,
                                IconPreviewRepository.Priority.P1_ADJACENT);
                        adapter.requestImprovedDiskPreparation();
                    }
                }
                public void onScroll(AbsListView view, int first, int visible, int total) {
                    adapter.requestVisibleRange(first, visible,
                            IconPreviewRepository.Priority.P0_VISIBLE);
                }
            });
            list.post(new Runnable() {
                public void run() {
                    adapter.requestVisibleRange(list.getFirstVisiblePosition(),
                            Math.max(1, list.getChildCount()), IconPreviewRepository.Priority.P0_VISIBLE);
                }
            });
            if (restorePosition > 0) {
                list.setSelection(restorePosition);
            }
        } catch (Throwable ignored) {
            logOperation(activity, "ICON_LIST", "render_failed " + shortError(ignored));
            footer.removeAllViews();
            TextView failure = text(context, "应用图标加载失败", 16, 0xff9d9fa6, false);
            failure.setGravity(Gravity.CENTER);
            footer.addView(failure, new LinearLayout.LayoutParams(-1, dp(context, 88)));
        }
    }

    private static IconPageData loadIconPageData(Activity activity, boolean forceRefresh) {
        long now = android.os.SystemClock.uptimeMillis();
        synchronized (MaintainedLauncherSettingsHost.class) {
            if (!forceRefresh && sIconPageDataCache != null
                    && now - sIconPageDataCacheUptime < ICON_PAGE_CACHE_FRESH_MS) {
                return sIconPageDataCache;
            }
        }
        IconManager manager = new IconManager(activity);
        List<RedirectIconInfo> entries = AppIconAdapter.loadEntries(activity, manager);
        ArrayList<IconPreviewRepository.AppIconRowModel> snapshotRows =
                new ArrayList<IconPreviewRepository.AppIconRowModel>();
        Map<String, List<String>> variants = loadIconVariantMap(activity);
        for (RedirectIconInfo entry : entries) {
            ResolveInfo resolved = manager.getResolveInfo(entry.packageName, entry.componentName);
            ActivityInfo ai = resolved == null ? null : resolved.activityInfo;
            List<String> names = variants == null ? null : variants.get(entry.packageName);
            String candidate = names == null || names.isEmpty() ? "" : names.get(0);
            String mode = RedirectIconDB.modeOf(entry);
            snapshotRows.add(new IconPreviewRepository.AppIconRowModel(entry.packageName,
                    entry.componentName, entry.ownerId,
                    manager.getLableForPackage(entry.packageName, entry.componentName), mode,
                    RedirectIconDB.resourceNameOf(entry), !TextUtils.isEmpty(candidate), candidate,
                    false, "", "", packageVersionStamp(activity, entry.packageName)));
        }
        IconPageData data = new IconPageData(manager, entries,
                new IconPreviewRepository.AppIconSnapshot(snapshotRows));
        synchronized (MaintainedLauncherSettingsHost.class) {
            sIconPageDataCache = data;
            sIconPageDataCacheUptime = android.os.SystemClock.uptimeMillis();
        }
        return data;
    }

    private static long packageVersionStamp(Context context, String packageName) {
        if (context == null || TextUtils.isEmpty(packageName)) return 0L;
        try {
            return context.getPackageManager().getPackageInfo(packageName, 0).lastUpdateTime;
        } catch (Throwable ignored) {
            return 0L;
        }
    }

    private static Runnable backToMainAction(final Activity activity) {
        return new Runnable() {
            public void run() { show(activity, sMainSettingsScrollY, true); }
        };
    }

    private static View.OnClickListener settingsTitleBackClick(final Activity activity, final String page) {
        return new View.OnClickListener() {
            public void onClick(View v) {
                Log.i("SettingsNavigation", "SETTINGS_TITLE_BACK_CLICK page=" + page);
                activity.onBackPressed();
            }
        };
    }

    private static void bindBackTitle(final Activity activity, Resources resources, View root, String idName,
                                      String titleText, String page, Runnable backAction) {
        registerSettingsBackActionPublic(activity, page, backAction);
        TextView btnBack = (TextView) find(resources, root, "btn_back");
        if (btnBack != null) {
            btnBack.setOnClickListener(settingsTitleBackClick(activity, page));
        }
        TextView tvTitle = (TextView) find(resources, root, "tv_title");
        if (tvTitle != null) {
            tvTitle.setText(titleText);
        }
        View title = find(resources, root, idName);
        if (title instanceof Title) {
            Title smartisanTitle = (Title) title;
            smartisanTitle.setTitle(titleText);
            smartisanTitle.setBackClickListener(settingsTitleBackClick(activity, page));
        }
    }

    private static void scheduleSettingsResourcesWarm(Context context) {
        if (context == null || sSettingsResources != null) {
            return;
        }
        synchronized (MaintainedLauncherSettingsHost.class) {
            if (sSettingsResources != null || sSettingsResourcesWarmPending) {
                return;
            }
            sSettingsResourcesWarmPending = true;
        }
        final Context app = context.getApplicationContext() == null
                ? context : context.getApplicationContext();
        new Thread(new Runnable() {
            public void run() {
                try {
                    android.os.Process.setThreadPriority(android.os.Process.THREAD_PRIORITY_BACKGROUND);
                    settingsResources(app);
                } catch (Throwable ignored) {
                } finally {
                    synchronized (MaintainedLauncherSettingsHost.class) {
                        sSettingsResourcesWarmPending = false;
                    }
                }
            }
        }, "MaintainedSettingsResourcesWarm").start();
    }

    private static void setSettingsContentView(Activity activity, Context animContext,
                                               Resources resources, View root, boolean forward) {
        setSettingsContentView(activity, animContext, resources, root, forward, true);
    }

    private static void setSettingsContentView(Activity activity, Context animContext,
                                               Resources resources, final View root,
                                               boolean forward, boolean animate) {
        tuneScrollBars(root);
        if (activity == null || root == null || !animate) {
            if (activity != null) {
                activity.setContentView(root);
            }
            return;
        }
        ViewGroup content = null;
        try {
            content = (ViewGroup) activity.findViewById(android.R.id.content);
        } catch (Throwable ignored) {
        }
        if (content == null || content.getChildCount() == 0) {
            activity.setContentView(root);
            return;
        }

        // Keep the previous page attached until the incoming page has covered it.  Calling
        // setContentView() first exposes the window background for one frame on some ROMs.
        final ViewGroup host = content;
        // A rapid second navigation can arrive while the first pair is still attached.
        // Collapse that pair to the newest page before starting the next transition.
        while (host.getChildCount() > 1) {
            View stale = host.getChildAt(0);
            stale.animate().cancel();
            host.removeViewAt(0);
        }
        final View previous = host.getChildAt(host.getChildCount() - 1);
        try {
            if (root.getParent() instanceof ViewGroup) {
                ((ViewGroup) root.getParent()).removeView(root);
            }
            previous.animate().cancel();
            root.animate().cancel();
            previous.clearAnimation();
            root.clearAnimation();
        } catch (Throwable ignored) {
        }

        int width = host.getWidth();
        if (width <= 0) {
            width = activity.getResources().getDisplayMetrics().widthPixels;
        }
        if (width <= 0) {
            activity.setContentView(root);
            return;
        }
        final int direction = forward ? 1 : -1;
        final float distance = width;
        root.setTranslationX(direction * distance);
        try {
            root.setLayerType(View.LAYER_TYPE_HARDWARE, null);
            previous.setLayerType(View.LAYER_TYPE_HARDWARE, null);
        } catch (Throwable ignored) {
        }
        host.addView(root, new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        final DecelerateInterpolator interpolator = new DecelerateInterpolator(1.35f);
        final boolean[] transitionStarted = new boolean[]{false};
        final Runnable startTransition = new Runnable() {
            public void run() {
                if (transitionStarted[0] || root.getParent() != host) {
                    return;
                }
                transitionStarted[0] = true;
                previous.animate()
                        .translationX(-direction * distance * 0.12f)
                        .setDuration(180L)
                        .setInterpolator(interpolator)
                        .start();
                root.animate()
                        .translationX(0f)
                        .setDuration(180L)
                        .setInterpolator(interpolator)
                        .withEndAction(new Runnable() {
                            public void run() {
                                try {
                                    previous.animate().cancel();
                                    previous.setTranslationX(0f);
                                    previous.setLayerType(View.LAYER_TYPE_NONE, null);
                                    root.setLayerType(View.LAYER_TYPE_NONE, null);
                                    if (previous.getParent() == host) {
                                        host.removeView(previous);
                                    }
                                } catch (Throwable ignored) {
                                }
                            }
                        })
                        .start();
            }
        };
        // Translation uses the known host width, so it can start on the next frame without
        // waiting for a pre-draw callback. This also keeps rapid back/forward taps responsive.
        root.postOnAnimation(startTransition);
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
        if (view instanceof ScrollView || view instanceof AbsListView) {
            view.setOverScrollMode(View.OVER_SCROLL_ALWAYS);
        }
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
        bindSwitchControlOnly(item, new View.OnClickListener() {
            public void onClick(View v) {
                toggleBoundSwitch(context, item, key);
            }
        });
    }

    private static void bindSwitchControlOnly(final SettingItemSwitch item,
                                              final View.OnClickListener listener) {
        item.setOnClickListener(null);
        item.setClickable(false);
        if (item.getSwitch() == null) {
            return;
        }
        item.getSwitch().setClickable(true);
        item.getSwitch().setOnClickListener(null);
        item.getSwitch().setOnTouchListener(new View.OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == MotionEvent.ACTION_UP && listener != null) {
                    listener.onClick(v);
                }
                return true;
            }
        });
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
        bindSwitchControlOnly(item, listener);
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
            if (!packageInstalled(activity, "com.smartisanos.launcher.theme.trans")) {
                Toast.makeText(activity, "透明主题包未安装", Toast.LENGTH_SHORT).show();
                return;
            }
            ensureTransparentThemeRegistered(activity);
            forceDefaultPageAnimation(activity);
            String current = currentTheme(activity);
            if (!"smartisan_theme_trans".equals(current)) {
                if (!saveTransparentPreviousTheme(activity, current)) {
                    Toast.makeText(activity, "原主题保存失败", Toast.LENGTH_SHORT).show();
                    return;
                }
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
        if (!writeTransparentModeSetting(activity, transparent)) {
            Toast.makeText(activity, "透明主题设置保存失败", Toast.LENGTH_SHORT).show();
            return;
        }
        if (!transparent) {
            storeThemeSelection(activity, targetTheme);
        }
        if (transparent) {
            ensureTransparentThemeRegistered(activity);
        }
        Toast.makeText(activity, transparent ? "正在应用透明主题" : "正在恢复桌面主题", Toast.LENGTH_SHORT).show();
        if (animate) {
            if (!com.smartisanos.launcher.reload.LauncherColdReloadCoordinator
                    .beginThemeReload(activity, transparent)) {
                Toast.makeText(activity, "无法启动桌面重载", Toast.LENGTH_SHORT).show();
            }
        } else {
            applyTransparentThemeRuntimeFlags(activity, transparent);
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
        refreshLauncherWallpaperSurface();
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

    private static boolean saveTransparentPreviousTheme(Context context, String theme) {
        if (theme == null || theme.length() == 0 || "smartisan_theme_trans".equals(theme)) {
            return true;
        }
        boolean committed = false;
        try {
            committed = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
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
        return committed;
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
        boolean oldDynamicIconEnabled = LauncherSettingBridge.dynamicWeatherCalendarEnabled(context);
        boolean next = !item.isChecked();
        if (KEY_DYNAMIC_WEATHER_CALENDAR.equals(key)) {
            if (next && Build.VERSION.SDK_INT >= 23
                    && !WeatherBridge.hasLocationPermissionForSettings(context)) {
                if (!(context instanceof Activity)) {
                    Log.w(LOG_TAG, "DYNAMIC_ICON_PERMISSION_REQUEST_UNAVAILABLE no Activity host");
                    Toast.makeText(context, "无法打开定位授权页面", Toast.LENGTH_SHORT).show();
                    return;
                }
                requestDynamicWeatherLocationPermission((Activity) context, item);
                return;
            }
            applyDynamicWeatherCalendarSetting(context, item, oldDynamicIconEnabled, next);
            return;
        }
        item.setCheckedAnimated(next);
        writeBoolSetting(context, key, next);
        applyLauncherSettingChange(context, key);
        if ("launcher_unlock_animation_enabled".equals(key)) {
            applyUnlockAnimationEnabled(next);
        }
        if ("launcher_hide_badge".equals(key)) {
            applyBadgeVisibility(context, next, true);
        }
    }

    private static void migrateSearchGestureSetting(Context context) {
        if (context == null || hasBoolSetting(context, KEY_SWIPE_UP_SEARCH_ENABLED)) {
            return;
        }
        boolean enabled = readSystemBool(context, KEY_LEGACY_SEARCH_PAGE_ENABLED, true);
        writeBoolSetting(context, KEY_SWIPE_UP_SEARCH_ENABLED, enabled);
        Log.i(LOG_TAG, "SWIPE_UP_SEARCH_SETTING_MIGRATED oldKey="
                + KEY_LEGACY_SEARCH_PAGE_ENABLED + " value=" + enabled);
    }

    private static boolean hasBoolSetting(Context context, String key) {
        try {
            if (context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE).contains(key)
                    || context.getSharedPreferences("com.smartisanos.launcher_prefs",
                    Context.MODE_PRIVATE).contains(key)) {
                return true;
            }
        } catch (Throwable ignored) {
        }
        try {
            if (Settings.System.getString(context.getContentResolver(), key) != null
                    || Settings.Global.getString(context.getContentResolver(), key) != null) {
                return true;
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    /** Applies the original theme-changing Dialog dim to its owning settings window only. */
    public static void onOriginalThemeLoadingUiPrepared(final Context context, Dialog dialog,
            String message) {
        if (!(context instanceof Activity) || dialog == null || !isThemeChangingMessage(context, message)) {
            return;
        }
        final Activity activity = (Activity) context;
        final Window window = activity.getWindow();
        final View decor = window == null ? null : window.getDecorView();
        if (window == null || decor == null) {
            return;
        }
        final float dimAmount = dialogDimAmount(dialog);
        synchronized (MaintainedLauncherSettingsHost.class) {
            if (sThemeLoadingSystemBars != null && sThemeLoadingSystemBars.activity != activity) {
                restoreThemeLoadingSystemBarsLocked(false);
            }
            if (sThemeLoadingSystemBars == null) {
                sThemeLoadingSystemBars = new ThemeLoadingSystemBarsState(activity, window,
                        window.getStatusBarColor(), window.getNavigationBarColor(),
                        decor.getSystemUiVisibility(), sPendingThemeLoadingThemeId);
            }
        }
        ThemeLoadingSystemBarsState state = sThemeLoadingSystemBars;
        if (Build.VERSION.SDK_INT >= 21) {
            window.setStatusBarColor(dimmedColor(state.statusBarColor, dimAmount));
            window.setNavigationBarColor(dimmedColor(state.navigationBarColor, dimAmount));
        }
        int systemUi = state.systemUiVisibility & ~View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR;
        if (Build.VERSION.SDK_INT >= 26) systemUi &= ~View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR;
        decor.setSystemUiVisibility(systemUi);
        if (Build.VERSION.SDK_INT >= 30) {
            WindowInsetsController controller = window.getInsetsController();
            if (controller != null) controller.setSystemBarsAppearance(0,
                    WindowInsetsController.APPEARANCE_LIGHT_STATUS_BARS
                            | WindowInsetsController.APPEARANCE_LIGHT_NAVIGATION_BARS);
        }
    }

    public static void onOriginalThemeLoadingUiDismissed() {
        synchronized (MaintainedLauncherSettingsHost.class) {
            restoreThemeLoadingSystemBarsLocked(true);
        }
    }

    private static void markThemeSettingsExitRequested(Activity activity) {
        synchronized (MaintainedLauncherSettingsHost.class) {
            if (sThemeLoadingSystemBars != null && sThemeLoadingSystemBars.activity == activity) {
                sThemeLoadingSystemBars.exitRequested = true;
            }
        }
    }

    private static boolean isThemeChangingMessage(Context context, String message) {
        if (message == null || context == null) return false;
        try {
            int id = context.getResources().getIdentifier("theme_changing", "string",
                    context.getPackageName());
            return id != 0 && message.equals(context.getString(id));
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static float dialogDimAmount(Dialog dialog) {
        try {
            Window dialogWindow = dialog.getWindow();
            if (dialogWindow != null && dialogWindow.getAttributes().dimAmount > 0f) {
                return dialogWindow.getAttributes().dimAmount;
            }
        } catch (Throwable ignored) {
        }
        return 0.32f;
    }

    private static int dimmedColor(int color, float dimAmount) {
        float keep = Math.max(0f, Math.min(1f, 1f - dimAmount));
        return Color.rgb(Math.round(Color.red(color) * keep), Math.round(Color.green(color) * keep),
                Math.round(Color.blue(color) * keep));
    }

    private static void restoreThemeLoadingSystemBarsLocked(boolean restoreIfStillVisible) {
        ThemeLoadingSystemBarsState state = sThemeLoadingSystemBars;
        sThemeLoadingSystemBars = null;
        if (state == null || state.exitRequested || state.activity == null || state.activity.isFinishing()
                || (Build.VERSION.SDK_INT >= 17 && state.activity.isDestroyed()) || !restoreIfStillVisible) {
            return;
        }
        Window window = state.window;
        View decor = window == null ? null : window.getDecorView();
        if (window == null || decor == null) return;
        if (Build.VERSION.SDK_INT >= 21) {
            window.setStatusBarColor(state.statusBarColor);
            window.setNavigationBarColor(state.navigationBarColor);
        }
        decor.setSystemUiVisibility(state.systemUiVisibility);
        if (Build.VERSION.SDK_INT >= 30) {
            WindowInsetsController controller = window.getInsetsController();
            if (controller != null) {
                int appearance = 0;
                if ((state.systemUiVisibility & View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR) != 0) {
                    appearance |= WindowInsetsController.APPEARANCE_LIGHT_STATUS_BARS;
                }
                if (Build.VERSION.SDK_INT >= 26 && (state.systemUiVisibility
                        & View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR) != 0) {
                    appearance |= WindowInsetsController.APPEARANCE_LIGHT_NAVIGATION_BARS;
                }
                controller.setSystemBarsAppearance(appearance,
                        WindowInsetsController.APPEARANCE_LIGHT_STATUS_BARS
                                | WindowInsetsController.APPEARANCE_LIGHT_NAVIGATION_BARS);
            }
        }
    }

    private static final class ThemeLoadingSystemBarsState {
        final Activity activity;
        final Window window;
        final int statusBarColor;
        final int navigationBarColor;
        final int systemUiVisibility;
        final String themeId;
        boolean exitRequested;

        ThemeLoadingSystemBarsState(Activity activity, Window window, int statusBarColor,
                int navigationBarColor, int systemUiVisibility, String themeId) {
            this.activity = activity;
            this.window = window;
            this.statusBarColor = statusBarColor;
            this.navigationBarColor = navigationBarColor;
            this.systemUiVisibility = systemUiVisibility;
            this.themeId = themeId;
        }
    }

    private static void applyDynamicWeatherCalendarSetting(Context context,
            SettingItemSwitch item, boolean oldEnabled, boolean enabled) {
        Log.i(LOG_TAG, "DYNAMIC_ICON_ENABLE_REQUEST old=" + oldEnabled + " new=" + enabled);
        if (!persistDynamicWeatherCalendarSetting(context, enabled)) {
            Log.w(LOG_TAG, "DYNAMIC_ICON_CONFIG_COMMIT_FAILED requested=" + enabled);
            Toast.makeText(context, "动态天气和日历设置保存失败", Toast.LENGTH_SHORT).show();
            return;
        }
        boolean reread = LauncherSettingBridge.dynamicWeatherCalendarEnabled(context);
        Log.i(LOG_TAG, "DYNAMIC_ICON_CONFIG_COMMITTED requested=" + enabled
                + " reread=" + reread);
        if (reread != enabled) {
            Log.w(LOG_TAG, "DYNAMIC_ICON_CONFIG_REREAD_MISMATCH requested=" + enabled
                    + " reread=" + reread);
            Toast.makeText(context, "动态天气和日历设置保存失败", Toast.LENGTH_SHORT).show();
            return;
        }
        if (item != null) {
            item.setCheckedAnimated(enabled);
        }
        Toast.makeText(context, enabled
                ? "已启用动态天气和日历"
                : "已关闭动态图标，正在恢复普通图标",
                Toast.LENGTH_SHORT).show();
        Log.i(LOG_TAG, "DYNAMIC_ICON_RELOAD_REQUESTED reason=ACTIVE_ICON_SETTINGS_CHANGE"
                + " old=" + oldEnabled + " new=" + enabled);
        if (!LauncherColdReloadCoordinator.beginActiveIconReload(context, oldEnabled, enabled)) {
            Toast.makeText(context, "桌面重新载入未启动，请重试", Toast.LENGTH_SHORT).show();
        }
    }

    private static boolean persistDynamicWeatherCalendarSetting(Context context, boolean enabled) {
        if (context == null) {
            return false;
        }
        int value = enabled ? 1 : 0;
        try {
            Settings.System.putInt(context.getContentResolver(),
                    KEY_DYNAMIC_WEATHER_CALENDAR, value);
            Settings.System.putString(context.getContentResolver(),
                    KEY_DYNAMIC_WEATHER_CALENDAR, Boolean.toString(enabled));
        } catch (Throwable ignored) {
        }
        try {
            Settings.Global.putInt(context.getContentResolver(),
                    KEY_DYNAMIC_WEATHER_CALENDAR, value);
            Settings.Global.putString(context.getContentResolver(),
                    KEY_DYNAMIC_WEATHER_CALENDAR, Boolean.toString(enabled));
        } catch (Throwable ignored) {
        }
        boolean committed;
        try {
            committed = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(KEY_DYNAMIC_WEATHER_CALENDAR, enabled)
                    .putInt(KEY_DYNAMIC_WEATHER_CALENDAR + "_int", value)
                    .commit();
        } catch (Throwable ignored) {
            return false;
        }
        if (!committed) {
            return false;
        }
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .edit()
                    .putBoolean(KEY_DYNAMIC_WEATHER_CALENDAR, enabled)
                    .putInt(KEY_DYNAMIC_WEATHER_CALENDAR + "_int", value)
                    .commit();
        } catch (Throwable ignored) {
        }
        return LauncherSettingBridge.dynamicWeatherCalendarEnabled(context) == enabled;
    }

    private static void requestDynamicWeatherLocationPermission(final Activity activity,
            SettingItemSwitch item) {
        if (activity == null || item == null) {
            return;
        }
        if (sDynamicWeatherLocationPermissionPending) {
            Log.i(LOG_TAG, "DYNAMIC_ICON_PERMISSION_REQUEST_IGNORED pending=true");
            return;
        }
        boolean prompted = activity.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                .getBoolean(PREF_DYNAMIC_WEATHER_LOCATION_REQUESTED, false);
        if (prompted && !activity.shouldShowRequestPermissionRationale(
                Manifest.permission.ACCESS_COARSE_LOCATION)) {
            Log.i(LOG_TAG, "DYNAMIC_ICON_PERMISSION_PERMANENTLY_DENIED");
            showDynamicWeatherPermissionSettingsDialog(activity);
            return;
        }
        sDynamicWeatherLocationPermissionPending = true;
        sDynamicWeatherLocationPermissionItem = new WeakReference<SettingItemSwitch>(item);
        activity.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE).edit()
                .putBoolean(PREF_DYNAMIC_WEATHER_LOCATION_REQUESTED, true).commit();
        Log.i(LOG_TAG, "DYNAMIC_ICON_PERMISSION_REQUESTED permission=ACCESS_COARSE_LOCATION");
        try {
            activity.requestPermissions(new String[]{Manifest.permission.ACCESS_COARSE_LOCATION},
                    REQUEST_DYNAMIC_WEATHER_LOCATION);
        } catch (Throwable error) {
            clearDynamicWeatherLocationPermissionRequest();
            Log.w(LOG_TAG, "DYNAMIC_ICON_PERMISSION_REQUEST_FAILED", error);
            Toast.makeText(activity, "无法请求定位权限", Toast.LENGTH_SHORT).show();
        }
    }

    public static void onRequestPermissionsResult(Activity activity, int requestCode,
            String[] permissions, int[] grantResults) {
        if (requestCode != REQUEST_DYNAMIC_WEATHER_LOCATION) {
            return;
        }
        SettingItemSwitch item = sDynamicWeatherLocationPermissionItem == null ? null
                : sDynamicWeatherLocationPermissionItem.get();
        clearDynamicWeatherLocationPermissionRequest();
        boolean granted = activity != null
                && WeatherBridge.hasLocationPermissionForSettings(activity);
        Log.i(LOG_TAG, "DYNAMIC_ICON_PERMISSION_RESULT granted=" + granted);
        if (!granted) {
            if (item != null) {
                item.setChecked(false);
            }
            if (activity != null) {
                Toast.makeText(activity, "未授予定位权限，未启用动态天气和日历",
                        Toast.LENGTH_SHORT).show();
            }
            if (activity != null && !activity.shouldShowRequestPermissionRationale(
                    Manifest.permission.ACCESS_COARSE_LOCATION)) {
                Log.i(LOG_TAG, "DYNAMIC_ICON_PERMISSION_PERMANENTLY_DENIED");
                showDynamicWeatherPermissionSettingsDialog(activity);
            }
            return;
        }
        if (activity != null) {
            boolean oldEnabled = LauncherSettingBridge.dynamicWeatherCalendarEnabled(activity);
            applyDynamicWeatherCalendarSetting(activity, item, oldEnabled, true);
        }
    }

    private static void clearDynamicWeatherLocationPermissionRequest() {
        sDynamicWeatherLocationPermissionPending = false;
        sDynamicWeatherLocationPermissionItem = null;
    }

    private static void showDynamicWeatherPermissionSettingsDialog(final Activity activity) {
        showConfirmDialog(activity, "需要定位权限", "动态天气需要使用粗略位置来获取当前城市天气。"
                        + "请在系统设置中允许定位权限后再开启。",
                "取消", "去设置", new View.OnClickListener() {
                    public void onClick(View v) {
                        try {
                            Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
                            intent.setData(Uri.parse("package:" + activity.getPackageName()));
                            activity.startActivity(intent);
                        } catch (Throwable error) {
                            Toast.makeText(activity, "无法打开应用设置", Toast.LENGTH_SHORT).show();
                        }
                    }
                });
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

    private static boolean writeTransparentModeSetting(Context context, boolean enabled) {
        int value = enabled ? 1 : 0;
        boolean committed = false;
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
            committed = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
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
        return committed;
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

    private static void applyBadgeVisibility(Context context, boolean hidden, boolean refresh) {
        setBadgeRuntimeVisibility(context, hidden);
        refreshBadgeSceneNodes(context);
        if (refresh) {
            postDatabaseRefreshEvent();
            requestLauncherFrameFromContext(context);
            applyIconChange(context);
        }
    }

    private static void setBadgeRuntimeVisibility(Context context, boolean hidden) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            constants.getField("SHOW_MESSAGE_FLAG").setBoolean(null, !hidden);
            logOperation(context, "BADGE_VISIBILITY", "hidden=" + hidden + ", runtime=true");
        } catch (Throwable t) {
            logOperation(context, "BADGE_VISIBILITY", "runtime_failed " + shortError(t));
        }
    }

    private static void refreshBadgeSceneNodes(Context context) {
        try {
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView != null) {
                mainView.getClass().getMethod("ii").invoke(mainView);
            }
        } catch (Throwable t) {
            logOperation(context, "BADGE_VISIBILITY", "scene_refresh_failed " + shortError(t));
        }
    }

    private static void requestLauncherFrameFromContext(Context context) {
        if (context instanceof Activity) {
            requestLauncherFrame((Activity) context);
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
        boolean includeProfileApps = hasEnabledProfileApps(context);
        if (includeProfileApps) {
            scheduleDoppelgangerBootstrap(context);
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
                // HyperOS may return a non-empty but incomplete PackageManager
                // result. Always merge the current user's LauncherApps list;
                // only secondary profiles remain controlled by the profile-app switch.
                if (!profile.equals(current) && !includeProfileApps) {
                    continue;
                }
                List<LauncherActivityInfo> activities = launcherApps.getActivityList(packageFilter, profile);
                if (activities == null) {
                    continue;
                }
                for (LauncherActivityInfo activityInfo : activities) {
                    ComponentName component = activityInfo == null ? null : activityInfo.getComponentName();
                    if (component == null) {
                        continue;
                    }
                    ProfileAppEntry profileEntry = new ProfileAppEntry(
                            component.getPackageName(), component, profile,
                            userIdentifier(profile), profileSerial(context, profile), null);
                    if (!isProfileAppEnabled(context, profileEntry)) {
                        continue;
                    }
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
        ComponentName component = intent.getComponent();
        String targetPackage = component == null ? intent.getPackage() : component.getPackageName();
        if (!TextUtils.isEmpty(targetPackage) && !context.getPackageName().equals(targetPackage)) {
            com.smartisanos.launcher.badge.BadgeBridge.onPackageLaunched(context, targetPackage);
        }
        if (userId <= 0) {
            context.startActivity(intent, options);
            return;
        }
        LauncherApps launcherApps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
        if (launcherApps != null && component != null) {
            List<UserHandle> profiles = launcherApps.getProfiles();
            if (profiles != null) {
                for (UserHandle profile : profiles) {
                    if (profile != null && userIdentifier(profile) == userId) {
                        launcherApps.startMainActivity(component, profile, null, options);
                        return;
                    }
                }
            }
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
            final Object launcher = launcherClass.getMethod("getInstance").invoke(null);
            final Context context = (Context) launcherClass.getMethod("getContext").invoke(launcher);
            if (!(context instanceof Activity)) {
                return;
            }
            if (requestCode == 20 || requestCode == 21) {
                Intent intent = new Intent();
                intent.setClassName(context.getPackageName(),
                        "com.smartisanos.launcher.ConfirmPasswordActivity");
                intent.putExtra("FROM_LAUNCHER", true);
                intent.putExtra(EXTRA_PASSWORD_SET_MODE, requestCode == 20);
                intent.setFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
                ((Activity) context).startActivityForResult(intent, requestCode);
                ((Activity) context).overridePendingTransition(0, 0);
                return;
            }
            final int callbackRequestCode = requestCode;
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override
                public void run() {
                    showLauncherPagePasswordDialog((Activity) context, launcher, callbackRequestCode);
                }
            });
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    public static boolean hasLauncherPagePassword(Context context) {
        if (context == null) {
            return false;
        }
        return !TextUtils.isEmpty(context.getSharedPreferences("launcher_page_lock", Context.MODE_PRIVATE)
                .getString("password_hash", null));
    }

    private static void showSettingsPagePasswordEntry(final Activity activity) {
        if (activity == null) {
            return;
        }
        if (hasLauncherPagePassword(activity)) {
            showSettingsPagePasswordVerify(activity, new Runnable() {
                public void run() {
                    showPrivacyPasswordPage(activity);
                }
            });
        } else {
            showSettingsPagePasswordSet(activity, false, new Runnable() {
                public void run() {
                    showPrivacyPasswordPage(activity);
                }
            });
        }
    }

    public static boolean launchSearchUriTarget(Activity activity, Uri uri) {
        if (activity == null || uri == null
                || !"content".equals(uri.getScheme())
                || !"com.smartisanos.launcher.data.SearchProvider".equals(uri.getAuthority())) {
            return false;
        }
        try {
            List<String> segments = uri.getPathSegments();
            if (segments == null || segments.size() < 2) {
                return false;
            }
            ComponentName component = new ComponentName(segments.get(0), segments.get(1));
            if (segments.size() >= 3) {
                long serial = Long.parseLong(segments.get(2));
                UserHandle profile = userHandleForSerial(activity, serial);
                LauncherApps launcherApps =
                        (LauncherApps) activity.getSystemService(Context.LAUNCHER_APPS_SERVICE);
                if (profile != null && launcherApps != null) {
                    try {
                        launcherApps.startMainActivity(component, profile, null, null);
                        logOperation(activity, "PROFILE_LAUNCH", "launcher_apps_ok component="
                                + component + ", serial=" + serial + ", userId="
                                + userIdentifier(profile));
                        return true;
                    } catch (Throwable launcherError) {
                        logOperation(activity, "PROFILE_LAUNCH", "launcher_apps_failed component="
                                + component + ", serial=" + serial + ", error="
                                + shortError(launcherError));
                        Intent profileIntent = new Intent(Intent.ACTION_MAIN);
                        profileIntent.addCategory(Intent.CATEGORY_LAUNCHER);
                        profileIntent.setComponent(component);
                        profileIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK
                                | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
                        try {
                            Method startAsUser = Context.class.getMethod("startActivityAsUser",
                                    Intent.class, UserHandle.class);
                            startAsUser.setAccessible(true);
                            startAsUser.invoke(activity, profileIntent, profile);
                            logOperation(activity, "PROFILE_LAUNCH", "start_as_user_ok component="
                                    + component + ", userId=" + userIdentifier(profile));
                            return true;
                        } catch (Throwable fallbackError) {
                            logOperation(activity, "PROFILE_LAUNCH", "start_as_user_failed component="
                                    + component + ", userId=" + userIdentifier(profile)
                                    + ", error=" + shortError(fallbackError));
                            return false;
                        }
                    }
                }
                logOperation(activity, "PROFILE_LAUNCH", "profile_not_found component="
                        + component + ", serial=" + serial);
                return false;
            }
            Intent target = new Intent(Intent.ACTION_MAIN);
            target.addCategory(Intent.CATEGORY_LAUNCHER);
            target.setComponent(component);
            target.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            activity.startActivity(target);
            return true;
        } catch (Throwable ignored) {
            logOperation(activity, "PROFILE_LAUNCH", "failed uri=" + uri
                    + ", error=" + shortError(ignored));
            return false;
        }
    }

    public static Uri appendProfileSerialToSearchUri(Context context, Uri uri, int userId) {
        if (context == null || uri == null || userId <= 0) {
            return uri;
        }
        try {
            LauncherApps launcherApps =
                    (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
            if (launcherApps == null) {
                return uri;
            }
            List<UserHandle> profiles = launcherApps.getProfiles();
            if (profiles == null) {
                return uri;
            }
            for (UserHandle profile : profiles) {
                if (profile != null && userIdentifier(profile) == userId) {
                    long serial = profileSerial(context, profile);
                    if (serial >= 0L) {
                        return uri.buildUpon().appendPath(String.valueOf(serial)).build();
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return uri;
    }

    private static long profileSerial(Context context, UserHandle user) {
        if (context == null || user == null) {
            return -1L;
        }
        try {
            android.os.UserManager manager =
                    (android.os.UserManager) context.getSystemService(Context.USER_SERVICE);
            if (manager != null) {
                long serial = manager.getSerialNumberForUser(user);
                if (serial >= 0L) {
                    return serial;
                }
            }
        } catch (Throwable ignored) {
        }
        return userIdentifier(user);
    }

    private static UserHandle userHandleForSerial(Context context, long serial) {
        if (context == null || serial < 0L) {
            return null;
        }
        try {
            android.os.UserManager manager =
                    (android.os.UserManager) context.getSystemService(Context.USER_SERVICE);
            if (manager != null) {
                UserHandle user = manager.getUserForSerialNumber(serial);
                if (user != null) {
                    return user;
                }
            }
        } catch (Throwable ignored) {
        }
        return userHandleForIdentifier((int) serial);
    }

    private static String profileAppPreferenceKey(ProfileAppEntry entry) {
        if (entry == null || entry.componentName == null) {
            return PROFILE_DISABLED_PREFIX + "invalid";
        }
        return PROFILE_DISABLED_PREFIX + entry.profileSerial + "."
                + entry.componentName.flattenToString();
    }

    private static boolean isProfileAppEnabled(Context context, ProfileAppEntry entry) {
        try {
            return !context.getSharedPreferences(PROFILE_APPS_PREFS, Context.MODE_PRIVATE)
                    .getBoolean(profileAppPreferenceKey(entry), true);
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean hasEnabledProfileApps(Context context) {
        if (context == null) {
            return false;
        }
        try {
            Map<String, ?> values = context.getSharedPreferences(
                    PROFILE_APPS_PREFS, Context.MODE_PRIVATE).getAll();
            for (Map.Entry<String, ?> value : values.entrySet()) {
                if (value.getKey().startsWith(PROFILE_DISABLED_PREFIX)
                        && value.getValue() instanceof Boolean
                        && !((Boolean) value.getValue()).booleanValue()) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static void bindBadgeVisibilitySwitch(final Activity activity, Resources resources, View root) {
        View view = find(resources, root, "item_id_hide_badge");
        if (!(view instanceof SettingItemSwitch)) {
            return;
        }
        final SettingItemSwitch item = (SettingItemSwitch) view;
        sBadgeReminderSwitch = new WeakReference<SettingItemSwitch>(item);
        item.setTitle("角标提醒");
        item.setChecked(!readSystemBool(activity, KEY_BADGE_HIDE, true));
        bindSwitchControlOnly(item, new View.OnClickListener() {
            public void onClick(View v) {
                boolean show = !item.isChecked();
                if (show) {
                    Log.i(LOG_TAG, "BADGE_REMINDER_ENABLE_REQUESTED targetSwitch=badge_reminder"
                            + " oldUiChecked=false newUiChecked=true");
                }
                if (show && !com.smartisanos.launcher.badge.BadgeBridge
                        .hasNotificationAccess(activity)) {
                    requestBadgeNotificationAccess(activity, BADGE_PENDING_REMINDER, item);
                    return;
                }
                if (show) {
                    Log.i(LOG_TAG, "BADGE_NOTIFICATION_ACCESS_ALREADY_GRANTED"
                            + " targetSwitch=badge_reminder notificationAccess=true");
                }
                applyBadgeReminderSetting(activity, item, show, show);
            }
        });
    }

    private static void bindBadgeSwipeCleanSwitch(final Activity activity, Resources resources,
            View root) {
        View view = find(resources, root, "item_id_badge_swipe_clean");
        if (!(view instanceof SettingItemSwitch)) {
            return;
        }
        final SettingItemSwitch item = (SettingItemSwitch) view;
        sBadgeSwipeCleanSwitch = new WeakReference<SettingItemSwitch>(item);
        item.setChecked(readSystemBool(activity, KEY_BADGE_SWIPE_CLEAN, false));
        bindSwitchControlOnly(item, new View.OnClickListener() {
            public void onClick(View v) {
                boolean enabled = !item.isChecked();
                if (enabled) {
                    Log.i(LOG_TAG, "BADGE_SWIPE_CLEAN_ENABLE_REQUESTED"
                            + " targetSwitch=badge_swipe_clean oldUiChecked=false"
                            + " newUiChecked=true");
                }
                if (enabled && !com.smartisanos.launcher.badge.BadgeBridge
                        .hasNotificationAccess(activity)) {
                    requestBadgeNotificationAccess(activity, BADGE_PENDING_SWIPE_CLEAN, item);
                    return;
                }
                if (enabled) {
                    Log.i(LOG_TAG, "BADGE_NOTIFICATION_ACCESS_ALREADY_GRANTED"
                            + " targetSwitch=badge_swipe_clean notificationAccess=true");
                }
                applyBadgeSwipeCleanSetting(activity, item, enabled);
            }
        });
    }

    private static void requestBadgeNotificationAccess(final Activity activity,
            final String target, final SettingItemSwitch item) {
        if (activity == null || item == null) {
            return;
        }
        boolean access = com.smartisanos.launcher.badge.BadgeBridge
                .hasNotificationAccess(activity);
        if (access) {
            Log.i(LOG_TAG, "BADGE_NOTIFICATION_ACCESS_ALREADY_GRANTED targetSwitch=" + target);
            enableBadgeSettingAfterNotificationAccess(activity, target, item);
            return;
        }
        if (sBadgeNotificationAccessDialogShowing || !BADGE_PENDING_NONE.equals(
                readBadgeNotificationAccessPending(activity))) {
            Log.i(LOG_TAG, "BADGE_PERMISSION_REQUEST_DUPLICATE_SKIPPED targetSwitch=" + target
                    + " pendingTarget=" + readBadgeNotificationAccessPending(activity));
            return;
        }
        sBadgeNotificationAccessDialogShowing = true;
        Log.i(LOG_TAG, "BADGE_NOTIFICATION_ACCESS_DIALOG_SHOWN targetSwitch=" + target
                + " notificationAccess=false oldUiChecked=" + item.isChecked());
        String message = BADGE_PENDING_REMINDER.equals(target)
                ? "角标提醒需要读取应用通知，请在系统设置中允许“锤子桌面”访问通知。"
                : "紧贴屏幕横扫清除角标需要通知使用权，请在系统设置中允许“锤子桌面”访问通知。";
        showConfirmDialog(activity, "需要通知使用权", message, "取消", "前往设置",
                new View.OnClickListener() {
                    public void onClick(View v) {
                        if (!writeBadgeNotificationAccessPending(activity, target)) {
                            Toast.makeText(activity, "无法保存授权等待状态", Toast.LENGTH_SHORT).show();
                            return;
                        }
                        Log.i(LOG_TAG, "BADGE_NOTIFICATION_ACCESS_SETTINGS_OPENED targetSwitch="
                                + target + " pendingTarget=" + target);
                        com.smartisanos.launcher.badge.BadgeBridge
                                .openNotificationAccessSettings(activity);
                    }
                }, new Runnable() {
                    public void run() {
                        sBadgeNotificationAccessDialogShowing = false;
                    }
                });
    }

    public static void onSettingsHostResumed(Activity activity) {
        if (activity == null) {
            return;
        }
        String pending = readBadgeNotificationAccessPending(activity);
        boolean access = com.smartisanos.launcher.badge.BadgeBridge.hasNotificationAccess(activity);
        if (!BADGE_PENDING_NONE.equals(pending)) {
            clearBadgeNotificationAccessPending(activity);
            if (access) {
                Log.i(LOG_TAG, "BADGE_NOTIFICATION_ACCESS_GRANTED_ON_RETURN targetSwitch="
                        + pending + " notificationAccess=true");
                enableBadgeSettingAfterNotificationAccess(activity, pending,
                        badgeSwitchForTarget(pending));
            } else {
                Log.i(LOG_TAG, "BADGE_NOTIFICATION_ACCESS_DENIED_ON_RETURN targetSwitch="
                        + pending + " notificationAccess=false");
                disableBadgeSettingWithoutNotificationAccess(activity, pending);
                Toast.makeText(activity, "未授予通知使用权，功能无法开启", Toast.LENGTH_SHORT).show();
            }
        }
        synchronizeBadgeSettingsWithNotificationAccess(activity, access);
    }

    private static void enableBadgeSettingAfterNotificationAccess(Activity activity, String target,
            SettingItemSwitch item) {
        if (BADGE_PENDING_REMINDER.equals(target)) {
            applyBadgeReminderSetting(activity, item, true, true);
        } else if (BADGE_PENDING_SWIPE_CLEAN.equals(target)) {
            applyBadgeSwipeCleanSetting(activity, item, true);
        }
    }

    private static void disableBadgeSettingWithoutNotificationAccess(Activity activity,
            String target) {
        if (BADGE_PENDING_REMINDER.equals(target)) {
            applyBadgeReminderSetting(activity, badgeSwitchForTarget(target), false, false);
        } else if (BADGE_PENDING_SWIPE_CLEAN.equals(target)) {
            applyBadgeSwipeCleanSetting(activity, badgeSwitchForTarget(target), false);
        }
    }

    private static void synchronizeBadgeSettingsWithNotificationAccess(Activity activity,
            boolean access) {
        if (access) {
            updateBadgeSwitchUi(activity);
            return;
        }
        boolean reminderEnabled = !readSystemBool(activity, KEY_BADGE_HIDE, true);
        boolean swipeCleanEnabled = readSystemBool(activity, KEY_BADGE_SWIPE_CLEAN, false);
        if (reminderEnabled || swipeCleanEnabled) {
            Log.i(LOG_TAG, "BADGE_NOTIFICATION_ACCESS_REVOKED notificationAccess=false"
                    + " reminderEnabled=" + reminderEnabled
                    + " swipeCleanEnabled=" + swipeCleanEnabled);
        }
        if (reminderEnabled) {
            applyBadgeReminderSetting(activity, badgeSwitchForTarget(BADGE_PENDING_REMINDER),
                    false, false);
        }
        if (swipeCleanEnabled) {
            applyBadgeSwipeCleanSetting(activity,
                    badgeSwitchForTarget(BADGE_PENDING_SWIPE_CLEAN), false);
        }
        updateBadgeSwitchUi(activity);
    }

    private static void applyBadgeReminderSetting(Context context, SettingItemSwitch item,
            boolean enabled, boolean replay) {
        boolean hidden = !enabled;
        writeBoolSetting(context, KEY_BADGE_HIDE, hidden);
        applyLauncherSettingChange(context, KEY_BADGE_HIDE);
        applyBadgeVisibility(context, hidden, true);
        if (item != null) {
            item.setCheckedAnimated(enabled);
        }
        String event = enabled ? "BADGE_SWITCH_ENABLED_AFTER_ACCESS"
                : (com.smartisanos.launcher.badge.BadgeBridge.hasNotificationAccess(context)
                ? "BADGE_SWITCH_DISABLED" : "BADGE_SWITCH_DISABLED_NO_ACCESS");
        Log.i(LOG_TAG, event + " targetSwitch=badge_reminder"
                + " persistedValue=" + hidden);
        if (enabled && replay) {
            Log.i(LOG_TAG, "BADGE_REPLAY_REQUESTED targetSwitch=badge_reminder");
            com.smartisanos.launcher.badge.BadgeBridge.replay(context);
        }
    }

    private static void applyBadgeSwipeCleanSetting(Context context, SettingItemSwitch item,
            boolean enabled) {
        writeBoolSetting(context, KEY_BADGE_SWIPE_CLEAN, enabled);
        applyLauncherSettingChange(context, KEY_BADGE_SWIPE_CLEAN);
        if (item != null) {
            item.setCheckedAnimated(enabled);
        }
        String event = enabled ? "BADGE_SWITCH_ENABLED_AFTER_ACCESS"
                : (com.smartisanos.launcher.badge.BadgeBridge.hasNotificationAccess(context)
                ? "BADGE_SWITCH_DISABLED" : "BADGE_SWITCH_DISABLED_NO_ACCESS");
        Log.i(LOG_TAG, event + " targetSwitch=badge_swipe_clean"
                + " persistedValue=" + enabled);
    }

    private static SettingItemSwitch badgeSwitchForTarget(String target) {
        WeakReference<SettingItemSwitch> reference = BADGE_PENDING_REMINDER.equals(target)
                ? sBadgeReminderSwitch : sBadgeSwipeCleanSwitch;
        return reference == null ? null : reference.get();
    }

    private static void updateBadgeSwitchUi(Activity activity) {
        SettingItemSwitch reminder = badgeSwitchForTarget(BADGE_PENDING_REMINDER);
        if (reminder != null) {
            reminder.setChecked(!readSystemBool(activity, KEY_BADGE_HIDE, true));
        }
        SettingItemSwitch swipeClean = badgeSwitchForTarget(BADGE_PENDING_SWIPE_CLEAN);
        if (swipeClean != null) {
            swipeClean.setChecked(readSystemBool(activity, KEY_BADGE_SWIPE_CLEAN, false));
        }
    }

    private static String readBadgeNotificationAccessPending(Context context) {
        return context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                .getString(PREF_BADGE_NOTIFICATION_ACCESS_PENDING, BADGE_PENDING_NONE);
    }

    private static boolean writeBadgeNotificationAccessPending(Context context, String target) {
        return context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE).edit()
                .putString(PREF_BADGE_NOTIFICATION_ACCESS_PENDING, target).commit();
    }

    private static void clearBadgeNotificationAccessPending(Context context) {
        context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE).edit()
                .remove(PREF_BADGE_NOTIFICATION_ACCESS_PENDING).commit();
    }

    public static boolean hasEnabledProfilePackage(Context context, String packageName) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return false;
        }
        boolean enabledRecord = false;
        try {
            Map<String, ?> values = context.getSharedPreferences(
                    PROFILE_APPS_PREFS, Context.MODE_PRIVATE).getAll();
            String componentPrefix = packageName + "/";
            for (Map.Entry<String, ?> value : values.entrySet()) {
                if (value.getKey().startsWith(PROFILE_DISABLED_PREFIX)
                        && value.getKey().contains(componentPrefix)
                        && value.getValue() instanceof Boolean
                        && !((Boolean) value.getValue()).booleanValue()) {
                    enabledRecord = true;
                    break;
                }
            }
        } catch (Throwable ignored) {
        }
        if (!enabledRecord || Build.VERSION.SDK_INT < 21) {
            return false;
        }
        try {
            LauncherApps launcherApps =
                    (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
            List<UserHandle> profiles = launcherApps == null ? null : launcherApps.getProfiles();
            UserHandle current = Process.myUserHandle();
            if (profiles != null) {
                for (UserHandle profile : profiles) {
                    if (profile == null || profile.equals(current)) {
                        continue;
                    }
                    List<LauncherActivityInfo> activities = launcherApps.getActivityList(packageName, profile);
                    if (activities != null && !activities.isEmpty()) {
                        return true;
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static void setProfileAppEnabled(Context context, ProfileAppEntry entry, boolean enabled) {
        if (context == null || entry == null) {
            return;
        }
        try {
            context.getSharedPreferences(PROFILE_APPS_PREFS, Context.MODE_PRIVATE).edit()
                    .putBoolean(profileAppPreferenceKey(entry), !enabled).commit();
        } catch (Throwable ignored) {
        }
        logOperation(context, "PROFILE_SWITCH", "enabled=" + enabled
                + ", package=" + entry.packageName + ", component=" + entry.componentName
                + ", userId=" + entry.userId + ", serial=" + entry.profileSerial);
        removeLegacyProfileShortcutRows(context, entry);
        try {
            ArrayList params = new ArrayList();
            params.add(entry.packageName);
            params.add(Integer.valueOf(entry.userId));
            if (enabled) {
                postDatabaseUserPackageAdded(params);
                logOperation(context, "PROFILE_NATIVE_ITEM", "add package=" + entry.packageName
                        + ", userId=" + entry.userId);
            } else {
                postDatabaseUserPackageRemoved(params);
                logOperation(context, "PROFILE_NATIVE_ITEM", "remove package=" + entry.packageName
                        + ", userId=" + entry.userId);
            }
        } catch (Throwable t) {
            logOperation(context, "PROFILE_NATIVE_ITEM", "failed package=" + entry.packageName
                    + ", userId=" + entry.userId + ", error=" + shortError(t));
        }
        requestLauncherFrameFromContext(context);
    }

    private static void updateProfileShortcut(Context context, ProfileAppEntry entry,
                                              boolean enabled) {
        if (context == null || entry == null || entry.componentName == null
                || entry.profileSerial < 0L || entry.userId <= 0) {
            return;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            final Context app = context.getApplicationContext() == null
                    ? context : context.getApplicationContext();
            final ProfileAppEntry queuedEntry = entry;
            final boolean queuedEnabled = enabled;
            logOperation(context, "PROFILE_SHORTCUT", "queued_on_main package=" + entry.packageName
                    + ", enabled=" + enabled);
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                public void run() {
                    updateProfileShortcut(app, queuedEntry, queuedEnabled);
                }
            });
            return;
        }
        try {
            Uri data = new Uri.Builder()
                    .scheme("content")
                    .encodedAuthority("com.smartisanos.launcher.data.SearchProvider")
                    .appendEncodedPath(entry.packageName)
                    .appendEncodedPath(entry.componentName.getClassName())
                    .appendEncodedPath(String.valueOf(entry.profileSerial))
                    .build();
            Intent target = new Intent();
            target.setClassName(context.getPackageName(),
                    "com.smartisanos.launcher.StartActivityForSearch");
            target.setData(data);

            Intent shortcut = new Intent(enabled
                    ? "com.android.launcher.action.INSTALL_SHORTCUT"
                    : "com.android.launcher.action.UNINSTALL_SHORTCUT");
            shortcut.setPackage(context.getPackageName());
            shortcut.putExtra(Intent.EXTRA_SHORTCUT_INTENT, target);
            shortcut.putExtra(Intent.EXTRA_SHORTCUT_NAME, entry.label);
            shortcut.putExtra("duplicate", false);
            shortcut.putExtra("maintained_profile_package", entry.packageName);
            shortcut.putExtra("maintained_profile_component",
                    entry.componentName.getClassName() + "#profileSerial=" + entry.profileSerial);
            shortcut.putExtra("maintained_profile_shortcut_id", "profile:"
                    + entry.profileSerial + ":" + entry.componentName.flattenToString());
            if (enabled && entry.icon != null) {
                Bitmap icon = drawableToBitmapForBadge(entry.icon);
                Bitmap badged = icon == null ? null : drawDoppelgangerBadge(icon);
                if (badged != null) {
                    shortcut.putExtra(Intent.EXTRA_SHORTCUT_ICON, badged);
                }
            }
            String handlerName = enabled ? "a" : "b";
            boolean handledDirectly = false;
            try {
                Class<?> handler = Class.forName("com.smartisanos.launcher.a.L");
                if (enabled) {
                    removeLegacyProfileShortcutRows(context, entry);
                }
                Method method = handler.getDeclaredMethod(handlerName, Context.class, Intent.class);
                method.setAccessible(true);
                method.invoke(null, context, shortcut);
                handledDirectly = true;
            } catch (Throwable directError) {
                logOperation(context, "PROFILE_SHORTCUT", "direct_failed enabled=" + enabled
                        + ", package=" + entry.packageName + ", error=" + shortError(directError));
            }
            if (!handledDirectly) {
                context.sendBroadcast(shortcut);
            }
            logOperation(context, "PROFILE_SHORTCUT", "enabled=" + enabled
                    + ", package=" + entry.packageName + ", component=" + entry.componentName
                    + ", userId=" + entry.userId + ", serial=" + entry.profileSerial
                    + ", direct=" + handledDirectly + ", uri=" + data);
        } catch (Throwable t) {
            Log.w(LOG_TAG, "Unable to update profile shortcut", t);
            logOperation(context, "PROFILE_SHORTCUT", "failed enabled=" + enabled
                    + ", package=" + entry.packageName + ", error=" + shortError(t));
        }
    }

    private static void removeLegacyProfileShortcutRows(Context context, ProfileAppEntry entry) {
        if (context == null || entry == null) {
            return;
        }
        String[] packages = new String[]{entry.packageName, context.getPackageName()};
        int[] users = new int[]{-1, 0, entry.userId};
        for (String pkg : packages) {
            for (int userId : users) {
                try {
                    ArrayList params = new ArrayList();
                    params.add(pkg);
                    params.add(Integer.valueOf(userId));
                    params.add(new ArrayList());
                    postDatabaseUserPackageEvent("EVENT_UNINSTALL_SHORTCUT", params);
                    logOperation(context, "PROFILE_CLEANUP", "package=" + pkg
                            + ", userId=" + userId);
                } catch (Throwable t) {
                    logOperation(context, "PROFILE_CLEANUP", "failed package=" + pkg
                            + ", userId=" + userId + ", error=" + shortError(t));
                }
            }
        }
    }

    private static List<ProfileAppEntry> discoverProfileApps(Context context, boolean includeDisabled) {
        ArrayList<ProfileAppEntry> result = new ArrayList<ProfileAppEntry>();
        if (context == null || Build.VERSION.SDK_INT < 21) {
            return result;
        }
        try {
            LauncherApps launcherApps =
                    (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
            if (launcherApps == null) {
                return result;
            }
            List<UserHandle> profiles = launcherApps.getProfiles();
            logOperation(context, "PROFILE_DISCOVERY", "profiles="
                    + (profiles == null ? "null" : String.valueOf(profiles.size()))
                    + ", includeDisabled=" + includeDisabled);
            if (profiles == null || profiles.size() <= 1) {
                return result;
            }
            UserHandle current = Process.myUserHandle();
            HashMap<String, Boolean> seen = new HashMap<String, Boolean>();
            for (UserHandle profile : profiles) {
                if (profile == null || profile.equals(current)) {
                    continue;
                }
                int userId = userIdentifier(profile);
                long serial = profileSerial(context, profile);
                logOperation(context, "PROFILE_DISCOVERY", "profile userId=" + userId
                        + ", serial=" + serial + ", handle=" + profile);
                if (userId < 0 || serial < 0L) {
                    continue;
                }
                List<LauncherActivityInfo> activities;
                try {
                    activities = launcherApps.getActivityList(null, profile);
                } catch (Throwable ignored) {
                    logOperation(context, "PROFILE_DISCOVERY", "activity_list_failed userId=" + userId
                            + ", error=" + shortError(ignored));
                    continue;
                }
                logOperation(context, "PROFILE_DISCOVERY", "activity_count userId=" + userId
                        + ", count=" + (activities == null ? "null" : String.valueOf(activities.size())));
                if (activities == null) {
                    continue;
                }
                for (LauncherActivityInfo info : activities) {
                    if (info == null || info.getComponentName() == null) {
                        continue;
                    }
                    ComponentName component = info.getComponentName();
                    String key = serial + "\t" + component.flattenToString();
                    if (seen.containsKey(key)) {
                        continue;
                    }
                    CharSequence labelValue = null;
                    Drawable icon = null;
                    // ColorOS returns an already badged and framed drawable for MultiApp.
                    // Always prefer the ordinary user-0 app/activity artwork, then add only
                    // the Smartisan mask badge ourselves.
                    icon = loadMainProfileLauncherIcon(context, component.getPackageName());
                    try {
                        labelValue = info.getLabel();
                    } catch (Throwable ignored) {
                    }
                    if (icon == null) {
                        try {
                            icon = info.getIcon(0);
                        } catch (Throwable ignored) {
                            try {
                                icon = info.getBadgedIcon(0);
                            } catch (Throwable ignored2) {
                            }
                        }
                    }
                    ProfileAppEntry entry = new ProfileAppEntry(
                            labelValue == null ? component.getPackageName() : labelValue.toString(),
                            component, profile, userId, serial, icon);
                    if (includeDisabled || isProfileAppEnabled(context, entry)) {
                        result.add(entry);
                        seen.put(key, Boolean.TRUE);
                        logOperation(context, "PROFILE_APP", "package=" + entry.packageName
                                + ", component=" + component + ", userId=" + userId
                                + ", serial=" + serial + ", enabled="
                                + isProfileAppEnabled(context, entry));
                    }
                }
            }
        } catch (Throwable ignored) {
            logOperation(context, "PROFILE_DISCOVERY", "failed " + shortError(ignored));
        }
        Collections.sort(result, new Comparator<ProfileAppEntry>() {
            public int compare(ProfileAppEntry a, ProfileAppEntry b) {
                int label = a.label.compareToIgnoreCase(b.label);
                if (label != 0) {
                    return label;
                }
                return a.profileSerial < b.profileSerial ? -1
                        : (a.profileSerial == b.profileSerial ? 0 : 1);
            }
        });
        return result;
    }

    private static Drawable loadMainProfileLauncherIcon(Context context, String packageName) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return null;
        }
        try {
            PackageManager pm = context.getPackageManager();
            Intent query = new Intent(Intent.ACTION_MAIN);
            query.addCategory(Intent.CATEGORY_LAUNCHER);
            query.setPackage(packageName);
            List<ResolveInfo> matches = pm.queryIntentActivities(query, 0);
            if (matches != null) {
                for (ResolveInfo info : matches) {
                    if (info != null && info.activityInfo != null
                            && packageName.equals(info.activityInfo.packageName)) {
                        Drawable icon = loadIcon(info, pm);
                        if (icon != null) {
                            return icon;
                        }
                    }
                }
            }
            return pm.getApplicationIcon(packageName);
        } catch (Throwable ignored) {
            return null;
        }
    }

    /** Fast guard for the original fixed-user doppelganger package event path. */
    public static boolean hasSecondaryLauncherProfile(Context context) {
        if (context == null || Build.VERSION.SDK_INT < 21) {
            return false;
        }
        // No enabled record means the user has never switched on a cloned app.
        // Check this cheap local preference before asking LauncherApps for profiles.
        if (!hasEnabledProfileApps(context)) {
            return false;
        }
        try {
            LauncherApps launcherApps =
                    (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
            List<UserHandle> profiles = launcherApps == null ? null : launcherApps.getProfiles();
            if (profiles == null || profiles.size() <= 1) {
                return false;
            }
            UserHandle current = Process.myUserHandle();
            for (UserHandle profile : profiles) {
                if (profile != null && !profile.equals(current)) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static boolean shouldVerifySearchLaunch(Context context, SearchEntry entry) {
        if (context == null || entry == null || !hasLauncherPagePassword(context)) {
            return false;
        }
        return isSearchEntryOnLockedPage(entry);
    }

    private static boolean isSearchEntryOnLockedPage(SearchEntry entry) {
        if (entry == null || TextUtils.isEmpty(entry.packageName)) {
            return false;
        }
        try {
            Class<?> ebClass = Class.forName("com.smartisanos.launcher.view.Eb");
            Object mainView = ebClass.getMethod("getInstance").invoke(null);
            if (mainView == null) {
                return false;
            }
            Object pageContainer = ebClass.getMethod("Ih").invoke(mainView);
            if (pageContainer == null) {
                return false;
            }
            Object value = pageContainer.getClass().getMethod("Ua", String.class)
                    .invoke(pageContainer, entry.packageName);
            if (!(value instanceof java.util.Collection)) {
                return false;
            }
            for (Object cell : (java.util.Collection<?>) value) {
                if (cell == null) {
                    continue;
                }
                try {
                    Object itemInfo = cell.getClass().getMethod("Rl").invoke(cell);
                    if (itemInfo != null) {
                        try {
                            int cellUserId = itemInfo.getClass().getField("userId").getInt(itemInfo);
                            if (cellUserId != entry.userId) {
                                continue;
                            }
                        } catch (Throwable ignored) {
                        }
                    }
                    Object page = cell.getClass().getMethod("Af").invoke(cell);
                    if (page == null) {
                        continue;
                    }
                    Object locked = page.getClass().getMethod("On").invoke(page);
                    if (locked instanceof Boolean && ((Boolean) locked).booleanValue()) {
                        return true;
                    }
                } catch (Throwable ignored) {
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static void openLauncherPasswordForSearchTarget(Activity activity, SearchEntry entry) {
        Intent intent = new Intent();
        intent.setClassName(activity.getPackageName(), "com.smartisanos.launcher.ConfirmPasswordActivity");
        intent.putExtra("FROM_LAUNCHER", true);
        intent.putExtra(EXTRA_PASSWORD_TARGET_PACKAGE, entry.packageName);
        intent.putExtra(EXTRA_PASSWORD_TARGET_CLASS, entry.className);
        intent.putExtra(EXTRA_PASSWORD_TARGET_USER, entry.userId);
        intent.putExtra(EXTRA_PASSWORD_TARGET_SERIAL, entry.profileSerial);
        int flags = Intent.FLAG_ACTIVITY_NO_ANIMATION;
        if (isDoppelgangerUserId(entry.userId)) {
            flags |= Intent.FLAG_ACTIVITY_NEW_TASK;
        }
        intent.setFlags(flags);
        activity.startActivity(intent);
        activity.overridePendingTransition(0, 0);
    }

    private static Integer findLauncherPageForPackage(Context context, String packageName,
            String className, int userId) {
        if (TextUtils.isEmpty(packageName)) {
            return null;
        }
        Cursor cursor = null;
        try {
            Uri uri = Uri.parse("content://com.smartisanos.launcher.settings/favorites");
            String selection = "packageName=? AND pageIndex>=0";
            String[] args = new String[]{packageName};
            cursor = context.getContentResolver().query(uri,
                    new String[]{"pageIndex", "componentName", "user"}, selection, args, null);
            if (cursor == null) {
                return null;
            }
            int pageCol = cursor.getColumnIndex("pageIndex");
            int componentCol = cursor.getColumnIndex("componentName");
            int userCol = cursor.getColumnIndex("user");
            while (cursor.moveToNext()) {
                int rowUser = userCol >= 0 ? cursor.getInt(userCol) : 0;
                if (rowUser != userId && !(rowUser == 0 && userId == 0)) {
                    continue;
                }
                String component = componentCol >= 0 ? cursor.getString(componentCol) : "";
                if (!TextUtils.isEmpty(className) && !TextUtils.isEmpty(component)
                        && component.indexOf(className) < 0) {
                    continue;
                }
                if (pageCol >= 0) {
                    return Integer.valueOf(cursor.getInt(pageCol));
                }
            }
        } catch (Throwable ignored) {
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
        return null;
    }

    private static boolean isLauncherPageLocked(int pageIndex) {
        try {
            Class<?> ebClass = Class.forName("com.smartisanos.launcher.view.Eb");
            Object mainView = ebClass.getMethod("getInstance").invoke(null);
            if (mainView == null) {
                return false;
            }
            Object pageContainer = ebClass.getMethod("Ih").invoke(mainView);
            if (pageContainer == null) {
                return false;
            }
            Object page = null;
            for (String methodName : new String[]{"Db", "getPage", "Eb"}) {
                try {
                    page = pageContainer.getClass().getMethod(methodName, Integer.TYPE)
                            .invoke(pageContainer, Integer.valueOf(pageIndex));
                    if (page != null) {
                        break;
                    }
                } catch (Throwable ignored) {
                }
            }
            if (page == null) {
                return false;
            }
            for (String methodName : new String[]{"isLocked", "isLock", "Fp", "Gp", "Ud"}) {
                try {
                    Object value = page.getClass().getMethod(methodName).invoke(page);
                    if (value instanceof Boolean) {
                        return ((Boolean) value).booleanValue();
                    }
                } catch (Throwable ignored) {
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static void showSettingsPagePasswordVerify(final Activity activity, final Runnable onVerified) {
        showSettingsPasswordPad(activity, "验证隐私密码", "输入密码", new PasswordPadCallback() {
            @Override
            public void onComplete(String value, Runnable reset) {
                String saved = activity.getSharedPreferences("launcher_page_lock", Context.MODE_PRIVATE)
                        .getString("password_hash", "");
                if (!saved.equals(launcherPagePasswordHash(value))) {
                    Toast.makeText(activity, "密码错误", Toast.LENGTH_SHORT).show();
                    reset.run();
                    return;
                }
                if (onVerified != null) {
                    onVerified.run();
                }
            }
        }, true, false);
    }

    private static void showSettingsPagePasswordSet(final Activity activity, boolean changing) {
        showSettingsPagePasswordSet(activity, changing, null);
    }

    private static void showSettingsPagePasswordSet(final Activity activity, boolean changing, final Runnable onSaved) {
        final String title = changing ? "修改隐私密码" : "设置隐私密码";
        final String[] first = new String[1];
        showSettingsPasswordPad(activity, title, "输入新密码", new PasswordPadCallback() {
            @Override
            public void onComplete(String value, Runnable reset) {
                first[0] = value;
                showSettingsPasswordPad(activity, title, "再次输入密码", new PasswordPadCallback() {
                    @Override
                    public void onComplete(String value, Runnable reset) {
                        if (!value.equals(first[0])) {
                            Toast.makeText(activity, "两次输入的密码不一致", Toast.LENGTH_SHORT).show();
                            reset.run();
                            return;
                        }
                        activity.getSharedPreferences("launcher_page_lock", Context.MODE_PRIVATE)
                                .edit().putString("password_hash", launcherPagePasswordHash(value)).commit();
                        Toast.makeText(activity, "隐私密码已保存", Toast.LENGTH_SHORT).show();
                        if (onSaved != null) {
                            onSaved.run();
                        } else {
                            showPrivacyPasswordPage(activity);
                        }
                    }
                }, false, changing);
            }
        }, true, changing);
    }

    private static void showProfileAppsPage(final Activity activity) {
        try {
            tuneWindow(activity);
            final SettingsResourceContext context = createSettingsContext(activity);
            final Resources resources = context.getResources();
            LinearLayout root = new LinearLayout(context);
            root.setOrientation(LinearLayout.VERTICAL);
            setBackground(root, resources, "background");

            View title = inflate(activity, context, "title_layout");
            bindTitleBar(activity, resources, title, "应用分身", "PROFILE_APPS", backToMainAction(activity));
            root.addView(title, new LinearLayout.LayoutParams(-1, -2));

            ScrollView scroll = new ScrollView(context);
            final LinearLayout content = new LinearLayout(context);
            content.setOrientation(LinearLayout.VERTICAL);
            content.setPadding(0, settingDimen(resources, "settings_section_content_top", dp(context, 18)), 0, dp(context, 28));
            content.addView(privacySectionLabel(context, "系统可用的分身应用"));
            final TextView status = new TextView(context);
            status.setText("正在读取分身应用…");
            status.setTextColor(0xff8b8b8b);
            status.setTextSize(16);
            status.setGravity(Gravity.CENTER);
            content.addView(status, new LinearLayout.LayoutParams(-1, dp(context, 96)));
            scroll.addView(content, new ScrollView.LayoutParams(-1, -2));
            root.addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1f));
            setSettingsContentView(activity, context, resources, root, true);

            final Context app = activity.getApplicationContext() == null
                    ? activity : activity.getApplicationContext();
            new Thread(new Runnable() {
                public void run() {
                    final List<ProfileAppEntry> entries = discoverProfileApps(app, true);
                    activity.runOnUiThread(new Runnable() {
                        public void run() {
                            if (activity.isFinishing()) {
                                return;
                            }
                            content.removeView(status);
                            if (entries.isEmpty()) {
                                TextView empty = new TextView(context);
                                empty.setText("未发现分身应用，或当前系统不支持读取分身应用");
                                empty.setTextColor(0xff8b8b8b);
                                empty.setTextSize(16);
                                empty.setGravity(Gravity.CENTER);
                                empty.setPadding(dp(context, 28), 0, dp(context, 28), 0);
                                content.addView(empty, new LinearLayout.LayoutParams(-1, dp(context, 110)));
                                return;
                            }
                            for (int i = 0; i < entries.size(); i++) {
                                final ProfileAppEntry entry = entries.get(i);
                                final SettingItemSwitch item = new SettingItemSwitch(context);
                                String title = entry.label;
                                if (TextUtils.isEmpty(title)) {
                                    title = entry.packageName;
                                }
                                item.setTitle(title + "分身");
                                item.setChecked(isProfileAppEnabled(app, entry));
                                setBackground(item, resources, "selector_setting_sub_item_bg_single");
                                View.OnClickListener click = new View.OnClickListener() {
                                    public void onClick(View v) {
                                        boolean enabled = !item.isChecked();
                                        item.setCheckedAnimated(enabled);
                                        setProfileAppEnabled(app, entry, enabled);
                                    }
                                };
                                bindSwitchControlOnly(item, click);
                                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
                                // The first card follows the shared section header directly. Only
                                // subsequent profile-app cards keep the normal inter-card spacing.
                                if (i > 0) {
                                    lp.topMargin = settingDimen(resources, "settings_item_top_bottom_margin",
                                            dp(context, 20));
                                }
                                content.addView(item, lp);
                            }
                        }
                    });
                }
            }, "ProfileAppsSettings").start();
        } catch (Throwable t) {
            t.printStackTrace();
            Toast.makeText(activity, "应用分身页面加载失败", Toast.LENGTH_SHORT).show();
            show(activity, sMainSettingsScrollY);
        }
    }

    private static void showPrivacyPasswordPage(final Activity activity) {
        showPrivacyPasswordPage(activity, true);
    }

    private static void showPrivacyPasswordPage(final Activity activity, boolean forward) {
        try {
            tuneWindow(activity);
            final SettingsResourceContext context = createSettingsContext(activity);
            final Resources resources = context.getResources();

            LinearLayout root = new LinearLayout(context);
            root.setOrientation(LinearLayout.VERTICAL);
            setBackground(root, resources, "background");

            View title = inflate(activity, context, "title_layout");
            bindTitleBar(activity, resources, title, "隐私密码", "PRIVACY_SETTINGS", backToMainAction(activity));
            root.addView(title, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

            LinearLayout content = new LinearLayout(context);
            content.setOrientation(LinearLayout.VERTICAL);
            content.setPadding(0, settingDimen(resources, "settings_section_content_top", dp(activity, 18)), 0, dp(activity, 14));
            root.addView(content, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

            content.addView(privacySectionLabel(context, "隐私密码相关设置"));
            LinearLayout settingsCard = privacyCard(context);
            settingsCard.addView(privacyRow(activity, context, resources, "修改密码", "selector_setting_sub_item_bg_single",
                    new View.OnClickListener() {
                        public void onClick(View v) {
                            showSettingsPagePasswordSet(activity, true);
                        }
                    }), new LinearLayout.LayoutParams(-1, dp(activity, 72)));
            content.addView(settingsCard, cardLayoutParams(activity));

            Space fill = new Space(activity);
            content.addView(fill, new LinearLayout.LayoutParams(1, 0, 1f));

            TextView close = new TextView(context);
            close.setText("关闭密码");
            close.setTextColor(Color.WHITE);
            close.setTextSize(21);
            close.setGravity(Gravity.CENTER);
            close.setTypeface(Typeface.DEFAULT_BOLD);
            close.setBackgroundDrawable(roundedDrawable(0xffef5a57, 0xffdc4a47, dp(activity, 8)));
            close.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    activity.getSharedPreferences("launcher_page_lock", Context.MODE_PRIVATE)
                            .edit().remove("password_hash").commit();
                    Toast.makeText(activity, "隐私密码已关闭", Toast.LENGTH_SHORT).show();
                    show(activity, sMainSettingsScrollY);
                }
            });
            LinearLayout.LayoutParams closeLp = new LinearLayout.LayoutParams(-1, dp(activity, 64));
            closeLp.leftMargin = dp(activity, 12);
            closeLp.rightMargin = dp(activity, 12);
            content.addView(close, closeLp);

            setSettingsContentView(activity, context, resources, root, forward);
        } catch (Throwable t) {
            t.printStackTrace();
            Toast.makeText(activity, "隐私密码页面加载失败", Toast.LENGTH_SHORT).show();
            show(activity, sMainSettingsScrollY);
        }
    }

    private static void showDesktopBlockLockInfoPage(final Activity activity) {
        try {
            tuneWindow(activity);
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            LinearLayout root = new LinearLayout(context);
            root.setOrientation(LinearLayout.VERTICAL);
            setBackground(root, resources, "background");
            View title = inflate(activity, context, "title_layout");
            bindTitleBar(activity, resources, title, "桌面板块锁", "BLOCK_LOCK_INFO", new Runnable() {
                public void run() { showPrivacyPasswordPage(activity, false); }
            });
            root.addView(title, new LinearLayout.LayoutParams(-1, -2));
            LinearLayout content = new LinearLayout(context);
            content.setOrientation(LinearLayout.VERTICAL);
            content.setPadding(dp(activity, 28), dp(activity, 36), dp(activity, 28), 0);
            root.addView(content, new LinearLayout.LayoutParams(-1, -1));

            TextView card = new TextView(context);
            card.setText("桌面板块锁");
            card.setTextColor(0xff333333);
            card.setTextSize(22);
            card.setGravity(Gravity.LEFT | Gravity.TOP);
            card.setPadding(dp(activity, 40), dp(activity, 32), dp(activity, 40), 0);
            card.setBackgroundDrawable(roundedDrawable(Color.WHITE, 0xffe2e2e2, dp(activity, 8)));
            content.addView(card, new LinearLayout.LayoutParams(-1, dp(activity, 300)));

            TextView desc = new TextView(context);
            desc.setText("桌面底部由右向左滑动，进入板块编辑模式，可对一个或多个桌面进行加密和解锁");
            desc.setTextColor(0xff888888);
            desc.setTextSize(18);
            desc.setLineSpacing(0, 1.15f);
            LinearLayout.LayoutParams descLp = new LinearLayout.LayoutParams(-1, -2);
            descLp.leftMargin = dp(activity, 48);
            descLp.rightMargin = dp(activity, 48);
            descLp.topMargin = dp(activity, 24);
            content.addView(desc, descLp);
            setSettingsContentView(activity, context, resources, root, true);
        } catch (Throwable t) {
            showPrivacyPasswordPage(activity, false);
        }
    }

    private static void bindTitleBar(final Activity activity, Resources resources, View root,
            String titleText, String page, Runnable backAction) {
        registerSettingsBackActionPublic(activity, page, backAction);
        TextView btnBack = (TextView) find(resources, root, "btn_back");
        if (btnBack != null) {
            btnBack.setOnClickListener(settingsTitleBackClick(activity, page));
        }
        TextView tvTitle = (TextView) find(resources, root, "tv_title");
        if (tvTitle != null) {
            tvTitle.setText(titleText);
            RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.addRule(RelativeLayout.CENTER_VERTICAL);
            tvTitle.setLayoutParams(lp);
            tvTitle.setGravity(Gravity.CENTER);
        }
        if (btnBack != null) {
            btnBack.bringToFront();
        }
    }

    private static TextView privacySectionLabel(Context context, String text) {
        return settingsSectionHeader(context, context.getResources(), text);
    }

    /** Route a dynamic-icon mode change through the original per-package update pipeline. */
    private static void refreshDynamicIconMode(final Context context, final boolean enabled) {
        final Context app = context.getApplicationContext() == null
                ? context : context.getApplicationContext();
        applyDynamicIconChange(app);
    }

    private static void applyUnlockAnimationEnabled(boolean enabled) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            constants.getField("ENABLE_UNLOCK_ANIMATION").setBoolean(null, enabled);
        } catch (Throwable ignored) {
        }
    }

    private static LinearLayout privacyCard(Context context) {
        LinearLayout card = new LinearLayout(context);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setClipToPadding(false);
        return card;
    }

    private static LinearLayout.LayoutParams cardLayoutParams(Context context) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
        lp.bottomMargin = dp(context, 28);
        return lp;
    }

    private static int settingDimen(Resources resources, String name, int fallback) {
        try {
            int id = resources.getIdentifier(name, "dimen", SETTINGS_PKG);
            if (id != 0) {
                return resources.getDimensionPixelSize(id);
            }
        } catch (Throwable ignored) {
        }
        return fallback;
    }

    private static View privacyRow(Activity activity, Context context, Resources resources, String text,
            String bgName, View.OnClickListener listener) {
        RelativeLayout row = new RelativeLayout(context);
        row.setClickable(true);
        row.setOnClickListener(listener);
        setBackground(row, resources, bgName);

        TextView title = new TextView(context);
        title.setText(text);
        title.setTextColor(0xff333333);
        title.setTextSize(22);
        title.setGravity(Gravity.CENTER_VERTICAL);
        title.setSingleLine(true);
        RelativeLayout.LayoutParams titleLp = new RelativeLayout.LayoutParams(-2, -1);
        titleLp.leftMargin = settingDimen(resources, "setting_item_text_left", dp(activity, 30));
        titleLp.rightMargin = dp(activity, 72);
        titleLp.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
        row.addView(title, titleLp);

        ImageView arrow = new ImageView(context);
        int arrowId = resources.getIdentifier("setting_next", "drawable", SETTINGS_PKG);
        if (arrowId != 0) {
            arrow.setImageDrawable(resources.getDrawable(arrowId));
        }
        arrow.setScaleType(ImageView.ScaleType.CENTER);
        RelativeLayout.LayoutParams arrowLp = new RelativeLayout.LayoutParams(dp(activity, 42), -1);
        arrowLp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
        arrowLp.rightMargin = dp(activity, 14);
        row.addView(arrow, arrowLp);
        return row;
    }

    private static boolean isValidPagePassword(String value) {
        if (value == null || value.length() != 6) {
            return false;
        }
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            if (c < '0' || c > '9') {
                return false;
            }
        }
        return true;
    }

    private static void showLauncherPagePasswordDialog(final Activity activity,
            final Object launcher, final int requestCode) {
        final boolean settingPassword = requestCode == 20;
        final LinearLayout content = new LinearLayout(activity);
        content.setOrientation(LinearLayout.VERTICAL);
        int padding = dp(activity, 24);
        content.setPadding(padding, dp(activity, 8), padding, 0);

        final EditText password = new EditText(activity);
        password.setHint(settingPassword ? "请输入6位页面密码" : "请输入页面密码");
        password.setSingleLine(true);
        password.setInputType(android.text.InputType.TYPE_CLASS_NUMBER
                | android.text.InputType.TYPE_NUMBER_VARIATION_PASSWORD);
        content.addView(password, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        final EditText confirmation;
        if (settingPassword) {
            confirmation = new EditText(activity);
            confirmation.setHint("请再次输入页面密码");
            confirmation.setSingleLine(true);
            confirmation.setInputType(android.text.InputType.TYPE_CLASS_NUMBER
                    | android.text.InputType.TYPE_NUMBER_VARIATION_PASSWORD);
            content.addView(confirmation, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        } else {
            confirmation = null;
        }

        final AlertDialog dialog = new AlertDialog.Builder(activity)
                .setTitle(settingPassword ? "设置页面密码" : "解锁页面")
                .setView(content)
                .setNegativeButton("取消", null)
                .setPositiveButton(settingPassword ? "确定" : "解锁", null)
                .create();
        dialog.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {
            @Override
            public void onCancel(android.content.DialogInterface ignored) {
                finishLauncherPasswordVerification();
            }
        });
        dialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(android.content.DialogInterface ignored) {
                finishLauncherPasswordVerification();
            }
        });
        dialog.setOnShowListener(new android.content.DialogInterface.OnShowListener() {
            @Override
            public void onShow(android.content.DialogInterface ignored) {
            dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View ignored) {
                String value = password.getText().toString();
                if (!isValidPagePassword(value)) {
                    password.setError("密码需为6位数字");
                    return;
                }
                if (settingPassword) {
                    if (confirmation == null || !value.equals(confirmation.getText().toString())) {
                        if (confirmation != null) confirmation.setError("两次输入的密码不一致");
                        return;
                    }
                    activity.getSharedPreferences("launcher_page_lock", Context.MODE_PRIVATE)
                            .edit().putString("password_hash", launcherPagePasswordHash(value)).commit();
                } else {
                    String saved = activity.getSharedPreferences("launcher_page_lock", Context.MODE_PRIVATE)
                            .getString("password_hash", "");
                    if (!saved.equals(launcherPagePasswordHash(value))) {
                        password.setError("密码错误");
                        password.setText("");
                        return;
                    }
                }
                dispatchLauncherPasswordResult(launcher, requestCode, Activity.RESULT_OK);
                dialog.dismiss();
                }
            });
            password.requestFocus();
            dialog.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE);
            }
        });
        dialog.show();
    }

    private static String launcherPagePasswordHash(String value) {
        try {
            java.security.MessageDigest digest = java.security.MessageDigest.getInstance("SHA-256");
            byte[] bytes = digest.digest(("smartisan-launcher-page:" + value)
                    .getBytes(java.nio.charset.Charset.forName("UTF-8")));
            StringBuilder out = new StringBuilder(bytes.length * 2);
            for (byte item : bytes) out.append(String.format(java.util.Locale.US, "%02x", item & 0xff));
            return out.toString();
        } catch (Throwable ignored) {
            return String.valueOf(value.hashCode());
        }
    }

    private static void dispatchLauncherPasswordResult(Object launcher, int requestCode, int resultCode) {
        try {
            launcher.getClass().getMethod("onActivityResult", Integer.TYPE, Integer.TYPE, Intent.class)
                    .invoke(launcher, Integer.valueOf(requestCode), Integer.valueOf(resultCode), new Intent());
        } catch (Throwable t) {
            t.printStackTrace();
        }
    }

    private static void finishLauncherPasswordVerification() {
        try {
            Class<?> mainViewClass = Class.forName("com.smartisanos.launcher.view.Eb");
            Object mainView = mainViewClass.getMethod("getInstance").invoke(null);
            if (mainView != null) mainViewClass.getMethod("ca", Boolean.TYPE).invoke(mainView, Boolean.FALSE);
        } catch (Throwable ignored) {
        }
    }

    private interface PasswordPadCallback {
        void onComplete(String value, Runnable reset);
    }

    private static void showSettingsPasswordPad(final Activity activity, String titleText,
            String promptText, final PasswordPadCallback callback) {
        showSettingsPasswordPad(activity, titleText, promptText, callback, true, false);
    }

    private static void showSettingsPasswordPad(final Activity activity, String titleText,
            String promptText, final PasswordPadCallback callback, boolean animate) {
        showSettingsPasswordPad(activity, titleText, promptText, callback, animate, false);
    }

    private static void showSettingsPasswordPad(final Activity activity, String titleText,
            String promptText, final PasswordPadCallback callback, boolean animate,
            final boolean backToPrivacyPage) {
        try {
            tuneWindow(activity);
            final SettingsResourceContext context = createSettingsContext(activity);
            final Resources resources = context.getResources();
            final StringBuilder input = new StringBuilder(6);

            LinearLayout page = new LinearLayout(context);
            page.setOrientation(LinearLayout.VERTICAL);
            setBackground(page, resources, "background");

            View title = inflate(activity, context, "title_layout");
            bindTitleBar(activity, resources, title, titleText,
                    backToPrivacyPage ? "PASSWORD_SET" : "PASSWORD_VERIFY", new Runnable() {
                public void run() {
                    if (backToPrivacyPage) {
                        showPrivacyPasswordPage(activity, false);
                    } else {
                        show(activity, sMainSettingsScrollY, true);
                    }
                }
            });
            page.addView(title, new LinearLayout.LayoutParams(-1, -2));

            LinearLayout content = new LinearLayout(context);
            content.setOrientation(LinearLayout.VERTICAL);
            content.setGravity(Gravity.CENTER_HORIZONTAL);
            content.setPadding(0, 0, 0, 0);
            page.addView(content, new LinearLayout.LayoutParams(-1, 0, 1f));

            Space top = new Space(activity);
            content.addView(top, new LinearLayout.LayoutParams(1, 0, 1.15f));

            TextView prompt = new TextView(context);
            prompt.setText(promptText);
            prompt.setTextColor(0xff9d9d9d);
            prompt.setTextSize(19);
            prompt.setGravity(Gravity.CENTER);
            content.addView(prompt, new LinearLayout.LayoutParams(-1, -2));

            final LinearLayout dots = makePasswordDotsView(activity, false);
            LinearLayout.LayoutParams dotsLp = new LinearLayout.LayoutParams(-1, dp(activity, 26));
            dotsLp.topMargin = dp(activity, 18);
            content.addView(dots, dotsLp);

            content.addView(new Space(activity), new LinearLayout.LayoutParams(1, 0, 1.85f));

            final Runnable reset = new Runnable() {
                @Override
                public void run() {
                    input.setLength(0);
                    updatePasswordDots(dots, 0, false);
                }
            };
            addPasswordKeypad(activity, page, false, false, input, dots, new PasswordPadCallback() {
                @Override
                public void onComplete(String value, Runnable ignored) {
                    if (callback != null) {
                        callback.onComplete(value, reset);
                    }
                }
            });
            setSettingsContentView(activity, context, resources, page, true, animate);
        } catch (Throwable t) {
            t.printStackTrace();
            show(activity, sMainSettingsScrollY);
        }
    }

    public static void showLauncherPasswordActivity(final Activity activity) {
        if (activity == null) {
            return;
        }
        activity.setResult(Activity.RESULT_CANCELED, new Intent());
        Window window = activity.getWindow();
        if (window != null) {
            window.setWindowAnimations(0);
            window.setBackgroundDrawable(new android.graphics.drawable.ColorDrawable(Color.BLACK));
            window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN
                    | WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.setStatusBarColor(Color.BLACK);
            window.setNavigationBarColor(Color.BLACK);
            window.getDecorView().setSystemUiVisibility(
                    View.SYSTEM_UI_FLAG_FULLSCREEN
                            | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                            | View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                            | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                            | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                            | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);
            if (Build.VERSION.SDK_INT >= 28) {
                window.getAttributes().layoutInDisplayCutoutMode =
                        WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
            }
            if (Build.VERSION.SDK_INT >= 30) {
                window.setDecorFitsSystemWindows(false);
            }
        }
        Intent source = activity.getIntent();
        if (source != null && source.getBooleanExtra(EXTRA_PASSWORD_SET_MODE, false)) {
            showLauncherPasswordSetStep(activity, null);
            return;
        }
        if (!hasLauncherPagePassword(activity)) {
            Intent target = passwordTargetIntent(activity);
            activity.setResult(Activity.RESULT_OK, new Intent());
            activity.finish();
            activity.overridePendingTransition(0, 0);
            if (target != null) {
                startPasswordTarget(activity, target);
            }
            return;
        }

        final LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER_HORIZONTAL);
        root.setBackgroundColor(Color.BLACK);

        int height = activity.getResources().getDisplayMetrics().heightPixels;
        int topPad = Math.max(dp(activity, 48), height / 10);
        root.setPadding(0, topPad, 0, 0);

        ImageView icon = new ImageView(activity);
        icon.setImageDrawable(createLauncherLockIcon(activity));
        root.addView(icon, new LinearLayout.LayoutParams(dp(activity, 76), dp(activity, 96)));

        TextView title = new TextView(activity);
        title.setText("解锁板块");
        title.setTextColor(Color.WHITE);
        title.setGravity(Gravity.CENTER);
        title.setTextSize(24);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        LinearLayout.LayoutParams titleLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        titleLp.topMargin = dp(activity, 22);
        root.addView(title, titleLp);

        final LinearLayout dots = makePasswordDotsView(activity, true);
        LinearLayout.LayoutParams dotsLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(activity, 34));
        dotsLp.topMargin = dp(activity, 18);
        root.addView(dots, dotsLp);

        Space spacer = new Space(activity);
        root.addView(spacer, new LinearLayout.LayoutParams(1, 0, 1f));

        final StringBuilder input = new StringBuilder(6);
        addPasswordKeypad(activity, root, true, true, input, dots, new PasswordPadCallback() {
            @Override
            public void onComplete(String value, Runnable reset) {
                String saved = activity.getSharedPreferences("launcher_page_lock", Context.MODE_PRIVATE)
                        .getString("password_hash", "");
                if (saved.equals(launcherPagePasswordHash(value))) {
                    final Intent target = passwordTargetIntent(activity);
                    finishPasswordPage(activity, Activity.RESULT_OK, new Runnable() {
                        @Override
                        public void run() {
                            if (target != null) {
                                startPasswordTarget(activity, target);
                            }
                        }
                    });
                } else {
                    Toast.makeText(activity, "密码错误", Toast.LENGTH_SHORT).show();
                    vibrateOriginalPasswordError(activity);
                    reset.run();
                }
            }
        });
        showPasswordPageContent(activity, root);
    }

    private static final class PasswordPageExit {
        final View root;
        Runnable afterFinish;
        boolean running;
        boolean finishCommitted;

        PasswordPageExit(View root) {
            this.root = root;
        }
    }

    private static void showPasswordPageContent(final Activity activity, final View root) {
        if (activity == null || root == null) return;
        final PasswordPageExit exit = new PasswordPageExit(root);
        synchronized (sPasswordPageExits) {
            sPasswordPageExits.put(activity, exit);
        }
        int height = activity.getResources().getDisplayMetrics().heightPixels;
        root.setTranslationY(Math.max(1, height));
        activity.setContentView(root);
        root.post(new Runnable() {
            @Override
            public void run() {
                if (activity.isFinishing() || exit.running) return;
                root.animate().translationY(0f).setDuration(300L)
                        .setInterpolator(new DecelerateInterpolator(1.35f)).start();
            }
        });
    }

    public static boolean interceptLauncherPasswordActivityFinish(final Activity activity) {
        if (activity == null) return false;
        final PasswordPageExit exit;
        synchronized (sPasswordPageExits) {
            exit = sPasswordPageExits.get(activity);
            if (exit == null) return false;
            if (exit.finishCommitted) {
                sPasswordPageExits.remove(activity);
                return false;
            }
            if (exit.running) return true;
            exit.running = true;
        }
        disablePasswordPageInput(exit.root);
        final int height = Math.max(1, activity.getResources().getDisplayMetrics().heightPixels);
        exit.root.animate().translationY(height).setDuration(300L)
                .setInterpolator(new DecelerateInterpolator(1.35f))
                .withEndAction(new Runnable() {
                    @Override
                    public void run() {
                        synchronized (sPasswordPageExits) {
                            exit.finishCommitted = true;
                        }
                        activity.finish();
                        activity.overridePendingTransition(0, 0);
                        if (exit.afterFinish != null) exit.afterFinish.run();
                    }
                }).start();
        return true;
    }

    private static void finishPasswordPage(Activity activity, int resultCode, Runnable afterFinish) {
        if (activity == null) return;
        activity.setResult(resultCode, new Intent());
        synchronized (sPasswordPageExits) {
            PasswordPageExit exit = sPasswordPageExits.get(activity);
            if (exit != null) exit.afterFinish = afterFinish;
        }
        activity.finish();
    }

    private static void disablePasswordPageInput(View view) {
        if (view == null) return;
        view.setEnabled(false);
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                disablePasswordPageInput(group.getChildAt(i));
            }
        }
    }

    private static void vibrateOriginalPasswordError(Context context) {
        if (context == null) return;
        try {
            Vibrator vibrator = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
            if (vibrator == null || !vibrator.hasVibrator()) return;
            if (Build.VERSION.SDK_INT >= 29) {
                vibrator.vibrate(VibrationEffect.createPredefined(VibrationEffect.EFFECT_CLICK));
            } else if (Build.VERSION.SDK_INT >= 26) {
                vibrator.vibrate(VibrationEffect.createOneShot(10L,
                        VibrationEffect.DEFAULT_AMPLITUDE));
            } else {
                vibrator.vibrate(10L);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void showLauncherPasswordSetStep(final Activity activity, final String firstPassword) {
        final LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER_HORIZONTAL);
        root.setBackgroundColor(Color.BLACK);

        int height = activity.getResources().getDisplayMetrics().heightPixels;
        int topPad = Math.max(dp(activity, 48), height / 10);
        root.setPadding(0, topPad, 0, 0);

        ImageView icon = new ImageView(activity);
        icon.setImageDrawable(createLauncherLockIcon(activity));
        root.addView(icon, new LinearLayout.LayoutParams(dp(activity, 76), dp(activity, 96)));

        TextView title = new TextView(activity);
        title.setText("设置页面密码");
        title.setTextColor(Color.WHITE);
        title.setGravity(Gravity.CENTER);
        title.setTextSize(24);
        title.setTypeface(Typeface.DEFAULT_BOLD);
        LinearLayout.LayoutParams titleLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        titleLp.topMargin = dp(activity, 22);
        root.addView(title, titleLp);

        TextView prompt = new TextView(activity);
        prompt.setText(firstPassword == null ? "输入密码" : "再次输入密码");
        prompt.setTextColor(0xff9d9d9d);
        prompt.setGravity(Gravity.CENTER);
        prompt.setTextSize(19);
        LinearLayout.LayoutParams promptLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        promptLp.topMargin = dp(activity, 22);
        root.addView(prompt, promptLp);

        final LinearLayout dots = makePasswordDotsView(activity, true);
        LinearLayout.LayoutParams dotsLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(activity, 34));
        dotsLp.topMargin = dp(activity, 18);
        root.addView(dots, dotsLp);

        Space spacer = new Space(activity);
        root.addView(spacer, new LinearLayout.LayoutParams(1, 0, 1f));

        final StringBuilder input = new StringBuilder(6);
        addPasswordKeypad(activity, root, true, true, input, dots, new PasswordPadCallback() {
            @Override
            public void onComplete(String value, Runnable reset) {
                if (firstPassword == null) {
                    showLauncherPasswordSetStep(activity, value);
                    return;
                }
                if (!firstPassword.equals(value)) {
                    Toast.makeText(activity, "两次输入的密码不一致", Toast.LENGTH_SHORT).show();
                    reset.run();
                    return;
                }
                activity.getSharedPreferences("launcher_page_lock", Context.MODE_PRIVATE)
                        .edit().putString("password_hash", launcherPagePasswordHash(value)).commit();
                activity.setResult(Activity.RESULT_OK, new Intent());
                activity.finish();
                activity.overridePendingTransition(0, 0);
            }
        });
        activity.setContentView(root);
    }

    private static Intent passwordTargetIntent(Activity activity) {
        try {
            Intent source = activity.getIntent();
            if (source == null) {
                return null;
            }
            String pkg = source.getStringExtra(EXTRA_PASSWORD_TARGET_PACKAGE);
            String cls = source.getStringExtra(EXTRA_PASSWORD_TARGET_CLASS);
            if (TextUtils.isEmpty(pkg) || TextUtils.isEmpty(cls)) {
                return null;
            }
            Intent target = new Intent(Intent.ACTION_MAIN);
            target.addCategory(Intent.CATEGORY_LAUNCHER);
            target.setClassName(pkg, cls);
            target.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            target.putExtra(EXTRA_PASSWORD_TARGET_USER,
                    source.getIntExtra(EXTRA_PASSWORD_TARGET_USER, 0));
            target.putExtra(EXTRA_PASSWORD_TARGET_SERIAL,
                    source.getLongExtra(EXTRA_PASSWORD_TARGET_SERIAL, -1L));
            return target;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void startPasswordTarget(Activity activity, Intent target) {
        try {
            int userId = target.getIntExtra(EXTRA_PASSWORD_TARGET_USER, 0);
            long serial = target.getLongExtra(EXTRA_PASSWORD_TARGET_SERIAL, -1L);
            target.removeExtra(EXTRA_PASSWORD_TARGET_USER);
            target.removeExtra(EXTRA_PASSWORD_TARGET_SERIAL);
            UserHandle profile = userHandleForSerial(activity, serial);
            if (profile != null && target.getComponent() != null) {
                LauncherApps launcherApps =
                        (LauncherApps) activity.getSystemService(Context.LAUNCHER_APPS_SERVICE);
                if (launcherApps == null) {
                    throw new IllegalStateException("LauncherApps unavailable");
                }
                launcherApps.startMainActivity(target.getComponent(), profile, null, null);
            } else if (isDoppelgangerUserId(userId)) {
                startActivityForUser(activity, target, null, userId);
            } else {
                activity.startActivity(target);
            }
        } catch (Throwable t) {
            Toast.makeText(activity, "无法启动应用", Toast.LENGTH_SHORT).show();
        }
    }

    private static void addPasswordKeypad(final Activity activity, LinearLayout parent, final boolean dark,
            boolean includeCancel, final StringBuilder input, final LinearLayout dots,
            final PasswordPadCallback callback) {
        int height = activity.getResources().getDisplayMetrics().heightPixels;
        int keyHeight = Math.max(dp(activity, dark ? 78 : 72),
                Math.min(dp(activity, dark ? 104 : 98), height / (dark ? 10 : 11)));
        LinearLayout keypad = new LinearLayout(activity);
        keypad.setOrientation(LinearLayout.VERTICAL);
        keypad.setBackgroundColor(dark ? Color.rgb(8, 8, 8) : 0xffe9e9e9);
        String[] keys = includeCancel
                ? new String[]{"1", "2\nABC", "3\nDEF", "4\nGHI", "5\nJKL", "6\nMNO",
                "7\nPQRS", "8\nTUV", "9\nWXYZ", "取消", "0", "⌫"}
                : new String[]{"1", "2\nABC", "3\nDEF", "4\nGHI", "5\nJKL", "6\nMNO",
                "7\nPQRS", "8\nTUV", "9\nWXYZ", "", "0", "⌫"};
        final Runnable reset = new Runnable() {
            @Override
            public void run() {
                input.setLength(0);
                updatePasswordDots(dots, 0, dark);
            }
        };
        for (int rowIndex = 0; rowIndex < 4; rowIndex++) {
            LinearLayout row = new LinearLayout(activity);
            row.setOrientation(LinearLayout.HORIZONTAL);
            keypad.addView(row, new LinearLayout.LayoutParams(-1, keyHeight));
            for (int colIndex = 0; colIndex < 3; colIndex++) {
                final String key = keys[rowIndex * 3 + colIndex];
                TextView cell = new TextView(activity);
                cell.setGravity(Gravity.CENTER);
                Drawable keyDrawable = launcherKeyboardDrawable(activity, key, dark);
                if (keyDrawable != null) {
                    cell.setText("");
                    cell.setBackgroundDrawable(keyDrawable);
                } else {
                    cell.setText(keyLabel(key));
                    cell.setBackgroundDrawable(keyBackground(dark));
                }
                cell.setTextColor(dark ? Color.WHITE : 0xff666666);
                cell.setTextSize(key.indexOf('\n') >= 0 ? 18 : ("取消".equals(key) ? 20 : 31));
                cell.setIncludeFontPadding(false);
                cell.setTypeface(Typeface.create("sans-serif-light", Typeface.NORMAL));
                cell.setSoundEffectsEnabled(true);
                cell.setHapticFeedbackEnabled(true);
                cell.setOnTouchListener(new View.OnTouchListener() {
                    @Override
                    public boolean onTouch(View v, MotionEvent event) {
                        if (event == null) {
                            return true;
                        }
                        int action = event.getActionMasked();
                        if (action != MotionEvent.ACTION_DOWN) {
                            return true;
                        }
                        if (TextUtils.isEmpty(key)) {
                            return true;
                        }
                        v.playSoundEffect(android.view.SoundEffectConstants.CLICK);
                        v.performHapticFeedback(android.view.HapticFeedbackConstants.KEYBOARD_TAP);
                        if ("取消".equals(key)) {
                            finishPasswordPage(activity, Activity.RESULT_CANCELED, new Runnable() {
                                @Override
                                public void run() {
                                    finishLauncherPasswordVerification();
                                }
                            });
                        } else if ("⌫".equals(key)) {
                            if (input.length() > 0) {
                                input.deleteCharAt(input.length() - 1);
                                updatePasswordDots(dots, input.length(), dark);
                            }
                        } else if (input.length() < 6) {
                            input.append(key.charAt(0));
                            updatePasswordDots(dots, input.length(), dark);
                            if (input.length() == 6 && callback != null) {
                                callback.onComplete(input.toString(), reset);
                            }
                        }
                        return true;
                    }
                });
                row.addView(cell, new LinearLayout.LayoutParams(0, -1, 1f));
            }
        }
        parent.addView(keypad, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, keyHeight * 4));
    }

    private static Drawable launcherKeyboardDrawable(Context context, String key, boolean dark) {
        if (context == null || key == null) {
            return null;
        }
        String name = null;
        if (key.length() > 0 && key.charAt(0) >= '0' && key.charAt(0) <= '9') {
            name = "btn_" + key.charAt(0) + (dark ? "_classic_dark" : "_classic_normal");
        } else if ("⌫".equals(key)) {
            name = dark ? "btn_delete_classic_dark" : "btn_delete_classic_normal";
        } else if (TextUtils.isEmpty(key)) {
            name = dark ? "btn_down_classic_dark" : "btn_down_classic_normal";
        }
        if (name == null) {
            return null;
        }
        try {
            Resources resources = settingsResources(context);
            int id = resources.getIdentifier(name, "drawable", SETTINGS_PKG);
        if (id != 0) {
                Drawable normal = resources.getDrawable(id);
                return keyboardButtonState(normal, dark);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static Drawable keyboardButtonState(Drawable normal, boolean dark) {
        if (normal == null) {
            return null;
        }
        StateListDrawable state = new StateListDrawable();
        state.addState(new int[]{}, normal);
        return state;
    }

    private static Drawable keyBackground(boolean dark) {
        StateListDrawable state = new StateListDrawable();
        state.addState(new int[]{}, colorDrawable(dark ? Color.rgb(12, 12, 12) : Color.WHITE,
                dark ? 0xff202020 : 0xffe6e6e6));
        return state;
    }

    private static Drawable colorDrawable(int color) {
        return colorDrawable(color, 0);
    }

    private static Drawable colorDrawable(int color, int strokeColor) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        if (strokeColor != 0) {
            drawable.setStroke(1, strokeColor);
        }
        return drawable;
    }

    private static CharSequence keyLabel(String key) {
        if (key == null || key.length() <= 1 || "取消".equals(key) || "⌫".equals(key)) {
            return key == null ? "" : key;
        }
        SpannableString text = new SpannableString(key);
        int split = key.indexOf('\n');
        if (split >= 0) {
            text.setSpan(new RelativeSizeSpan(1.65f), 0, split, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
            text.setSpan(new RelativeSizeSpan(0.78f), split + 1, key.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        }
        return text;
    }

    private static String makePasswordDots(int filled) {
        StringBuilder out = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            if (i > 0) out.append("  ");
            out.append(i < filled ? "●" : "●");
        }
        return out.toString();
    }

    private static LinearLayout makePasswordDotsView(Context context, boolean dark) {
        LinearLayout row = new LinearLayout(context);
        row.setGravity(Gravity.CENTER);
        row.setOrientation(LinearLayout.HORIZONTAL);
        for (int i = 0; i < 6; i++) {
            View dot = new View(context);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    dp(context, dark ? 14 : 12), dp(context, dark ? 14 : 12));
            if (i > 0) {
                lp.leftMargin = dp(context, dark ? 18 : 16);
            }
            row.addView(dot, lp);
        }
        updatePasswordDots(row, 0, dark);
        return row;
    }

    private static void updatePasswordDots(LinearLayout row, int filled, boolean dark) {
        if (row == null) {
            return;
        }
        int empty = dark ? Color.rgb(38, 38, 38) : 0xffe4e4e4;
        int active = dark ? Color.rgb(220, 220, 220) : 0xffffffff;
        int activeStroke = dark ? Color.rgb(220, 220, 220) : 0xffd8d8d8;
        for (int i = 0; i < row.getChildCount(); i++) {
            View dot = row.getChildAt(i);
            boolean on = i < filled;
            GradientDrawable drawable = new GradientDrawable();
            drawable.setShape(GradientDrawable.OVAL);
            drawable.setColor(on ? active : empty);
            if (on && !dark) {
                drawable.setStroke(1, activeStroke);
            }
            dot.setBackgroundDrawable(drawable);
        }
    }

    private static Drawable createLauncherLockIcon(Context context) {
        try {
            java.io.InputStream in = context.getAssets().open(
                    "Textures/1080p/12/lock-anim/lock_icon_0016.png");
            Bitmap source = BitmapFactory.decodeStream(in);
            in.close();
            if (source != null) {
                return new BitmapDrawable(context.getResources(), source);
            }
        } catch (Throwable ignored) {
        }
        int w = dp(context, 92);
        int h = dp(context, 116);
        Bitmap bitmap = Bitmap.createBitmap(w, h, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        paint.setColor(Color.rgb(160, 160, 160));
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(dp(context, 6));
        RectF board = new RectF(dp(context, 14), dp(context, 4), w - dp(context, 14), h - dp(context, 4));
        canvas.drawRoundRect(board, dp(context, 5), dp(context, 5), paint);
        canvas.drawLine(board.left, dp(context, 34), board.right, dp(context, 34), paint);
        paint.setStyle(Paint.Style.FILL);
        RectF body = new RectF(dp(context, 28), dp(context, 63), w - dp(context, 28), dp(context, 94));
        canvas.drawRoundRect(body, dp(context, 4), dp(context, 4), paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(dp(context, 5));
        RectF shackle = new RectF(dp(context, 36), dp(context, 50), w - dp(context, 36), dp(context, 75));
        canvas.drawArc(shackle, 180, -180, false, paint);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(Color.BLACK);
        canvas.drawCircle(w / 2f, dp(context, 78), dp(context, 4), paint);
        Path path = new Path();
        path.moveTo(w / 2f, dp(context, 80));
        path.lineTo(w / 2f - dp(context, 6), dp(context, 91));
        path.lineTo(w / 2f + dp(context, 6), dp(context, 91));
        path.close();
        canvas.drawPath(path, paint);
        return new BitmapDrawable(context.getResources(), bitmap);
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
        String message;
        if (current == 20 && mode == 12) {
            message = "单个二十宫格（包括隐藏与加密板块）内的图标如果超过十二个，"
                    + "切换到十二宫格后，会被自动按顺序放入两个十二宫格内，而之后再切换回"
                    + "二十宫格时，这两个板块内的应用不会自动回到一个板块内。"
                    + "更改此项设置需要重新载入桌面。";
        } else {
            message = "更改此项设置需要重新载入桌面。";
        }
        showConfirmDialog(activity, "切换桌面宫格",
                message,
                "取消",
                "切换",
                new View.OnClickListener() {
                    public void onClick(View v) {
                        saveLauncherMode(activity, mode);
                    }
                });
    }

    private static void saveLauncherMode(Context context, int mode) {
        // The settings UI stores cell counts, whereas the original database
        // migrator consumes base-page ids: PAGE_1_3X4 is 0x0c and
        // PAGE_1_4X5 is 0x09. The latter still has 20 cells.
        int oldPageMode = pageModeForLauncherCellCount(readLauncherMode(context));
        int pageMode = pageModeForLauncherCellCount(mode);
        if (!writeLauncherModePref(context, mode)) {
            logOperation(context, "GRID_MIGRATION", "private_pref_commit_failed mode=" + mode);
            Toast.makeText(context, "桌面宫格设置保存失败", Toast.LENGTH_SHORT).show();
            return;
        }
        int multiBlockMode = mode == 20 ? 0x50 : 0x30;
        int maintainedMultiBlockMode = mode == 20 ? 0x40 : 0x24;
        try {
            // Settings.Global is only a best-effort mirror on non-Smartisan ROMs.
            // The committed private preference above remains authoritative.
            Settings.Global.putInt(context.getContentResolver(), "launcher_mode", mode);
            Settings.Global.putInt(context.getContentResolver(), "launcher_multi_block_mode", multiBlockMode);
            Settings.Global.putInt(context.getContentResolver(), "multi_block_mode", maintainedMultiBlockMode);
            Settings.Global.putInt(context.getContentResolver(), "launcher_grids_x", mode == 20 ? 4 : 3);
            Settings.Global.putInt(context.getContentResolver(), "launcher_grids_y", mode == 20 ? 5 : 4);
        } catch (Throwable ignored) {
        }
        migrateLauncherModeAndRestart(context, oldPageMode, pageMode);
    }

    private static int pageModeForLauncherCellCount(int cellCount) {
        try {
            Object value = Class.forName("com.smartisanos.launcher.data.Constants")
                    .getMethod("getPageModeFromMode", Integer.TYPE)
                    .invoke(null, cellCount);
            if (value instanceof Integer) {
                return ((Integer) value).intValue();
            }
        } catch (Throwable ignored) {
        }
        // Preserve the verified original mapping if reflection is unavailable.
        return cellCount == 20 ? 9 : 12;
    }

    /**
     * The stock launcher reads its base mode from Smartisan's privileged
     * Settings.Global provider. Other ROMs expose no value there, and some
     * devices leave a legacy 3 x 3 value behind. The port only offers 12 and
     * 20 cells, so preserve those explicit choices locally and ignore every
     * other system value.
     */
    public static int resolvePortLauncherMode(Context context, int systemMode) {
        if (context != null) {
            try {
                int saved = context.getSharedPreferences("com.smartisanos.launcher_prefs",
                        Context.MODE_PRIVATE).getInt("prefs_key_launcher_mode", -1);
                if (saved == 12 || saved == 20) {
                    return saved;
                }
            } catch (Throwable ignored) {
            }
        }
        return systemMode == 20 ? 20 : 12;
    }

    /** Keeps the original single/multi mode pair valid after device adaptation. */
    public static int resolvePortLauncherMultiMode(Context context, int systemMode,
            int adaptedBasePageMode) {
        boolean hasPortMode = false;
        if (context != null) {
            try {
                int saved = context.getSharedPreferences("com.smartisanos.launcher_prefs",
                        Context.MODE_PRIVATE).getInt("prefs_key_launcher_mode", -1);
                hasPortMode = saved == 12 || saved == 20;
            } catch (Throwable ignored) {
            }
        }
        if (!hasPortMode) {
            return systemMode;
        }
        if (adaptedBasePageMode == 4) {
            return 0x40;
        }
        if (adaptedBasePageMode == 9) {
            return 0x50;
        }
        if (adaptedBasePageMode == 12) {
            return 0x30;
        }
        if (adaptedBasePageMode == 1) {
            return 0x24;
        }
        return systemMode;
    }

    public static void migrateLauncherModeAndRestart(final Context context,
                                                     final int oldPageMode,
                                                     final int newPageMode) {
        if (oldPageMode == newPageMode) {
            logOperation(context, "GRID_MIGRATION", "skip_same_mode=" + newPageMode);
            return;
        }
        try {
            Class<?> databaseHandler = Class.forName("com.smartisanos.launcher.data.A");
            java.lang.reflect.Field workerField = databaseHandler.getDeclaredField("mWorker");
            workerField.setAccessible(true);
            Handler worker = (Handler) workerField.get(null);
            if (worker == null) {
                throw new IllegalStateException("DatabaseHandler worker is null");
            }
            boolean posted = worker.post(new Runnable() {
                public void run() {
                    try {
                        Class<?> preferences = Class.forName("com.smartisanos.launcher.data.N");
                        Object instance = preferences.getMethod("getInstance").invoke(null);
                        preferences.getMethod("d", Context.class, Integer.TYPE)
                                .invoke(instance, context, newPageMode);
                        // Keep the original mode conversion intact.  On a
                        // 12 -> 20 change F.i only refreshes page metadata;
                        // it leaves every item in its existing board and cell.
                        // On a 20 -> 12 change it performs the stock splitter.
                        Class.forName("com.smartisanos.launcher.data.F")
                                .getMethod("i", Integer.TYPE, Integer.TYPE)
                                .invoke(null, oldPageMode, newPageMode);
                        logOperation(context, "GRID_MIGRATION", "complete old=" + oldPageMode
                                + ", new=" + newPageMode);
                    } catch (Throwable t) {
                        logOperation(context, "GRID_MIGRATION", "failed old=" + oldPageMode
                                + ", new=" + newPageMode + ", error=" + shortError(t));
                    }
                    new Handler(Looper.getMainLooper()).post(new Runnable() {
                        public void run() {
                            restartLauncherAfterGridMigration(context);
                        }
                    });
                }
            });
            if (!posted) {
                throw new IllegalStateException("DatabaseHandler rejected migration");
            }
        } catch (Throwable t) {
            logOperation(context, "GRID_MIGRATION", "schedule_failed old=" + oldPageMode
                    + ", new=" + newPageMode + ", error=" + shortError(t));
            restartLauncherAfterGridMigration(context);
        }
    }

    /** Grid migration is complete; use the verified cold-scene fallback. */
    private static void restartLauncherAfterGridMigration(Context context) {
        int gridMode = readLauncherMode(context);
        if (!com.smartisanos.launcher.reload.LauncherColdReloadCoordinator
                .beginGridReload(context, gridMode)) {
            logOperation(context, "RESTART", "grid_transition_start_failed");
        }
    }

    private static void restartLauncher(final Context context) {
        markThemeReloadLoadingPending(context, "正在加载桌面...");
        if (reloadLauncherSceneInPlace(context)) {
            return;
        }
        // Last-resort path for devices where the active Launcher activity
        // cannot be reached.  Normal settings changes use the in-process
        // recreation above and never expose the underlying wallpaper.
        if (context instanceof Activity) {
            showRestartLoading((Activity) context);
        }
        scheduleLauncherRestart(context);
        if (context instanceof Activity) {
            logOperation(context, "RESTART", "process_rebirth_for_launcher_reload");
        } else {
            logOperation(context, "RESTART", "scheduled_process_rebirth_for_launcher_reload");
        }
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable ignored) {
            startLauncherFromForeground(context);
        }
    }

    /**
     * The launcher lives below the settings task in the same process. Mark the
     * original scene dirty and bring that activity forward so J.onResume() can
     * run its existing v -> J.Hv() configuration and PageView update chain on
     * the current EGL surface. Dismiss settings only after the next frame.
     */
    private static boolean reloadLauncherSceneInPlace(final Context context) {
        try {
            final Activity launcherActivity = activeLauncherActivity();
            if (launcherActivity == null) {
                logOperation(context, "RESTART", "fallback_no_launcher_activity");
                return false;
            }
            if (launcherActivity.isFinishing()) {
                logOperation(context, "RESTART", "fallback_launcher_finishing");
                return false;
            }
            final Activity settingsActivity = context instanceof Activity
                    && context != launcherActivity ? (Activity) context : null;
            synchronized (MaintainedLauncherSettingsHost.class) {
                sPendingReloadSettingsActivity = settingsActivity == null
                        ? null : new WeakReference<Activity>(settingsActivity);
                sDeferredLauncherActivity = new WeakReference<Activity>(launcherActivity);
                sLauncherFirstFrameReady = false;
                sDeferredLauncherTasksPosted = false;
                sLauncherFrameReportPending = true;
            }
            Class.forName("com.smartisanos.launcher.Aa")
                    .getMethod("p", Boolean.TYPE).invoke(null, Boolean.TRUE);
            showRestartLoading(launcherActivity, "正在加载桌面...", true);
            Intent intent = launcherActivityIntent(context);
            intent.addFlags(Intent.FLAG_ACTIVITY_REORDER_TO_FRONT
                    | Intent.FLAG_ACTIVITY_SINGLE_TOP);
            context.startActivity(intent);
            if (settingsActivity != null) {
                settingsActivity.overridePendingTransition(0, 0);
            }
            logOperation(context, "RESTART", "in_process_original_dirty_scene_reload");
            return true;
        } catch (Throwable error) {
            Log.w(LOG_TAG, "Unable to find active Launcher for in-process reload", error);
            logOperation(context, "RESTART", "fallback_launcher_lookup_failed error="
                    + shortError(error));
            return false;
        }
    }

    private static Activity activeLauncherActivity() {
        Activity activity = sDeferredLauncherActivity == null
                ? null : sDeferredLauncherActivity.get();
        if (isLauncherActivity(activity)) {
            return activity;
        }
        try {
            Object launcher = Class.forName("com.smartisanos.launcher.J")
                    .getMethod("getInstance").invoke(null);
            Object candidate = launcher == null ? null
                    : launcher.getClass().getMethod("getActivity").invoke(launcher);
            return candidate instanceof Activity && isLauncherActivity((Activity) candidate)
                    ? (Activity) candidate : null;
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static boolean isLauncherActivity(Activity activity) {
        return activity != null
                && "com.smartisanos.launcher.Launcher".equals(activity.getClass().getName());
    }

    private static void fallbackToProcessRebirth(Context context) {
        scheduleLauncherRestart(context);
        logOperation(context, "RESTART", "exceptional_process_rebirth");
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable ignored) {
            startLauncherFromForeground(context);
        }
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
                long trigger = android.os.SystemClock.elapsedRealtime() + 650L;
                if (Build.VERSION.SDK_INT >= 23) {
                    alarmManager.setExactAndAllowWhileIdle(
                            AlarmManager.ELAPSED_REALTIME_WAKEUP, trigger, pendingIntent);
                } else {
                    alarmManager.setExact(
                            AlarmManager.ELAPSED_REALTIME_WAKEUP, trigger, pendingIntent);
                }
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
                markThemeSettingsExitRequested(activity);
                activity.finish();
                try {
                    activity.overridePendingTransition(0, 0);
                } catch (Throwable ignored) {
                }
                activity.startActivity(intent);
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

    private static boolean refreshLauncherWallpaperNow(final Context context) {
        applyWallpaperChange(context);
        return refreshLauncherWallpaperSurface();
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
        if (refreshLauncherWallpaperSurface()) {
            markWallpaperRefreshPending(context, false);
        }
    }

    /** Original Eb.lh() is TransWallpaper.changeWallpaper, not a PageView reload. */
    private static boolean refreshLauncherWallpaperSurface() {
        boolean refreshed = false;
        try {
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView != null) {
                mainView.getClass().getMethod("lh").invoke(mainView);
                refreshed = true;
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
        return refreshed;
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
            activity.finish();
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

    private static boolean writeLauncherModePref(Context context, int mode) {
        try {
            return context.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                    .edit()
                    .putInt("prefs_key_launcher_mode", mode)
                    .commit();
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void showConfirmDialog(final Activity activity, String title, String message, String negative, String positive, final View.OnClickListener positiveClick) {
        showConfirmDialog(activity, title, message, negative, positive, positiveClick, null);
    }

    private static void showConfirmDialog(final Activity activity, String title, String message,
            String negative, String positive, final View.OnClickListener positiveClick,
            final Runnable dismissed) {
        final Dialog dialog = new Dialog(activity);
        if (dismissed != null) {
            dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
                public void onDismiss(DialogInterface dialogInterface) {
                    dismissed.run();
                }
            });
        }
        LinearLayout root = new LinearLayout(activity);
        prepareSmartisanDialogRoot(activity, root);

        TextView titleView = text(activity, title, 18, 0xff333333, true);
        titleView.setGravity(Gravity.CENTER);
        root.addView(titleView, new LinearLayout.LayoutParams(-1, dp(activity, 54)));

        root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

        TextView messageView = text(activity, message, 14, 0xff777777, false);
        messageView.setGravity(Gravity.LEFT | Gravity.TOP);
        messageView.setLineSpacing(dp(activity, 4), 1.08f);
        messageView.setPadding(dp(activity, 26), dp(activity, 20), dp(activity, 26), dp(activity, 20));
        boolean scrollMessage = message != null
                && (message.length() > 420 || message.split("\\n", -1).length > 12);
        if (scrollMessage) {
            ScrollView messageScroll = new ScrollView(activity);
            messageScroll.setFillViewport(false);
            messageScroll.setOverScrollMode(View.OVER_SCROLL_IF_CONTENT_SCROLLS);
            messageScroll.setVerticalScrollBarEnabled(true);
            messageScroll.addView(messageView, new ScrollView.LayoutParams(-1, -2));
            int maxHeight = Math.max(dp(activity, 260),
                    activity.getResources().getDisplayMetrics().heightPixels - dp(activity, 360));
            root.addView(messageScroll, new LinearLayout.LayoutParams(-1, maxHeight));
        } else {
            root.addView(messageView, new LinearLayout.LayoutParams(-1, -2));
        }

        root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

        LinearLayout buttons = new LinearLayout(activity);
        buttons.setOrientation(LinearLayout.HORIZONTAL);
        TextView cancel = smartisanDialogActionButton(activity, negative, false, -1);
        cancel.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                dialog.dismiss();
            }
        });
        TextView ok = smartisanDialogActionButton(activity, positive, true, 1);
        ok.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                dialog.dismiss();
                positiveClick.onClick(v);
            }
        });
        buttons.addView(cancel, new LinearLayout.LayoutParams(0, dp(activity, 56), 1.0f));
        buttons.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(1, dp(activity, 56)));
        buttons.addView(ok, new LinearLayout.LayoutParams(0, dp(activity, 56), 1.0f));
        root.addView(buttons, new LinearLayout.LayoutParams(-1, dp(activity, 56)));

        dialog.setContentView(root);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
        }
        dialog.show();
        Window shown = dialog.getWindow();
        if (shown != null) {
            int screenWidth = activity.getResources().getDisplayMetrics().widthPixels;
            int width = Math.min(dp(activity, 380), screenWidth - dp(activity, 32));
            shown.setLayout(width, -2);
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
        logOperation(activity, "ACTION", "apply_theme id=" + id + ", pkg=" + pkg + ", name=" + name
                + ", before=" + themeDiagnosticState(activity)
                + ", package_installed=" + packageInstalled(activity, pkg));
        sThemeChangeGuardUntilUptime = android.os.SystemClock.uptimeMillis() + 4000L;
        sPendingThemeLoadingThemeId = id;
        pkg = normalizeThemePackage(activity, id, pkg);
        if ("smartisan_theme_trans".equals(id)) {
            applyTransparentThemeSetting(activity, true, true);
            return;
        } else {
            // A regular theme selection must always remain on the original
            // ChangeThemeHandler path.  launcher_grid_theme is an overlay
            // state, not the requested theme identity; routing this branch
            // through the transparent-theme reload made a normal selection
            // show ReloadTransitionActivity whenever stale overlay state was
            // present.
            boolean transparentOverlayWasEnabled = isTransparentThemeEnabled(activity);
            writeTransparentModeSetting(activity, false);
            writeOriginalBoolIntSetting(activity, KEY_TRANSPARENT_WALLPAPER_BLUR, false);
            applyTransparentThemeRuntimeFlags(activity, false);
            if (transparentOverlayWasEnabled) {
                logOperation(activity, "THEME",
                        "normal_theme_cleared_transparent_overlay_without_cold_reload id=" + id);
            }
        }
        // The original ThemeManager/ChangeThemeHandler owns the normal path.
        // Only synthesize its pending message after that stack explicitly fails
        // to persist the selected theme.
        boolean originalApplied = applyThemeViaOriginalStack(activity, id, pkg);
        boolean fallbackQueued = false;
        if (!originalApplied) {
            storeThemeSelection(activity, id);
            fallbackQueued = queueThemeChangeForLauncher(activity, id);
        }
        logOperation(activity, "THEME", "dispatch id=" + id
                + ", original=" + originalApplied + ", fallback=" + fallbackQueued
                + ", after=" + themeDiagnosticState(activity));
        Toast.makeText(activity, "正在应用：" + name, Toast.LENGTH_SHORT).show();
        returnToLauncherForOriginalThemeTransition(activity);
    }

    private static void returnToLauncherForOriginalThemeTransition(final Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        View root = activity.getWindow() == null ? null : activity.getWindow().getDecorView();
        if (root == null) {
            submitThemeSnapshot(activity);
            startLauncherFromForeground(activity);
            return;
        }
        // ThemeItemActivity waits 100 ms after the original theme state is committed.
        // Its handler captures the transition image, finishes the settings page and returns HOME.
        root.postDelayed(new Runnable() {
            public void run() {
                if (activity.isFinishing()
                        || (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed())) {
                    return;
                }
                submitThemeSnapshot(activity);
                startLauncherFromForeground(activity);
            }
        }, 100L);
    }

    public static Bitmap normalizeNotificationBadgeBitmap(Bitmap source) {
        // The original renderer already sizes the badge from the rendered text:
        // one digit is a circle and only multi-digit values become capsules.
        // Scaling the finished bitmap makes the one-digit badge oval.
        return source;
    }

    private static void restartLauncherForColdSceneChange(Activity activity, String reason) {
        clearPendingThemeMessages();
        markThemeReloadLoadingPending(activity, "正在加载桌面...");
        showRestartLoading(activity);
        scheduleLauncherRestart(activity);
        logOperation(activity, "RESTART", reason);
        finishSettingsTask(activity);
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable ignored) {
            startLauncherFromForeground(activity);
        }
    }

    private static void clearPendingThemeMessages() {
        try {
            Class<?> flow = Class.forName("com.smartisanos.launcher.a.r");
            flow.getField("sj").set(null, null);
        } catch (Throwable ignored) {
        }
        try {
            Object handler = Class.forName("com.smartisanos.launcher.Sa")
                    .getMethod("getHandler").invoke(null);
            if (handler instanceof Handler) {
                ((Handler) handler).removeMessages(0x12);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void refreshThemeRuntime(final Context context, final String id) {
        if (context == null) {
            return;
        }
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            constants.getMethod("initByTheme", Context.class).invoke(null, context);
            if ("smartisan_theme_aero".equals(id)) {
                constants.getField("isTransparentTheme").setBoolean(null, false);
                constants.getField("isTransWallpaperBlur").setBoolean(null, false);
            }
        } catch (Throwable ignored) {
        }
        reloadOriginalSettings(context);
        notifyOriginalConfigChanged("launcher_theme");
        notifyOriginalConfigChanged("launcher_theme_preview_res");
        notifyOriginalConfigChanged(KEY_TRANSPARENT_THEME_ENABLED);
        notifyOriginalConfigChanged(KEY_TRANSPARENT_WALLPAPER_BLUR);
        refreshLauncherThemeSurface(context);
    }

    private static void refreshLauncherThemeSurface(Context context) {
        try {
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView != null) {
                try {
                    mainView.getClass().getMethod("lh").invoke(mainView);
                } catch (Throwable ignored) {
                }
                try {
                    mainView.getClass().getMethod("Vh").invoke(mainView);
                } catch (Throwable ignored) {
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
        refreshLauncherWallpaperSurface();
    }

    private static boolean queueThemeChangeForLauncher(Context context, String id) {
        try {
            android.os.Message message = android.os.Message.obtain();
            message.what = 0x12;
            message.obj = id;
            message.arg1 = -5;
            Class<?> flow = Class.forName("com.smartisanos.launcher.a.r");
            flow.getField("sj").set(null, message);
            logOperation(context, "THEME_DISPATCH", "pending_message_set id=" + id);
            return true;
        } catch (Throwable ignored) {
            logOperation(context, "THEME_DISPATCH", "pending_message_failed id=" + id
                    + ", error=" + shortError(ignored));
            return false;
        }
    }

    private static void clearStalePendingThemeBeforeUnlock() {
        if (android.os.SystemClock.uptimeMillis() < sThemeChangeGuardUntilUptime) return;
        try {
            Class<?> flow = Class.forName("com.smartisanos.launcher.a.r");
            Object pending = flow.getField("sj").get(null);
            if (pending instanceof android.os.Message) {
                Object id = ((android.os.Message) pending).obj;
                flow.getField("sj").set(null, null);
                android.util.Log.w(LOG_TAG, "cleared stale theme message before unlock id=" + id);
            }
        } catch (Throwable error) {
            android.util.Log.w(LOG_TAG, "unable to clear stale theme message before unlock", error);
        }
    }

    private static boolean applyThemeViaOriginalStack(Activity activity, String id, String pkg) {
        boolean stored = false;
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
            Object result = manager.getMethod("ja", String.class).invoke(null, pkg + ":" + id);
            stored = Boolean.TRUE.equals(result);
        } catch (Throwable ignored) {
        }
        if (!stored) {
            return false;
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
        } catch (Throwable ignored) {
        }
        try {
            Class<?> proxy = Class.forName("com.smartisanos.launcher.ja");
            Object instance = proxy.getMethod("getInstance").invoke(null);
            proxy.getMethod("l", Boolean.TYPE).invoke(instance, false);
        } catch (Throwable ignored) {
        }
        return true;
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
        return global == 20 ? 20 : 12;
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
                            int versionComparison = compareVersionTag(tag, current);
                            if (finalApkUrl == null) {
                                showInfoDialog(activity, "检查更新",
                                        "已找到线上版本：" + finalName
                                                + "\n但该 Release 没有桌面主 APK 安装包\n当前版本：" + appVersion(activity));
                                return;
                            }
                            if (versionComparison <= 0) {
                                showInfoDialog(activity, "检查更新",
                                        "当前已是最新版本\n版本：" + appVersion(activity));
                                return;
                            }
                            String message = "发现线上版本：" + finalName
                                    + "\n当前版本：" + appVersion(activity);
                            if (finalBody != null && finalBody.length() > 0) {
                                message += "\n\n" + finalBody;
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
            final Dialog dialog = new Dialog(activity);
            LinearLayout root = new LinearLayout(activity);
            prepareSmartisanDialogRoot(activity, root);

            TextView titleView = text(activity, title, 18, 0xff333333, true);
            titleView.setGravity(Gravity.CENTER);
            root.addView(titleView, new LinearLayout.LayoutParams(-1, dp(activity, 54)));
            root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

            int padding = dp(activity, 26);
            LinearLayout content = new LinearLayout(activity);
            content.setOrientation(LinearLayout.VERTICAL);
            content.setPadding(padding, dp(activity, 20), padding, dp(activity, 20));

            TextView message = new TextView(activity);
            message.setText(initialMessage);
            message.setTextSize(14);
            message.setTextColor(0xff666666);
            message.setGravity(Gravity.LEFT | Gravity.CENTER_VERTICAL);
            content.addView(message, new LinearLayout.LayoutParams(-1, -2));

            ProgressBar progress = new ProgressBar(activity, null, android.R.attr.progressBarStyleHorizontal);
            progress.setIndeterminate(true);
            progress.setMax(100);
            LinearLayout.LayoutParams progressLp = new LinearLayout.LayoutParams(-1, dp(activity, 8));
            progressLp.topMargin = dp(activity, 18);
            content.addView(progress, progressLp);
            root.addView(content, new LinearLayout.LayoutParams(-1, -2));
            root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

            TextView backgroundButton = smartisanDialogActionButton(activity, "后台下载", false, 0);
            backgroundButton.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    dialog.dismiss();
                }
            });
            root.addView(backgroundButton, new LinearLayout.LayoutParams(-1, dp(activity, 56)));
            dialog.setContentView(root);
            Window window = dialog.getWindow();
            if (window != null) window.setBackgroundDrawableResource(android.R.color.transparent);
            dialog.show();
            Window shown = dialog.getWindow();
            if (shown != null) {
                int screenWidth = activity.getResources().getDisplayMetrics().widthPixels;
                shown.setLayout(Math.min(dp(activity, 380), screenWidth - dp(activity, 32)), -2);
            }
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

    public static synchronized void prepareLauncherDeferredTasks(Activity activity) {
        sDeferredLauncherActivity = new WeakReference<Activity>(activity);
        sLauncherFirstFrameReady = false;
        sDeferredLauncherTasksPosted = false;
        sLauncherFrameReportPending = true;
        sLastBadgeHidden = null;
    }

    public static void applyProcessCompatOnce() {
        synchronized (MaintainedLauncherSettingsHost.class) {
            if (sProcessCompatApplied) {
                return;
            }
            sProcessCompatApplied = true;
        }
        disableLegacyTouchSizeSweepOnModernAndroid();
    }

    public static void scheduleLauncherPostFirstFrameTasks(Activity activity) {
        if (activity == null) {
            return;
        }
        synchronized (MaintainedLauncherSettingsHost.class) {
            sDeferredLauncherActivity = new WeakReference<Activity>(activity);
            if (sLauncherFirstFrameReady && !sLauncherFrameReportPending) {
                sLauncherFirstFrameReady = false;
                sDeferredLauncherTasksPosted = false;
                sLauncherFrameReportPending = true;
            }
        }
        postDeferredLauncherTasksIfReady();
    }

    public static void onLauncherFirstFrame() {
        synchronized (MaintainedLauncherSettingsHost.class) {
            if (sLauncherFirstFrameReady) {
                return;
            }
            sLauncherFirstFrameReady = true;
        }
        postDeferredLauncherTasksIfReady();
    }

    private static void postDeferredLauncherTasksIfReady() {
        final Activity activity;
        synchronized (MaintainedLauncherSettingsHost.class) {
            activity = sDeferredLauncherActivity == null
                    ? null : sDeferredLauncherActivity.get();
            if (!sLauncherFirstFrameReady || activity == null
                    || activity.isFinishing() || sDeferredLauncherTasksPosted) {
                return;
            }
            sDeferredLauncherTasksPosted = true;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                com.smartisanos.launcher.diagnostics.LauncherStartupDiagnostics
                        .mark("LAUNCH_DEFERRED_TASKS_BEGIN");
                applyProcessCompatOnce();
                applyNavigationBarIfChanged(activity);
                maybeRefreshLauncherWallpaper(activity);
                applyBadgeIfDirty(activity);
                if (LauncherSettingBridge.dynamicWeatherCalendarEnabled(activity)) {
                    WeatherBridge.onLauncherResume(activity);
                }
                if (com.smartisanos.home.settings.icons.IconPackManager
                        .isIconPackSelectionEnabled(activity)) {
                    com.smartisanos.home.settings.icons.IconPackManager
                            .preloadSelectedIconPackAsync(activity);
                }
                completePendingReloadAfterFirstFrame();
                com.smartisanos.launcher.diagnostics.LauncherStartupDiagnostics
                        .mark("LAUNCH_DEFERRED_TASKS_END");
            }
        });
    }

    public static void applyBadgeIfDirty(Activity activity) {
        if (activity == null) {
            return;
        }
        boolean hidden = readSystemBool(activity, "launcher_hide_badge", true);
        if (sLastBadgeHidden == null || sLastBadgeHidden.booleanValue() != hidden) {
            applyBadgeVisibility(activity, hidden, false);
            sLastBadgeHidden = Boolean.valueOf(hidden);
        }
        if (!hidden) {
            com.smartisanos.launcher.badge.BadgeBridge.replayIfDirty(activity);
        }
    }

    public static void completePendingReloadAfterFirstFrame() {
        final Activity settingsActivity;
        synchronized (MaintainedLauncherSettingsHost.class) {
            settingsActivity = sPendingReloadSettingsActivity == null
                    ? null : sPendingReloadSettingsActivity.get();
            if (sLauncherReloadDialog == null && settingsActivity == null) {
                return;
            }
            sPendingReloadSettingsActivity = null;
        }
        if (sLauncherReloadDialog == null && settingsActivity == null) {
            return;
        }
        try {
            Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() {
                @Override
                public void doFrame(long frameTimeNanos) {
                    dismissPendingLauncherReloadLoading();
                    if (settingsActivity != null && !settingsActivity.isFinishing()) {
                        finishSettingsTask(settingsActivity);
                    }
                }
            });
        } catch (Throwable ignored) {
            dismissPendingLauncherReloadLoading();
            if (settingsActivity != null && !settingsActivity.isFinishing()) {
                finishSettingsTask(settingsActivity);
            }
        }
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
                    getString(resources, "setting_about_us", "关于我们"), "ABOUT", backToMainAction(activity));
            hide(resources, root, "setting_more_product");
            bindOperationLogSection(activity, root, resources);
            tuneScrollBars(root);
            setSettingsContentView(activity, context, resources, root, true);
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
            TextView empty = text(activity, "暂无日志。开始记录后，日志会按日期保存在应用私有目录；结束记录后可直接发送。", 14, 0xff999999, false);
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
        parent.addView(settingsSectionHeader(context, context.getResources(), title));
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
        row.addView(view, new LinearLayout.LayoutParams(dp(activity, 62), dp(activity, 42)));

        TextView share = aboutActionButton(activity, "发送", 0xff5f8fe8);
        share.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                shareOperationLog(activity, file);
            }
        });
        LinearLayout.LayoutParams shareLp = new LinearLayout.LayoutParams(dp(activity, 62), dp(activity, 42));
        shareLp.leftMargin = dp(activity, 6);
        row.addView(share, shareLp);

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
        LinearLayout.LayoutParams deleteLp = new LinearLayout.LayoutParams(dp(activity, 62), dp(activity, 42));
        deleteLp.leftMargin = dp(activity, 6);
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
                final Context diagnosticContext = context.getApplicationContext() == null
                        ? context : context.getApplicationContext();
                new Thread(new Runnable() {
                    public void run() {
                        writeDiagnosticSnapshot(diagnosticContext, "recording_started");
                    }
                }, "LauncherDiagnosticSnapshot").start();
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
        return "未记录。开启后会写入关键操作、分身发现过程、异常及本应用可读取的 logcat。"
                + "\n结束后点击“发送”，会把主日志和配套 logcat 合并为文字发送。"
                + "\n受 Android 权限限制，它不能代替电脑 ADB 读取全部系统和其他应用日志。"
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

    public static void logFlingUpReset(String reason, boolean rk, boolean sk, boolean tk) {
        String detail = "reason=" + reason + " beforeRk=" + rk + " beforeSk=" + sk + " beforeTk=" + tk
                + " afterRk=false afterSk=false afterTk=false";
        logOperation(null, "FLING_UP_STATE_RESET", detail);
        android.util.Log.d("FlingUpGesture", "FLING_UP_STATE_RESET " + detail);
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

    private static void shareOperationLog(Activity activity, File file) {
        try {
            String stamp = file.getName().substring("operation-".length());
            File logcat = new File(file.getParentFile(), "operation-logcat-" + stamp);
            StringBuilder body = new StringBuilder();
            body.append("锤子桌面诊断日志\n\n=== 操作日志 ===\n")
                    .append(tailText(file, 90000));
            if (logcat.exists()) {
                body.append("\n\n=== 应用可读取的 logcat ===\n")
                        .append(tailText(logcat, 90000));
            }
            Intent send = new Intent(Intent.ACTION_SEND);
            send.setType("text/plain");
            send.putExtra(Intent.EXTRA_SUBJECT, "锤子桌面诊断日志 " + stamp);
            send.putExtra(Intent.EXTRA_TEXT, body.toString());
            activity.startActivity(Intent.createChooser(send, "发送诊断日志"));
        } catch (Throwable t) {
            Toast.makeText(activity, "发送日志失败：" + shortError(t), Toast.LENGTH_LONG).show();
        }
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

    private static void showDynamicWeatherPage(final Activity activity) {
        try {
            final SettingsResourceContext context = createSettingsContext(activity);
            final Resources resources = context.getResources();
            final View root = inflate(activity, context, "setting_dynamic_weather");
            bindBackTitle(activity, resources, root, "view_title", "动态天气",
                    "DYNAMIC_WEATHER", backToMainAction(activity));
            View automaticView = find(resources, root, "weather_auto_location");
            final SettingItemSwitch automatic = automaticView instanceof SettingItemSwitch
                    ? (SettingItemSwitch) automaticView : null;
            if (automatic != null) {
                automatic.setChecked(WeatherBridge.isAutomaticLocation(activity));
                bindWeatherAutomaticSwitch(activity, resources, root, automatic);
            }
            View manual = find(resources, root, "weather_manual_city");
            if (manual != null) manual.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    showCitySearchDialog(activity, resources, root, automatic);
                }
            });
            View refresh = find(resources, root, "weather_refresh");
            if (refresh != null) refresh.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    if (WeatherBridge.isAutomaticLocation(activity)
                            && !WeatherBridge.hasLocationPermissionForSettings(activity)) {
                        WeatherBridge.requestLocationPermission(activity);
                        Toast.makeText(activity, "请允许粗略位置后再刷新", Toast.LENGTH_SHORT).show();
                    } else {
                        WeatherBridge.scheduleRefresh(activity, true);
                        Toast.makeText(activity, "正在刷新天气", Toast.LENGTH_SHORT).show();
                        root.postDelayed(new Runnable() { public void run() {
                            updateDynamicWeatherStatus(activity, resources, root);
                        }}, 1800L);
                    }
                }
            });
            updateDynamicWeatherStatus(activity, resources, root);
            tuneScrollBars(root);
            setSettingsContentView(activity, context, resources, root, true);
            WeatherBridge.scheduleCityResolution(activity);
            root.postDelayed(new Runnable() { public void run() {
                updateDynamicWeatherStatus(activity, resources, root);
            }}, 3500L);
            root.postDelayed(new Runnable() { public void run() {
                updateDynamicWeatherStatus(activity, resources, root);
            }}, 10000L);
        } catch (Throwable failure) {
            Log.w(LOG_TAG, "Unable to open dynamic weather settings", failure);
            showInfoDialog(activity, "动态天气", "无法打开动态天气设置");
        }
    }

    private static void writeDiagnosticSnapshot(Context context, String reason) {
        if (context == null) {
            return;
        }
        logOperation(context, "DEVICE", "reason=" + reason
                + ", manufacturer=" + Build.MANUFACTURER + ", brand=" + Build.BRAND
                + ", model=" + Build.MODEL + ", device=" + Build.DEVICE
                + ", sdk=" + Build.VERSION.SDK_INT + ", release=" + Build.VERSION.RELEASE);
        try {
            Intent home = new Intent(Intent.ACTION_MAIN);
            home.addCategory(Intent.CATEGORY_HOME);
            ResolveInfo resolvedHome = context.getPackageManager().resolveActivity(home, 0);
            String component = resolvedHome == null || resolvedHome.activityInfo == null ? "null"
                    : resolvedHome.activityInfo.packageName + "/" + resolvedHome.activityInfo.name;
            logOperation(context, "HOME", "default_component=" + component);
        } catch (Throwable t) {
            logOperation(context, "HOME", "query_failed " + shortError(t));
        }
        logOperation(context, "THEME_STATE", themeDiagnosticState(context));
        try {
            Intent launcher = new Intent(Intent.ACTION_MAIN);
            launcher.addCategory(Intent.CATEGORY_LAUNCHER);
            List<ResolveInfo> packageManagerApps = context.getPackageManager()
                    .queryIntentActivities(launcher, PackageManager.MATCH_DISABLED_COMPONENTS);
            logOperation(context, "APP_ENUM", "package_manager_count="
                    + (packageManagerApps == null ? 0 : packageManagerApps.size()));
            if (Build.VERSION.SDK_INT >= 21) {
                LauncherApps launcherApps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
                List<UserHandle> profiles = launcherApps == null ? null : launcherApps.getProfiles();
                logOperation(context, "APP_ENUM", "profile_count=" + (profiles == null ? 0 : profiles.size()));
                if (launcherApps != null && profiles != null) {
                    for (UserHandle profile : profiles) {
                        List<LauncherActivityInfo> activities = launcherApps.getActivityList(null, profile);
                        logOperation(context, "APP_ENUM", "profile_user=" + userIdentifier(profile)
                                + ", activity_count=" + (activities == null ? 0 : activities.size()));
                    }
                }
            }
        } catch (Throwable t) {
            logOperation(context, "APP_ENUM", "snapshot_failed " + shortError(t));
        }
    }

    private static String themeDiagnosticState(Context context) {
        if (context == null) {
            return "context=null";
        }
        String primary = null;
        String settings = null;
        String system = null;
        String global = null;
        try {
            primary = context.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                    .getString("launcher_theme", null);
        } catch (Throwable ignored) {
        }
        try {
            settings = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .getString("launcher_theme", null);
        } catch (Throwable ignored) {
        }
        try {
            system = Settings.System.getString(context.getContentResolver(), "launcher_theme");
        } catch (Throwable ignored) {
        }
        try {
            global = Settings.Global.getString(context.getContentResolver(), "launcher_theme");
        } catch (Throwable ignored) {
        }
        return "effective=" + currentTheme(context) + ", prefs=" + primary
                + ", settings=" + settings + ", system=" + system + ", global=" + global;
    }

    private static void bindWeatherAutomaticSwitch(final Activity activity,
            final Resources resources, final View root, final SettingItemSwitch automatic) {
        bindSwitchControlOnly(automatic, new View.OnClickListener() {
            public void onClick(View button) {
                boolean checked = !automatic.isChecked();
                automatic.setCheckedAnimated(checked);
                WeatherBridge.setAutomaticLocation(activity, checked);
                if (checked && !WeatherBridge.hasLocationPermissionForSettings(activity)) {
                    WeatherBridge.requestLocationPermission(activity);
                }
                updateDynamicWeatherStatus(activity, resources, root);
            }
        });
    }

    private static void updateDynamicWeatherStatus(Activity activity, Resources resources,
            View root) {
        TextView location = (TextView) find(resources, root, "weather_location_status");
        if (location != null) location.setText("天气位置：" + WeatherBridge.getLocationLabel(activity));
        WeatherBridge.scheduleCityResolution(activity);
        TextView manualSubtitle = (TextView) find(resources, root,
                "weather_manual_city_subtitle");
        if (manualSubtitle != null) manualSubtitle.setText(
                WeatherBridge.isAutomaticLocation(activity)
                        ? "搜索城市并改用固定位置"
                        : "当前：" + WeatherBridge.getLocationLabel(activity));
        TextView update = (TextView) find(resources, root, "weather_update_status");
        if (update != null) {
            long time = WeatherBridge.getWeatherUpdatedAt(activity);
            String when = time <= 0L ? "尚未更新"
                    : new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault())
                            .format(new Date(time));
            String provider = WeatherBridge.getWeatherProvider(activity);
            String error = WeatherBridge.getWeatherLastError(activity);
            update.setText("当前温度：" + WeatherBridge.getTemperatureLabel(activity)
                    + "\n最近更新：" + when
                    + (provider.length() == 0 ? "" : "\n数据源：" + provider)
                    + (error.length() == 0 ? "" : "\n刷新失败：" + error));
        }
    }

    private static void showCitySearchDialog(final Activity activity, final Resources resources,
            final View pageRoot, final SettingItemSwitch automatic) {
        final Dialog dialog = new Dialog(activity);
        LinearLayout panel = new LinearLayout(activity);
        panel.setOrientation(LinearLayout.VERTICAL);
        GradientDrawable panelBackground = new GradientDrawable();
        panelBackground.setColor(0xfff7f7f7);
        panelBackground.setCornerRadius(dp(activity, 6));
        panelBackground.setStroke(1, 0xffcfcfcf);
        panel.setBackgroundDrawable(panelBackground);

        TextView title = text(activity, "手动选择城市", 17, 0xff555b68, false);
        title.setGravity(Gravity.CENTER);
        panel.addView(title, new LinearLayout.LayoutParams(-1, dp(activity, 58)));
        panel.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

        LinearLayout content = new LinearLayout(activity);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setPadding(dp(activity, 24), dp(activity, 20), dp(activity, 24), dp(activity, 22));
        final EditText input = new EditText(activity);
        input.setSingleLine(true);
        input.setTextSize(16);
        input.setTextColor(0xff454a55);
        input.setHintTextColor(0xff9a9da3);
        input.setHint("输入城市名称，例如北京、深圳");
        input.setPadding(dp(activity, 14), 0, dp(activity, 14), 0);
        GradientDrawable inputBackground = new GradientDrawable();
        inputBackground.setColor(0xffffffff);
        inputBackground.setCornerRadius(dp(activity, 4));
        inputBackground.setStroke(1, 0xffc8c8c8);
        input.setBackgroundDrawable(inputBackground);
        content.addView(input, new LinearLayout.LayoutParams(-1, dp(activity, 48)));
        TextView hint = text(activity, "可输入中文或英文城市名，下一步选择准确地区", 13,
                0xff888888, false);
        hint.setPadding(dp(activity, 2), dp(activity, 10), 0, 0);
        content.addView(hint, new LinearLayout.LayoutParams(-1, dp(activity, 38)));
        panel.addView(content, new LinearLayout.LayoutParams(-1, -2));
        panel.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

        LinearLayout buttons = new LinearLayout(activity);
        buttons.setOrientation(LinearLayout.HORIZONTAL);
        TextView cancel = dialogButton(activity, "取消", 0xff62666e);
        final TextView search = dialogButton(activity, "搜索", 0xff527fcb);
        cancel.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { dialog.dismiss(); }
        });
        search.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                final String query = input.getText().toString().trim();
                if (query.length() < 2) { input.setError("请输入至少两个字"); return; }
                search.setEnabled(false);
                search.setText("搜索中…");
                WeatherBridge.searchCities(activity, query, new WeatherBridge.CitySearchCallback() {
                    public void onResult(final List<WeatherBridge.CityResult> cities,
                            final String error) {
                        activity.runOnUiThread(new Runnable() { public void run() {
                            if (activity.isFinishing()) return;
                            dialog.dismiss();
                            if (error != null) Toast.makeText(activity, error,
                                    Toast.LENGTH_LONG).show();
                            else if (cities == null || cities.isEmpty()) Toast.makeText(activity,
                                    "没有找到这个城市", Toast.LENGTH_SHORT).show();
                            else showCityResultDialog(activity, resources, pageRoot,
                                    automatic, cities);
                        }});
                    }
                });
            }
        });
        buttons.addView(cancel, new LinearLayout.LayoutParams(0, dp(activity, 50), 1f));
        buttons.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(1, dp(activity, 50)));
        buttons.addView(search, new LinearLayout.LayoutParams(0, dp(activity, 50), 1f));
        panel.addView(buttons, new LinearLayout.LayoutParams(-1, dp(activity, 50)));
        dialog.setContentView(panel);
        Window window = dialog.getWindow();
        if (window != null) window.setBackgroundDrawableResource(android.R.color.transparent);
        dialog.show();
        Window shown = dialog.getWindow();
        if (shown != null) shown.setLayout(Math.min(dp(activity, 360),
                activity.getResources().getDisplayMetrics().widthPixels - dp(activity, 32)), -2);
        input.requestFocus();
        if (shown != null) shown.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE);
    }

    private static void showCityResultDialog(final Activity activity, final Resources resources,
            final View pageRoot, final SettingItemSwitch automatic,
            final List<WeatherBridge.CityResult> cities) {
        final Dialog dialog = new Dialog(activity);
        LinearLayout panel = new LinearLayout(activity);
        panel.setOrientation(LinearLayout.VERTICAL);
        GradientDrawable background = new GradientDrawable();
        background.setColor(0xfff7f7f7);
        background.setCornerRadius(dp(activity, 6));
        background.setStroke(1, 0xffcfcfcf);
        panel.setBackgroundDrawable(background);
        TextView title = text(activity, "选择准确地区", 17, 0xff555b68, false);
        title.setGravity(Gravity.CENTER);
        panel.addView(title, new LinearLayout.LayoutParams(-1, dp(activity, 58)));
        panel.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));
        LinearLayout rows = new LinearLayout(activity);
        rows.setOrientation(LinearLayout.VERTICAL);
        int count = Math.min(cities.size(), 8);
        for (int i = 0; i < count; i++) {
            final int which = i;
            TextView row = text(activity, cities.get(i).displayName(), 15, 0xff454a55, false);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.setPadding(dp(activity, 22), 0, dp(activity, 18), 0);
            row.setBackgroundColor(0xfffafafa);
            row.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    dialog.dismiss();
                    WeatherBridge.setManualLocation(activity, cities.get(which));
                    if (automatic != null) automatic.setCheckedAnimated(false);
                    updateDynamicWeatherStatus(activity, resources, pageRoot);
                    Toast.makeText(activity, "已切换到 " + cities.get(which).displayName(),
                            Toast.LENGTH_SHORT).show();
                    pageRoot.postDelayed(new Runnable() { public void run() {
                        updateDynamicWeatherStatus(activity, resources, pageRoot);
                    }}, 700L);
                    pageRoot.postDelayed(new Runnable() { public void run() {
                        updateDynamicWeatherStatus(activity, resources, pageRoot);
                    }}, 2200L);
                    pageRoot.postDelayed(new Runnable() { public void run() {
                        updateDynamicWeatherStatus(activity, resources, pageRoot);
                    }}, 5000L);
                }
            });
            rows.addView(row, new LinearLayout.LayoutParams(-1, dp(activity, 54)));
            if (i + 1 < count) rows.addView(smartisanDivider(activity),
                    new LinearLayout.LayoutParams(-1, 1));
        }
        ScrollView scroll = new ScrollView(activity);
        scroll.addView(rows, new ScrollView.LayoutParams(-1, -2));
        panel.addView(scroll, new LinearLayout.LayoutParams(-1,
                Math.min(dp(activity, count * 54), dp(activity, 360))));
        panel.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));
        TextView cancel = dialogButton(activity, "取消", 0xff62666e);
        cancel.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { dialog.dismiss(); }
        });
        panel.addView(cancel, new LinearLayout.LayoutParams(-1, dp(activity, 50)));
        dialog.setContentView(panel);
        Window window = dialog.getWindow();
        if (window != null) window.setBackgroundDrawableResource(android.R.color.transparent);
        dialog.show();
        Window shown = dialog.getWindow();
        if (shown != null) shown.setLayout(Math.min(dp(activity, 360),
                activity.getResources().getDisplayMetrics().widthPixels - dp(activity, 32)), -2);
    }

    private static void showOcdOptionsPage(final Activity activity) {
        try {
            final SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = inflate(activity, context, "setting_ocd_options");
            bindBackTitle(activity, resources, root, "view_title",
                    getString(resources, "obsession_header_title", "OCD Settings"), "OCD_OPTIONS", backToMainAction(activity));
            bindSwitch(activity, resources, root, "item_id_hide_lable", "launcher_hide_lable", false);
            bindSwitch(activity, resources, root, "item_id_hide_navigation_bar", "launcher_hide_navigation_bar", false);
            bindBadgeVisibilitySwitch(activity, resources, root);
            bindBadgeSwipeCleanSwitch(activity, resources, root);
            bindSwitch(activity, resources, root, "item_id_unlock_anim", "launcher_unlock_animation_enabled", true);
            migrateSearchGestureSetting(activity);
            bindSwitch(activity, resources, root, "item_id_search_page_enabled",
                    KEY_SWIPE_UP_SEARCH_ENABLED, true);
            bindSwitch(activity, resources, root, "item_id_swipe_down_system_panels",
                    KEY_SWIPE_DOWN_SYSTEM_PANELS_ENABLED, true);
            synchronizeBadgeSettingsWithNotificationAccess(activity,
                    com.smartisanos.launcher.badge.BadgeBridge.hasNotificationAccess(activity));
            tuneScrollBars(root);
            setSettingsContentView(activity, context, resources, root, true);
        } catch (Throwable t) {
            showInfoDialog(activity, "OCD Settings", "Unable to open OCD settings");
        }
    }

    private static void styleNotificationAccessLink(final Activity activity, Resources resources, View root) {
        try {
            int viewId = resources.getIdentifier("item_id_badge_notification_access", "id", SETTINGS_PKG);
            View candidate = root.findViewById(viewId);
            if (!(candidate instanceof TextView)) {
                return;
            }
            TextView view = (TextView) candidate;
            String full = String.valueOf(view.getText());
            String action = getString(resources, "obsession_badge_notification_access_action",
                    "Tap to configure");
            int start = full.lastIndexOf(action);
            if (start < 0) {
                return;
            }
            SpannableString styled = new SpannableString(full);
            int end = start + action.length();
            styled.setSpan(new android.text.style.ClickableSpan() {
                public void onClick(View widget) {
                    com.smartisanos.launcher.badge.BadgeBridge.openNotificationAccessSettings(activity);
                }

                public void updateDrawState(android.text.TextPaint paint) {
                    paint.setColor(0xff4f7edc);
                    paint.setUnderlineText(true);
                }
            }, start, end, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
            view.setText(styled);
            view.setOnClickListener(null);
            view.setMovementMethod(android.text.method.LinkMovementMethod.getInstance());
            view.setHighlightColor(Color.TRANSPARENT);
        } catch (Throwable ignored) {
        }
    }

    private static void showInfoDialog(final Activity activity, String title, String message) {
        final Dialog dialog = new Dialog(activity);
        LinearLayout root = new LinearLayout(activity);
        prepareSmartisanDialogRoot(activity, root);

        TextView titleView = text(activity, title, 18, 0xff333333, true);
        titleView.setGravity(Gravity.CENTER);
        root.addView(titleView, new LinearLayout.LayoutParams(-1, dp(activity, 54)));

        root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

        final boolean longMessage = message != null
                && (message.length() > 420 || message.split("\\n", -1).length > 12);
        TextView messageView = text(activity, message, longMessage ? 13 : 14, 0xff666666, false);
        messageView.setGravity(Gravity.LEFT | Gravity.TOP);
        messageView.setLineSpacing(dp(activity, 4), 1.08f);
        messageView.setPadding(dp(activity, 26), dp(activity, 20), dp(activity, 26), dp(activity, 20));
        if (longMessage) {
            ScrollView messageScroll = new ScrollView(activity);
            messageScroll.setFillViewport(false);
            messageScroll.setOverScrollMode(View.OVER_SCROLL_IF_CONTENT_SCROLLS);
            messageScroll.setVerticalScrollBarEnabled(true);
            messageScroll.addView(messageView, new ScrollView.LayoutParams(-1, -2));
            int maxHeight = Math.max(dp(activity, 260),
                    activity.getResources().getDisplayMetrics().heightPixels - dp(activity, 330));
            root.addView(messageScroll, new LinearLayout.LayoutParams(-1, maxHeight));
        } else {
            root.addView(messageView, new LinearLayout.LayoutParams(-1, -2));
        }

        root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

        TextView ok = smartisanDialogActionButton(activity, "确定", true, 0);
        ok.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                dialog.dismiss();
            }
        });
        root.addView(ok, new LinearLayout.LayoutParams(-1, dp(activity, 56)));

        dialog.setContentView(root);
        Window window = dialog.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
        }
        dialog.show();
        Window shown = dialog.getWindow();
        if (shown != null) {
            int screenWidth = activity.getResources().getDisplayMetrics().widthPixels;
            int width = Math.min(dp(activity, 380), screenWidth - dp(activity, 32));
            shown.setLayout(width, -2);
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
        String[] candidates = themePreviewCandidates(context, themeId);
        for (int i = 0; i < candidates.length; i++) {
            Bitmap bitmap = sampledAssetBitmap(context, candidates[i], 180, 210);
            if (bitmap != null) {
                return bitmap;
            }
        }
        return null;
    }

    private static String[] themePreviewCandidates(Context context, String themeId) {
        int mode = readLauncherMode(context);
        return new String[]{
                "theme_preview/" + themeId + "/" + mode + "/trident_S.jpg",
                "theme_preview/" + themeId + "/12/trident_S.jpg",
                "theme_preview/" + themeId + "/20/trident_S.jpg",
                "theme_preview/" + themeId + "/" + mode + "/delta_L.jpg",
        };
    }

    private static Bitmap cachedThemePreviewBitmap(Context context, String themeId) {
        String[] candidates = themePreviewCandidates(context, themeId);
        for (int i = 0; i < candidates.length; i++) {
            String key = candidates[i] + "#180x210";
            synchronized (sThemePreviewCache) {
                Bitmap bitmap = sThemePreviewCache.get(key);
                if (bitmap != null && !bitmap.isRecycled()) {
                    return bitmap;
                }
            }
        }
        return null;
    }

    private static void requestThemePreview(final Context context, final String themeId,
                                            final ThemePreviewAdapter adapter) {
        if (context == null || TextUtils.isEmpty(themeId) || cachedThemePreviewBitmap(context, themeId) != null) {
            return;
        }
        final String key = themeId + "#" + readLauncherMode(context);
        synchronized (sThemePreviewFetchPending) {
            if (sThemePreviewFetchPending.containsKey(key)) {
                return;
            }
            sThemePreviewFetchPending.put(key, Boolean.TRUE);
        }
        final Context app = context.getApplicationContext() == null
                ? context : context.getApplicationContext();
        THEME_PREVIEW_FETCH_EXECUTOR.execute(new Runnable() {
            public void run() {
                try {
                    android.os.Process.setThreadPriority(android.os.Process.THREAD_PRIORITY_BACKGROUND);
                    themePreviewBitmap(app, themeId);
                    new Handler(Looper.getMainLooper()).post(new Runnable() {
                        public void run() {
                            if (adapter != null) {
                                adapter.notifyPreviewLoaded();
                            }
                        }
                    });
                } finally {
                    synchronized (sThemePreviewFetchPending) {
                        sThemePreviewFetchPending.remove(key);
                    }
                }
            }
        });
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
        root.setLayoutParams(new AbsListView.LayoutParams(-1, dp(context, 112)));

        root.addView(iconHeaderRow(activity, context, resources, "图标样式", iconSourceSubtitle(activity),
                "selector_setting_sub_item_bg_top", new View.OnClickListener() {
            public void onClick(View v) {
                showGlobalIconSourceDialog(activity);
            }
        }, false),
                new LinearLayout.LayoutParams(-1, dp(context, 56)));

        View.OnClickListener iconSizeClick = new View.OnClickListener() {
            public void onClick(View v) {
                showIconSizeDialog(activity);
            }
        };
        View iconSizeRow = iconHeaderRow(activity, context, resources, "桌面图标大小", iconSizeSubtitle(activity),
                "selector_setting_sub_item_bg_bottom", iconSizeClick, false);
        iconSizeRow.setClickable(true);
        iconSizeRow.setOnClickListener(iconSizeClick);
        root.addView(iconSizeRow, new LinearLayout.LayoutParams(-1, dp(context, 56)));
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
            View.OnClickListener listener = new View.OnClickListener() {
                public void onClick(View v) {
                    toggleImprovedIcon(activity, item);
                }
            };
            bindSwitchControlOnly(item, listener);
            return item;
        }
        RelativeLayout row = new RelativeLayout(context);
        setBackground(row, resources, bgName);
        row.setClickable(click != null);
        row.setOnClickListener(click);

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
        boolean iconSourceRow = "图标样式".equals(titleText);
        if (iconSizeRow || iconSourceRow) {
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
            lp.rightMargin = (iconSizeRow || iconSourceRow) ? dp(context, 58) : dp(context, 24);
            row.addView(subtitle, lp);
            if (iconSizeRow) {
                subtitle.setTag(TAG_ICON_SIZE_SUBTITLE);
            } else if (iconSourceRow) {
                subtitle.setTag(TAG_ICON_PACK_SUBTITLE);
            }
            subtitle.setContentDescription(subtitleText);
        }
        return row;
    }

    private static String iconSourceSubtitle(Context context) {
        return IconSourceManager.label(context, IconSourceManager.get(context));
    }

    /** Shows a transactional global-source chooser. Nothing is persisted until Apply is tapped. */
    private static void showGlobalIconSourceDialog(final Activity activity) {
        if (activity == null || activity.isFinishing()) return;
        final SettingsResourceContext context;
        try {
            context = createSettingsContext(activity);
        } catch (Exception error) {
            Log.w(LOG_TAG, "GLOBAL_ICON_SOURCE_DIALOG_CONTEXT_FAILED", error);
            return;
        }
        final Resources resources = context.getResources();
        final IconSourceManager.Selection[] temporary = new IconSourceManager.Selection[]{IconSourceManager.get(activity)};
        final Dialog dialog = new Dialog(activity);
        final LinearLayout root = new LinearLayout(context);
        root.setOrientation(LinearLayout.VERTICAL);
        prepareSmartisanDialogRoot(activity, root);

        TextView title = text(context, "选择图标样式", 18, 0xff333333, true);
        title.setGravity(Gravity.CENTER);
        root.addView(title, new LinearLayout.LayoutParams(-1, dp(context, 54)));
        root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

        final LinearLayout preview = new LinearLayout(context);
        preview.setGravity(Gravity.CENTER);
        preview.setOrientation(LinearLayout.HORIZONTAL);
        preview.setPadding(dp(context, 18), dp(context, 12), dp(context, 18), dp(context, 12));
        root.addView(preview, new LinearLayout.LayoutParams(-1, dp(context, 104)));

        final LinearLayout choices = new LinearLayout(context);
        choices.setOrientation(LinearLayout.VERTICAL);
        final ScrollView choiceScroll = new ScrollView(context);
        choiceScroll.setFillViewport(false);
        choiceScroll.setVerticalScrollBarEnabled(false);
        choiceScroll.setOverScrollMode(View.OVER_SCROLL_IF_CONTENT_SCROLLS);
        choiceScroll.addView(choices, new ScrollView.LayoutParams(-1, -2));
        root.addView(choiceScroll, new LinearLayout.LayoutParams(-1, dp(context, 113)));
        final TextView scanning = text(context, "正在读取图标包…", 14, 0xff9d9fa6, false);
        scanning.setGravity(Gravity.CENTER);
        root.addView(scanning, new LinearLayout.LayoutParams(-1, dp(context, 42)));

        final ArrayList<IconSourceOption> options = new ArrayList<IconSourceOption>();
        options.add(new IconSourceOption(IconSourceManager.Selection.defaultIcon(), "默认图标"));
        options.add(new IconSourceOption(IconSourceManager.Selection.improved(), "改进版图标"));
        rebuildGlobalIconSourceOptions(activity, context, resources, choices, choiceScroll, preview,
                temporary, options);
        refreshGlobalIconPreview(activity, context, resources, preview, temporary[0]);

        root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));
        LinearLayout buttons = new LinearLayout(context);
        buttons.setGravity(Gravity.CENTER);
        buttons.setOrientation(LinearLayout.HORIZONTAL);
        TextView cancel = smartisanDialogActionButton(context, "取消", false, -1);
        cancel.setOnClickListener(new View.OnClickListener() { public void onClick(View v) { dialog.dismiss(); } });
        TextView apply = smartisanDialogActionButton(context, "应用", true, 1);
        apply.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                applyGlobalIconSource(activity, temporary[0]);
                dialog.dismiss();
            }
        });
        buttons.addView(cancel, new LinearLayout.LayoutParams(0, dp(context, 56), 1));
        buttons.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(1, dp(context, 56)));
        buttons.addView(apply, new LinearLayout.LayoutParams(0, dp(context, 56), 1));
        root.addView(buttons, new LinearLayout.LayoutParams(-1, dp(context, 56)));
        dialog.setContentView(root);
        Window window = dialog.getWindow();
        if (window != null) window.setBackgroundDrawableResource(android.R.color.transparent);
        dialog.show();
        window = dialog.getWindow();
        if (window != null) {
            window.setLayout(Math.min(dp(context, 420),
                    activity.getResources().getDisplayMetrics().widthPixels - dp(context, 32)),
                    WindowManager.LayoutParams.WRAP_CONTENT);
        }

        new Thread(new Runnable() {
            public void run() {
                final ArrayList<String> packs = IconPackManager.getIconPackPackages(activity.getApplicationContext());
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    public void run() {
                        if (activity.isFinishing() || !dialog.isShowing()) return;
                        scanning.setVisibility(View.GONE);
                        for (int i = 0; i < packs.size(); i++) {
                            String packageName = packs.get(i);
                            options.add(new IconSourceOption(IconSourceManager.Selection.pack(packageName),
                                    IconPackManager.getIconPackLabel(activity, packageName)));
                        }
                        rebuildGlobalIconSourceOptions(activity, context, resources, choices, choiceScroll,
                                preview, temporary, options);
                    }
                });
            }
        }, "icon-source-pack-scan").start();
    }

    private static void rebuildGlobalIconSourceOptions(final Activity activity, final Context context,
                                                        final Resources resources, LinearLayout choices,
                                                        ScrollView choiceScroll, final LinearLayout preview,
                                                        final IconSourceManager.Selection[] temporary,
                                                        final List<IconSourceOption> options) {
        choices.removeAllViews();
        for (int i = 0; i < options.size(); i++) {
            final IconSourceOption option = options.get(i);
            final boolean selected = sameIconSource(temporary[0], option.selection);
            RelativeLayout row = new RelativeLayout(context);
            String background = i == 0 ? (options.size() == 1
                    ? "selector_setting_sub_item_bg_single" : "selector_setting_sub_item_bg_top")
                    : (i == options.size() - 1 ? "selector_setting_sub_item_bg_bottom"
                    : "selector_setting_sub_item_bg_middle");
            int backgroundId = resources.getIdentifier(background, "drawable", SETTINGS_PKG);
            row.setBackgroundDrawable(backgroundId == 0 ? smartisanDialogListRowBackground()
                    : resources.getDrawable(backgroundId));
            row.setClickable(true);
            row.setFocusable(true);
            row.setClipChildren(false);
            row.setClipToPadding(false);

            TextView label = new TextView(context);
            label.setText(option.label);
            label.setTextSize(17);
            label.setTextColor(0xff454545);
            label.setGravity(Gravity.CENTER_VERTICAL);
            label.setSingleLine(true);
            label.setEllipsize(TextUtils.TruncateAt.END);
            RelativeLayout.LayoutParams labelLp = new RelativeLayout.LayoutParams(-1, -1);
            labelLp.leftMargin = dp(context, 24);
            labelLp.rightMargin = dp(context, 56);
            row.addView(label, labelLp);

            ImageView selectedMark = new ImageView(context);
            selectedMark.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            selectedMark.setImageDrawable(safeDrawable(resources,
                    drawable(resources, "preview_picture_selected")));
            selectedMark.setVisibility(selected ? View.VISIBLE : View.INVISIBLE);
            RelativeLayout.LayoutParams markLp = new RelativeLayout.LayoutParams(dp(context, 22), dp(context, 22));
            markLp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
            markLp.addRule(RelativeLayout.CENTER_VERTICAL);
            markLp.rightMargin = dp(context, 24);
            row.addView(selectedMark, markLp);

            final IconSourceManager.Selection selection = option.selection;
            row.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                temporary[0] = selection;
                if (selection.type == IconSourceManager.Type.PACK) {
                    IconPackManager.preloadIconPackAsync(activity, selection.packageName);
                }
                rebuildGlobalIconSourceOptions(activity, context, resources, choices, choiceScroll,
                        preview, temporary, options);
                refreshGlobalIconPreview(activity, context, resources, preview, selection);
                for (int attempt = 1; attempt <= 4; attempt++) {
                    preview.postDelayed(new Runnable() {
                        public void run() {
                            if (sameIconSource(temporary[0], selection)) {
                                refreshGlobalIconPreview(activity, context, resources, preview, selection);
                            }
                        }
                    }, attempt * 260L);
                }
            }
            });
            if (i < options.size() - 1) {
                View divider = smartisanDivider(context);
                RelativeLayout.LayoutParams dividerLp = new RelativeLayout.LayoutParams(-1, 1);
                dividerLp.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
                dividerLp.leftMargin = dp(context, 24);
                dividerLp.rightMargin = dp(context, 24);
                row.addView(divider, dividerLp);
            }
            choices.addView(row, new LinearLayout.LayoutParams(-1, dp(context, 54)));
        }
        ViewGroup.LayoutParams current = choiceScroll.getLayoutParams();
        if (current instanceof LinearLayout.LayoutParams) {
            int available = activity.getResources().getDisplayMetrics().heightPixels - dp(context, 300);
            int max = Math.max(dp(context, 112), Math.min(dp(context, 280), available));
            current.height = Math.min(max, Math.max(dp(context, 54), options.size() * dp(context, 54)));
            choiceScroll.setLayoutParams(current);
        }
    }

    private static final class IconSourceOption {
        final IconSourceManager.Selection selection;
        final String label;

        IconSourceOption(IconSourceManager.Selection selection, String label) {
            this.selection = selection;
            this.label = label;
        }
    }

    private static boolean sameIconSource(IconSourceManager.Selection one, IconSourceManager.Selection two) {
        if (one == null || two == null || one.type != two.type) return false;
        return one.type != IconSourceManager.Type.PACK
                || TextUtils.equals(one.packageName, two.packageName);
    }

    private static void refreshGlobalIconPreview(final Activity activity, final Context context, final Resources resources,
                                                 final LinearLayout preview, final IconSourceManager.Selection temporary) {
        preview.removeAllViews();
        final int generation = ++sIconPreviewGeneration;
        preview.setTag(Integer.valueOf(generation));
        final IconPreviewRepository repository = IconPreviewRepository.get(activity);
        List<ResolveInfo> apps = previewSampleApps(activity, temporary);
        for (int i = 0; i < apps.size(); i++) {
            final ResolveInfo info = apps.get(i);
            LinearLayout cell = new LinearLayout(context);
            cell.setGravity(Gravity.CENTER);
            cell.setOrientation(LinearLayout.VERTICAL);
            final ImageView icon = new ImageView(context);
            icon.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            icon.setImageDrawable(safeDrawable(resources, drawable(resources, "ic_add_icon_plus")));
            cell.addView(icon, new LinearLayout.LayoutParams(dp(context, 52), dp(context, 52)));
            TextView name = text(context, String.valueOf(info.loadLabel(activity.getPackageManager())), 11, 0xff6d7079, false);
            name.setSingleLine(true);
            name.setGravity(Gravity.CENTER);
            cell.addView(name, new LinearLayout.LayoutParams(dp(context, 82), dp(context, 28)));
            preview.addView(cell, new LinearLayout.LayoutParams(0, -1, 1f));
            final ActivityInfo ai = info == null ? null : info.activityInfo;
            if (ai == null) continue;
            IconSourceManager.Selection selection = temporary == null
                    ? IconSourceManager.get(activity) : temporary;
            String type = selection.type == IconSourceManager.Type.PACK ? "PACK"
                    : selection.type == IconSourceManager.Type.IMPROVED ? "IMPROVED" : "DEFAULT";
            IconPreviewRepository.ImprovedCandidate candidate =
                    repository.resolveImprovedCandidate(ai.packageName, ai.name);
            String sourceId = selection.type == IconSourceManager.Type.IMPROVED
                    ? candidate.sourceId
                    : (selection.packageName == null ? "" : selection.packageName);
            IconPreviewRepository.IconRenderKey key = new IconPreviewRepository.IconRenderKey(
                    ai.packageName, ai.name, 0L, type, sourceId,
                    packageVersionStamp(activity, ai.packageName), dp(context, 52),
                    activity.getResources().getDisplayMetrics().densityDpi, 1);
            final java.lang.ref.WeakReference<ImageView> iconRef = new java.lang.ref.WeakReference<ImageView>(icon);
            final java.lang.ref.WeakReference<LinearLayout> previewRef = new java.lang.ref.WeakReference<LinearLayout>(preview);
            repository.request(key, IconPreviewRepository.Priority.P0_VISIBLE,
                    new IconPreviewRepository.DrawableLoader() {
                        public Drawable load() {
                            return effectiveIconDrawable(activity.getApplicationContext(), info, resources, temporary);
                        }
                    }, new IconPreviewRepository.Callback() {
                        public void onIconReady(String resultKey, Bitmap bitmap) {
                            LinearLayout targetPreview = previewRef.get();
                            ImageView targetIcon = iconRef.get();
                            Object tag = targetPreview == null ? null : targetPreview.getTag();
                            if (!(tag instanceof Integer) || ((Integer) tag).intValue() != generation
                                    || targetIcon == null || bitmap == null) return;
                            targetIcon.setImageBitmap(bitmap);
                        }
                    });
        }
    }

    private static List<ResolveInfo> previewSampleApps(Context context, IconSourceManager.Selection temporary) {
        ArrayList<ResolveInfo> result = new ArrayList<ResolveInfo>();
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_LAUNCHER);
        List<ResolveInfo> apps = queryLauncherActivitiesWithProfiles(context.getPackageManager(), intent, 0);

        String[][] targetCategories = new String[][]{
                new String[]{"dialtacts", "dialer", "phoneactivity", "com.android.phone", "com.android.contacts", "com.smartisanos.phone"},
                new String[]{"mms", "messaging", "message", "com.android.mms"},
                new String[]{"notes", "notepad", "memo", "note", "com.smartisanos.notes", "com.coloros.note"}
        };

        for (int cat = 0; cat < targetCategories.length && result.size() < 3; cat++) {
            String[] tokens = targetCategories[cat];
            for (int i = 0; apps != null && i < apps.size(); i++) {
                ResolveInfo info = apps.get(i);
                ActivityInfo ai = info == null ? null : info.activityInfo;
                if (ai == null || !shouldShowIconEntry(info) || hasManualIconOverride(context, ai)) continue;
                if (containsActivity(result, ai)) continue;
                String key = (ai.packageName + " " + ai.name).toLowerCase(Locale.US);
                String label = "";
                try {
                    CharSequence loaded = info.loadLabel(context.getPackageManager());
                    label = loaded == null ? "" : loaded.toString().trim().toLowerCase(Locale.US);
                } catch (Throwable ignored) {}
                boolean match = false;
                for (String token : tokens) {
                    if (key.contains(token) || label.contains(token)) {
                        match = true;
                        break;
                    }
                }
                if (match) {
                    result.add(info);
                    break;
                }
            }
        }

        if (result.size() < 3 && apps != null) {
            for (int i = 0; i < apps.size() && result.size() < 3; i++) {
                ResolveInfo info = apps.get(i);
                ActivityInfo ai = info == null ? null : info.activityInfo;
                if (ai != null && shouldShowIconEntry(info) && !hasManualIconOverride(context, ai) && !containsActivity(result, ai)) {
                    result.add(info);
                }
            }
        }
        return result;
    }

    private static boolean containsActivity(List<ResolveInfo> infos, ActivityInfo wanted) {
        for (int i = 0; i < infos.size(); i++) {
            ActivityInfo current = infos.get(i) == null ? null : infos.get(i).activityInfo;
            if (current != null && TextUtils.equals(current.packageName, wanted.packageName)
                    && TextUtils.equals(current.name, wanted.name)) return true;
        }
        return false;
    }

    private static void applyGlobalIconSource(final Context context, final IconSourceManager.Selection selection) {
        if (context == null) return;
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        IconSourceManager.set(app, selection);
        invalidateActiveIconAdapter(true);
        new Thread(new Runnable() {
            public void run() {
                try {
                    android.os.Process.setThreadPriority(android.os.Process.THREAD_PRIORITY_BACKGROUND);
                    if (selection != null && selection.type == IconSourceManager.Type.PACK) {
                        IconPackManager.preloadSelectedIconPack(app);
                    }
                    Intent intent = new Intent(Intent.ACTION_MAIN);
                    intent.addCategory(Intent.CATEGORY_LAUNCHER);
                    List<ResolveInfo> apps = queryLauncherActivitiesWithProfiles(app.getPackageManager(), intent, 0);
                    java.util.LinkedHashSet<String> changed = new java.util.LinkedHashSet<String>();
                    for (int i = 0; apps != null && i < apps.size(); i++) {
                        ActivityInfo ai = apps.get(i) == null ? null : apps.get(i).activityInfo;
                        if (ai != null && shouldShowIconEntry(apps.get(i))) changed.add(ai.packageName);
                    }
                    new Handler(Looper.getMainLooper()).post(new Runnable() {
                        public void run() {
                            if (context instanceof Activity) {
                                refreshIconPackSubtitle((Activity) context);
                            }
                            applyIconChanges(app, changed);
                            invalidateActiveIconAdapter(true);
                        }
                    });
                } catch (Throwable error) {
                    Log.w(LOG_TAG, "GLOBAL_ICON_SOURCE_APPLY_FAILED", error);
                }
            }
        }, "global-icon-source-apply").start();
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
        prepareSmartisanDialogRoot(activity, root);

        TextView title = new TextView(activity);
        title.setGravity(Gravity.CENTER);
        title.setSingleLine(true);
        title.setText("桌面图标大小");
        title.setTextColor(0xff333333);
        title.setTextSize(18);
        title.setTypeface(null, android.graphics.Typeface.BOLD);
        root.addView(title, new LinearLayout.LayoutParams(-1, dp(activity, 54)));
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
        previewPanel.setPadding(0, dp(activity, 6), 0, 0);
        LinearLayout.LayoutParams previewPanelLp = new LinearLayout.LayoutParams(-1, -2);
        previewPanelLp.topMargin = dp(activity, 4);
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
                } else {
                    com.smartisanos.launcher.reload.LauncherColdReloadCoordinator
                            .beginIconSizeReload(activity, current, percent);
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
            int screenWidth = activity.getResources().getDisplayMetrics().widthPixels;
            window.setLayout(Math.min(dp(activity, 380), screenWidth - dp(activity, 32)),
                    WindowManager.LayoutParams.WRAP_CONTENT);
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

    private static void prepareSmartisanDialogRoot(Context context, LinearLayout root) {
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(0, 0, 0, 0);
        GradientDrawable background = new GradientDrawable();
        background.setColor(0xfffbfbfb);
        background.setCornerRadius(dp(context, 8));
        root.setBackgroundDrawable(background);
        // The action row is a child view. Clip it to the shared panel outline
        // so its pressed/normal backgrounds cannot square off the lower edge.
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            root.setClipToOutline(true);
        }
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
        } else {
            drawable.setCornerRadii(new float[]{0, 0, 0, 0, radius, radius, radius, radius});
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

    private static boolean saveIconSizePercent(Context context, int oldPercent, int percent) {
        percent = normalizeIconSizePercent(percent);
        boolean persisted = false;
        try {
            persisted = context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .edit()
                    .putInt(KEY_LAUNCHER_ICON_SIZE, percent)
                    .commit();
        } catch (Throwable ignored) {
        }
        if (!persisted) {
            logOperation(context, "ICON_SIZE_PERSIST_FAILED", "old=" + oldPercent + ",new=" + percent);
            return false;
        }
        try {
            context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE)
                    .edit()
                    .putInt(KEY_LAUNCHER_ICON_SIZE, percent)
                    .commit();
        } catch (Throwable ignored) {
        }
        try {
            Settings.System.putInt(context.getContentResolver(), KEY_LAUNCHER_ICON_SIZE, percent);
        } catch (Throwable ignored) {
        }
        try {
            Settings.Global.putInt(context.getContentResolver(), KEY_LAUNCHER_ICON_SIZE, percent);
        } catch (Throwable ignored) {
        }
        notifyOriginalConfigChanged(KEY_LAUNCHER_ICON_SIZE);
        if (context instanceof Activity) {
            refreshIconSizeSubtitle((Activity) context, percent);
            if (!com.smartisanos.launcher.reload.LauncherColdReloadCoordinator
                    .beginIconSizeReload(context, oldPercent, percent)) {
                logOperation(context, "ICON_SIZE_RELOAD_FAILED",
                        "old=" + oldPercent + ",new=" + percent);
                return false;
            }
        }
        return true;
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
            com.smartisanos.launcher.reload.LauncherColdReloadCoordinator
                    .reportIconSizeConfigRead(newPercent);
            prefs.edit().putBoolean(PREF_ICON_SIZE_RUNTIME_DIRTY, false).commit();
            if (newPercent == 100) {
                return;
            }
            // Every launcher process starts from the unscaled XML layout map.
            // Reapply the saved percentage once, regardless of the previous process.
            applyRuntimeIconSizePercent(100, newPercent);
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
        return IconSourceManager.get(context).type == IconSourceManager.Type.IMPROVED;
    }

    private static void setImprovedIconEnabled(Context context, boolean enabled) {
        IconSourceManager.set(context, enabled
                ? IconSourceManager.Selection.improved()
                : IconSourceManager.Selection.defaultIcon());
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
        applyGlobalImprovedSelection(context, enabled);
    }

    private static void toggleImprovedIcon(Context context, SwitchEx toggle) {
        boolean enabled = !isImprovedIconEnabled(context);
        setImprovedIconEnabled(context, enabled);
        if (toggle != null) {
            toggle.setCheckedAnimated(enabled);
        }
        applyGlobalImprovedSelection(context, enabled);
    }

    private static void applyGlobalImprovedSelection(final Context context, final boolean enabled) {
        if (context == null) {
            return;
        }
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        final long generation;
        synchronized (MaintainedLauncherSettingsHost.class) {
            generation = ++sImprovedIconGeneration;
        }
        // Turning the global switch off only moves the selected check back to the
        // original preview. Keep the existing section rows stable to avoid a full
        // reclassification and visible list hitch while the background reset runs.
        invalidateActiveIconAdapter(enabled);
        new Thread(new Runnable() {
            public void run() {
                final java.util.LinkedHashSet<String> changedPackages =
                        new java.util.LinkedHashSet<String>();
                try {
                    android.os.Process.setThreadPriority(android.os.Process.THREAD_PRIORITY_BACKGROUND);
                    // Parse installed packs off the UI thread. This is local APK resource work only.
                    try {
                        com.smartisanos.home.settings.icons.IconPackManager.warmUpIconPackList(app);
                        com.smartisanos.home.settings.icons.IconPackManager.preloadSelectedIconPack(app);
                    } catch (Throwable ignored) {
                    }
                    Intent intent = new Intent(Intent.ACTION_MAIN);
                    intent.addCategory(Intent.CATEGORY_LAUNCHER);
                    int flags = Build.VERSION.SDK_INT >= 23 ? 0x00020000 : 0;
                    List<ResolveInfo> apps = queryLauncherActivitiesWithProfiles(app.getPackageManager(), intent, flags);
                    Resources resources = settingsResources(app);
                    for (int i = 0; i < apps.size(); i++) {
                        if (!isCurrentImprovedIconGeneration(app, generation, enabled)) {
                            logOperation(app, "IMPROVED_ICON_STALE_RESULT_SKIPPED",
                                    "generation=" + generation + ", enabled=" + enabled);
                            return;
                        }
                        ResolveInfo info = apps.get(i);
                        ActivityInfo ai = info == null ? null : info.activityInfo;
                        if (ai == null || ai.packageName == null || ai.name == null || !shouldShowIconEntry(info)) {
                            continue;
                        }
                        RedirectIconInfo redirect = RedirectIconDB.getRedirectIconInfo(app, ai.packageName, ai.name);
                        String mode = RedirectIconDB.modeOf(redirect);
                        if (RedirectIconDB.MODE_CUSTOM.equals(mode) || RedirectIconDB.MODE_RESOURCE.equals(mode)
                                || RedirectIconDB.MODE_PACK.equals(mode)) {
                            continue;
                        }
                        if (enabled) {
                            // Only cached/local artwork participates in the immediate refresh. Network
                            // requests are queued below and never hold up this switch or the desktop.
                            if (smartisanIconDrawableCachedOnly(app, info, resources) != null) {
                                if (!isAutoIconSelection(redirect)) {
                                    RedirectIconDB.updateAutoIcon(app, ai.packageName, ai.name);
                                    changedPackages.add(ai.packageName);
                                }
                            }
                            scheduleSmartisanIconFetch(app, ai.packageName);
                        } else if (packedIcon(app, info) != null) {
                            if (!isAutoIconSelection(redirect)) {
                                RedirectIconDB.updateAutoIcon(app, ai.packageName, ai.name);
                                changedPackages.add(ai.packageName);
                            }
                        } else if (redirect != null && !RedirectIconDB.MODE_ORIGINAL.equals(mode)) {
                            RedirectIconDB.resetIconToDefault(app, ai.packageName, ai.name);
                            changedPackages.add(ai.packageName);
                        }
                    }
                } catch (Throwable ignored) {
                }
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    public void run() {
                        if (!isCurrentImprovedIconGeneration(app, generation, enabled)) {
                            logOperation(app, "IMPROVED_ICON_STALE_RESULT_SKIPPED",
                                    "generation=" + generation + ", phase=dispatch");
                            return;
                        }
                        applyIconChanges(app, changedPackages);
                        invalidateActiveIconAdapter(enabled);
                    }
                });
            }
        }, "ImprovedIconApply").start();
    }

    private static boolean isAutoIconSelection(RedirectIconInfo info) {
        return info != null && info.useImprovedAppIcon
                && RedirectIconDB.MODE_AUTO.equals(RedirectIconDB.modeOf(info));
    }

    private static boolean isCurrentImprovedIconGeneration(Context context, long generation,
                                                            boolean enabled) {
        synchronized (MaintainedLauncherSettingsHost.class) {
            if (generation != sImprovedIconGeneration) {
                return false;
            }
        }
        return isImprovedIconEnabled(context) == enabled;
    }

    private static boolean invalidateActiveIconAdapter() {
        return invalidateActiveIconAdapter(true);
    }

    private static boolean invalidateActiveIconAdapter(final boolean rebuildSections) {
        final AppIconAdapter adapter;
        synchronized (MaintainedLauncherSettingsHost.class) {
            adapter = sActiveAppIconAdapter == null ? null : sActiveAppIconAdapter.get();
        }
        if (adapter == null || adapter.isActivityInvalid()) {
            return false;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            adapter.invalidateIconData(rebuildSections);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                public void run() {
                    adapter.invalidateIconData(rebuildSections);
                }
            });
        }
        return true;
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
            final String selected = (String) cls.getMethod("getSelectedIconPackPackage", Context.class)
                    .invoke(null, activity);
            final Dialog dialog = new Dialog(activity);
            LinearLayout root = new LinearLayout(activity);
            prepareSmartisanDialogRoot(activity, root);

            TextView title = new TextView(activity);
            title.setGravity(Gravity.CENTER);
            title.setSingleLine(true);
            title.setText("选择图标包");
            title.setTextColor(0xff333333);
            title.setTextSize(18);
            title.setTypeface(null, Typeface.BOLD);
            root.addView(title, new LinearLayout.LayoutParams(-1, dp(activity, 54)));
            root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

            LinearLayout list = new LinearLayout(activity);
            list.setOrientation(LinearLayout.VERTICAL);
            list.setBackgroundColor(0xfffafafa);
            for (int i = 0; i < labels.length; i++) {
                final int which = i;
                final String value = which == 0 ? "" :
                        (which == 1 ? "__disabled__" : packs.get(which - 2));
                boolean current = value.equals(selected == null ? "" : selected);
                TextView row = new TextView(activity);
                row.setGravity(Gravity.CENTER_VERTICAL);
                row.setSingleLine(true);
                row.setEllipsize(TextUtils.TruncateAt.END);
                row.setPadding(dp(activity, 24), 0, dp(activity, 24), 0);
                row.setText(labels[i] + (current ? "    当前" : ""));
                row.setTextColor(current ? 0xff4f8fe8 : 0xff333333);
                row.setTextSize(16);
                row.setBackgroundDrawable(smartisanDialogListRowBackground());
                row.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View v) {
                        try {
                            cls.getMethod("setSelectedIconPackPackage", Context.class, String.class)
                                    .invoke(null, activity, value);
                        } catch (Throwable ignored) {
                        }
                        dialog.dismiss();
                        refreshIconPackSubtitle(activity);
                        warmAndApplyIconPack(activity);
                        Toast.makeText(activity, "已切换图标包，正在刷新桌面", Toast.LENGTH_SHORT).show();
                    }
                });
                list.addView(row, new LinearLayout.LayoutParams(-1, dp(activity, 52)));
                if (i < labels.length - 1) {
                    LinearLayout.LayoutParams dividerLp = new LinearLayout.LayoutParams(-1, 1);
                    dividerLp.leftMargin = dp(activity, 24);
                    list.addView(smartisanDivider(activity), dividerLp);
                }
            }

            ScrollView scroll = new ScrollView(activity);
            scroll.setFillViewport(false);
            scroll.setOverScrollMode(View.OVER_SCROLL_IF_CONTENT_SCROLLS);
            scroll.addView(list, new ScrollView.LayoutParams(-1, -2));
            int maxListHeight = Math.min(dp(activity, 312),
                    activity.getResources().getDisplayMetrics().heightPixels - dp(activity, 300));
            root.addView(scroll, new LinearLayout.LayoutParams(-1,
                    Math.min(maxListHeight, dp(activity, labels.length * 52))));
            root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

            TextView cancel = smartisanDialogActionButton(activity, "取消", false, 0);
            cancel.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    dialog.dismiss();
                }
            });
            root.addView(cancel, new LinearLayout.LayoutParams(-1, dp(activity, 56)));

            dialog.setContentView(root);
            Window window = dialog.getWindow();
            if (window != null) window.setBackgroundDrawableResource(android.R.color.transparent);
            dialog.show();
            window = dialog.getWindow();
            if (window != null) {
                int screenWidth = activity.getResources().getDisplayMetrics().widthPixels;
                window.setLayout(Math.min(dp(activity, 380), screenWidth - dp(activity, 32)),
                        WindowManager.LayoutParams.WRAP_CONTENT);
            }
        } catch (Throwable t) {
            Toast.makeText(activity, "未发现可用图标包", Toast.LENGTH_SHORT).show();
        }
    }

    private static void applyIconChange(Context context) {
        try {
            Intent intent = new Intent("com.smartisanos.launcher.update_icon");
            String packages = allLauncherPackages(context);
            if (packages.length() > 0) {
                intent.putExtra("extra_packagename", packages);
            }
            dispatchIconUpdate(context, intent);
        } catch (Throwable ignored) {
        }
        refreshEnabledDoppelgangerIcons(context);
        reloadOriginalSettings(context);
    }

    private static void applyIconChange(Context context, String packageName) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            applyIconChange(context);
            return;
        }
        try {
            Intent intent = new Intent("com.smartisanos.launcher.update_icon");
            intent.putExtra("extra_packagename", packageName);
            dispatchIconUpdate(context, intent);
        } catch (Throwable ignored) {
        }
        reloadOriginalSettings(context);
    }

    /** Sends one original per-package update for a merged set of changed packages. */
    private static void applyIconChanges(Context context, java.util.Collection<String> packages) {
        if (context == null || packages == null || packages.isEmpty()) {
            return;
        }
        StringBuilder names = new StringBuilder();
        for (String packageName : packages) {
            if (TextUtils.isEmpty(packageName)) {
                continue;
            }
            if (names.length() > 0) {
                names.append(',');
            }
            names.append(packageName);
        }
        if (names.length() == 0) {
            return;
        }
        try {
            Intent intent = new Intent("com.smartisanos.launcher.update_icon");
            intent.putExtra("extra_packagename", names.toString());
            logOperation(context, "ICON_UPDATE_DISPATCHED",
                    "changedPackageCount=" + names.toString().split(",").length
                            + ", packages=" + names.toString());
            dispatchIconUpdate(context, intent);
            // Keep the original per-package path complete. Aa.c() queues the
            // database/Cell update, while O.init() refreshes the original
            // runtime settings snapshot used by the already-attached desktop
            // views. Omitting it makes the settings row reflect RedirectIconDB
            // immediately but leaves an existing desktop Cell on its old icon.
            reloadOriginalSettings(context);
        } catch (Throwable ignored) {
        }
    }

    private static void warmAndApplyIconPack(final Activity activity) {
        if (activity == null) return;
        final Context app = activity.getApplicationContext() == null ? activity : activity.getApplicationContext();
        new Thread(new Runnable() {
            public void run() {
                try {
                    Class.forName("com.smartisanos.home.settings.icons.IconPackManager")
                            .getMethod("preloadSelectedIconPack", Context.class).invoke(null, app);
                } catch (Throwable ignored) {
                }
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    public void run() {
                        invalidateActiveIconAdapter();
                        applyIconChange(activity);
                    }
                });
            }
        }, "IconPackWarmApply").start();
    }

    private static void refreshIconPackSubtitle(Activity activity) {
        if (activity == null) return;
        refreshTaggedText(activity.getWindow().getDecorView(), TAG_ICON_PACK_SUBTITLE,
                iconSourceSubtitle(activity));
    }

    private static Drawable smartisanDialogListRowBackground() {
        StateListDrawable states = new StateListDrawable();
        states.addState(new int[]{android.R.attr.state_pressed},
                new android.graphics.drawable.ColorDrawable(0xffedf2fb));
        states.addState(new int[]{},
                new android.graphics.drawable.ColorDrawable(0xfffafafa));
        return states;
    }

    private static void refreshTaggedText(View view, String tag, String value) {
        if (view == null) return;
        if (view instanceof TextView && tag.equals(view.getTag())) {
            ((TextView) view).setText(value);
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                refreshTaggedText(group.getChildAt(i), tag, value);
            }
        }
    }

    /** Refresh only the original WeatherView/CalendarView package rows. */
    private static void applyDynamicIconChange(Context context) {
        if (context == null) {
            return;
        }
        try {
            String packages = originalDynamicIconPackages();
            if (packages.length() > 0) {
                Intent update = new Intent("com.smartisanos.launcher.update_icon");
                update.putExtra("extra_packagename", packages);
                dispatchIconUpdate(context, update);
            }
        } catch (Throwable ignored) {
        }
    }

    private static String originalDynamicIconPackages() {
        StringBuilder packages = new StringBuilder();
        appendOriginalDynamicIconPackage(packages,
                "com.smartisanos.launcher.view.activeicon.H", "com.smartisanos.weather");
        appendOriginalDynamicIconPackage(packages,
                "com.smartisanos.launcher.view.activeicon.m", "com.android.calendar");
        return packages.toString();
    }

    private static void appendOriginalDynamicIconPackage(StringBuilder packages, String className,
            String fallback) {
        String packageName = fallback;
        try {
            Object value = Class.forName(className).getField("PACKAGE_NAME").get(null);
            if (value instanceof String && ((String) value).length() > 0) {
                packageName = (String) value;
            }
        } catch (Throwable ignored) {
        }
        if (packageName == null || packageName.length() == 0
                || packages.toString().contains(packageName)) {
            return;
        }
        if (packages.length() > 0) {
            packages.append(',');
        }
        packages.append(packageName);
    }

    private static String allLauncherPackages(Context context) {
        StringBuilder out = new StringBuilder();
        java.util.HashSet<String> seen = new java.util.HashSet<String>();
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
                if (!seen.add(info.activityInfo.packageName)) {
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

    /** Avoid processing the same update once directly and once via our receiver. */
    private static void dispatchIconUpdate(Context context, Intent intent) {
        boolean handled = false;
        try {
            Class.forName("com.smartisanos.launcher.Aa")
                    .getMethod("c", Intent.class).invoke(null, intent);
            handled = true;
        } catch (Throwable ignored) {
        }
        if (!handled) {
            try {
                context.sendBroadcast(intent);
            } catch (Throwable ignored) {
            }
        }
    }

    private static void forceUpdateIcon(Context context, RedirectIconInfo info) {
        if (info != null && !TextUtils.isEmpty(info.packageName)) {
            applyIconChanges(context, Collections.singleton(info.packageName));
        }
        refreshEnabledDoppelgangerIcons(context);
        invalidateActiveIconAdapter();
    }

    private static void beginPickCustomIcon(Activity activity) {
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

    private static void reopenIconChoicePage(Activity activity, String packageName,
                                             String componentName, int returnScrollY,
                                             final int choiceScrollY) {
        try {
            SettingsResourceContext context = createSettingsContext(activity);
            RedirectIconInfo info = RedirectIconDB.getRedirectIconInfo(activity, packageName, componentName);
            if (info == null) {
                return;
            }
            new AppIconAdapter(activity, context, context.getResources())
                    .showIconChoicePage(new View(activity), info, returnScrollY);
            activity.getWindow().getDecorView().post(new Runnable() {
                public void run() {
                    ScrollView scroll = firstScrollView(activity.getWindow().getDecorView());
                    if (scroll != null) {
                        scroll.scrollTo(0, Math.max(0, choiceScrollY));
                    }
                }
            });
        } catch (Throwable ignored) {
            showIconPage(activity, returnScrollY);
        }
    }

    private static void updateDesktopItemTitle(Context context, String packageName,
                                               String componentName, String displayName) {
        if (context == null || TextUtils.isEmpty(packageName)
                || TextUtils.isEmpty(componentName) || TextUtils.isEmpty(displayName)) {
            return;
        }
        try {
            final Context app = context.getApplicationContext() == null
                    ? context : context.getApplicationContext();
            final String pkg = packageName;
            final String component = componentName;
            final String title = displayName;
            Class<?> databaseHandler = Class.forName("com.smartisanos.launcher.data.A");
            java.lang.reflect.Field workerField = databaseHandler.getDeclaredField("mWorker");
            workerField.setAccessible(true);
            Handler worker = (Handler) workerField.get(null);
            if (worker == null) {
                throw new IllegalStateException("DatabaseHandler worker is null");
            }
            if (!worker.post(new Runnable() {
                public void run() {
                    try {
                        ContentValues values = new ContentValues();
                        values.put("title", title);
                        String where = "packageName='" + pkg.replace("'", "''")
                                + "' AND componentName='" + component.replace("'", "''") + "'";
                        Class.forName("com.smartisanos.launcher.data.a.l")
                                .getMethod("a", ContentValues.class, String.class)
                                .invoke(null, values, where);
                        updateDesktopItemTitleInMemory(pkg, component, title);
                    } catch (Throwable t) {
                        logOperation(app, "APP_RENAME", "database_update_failed " + shortError(t));
                    }
                    new Handler(Looper.getMainLooper()).post(new Runnable() {
                        public void run() {
                            refreshDesktopItemTitleScene(pkg, component, title);
                            postDatabaseRefreshEvent();
                            applyIconChange(app, pkg);
                            requestLauncherFrameFromContext(app);
                        }
                    });
                }
            })) {
                throw new IllegalStateException("DatabaseHandler rejected title update");
            }
        } catch (Throwable ignored) {
            logOperation(context, "APP_RENAME", "database_schedule_failed " + shortError(ignored));
        }
    }

    private static void updateDesktopItemTitleInMemory(String packageName, String componentName,
                                                        String displayName) {
        try {
            Class<?> model = Class.forName("com.smartisanos.launcher.Aa");
            java.util.HashMap items = (java.util.HashMap) model.getMethod("qc").invoke(null);
            if (items == null) return;
            for (Object item : items.values()) {
                if (item == null) continue;
                Class<?> itemClass = item.getClass();
                java.lang.reflect.Field pkgField = itemClass.getField("packageName");
                java.lang.reflect.Field componentField = itemClass.getField("componentName");
                Object pkg = pkgField.get(item);
                Object component = componentField.get(item);
                if (packageName.equals(pkg) && componentName.equals(component)) {
                    itemClass.getField("title").set(item, displayName);
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private static void refreshDesktopItemTitleScene(String packageName, String componentName,
                                                     String displayName) {
        try {
            Object mainView = Class.forName("com.smartisanos.launcher.view.Eb")
                    .getMethod("getInstance").invoke(null);
            if (mainView == null) return;
            refreshDesktopItemTitleSceneNode(mainView.getClass().getMethod("Ih").invoke(mainView),
                    packageName, componentName, displayName);
            refreshDesktopItemTitleSceneNode(mainView.getClass().getMethod("zh").invoke(mainView),
                    packageName, componentName, displayName);
        } catch (Throwable ignored) {
        }
    }

    private static void refreshDesktopItemTitleSceneNode(Object node, String packageName,
                                                         String componentName, String displayName) {
        if (node == null) return;
        try {
            if ("com.smartisanos.launcher.view.a.g".equals(node.getClass().getName())) {
                Object item = node.getClass().getMethod("Rl").invoke(node);
                if (item != null) {
                    Class<?> type = item.getClass();
                    Object pkg = type.getField("packageName").get(item);
                    Object component = type.getField("componentName").get(item);
                    if (packageName.equals(pkg) && componentName.equals(component)) {
                        type.getField("title").set(item, displayName);
                        node.getClass().getMethod("Na", String.class).invoke(node, displayName);
                        node.getClass().getMethod("setNeedDisplay").invoke(node);
                    }
                }
            }
            java.lang.reflect.Method countMethod = node.getClass().getMethod("getChildCount");
            java.lang.reflect.Method childMethod = node.getClass().getMethod("getChildAt", Integer.TYPE);
            int count = ((Integer) countMethod.invoke(node)).intValue();
            for (int i = 0; i < count; i++) {
                refreshDesktopItemTitleSceneNode(childMethod.invoke(node, i), packageName,
                        componentName, displayName);
            }
        } catch (NoSuchMethodException ignored) {
        } catch (Throwable ignored) {
        }
    }

    private static int currentIconListPosition(Activity activity) {
        try {
            ListView list = firstListView(activity.getWindow().getDecorView());
            return list == null ? 0 : list.getFirstVisiblePosition();
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static ListView firstListView(View view) {
        if (view instanceof ListView) {
            return (ListView) view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                ListView found = firstListView(group.getChildAt(i));
                if (found != null) {
                    return found;
                }
            }
        }
        return null;
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
        File dir = new File(context.getFilesDir(), "redirect_icons");
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

    private static TextView settingsSectionHeader(Context context, Resources resources, String value) {
        try {
            int layoutId = resources == null ? 0
                    : resources.getIdentifier("settings_section_header", "layout", SETTINGS_PKG);
            if (layoutId != 0) {
                SettingsResourceContext settingsContext = new SettingsResourceContext(context, resources);
                TextView header = (TextView) LayoutInflater.from(context).cloneInContext(settingsContext)
                        .inflate(layoutId, null, false);
                header.setText(value);
                return header;
            }
        } catch (Throwable ignored) {
        }
        TextView header = text(context, value, 15, 0x80000000, false);
        header.setGravity(Gravity.LEFT | Gravity.CENTER_VERTICAL);
        header.setPadding(dp(context, 30), dp(context, 11), 0, dp(context, 1));
        header.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        return header;
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
            int bg = drawable(resources, gridChooserCellBackground(position, getCount()));
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
        private boolean previewRefreshPending;

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

        void notifyPreviewLoaded() {
            if (previewRefreshPending) {
                return;
            }
            previewRefreshPending = true;
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                public void run() {
                    previewRefreshPending = false;
                    notifyDataSetChanged();
                }
            }, 120L);
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
                Bitmap bitmap = cachedThemePreviewBitmap(activity, entry.id);
                if (bitmap != null) {
                    preview.setImageBitmap(bitmap);
                } else {
                    int fallback = drawable(resources, "theme_preview_phone_black");
                    if (fallback != 0) {
                        preview.setImageResource(fallback);
                    }
                    requestThemePreview(activity, entry.id, this);
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

    private static String gridChooserCellBackground(int position, int count) {
        boolean left = (position % 2) == 0;
        int rows = (count + 1) / 2;
        int row = position / 2;
        String side = left ? "left" : "right";
        if (rows <= 1) {
            return "selector_grid_bg_single_" + side;
        }
        if (row == 0) {
            return "selector_grid_bg_top_" + side;
        }
        if (row == rows - 1) {
            return "selector_grid_bg_bottom_" + side;
        }
        return "selector_grid_bg_middle_" + side;
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

    private static final class IconChoice {
        static final int TYPE_ORIGINAL = 0;
        static final int TYPE_LIBRARY = 1;
        static final int TYPE_CUSTOM = 2;
        static final int TYPE_PACKED = 3;

        final int type;
        final String name;
        final String label;

        IconChoice(int type, String name, String label) {
            this.type = type;
            this.name = name;
            this.label = label;
        }
    }

    private static List<String> iconVariantNames(Context context, String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return Collections.emptyList();
        }
        Map<String, List<String>> map = loadIconVariantMap(context);
        List<String> exact = map == null ? null : map.get(packageName);
        if (exact != null && !exact.isEmpty()) {
            return exact;
        }
        return Collections.emptyList();
    }

    private static Map<String, List<String>> loadIconVariantMap(Context context) {
        if (sIconVariants != null) {
            return sIconVariants;
        }
        HashMap<String, List<String>> out = new HashMap<String, List<String>>();
        InputStream in = null;
        try {
            AssetManager assets = context == null ? null : context.getAssets();
            if (assets == null) {
                sIconVariants = out;
                return out;
            }
            in = assets.open("icons/variants.json");
            String json = new String(readAllBytes(in, 1024 * 1024), "UTF-8");
            JSONObject root = new JSONObject(json);
            JSONObject variants = root.optJSONObject("variants");
            if (variants != null) {
                JSONArray names = variants.names();
                if (names != null) {
                    for (int i = 0; i < names.length(); i++) {
                        String pkg = names.optString(i, null);
                        JSONArray arr = pkg == null ? null : variants.optJSONArray(pkg);
                        if (pkg == null || arr == null) {
                            continue;
                        }
                        ArrayList<String> list = new ArrayList<String>();
                        for (int j = 0; j < arr.length(); j++) {
                            String value = stripPng(arr.optString(j, null));
                            if (!TextUtils.isEmpty(value) && !list.contains(value)) {
                                list.add(value);
                            }
                        }
                        if (!list.isEmpty()) {
                            out.put(pkg, list);
                        }
                    }
                }
            }
        } catch (Throwable ignored) {
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        }
        sIconVariants = out;
        return out;
    }

    private static String stripPng(String value) {
        if (value == null) {
            return null;
        }
        String out = value.trim();
        if (out.toLowerCase(Locale.US).endsWith(".png")) {
            out = out.substring(0, out.length() - 4);
        }
        return out;
    }

    private static final class AppIconAdapter extends BaseAdapter {
        private static final int TYPE_SECTION = 0;
        private static final int TYPE_APP = 1;
        private final Activity activity;
        private final SettingsResourceContext context;
        private final Resources resources;
        private final IconManager iconManager;
        private final List<RedirectIconInfo> apps = new ArrayList<RedirectIconInfo>();
        private final List<Object> rows = new ArrayList<Object>();
        private final LayoutInflater inflater;
        private long iconDataGeneration;

        AppIconAdapter(Activity activity, SettingsResourceContext context, Resources resources) {
            this.activity = activity;
            this.context = context;
            this.resources = resources;
            this.inflater = LayoutInflater.from(activity).cloneInContext(context);
            this.iconManager = new IconManager(activity);
            this.apps.addAll(loadEntries(activity, this.iconManager));
            rebuildRows();
        }

        AppIconAdapter(Activity activity, SettingsResourceContext context, Resources resources,
                       List<RedirectIconInfo> entries) {
            this(activity, context, resources, entries, new IconManager(activity));
        }

        AppIconAdapter(Activity activity, SettingsResourceContext context, Resources resources,
                       List<RedirectIconInfo> entries, IconManager iconManager) {
            this.activity = activity;
            this.context = context;
            this.resources = resources;
            this.inflater = LayoutInflater.from(activity).cloneInContext(context);
            this.iconManager = iconManager == null ? new IconManager(activity) : iconManager;
            if (entries != null) {
                this.apps.addAll(entries);
            }
            rebuildRows();
        }

        static List<RedirectIconInfo> loadEntries(Activity activity) {
            return loadEntries(activity, new IconManager(activity));
        }

        static List<RedirectIconInfo> loadEntries(Activity activity, final IconManager iconManager) {
            final ArrayList<RedirectIconInfo> result = new ArrayList<RedirectIconInfo>();
            long started = android.os.SystemClock.elapsedRealtime();
            try {
                List<RedirectIconInfo> resolved = iconManager.getIconRedirectedApplications();
                int filtered = 0;
                for (int i = 0; i < resolved.size(); i++) {
                    RedirectIconInfo info = resolved.get(i);
                    ResolveInfo resolveInfo = iconManager.getResolveInfo(info.packageName, info.componentName);
                    if (shouldShowIconEntry(resolveInfo)) {
                        result.add(info);
                    } else {
                        filtered++;
                        logOperation(activity, "ICON_FILTER", "package=" + info.packageName
                                + ", component=" + info.componentName + ", resolve=" + (resolveInfo != null));
                    }
                }
                logOperation(activity, "ICON_LIST", "redirected_count=" + resolved.size()
                        + ", visible_count=" + result.size() + ", filtered_count=" + filtered);
                final HashMap<String, String> labels = new HashMap<String, String>();
                Collections.sort(result, new Comparator<RedirectIconInfo>() {
                    public int compare(RedirectIconInfo a, RedirectIconInfo b) {
                        String la = cachedLabel(labels, iconManager, a);
                        String lb = cachedLabel(labels, iconManager, b);
                        return la.compareToIgnoreCase(lb);
                    }
                });
            } catch (Throwable ignored) {
                logOperation(activity, "ICON_LIST", "resolve_failed " + shortError(ignored));
            }
            logOperation(activity, "ICON_LIST", "resolve_elapsed_ms="
                    + (android.os.SystemClock.elapsedRealtime() - started));
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
            return rows.size();
        }

        public Object getItem(int position) {
            return rows.get(position);
        }

        public long getItemId(int position) {
            return position;
        }

        boolean isActivityInvalid() {
            return activity == null || activity.isFinishing()
                    || (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed());
        }

        /** Invalidates bound rows; getView resolves RedirectIconDB again for every bind. */
        void invalidateIconData() {
            invalidateIconData(true);
        }

        /** Refresh preview selection without regrouping after a global disable. */
        void invalidateIconData(boolean rebuildSections) {
            if (isActivityInvalid()) {
                return;
            }
            iconDataGeneration++;
            if (rebuildSections) {
                rebuildRows();
            }
            notifyDataSetChanged();
            logOperation(activity, "ICON_ADAPTER_INVALIDATED",
                    "generation=" + iconDataGeneration + ", count=" + apps.size()
                            + ", rebuildSections=" + rebuildSections);
        }

        public View getView(int position, View convertView, android.view.ViewGroup parent) {
            Object item = rows.get(position);
            if (item instanceof IconSection) {
                LinearLayout header = convertView instanceof LinearLayout ? (LinearLayout) convertView
                        : createSectionHeader();
                ((TextView) header.getChildAt(0)).setText(((IconSection) item).title);
                return header;
            }
            if (convertView == null) {
                convertView = createIconRow(parent);
            }
            final View rowView = convertView;
            IconRowHolder existingHolder = convertView.getTag() instanceof IconRowHolder
                    ? (IconRowHolder) convertView.getTag() : null;
            final IconRowHolder holder = existingHolder == null ? new IconRowHolder(convertView) : existingHolder;
            if (existingHolder == null) convertView.setTag(holder);
            RedirectIconInfo listed = (RedirectIconInfo) item;
            RedirectIconInfo latestDb = RedirectIconDB.getRedirectIconInfo(activity, listed.packageName, listed.componentName);
            final RedirectIconInfo info = latestDb != null ? latestDb : listed;
            setBackground(convertView, resources, cardBackgroundFor(position));
            final ResolveInfo resolveInfo = iconManager.getResolveInfo(info.packageName, info.componentName);
            final int iconPx = dp(activity, 52);
            final long versionStamp = packageVersionStamp(activity, info.packageName);
            final IconPreviewRepository previews = IconPreviewRepository.get(activity);
            final IconPreviewRepository.IconRenderKey officialKey = new IconPreviewRepository.IconRenderKey(
                    info.packageName, info.componentName, info.ownerId, "DEFAULT", "", versionStamp,
                    iconPx, activity.getResources().getDisplayMetrics().densityDpi, 1);
            holder.boundOfficialKey = officialKey;
            holder.boundPackageName = info.packageName;
            holder.boundComponentName = info.componentName;
            holder.bindGeneration = (int) iconDataGeneration;
            final int bindGeneration = holder.bindGeneration;
            previews.request(officialKey, IconPreviewRepository.Priority.P0_VISIBLE,
                    new IconPreviewRepository.DrawableLoader() {
                        public Drawable load() {
                            return resolveInfo == null ? null
                                    : resolveInfo.loadIcon(activity.getApplicationContext().getPackageManager());
                        }
                    },
                    new IconPreviewRepository.Callback() {
                        public void onIconReady(String key, Bitmap bitmap) {
                            if (!key.equals(String.valueOf(holder.boundOfficialKey))
                                    || bindGeneration != holder.bindGeneration) return;
                            if (holder.officialIcon != null && bitmap != null) holder.officialIcon.setImageBitmap(bitmap);
                        }
                    });
            Drawable official = previews.cachedDrawable(officialKey);
            setIcon(convertView, resources, "official_icon", official);

            final IconPreviewRepository.ImprovedCandidate candidateInfo =
                    previews.resolveImprovedCandidate(info.packageName, info.componentName);
            final String mode = RedirectIconDB.modeOf(info);
            final IconSourceManager.Selection global = IconSourceManager.get(activity);

            final boolean hasManualOverride = RedirectIconDB.MODE_CUSTOM.equals(mode)
                    || RedirectIconDB.MODE_RESOURCE.equals(mode)
                    || RedirectIconDB.MODE_PACK.equals(mode);

            final boolean hasCandidate = candidateInfo.exists || hasManualOverride;

            final boolean isRightSelected = (hasManualOverride
                    || (RedirectIconDB.MODE_AUTO.equals(mode) && global.type != IconSourceManager.Type.DEFAULT))
                    && !RedirectIconDB.MODE_ORIGINAL.equals(mode);

            if (hasCandidate) {
                String candidateType = "IMPROVED";
                String sourceId = candidateInfo.sourceId;
                if (RedirectIconDB.MODE_CUSTOM.equals(mode)) {
                    candidateType = "CUSTOM";
                    sourceId = "custom";
                } else if (RedirectIconDB.MODE_RESOURCE.equals(mode)) {
                    candidateType = "RESOURCE";
                    sourceId = RedirectIconDB.resourceNameOf(info);
                } else if (RedirectIconDB.MODE_PACK.equals(mode)) {
                    candidateType = "PACK";
                    sourceId = RedirectIconDB.packNameOf(info);
                }

                final IconPreviewRepository.IconRenderKey candidateKey = new IconPreviewRepository.IconRenderKey(
                        info.packageName, info.componentName, 0L, candidateType, sourceId == null ? "" : sourceId,
                        versionStamp, iconPx, activity.getResources().getDisplayMetrics().densityDpi, 1);
                holder.boundEffectiveKey = candidateKey;
                Drawable cachedCandidate = previews.cachedDrawable(candidateKey);
                if (cachedCandidate != null) {
                    setIcon(convertView, resources, "unofficial_icon", cachedCandidate);
                } else {
                    Drawable immediate = null;
                    if (RedirectIconDB.MODE_CUSTOM.equals(mode)) {
                        byte[] data = RedirectIconDB.getRedirectIcon(activity, info.packageName, info.componentName);
                        if (data != null) {
                            Bitmap b = BitmapFactory.decodeByteArray(data, 0, data.length);
                            if (b != null) immediate = new BitmapDrawable(resources, b);
                        }
                    } else if (RedirectIconDB.MODE_RESOURCE.equals(mode)) {
                        immediate = libraryIconDrawableNonBlocking(activity, resources, RedirectIconDB.resourceNameOf(info));
                    } else if (RedirectIconDB.MODE_PACK.equals(mode)) {
                        immediate = packedIconFromPackage(activity, RedirectIconDB.packNameOf(info), resolveInfo);
                    } else if (candidateInfo.exists) {
                        immediate = previews.loadImprovedIconDrawable(candidateInfo.sourceId);
                    }

                    if (immediate != null) {
                        setIcon(convertView, resources, "unofficial_icon", immediate);
                    } else {
                        setIcon(convertView, resources, "unofficial_icon", null);
                        final String finalMode = mode;
                        previews.request(candidateKey, IconPreviewRepository.Priority.P0_VISIBLE,
                                new IconPreviewRepository.DrawableLoader() {
                                    public Drawable load() {
                                        if (RedirectIconDB.MODE_CUSTOM.equals(finalMode)) {
                                            byte[] data = RedirectIconDB.getRedirectIcon(activity, info.packageName, info.componentName);
                                            if (data != null) {
                                                Bitmap b = BitmapFactory.decodeByteArray(data, 0, data.length);
                                                if (b != null) return new BitmapDrawable(resources, b);
                                            }
                                            return null;
                                        }
                                        if (RedirectIconDB.MODE_RESOURCE.equals(finalMode)) {
                                            return libraryIconDrawableNonBlocking(activity, resources, RedirectIconDB.resourceNameOf(info));
                                        }
                                        if (RedirectIconDB.MODE_PACK.equals(finalMode)) {
                                            return packedIconFromPackage(activity, RedirectIconDB.packNameOf(info), resolveInfo);
                                        }
                                        return previews.loadImprovedIconDrawable(candidateInfo.sourceId);
                                    }
                                }, new IconPreviewRepository.Callback() {
                                    public void onIconReady(String key, Bitmap bitmap) {
                                        if (!key.equals(String.valueOf(holder.boundEffectiveKey))
                                                || bindGeneration != holder.bindGeneration) return;
                                        if (holder.unofficialIcon != null) {
                                            if (bitmap != null) {
                                                holder.unofficialIcon.setImageBitmap(bitmap);
                                            } else {
                                                View layout = byId(rowView, resources, "unofficial_icon_layout");
                                                if (layout != null) layout.setVisibility(View.GONE);
                                                View officialF = byId(rowView, resources, "official_icon_frame");
                                                if (officialF != null) officialF.setVisibility(View.VISIBLE);
                                                View unofficialF = byId(rowView, resources, "unofficial_icon_frame");
                                                if (unofficialF != null) unofficialF.setVisibility(View.GONE);
                                            }
                                        }
                                    }
                                });
                    }
                }
            } else {
                setIcon(convertView, resources, "unofficial_icon", null);
            }

            View officialFrame = byId(convertView, resources, "official_icon_frame");
            View unofficialFrame = byId(convertView, resources, "unofficial_icon_frame");
            View unofficialLayout = byId(convertView, resources, "unofficial_icon_layout");

            if (hasCandidate) {
                if (unofficialLayout != null) unofficialLayout.setVisibility(View.VISIBLE);
                if (officialFrame != null) officialFrame.setVisibility(isRightSelected ? View.GONE : View.VISIBLE);
                if (unofficialFrame != null) unofficialFrame.setVisibility(isRightSelected ? View.VISIBLE : View.GONE);
            } else {
                if (unofficialLayout != null) unofficialLayout.setVisibility(View.GONE);
                if (officialFrame != null) officialFrame.setVisibility(View.VISIBLE);
                if (unofficialFrame != null) unofficialFrame.setVisibility(View.GONE);
            }

            bindIconClick(convertView, info, "official_icon_layout", new View.OnClickListener() {
                public void onClick(View v) {
                    selectOriginal(rowView, info);
                }
            });
            bindIconClick(convertView, info, "unofficial_icon_layout", new View.OnClickListener() {
                public void onClick(View v) {
                    showIconChoiceDialog(rowView, info);
                }
            });
            convertView.setClickable(true);
            convertView.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    showIconChoiceDialog(rowView, info);
                }
            });
            TextView name = (TextView) byId(convertView, resources, "app_name");
            TextView author = (TextView) byId(convertView, resources, "icon_author_name");
            if (name != null) {
                name.setText(iconManager.getLableForPackage(info.packageName, info.componentName));
            }
            if (author != null) {
                author.setText(isRightSelected ? getString(resources, "unofficial_icon", "改进版图标")
                        : getString(resources, "official_icon", "默认图标"));
            }
            return convertView;
        }

        public int getViewTypeCount() {
            return 2;
        }

        public int getItemViewType(int position) {
            return rows.get(position) instanceof IconSection ? TYPE_SECTION : TYPE_APP;
        }

        private void rebuildRows() {
            rows.clear();
            ArrayList<RedirectIconInfo> redrawn = new ArrayList<RedirectIconInfo>();
            ArrayList<RedirectIconInfo> unredrawn = new ArrayList<RedirectIconInfo>();
            IconPreviewRepository repository = IconPreviewRepository.get(activity);
            for (RedirectIconInfo info : apps) {
                RedirectIconInfo latest = RedirectIconDB.getRedirectIconInfo(activity, info.packageName, info.componentName);
                RedirectIconInfo effective = latest != null ? latest : info;
                String mode = RedirectIconDB.modeOf(effective);
                IconPreviewRepository.ImprovedCandidate candidate =
                        repository.resolveImprovedCandidate(effective.packageName, effective.componentName);
                boolean hasManual = RedirectIconDB.MODE_CUSTOM.equals(mode)
                        || RedirectIconDB.MODE_RESOURCE.equals(mode)
                        || RedirectIconDB.MODE_PACK.equals(mode);
                if (candidate.exists || hasManual) {
                    redrawn.add(effective);
                } else {
                    unredrawn.add(effective);
                }
            }
            if (!redrawn.isEmpty()) {
                rows.add(new IconSection("已重绘"));
                rows.addAll(redrawn);
            }
            if (!unredrawn.isEmpty()) {
                rows.add(new IconSection("未重绘"));
                rows.addAll(unredrawn);
            }
        }

        private LinearLayout createSectionHeader() {
            LinearLayout header = new LinearLayout(context);
            header.setGravity(Gravity.CENTER_VERTICAL);
            header.setOrientation(LinearLayout.VERTICAL);
            header.setClickable(false);
            header.setFocusable(false);
            header.setBackgroundColor(0x00ffffff);
            header.setPadding(0, 0, 0, 0);
            header.setLayoutParams(new AbsListView.LayoutParams(-1, dp(activity, 42)));
            TextView title = settingsSectionHeader(context, resources, "");
            title.setClickable(false);
            header.addView(title, new LinearLayout.LayoutParams(-1, -1));
            return header;
        }

        private String cardBackgroundFor(int position) {
            boolean first = position == 0 || rows.get(position - 1) instanceof IconSection;
            boolean last = position == rows.size() - 1 || rows.get(position + 1) instanceof IconSection;
            if (first && last) return "selector_setting_sub_item_bg_single";
            if (first) return "selector_setting_sub_item_bg_top";
            if (last) return "selector_setting_sub_item_bg_bottom";
            return "selector_setting_sub_item_bg_middle";
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
            if (row instanceof RelativeLayout) {
                RelativeLayout relative = (RelativeLayout) row;
                ImageView arrow = new ImageView(context);
                arrow.setId(View.generateViewId());
                int arrowId = resources.getIdentifier("setting_next", "drawable", SETTINGS_PKG);
                if (arrowId != 0) {
                    arrow.setImageDrawable(resources.getDrawable(arrowId));
                }
                arrow.setScaleType(ImageView.ScaleType.CENTER);
                RelativeLayout.LayoutParams arrowLp = new RelativeLayout.LayoutParams(dp(activity, 38), -1);
                arrowLp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
                arrowLp.addRule(RelativeLayout.CENTER_VERTICAL);
                arrowLp.rightMargin = dp(activity, 10);
                relative.addView(arrow, arrowLp);
                View author = byId(row, resources, "author_info_layout");
                if (author != null && author.getLayoutParams() instanceof RelativeLayout.LayoutParams) {
                    RelativeLayout.LayoutParams lp = (RelativeLayout.LayoutParams) author.getLayoutParams();
                    lp.addRule(RelativeLayout.LEFT_OF, arrow.getId());
                    lp.rightMargin = dp(activity, 8);
                    author.setLayoutParams(lp);
                }
            }
            return row;
        }

        /** Scroll callbacks only enqueue bounded work; no bitmap work or UI refresh happens here. */
        void requestVisibleRange(int first, int count, IconPreviewRepository.Priority priority) {
            if (isActivityInvalid() || count <= 0) return;
            final IconPreviewRepository previews = IconPreviewRepository.get(activity);
            int end = Math.min(rows.size(), Math.max(0, first) + count);
            for (int position = Math.max(0, first); position < end; position++) {
                Object item = rows.get(position);
                if (!(item instanceof RedirectIconInfo)) continue;
                final RedirectIconInfo info = (RedirectIconInfo) item;
                final ResolveInfo resolved = iconManager.getResolveInfo(info.packageName, info.componentName);
                if (resolved == null) continue;
                int px = dp(activity, 52);
                long version = packageVersionStamp(activity, info.packageName);
                IconPreviewRepository.IconRenderKey official = new IconPreviewRepository.IconRenderKey(
                        info.packageName, info.componentName, info.ownerId, "DEFAULT", "", version, px,
                        activity.getResources().getDisplayMetrics().densityDpi, 1);
                previews.request(official, priority, new IconPreviewRepository.DrawableLoader() {
                    public Drawable load() { return resolved.loadIcon(activity.getPackageManager()); }
                }, null);
                String mode = RedirectIconDB.modeOf(info);
                IconSourceManager.Selection global = IconSourceManager.get(activity);
                boolean defaults = RedirectIconDB.MODE_ORIGINAL.equals(mode)
                        || (RedirectIconDB.MODE_AUTO.equals(mode)
                        && global.type == IconSourceManager.Type.DEFAULT);
                if (defaults) continue;
                IconPreviewRepository.IconRenderKey effective = new IconPreviewRepository.IconRenderKey(
                        info.packageName, info.componentName, info.ownerId, iconSourceType(mode, global),
                        iconSourceId(info, global), version, px,
                        activity.getResources().getDisplayMetrics().densityDpi, 1);
                previews.request(effective, priority, new IconPreviewRepository.DrawableLoader() {
                    public Drawable load() {
                        return previewIconDrawable(activity.getApplicationContext(), resolved, resources);
                    }
                }, null);
            }
        }

        /** P2 never rasterizes; cached-only resolution schedules the existing online fetch path. */
        void requestImprovedDiskPreparation() {
            if (isActivityInvalid() || IconSourceManager.get(activity).type != IconSourceManager.Type.IMPROVED) return;
            final IconPreviewRepository previews = IconPreviewRepository.get(activity);
            for (final RedirectIconInfo info : apps) {
                if (!RedirectIconDB.MODE_AUTO.equals(RedirectIconDB.modeOf(info))) continue;
                final ResolveInfo resolved = iconManager.getResolveInfo(info.packageName, info.componentName);
                if (resolved == null || iconVariantNames(activity, info.packageName).isEmpty()) continue;
                previews.schedule(IconPreviewRepository.Priority.P2_IDLE, new Runnable() {
                    public void run() {
                        smartisanIconDrawableCachedOnly(activity.getApplicationContext(), resolved, resources);
                    }
                });
            }
        }

        private final class IconRowHolder {
            final ImageView officialIcon;
            final ImageView unofficialIcon;
            IconPreviewRepository.IconRenderKey boundOfficialKey;
            IconPreviewRepository.IconRenderKey boundEffectiveKey;
            String boundPackageName;
            String boundComponentName;
            int bindGeneration;

            IconRowHolder(View row) {
                officialIcon = (ImageView) byId(row, resources, "official_icon");
                unofficialIcon = (ImageView) byId(row, resources, "unofficial_icon");
            }
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
            invalidateIconData();
        }

        private void selectImprovedOrPick(View row, RedirectIconInfo info) {
            if (info == null) {
                return;
            }
            showIconChoiceDialog(row, info);
        }

        private void showIconChoiceDialog(final View row, final RedirectIconInfo info) {
            if (info == null) {
                return;
            }
            showIconChoicePage(row, info, currentIconListPosition(activity));
        }

        private void showIconChoicePage(final View row, final RedirectIconInfo info, final int returnScrollY) {
            final ResolveInfo resolveInfo = iconManager.getResolveInfo(info.packageName, info.componentName);
            try {
                tuneWindow(activity);
                final View page = inflate(activity, context, "app_icon_settings_layout");
                bindBackTitle(activity, resources, page, "view_title", "替换图标", "ICON_CHOICE", new Runnable() {
                    public void run() { showIconPage(activity, returnScrollY, false); }
                });
                TextView back = (TextView) find(resources, page, "btn_back");
                if (back != null) {
                    back.setOnClickListener(settingsTitleBackClick(activity, "ICON_CHOICE"));
                }
                ListView list = asList(find(resources, page, "icons_list_view"));
                if (list != null && list.getParent() instanceof ViewGroup) {
                    ViewGroup parent = (ViewGroup) list.getParent();
                    int index = parent.indexOfChild(list);
                    ViewGroup.LayoutParams lp = list.getLayoutParams();
                    int id = list.getId();
                    parent.removeView(list);
                    ScrollView scroll = new ScrollView(context);
                    scroll.setId(id);
                    scroll.setFillViewport(false);
                    scroll.setFocusable(false);
                    scroll.setVerticalScrollBarEnabled(false);
                    scroll.setOverScrollMode(View.OVER_SCROLL_ALWAYS);
                    LinearLayout content = new LinearLayout(context);
                    content.setOrientation(LinearLayout.VERTICAL);
                    content.setPadding(0, dp(activity, 16), 0, dp(activity, 20));
                    content.addView(createChoiceAppCard(info, resolveInfo));
                    content.addView(settingsSectionHeader(activity, resources, "可选图标"));
                    content.addView(createChoiceGridCard(row, info, null, returnScrollY));
                    prefetchChoiceLibraryIcons(content, row, info, returnScrollY);
                    scroll.addView(content, new ScrollView.LayoutParams(-1, -2));
                    parent.addView(scroll, index, lp);
                    tuneScrollBars(scroll);
                }
                setSettingsContentView(activity, context, resources, page, true);
            } catch (Throwable t) {
                Toast.makeText(activity, "打开图标选择失败", Toast.LENGTH_SHORT).show();
            }
        }

        private View createChoiceGridCard(final View row, final RedirectIconInfo info,
                                          final AlertDialog dialog, final int returnScrollY) {
            LinearLayout card = new LinearLayout(activity);
            card.setOrientation(LinearLayout.VERTICAL);
            setBackground(card, resources, "selector_setting_sub_item_bg_single");
            card.setPadding(dp(activity, 36), dp(activity, 18), dp(activity, 36), dp(activity, 18));

            GridLayout grid = new GridLayout(activity);
            grid.setColumnCount(3);
            LinearLayout.LayoutParams gridLp = new LinearLayout.LayoutParams(-1, -2);
            card.addView(grid, gridLp);

            List<IconChoice> choices = iconChoicesFor(info);
            for (int i = 0; i < choices.size(); i++) {
                addChoiceCell(grid, row, info, choices.get(i), dialog, returnScrollY, i);
            }
            LinearLayout.LayoutParams cardLp = new LinearLayout.LayoutParams(-1, -2);
            card.setLayoutParams(cardLp);
            return card;
        }

        private void prefetchChoiceLibraryIcons(final LinearLayout content, final View row,
                                                final RedirectIconInfo info, final int returnScrollY) {
            if (content == null || info == null) return;
            ArrayList<String> names = new ArrayList<String>();
            String alias = smartisanSystemIconAlias(activity,
                    iconManager.getResolveInfo(info.packageName, info.componentName));
            if (!TextUtils.isEmpty(alias)) names.add(alias);
            if (!TextUtils.isEmpty(info.packageName) && !names.contains(info.packageName)) {
                names.add(info.packageName);
            }
            List<String> variants = iconVariantNames(activity, info.packageName);
            for (int i = 0; variants != null && i < variants.size(); i++) {
                String name = stripPng(variants.get(i));
                if (!TextUtils.isEmpty(name) && !names.contains(name)) names.add(name);
            }
            boolean pending = false;
            for (int i = 0; i < names.size(); i++) {
                String name = names.get(i);
                if (!libraryIconStored(activity, resources, name)
                        && !shouldSkipSmartisanIconFetch(activity, name)) {
                    pending = true;
                    scheduleSmartisanIconFetch(activity, name);
                }
            }
            if (!pending) return;
            // Keep cached candidates visible immediately. Once the background fetch finishes,
            // replace only this grid; do not recreate the page or reset its scroll position.
            refreshChoiceGridLater(content, row, info, returnScrollY, 900L);
            refreshChoiceGridLater(content, row, info, returnScrollY, 2600L);
            // One candidate can try two mirrors and then wait behind the shared
            // fetch pool. Keep this page's grid eligible for the completed
            // disk-cache result instead of leaving a permanent empty slot.
            refreshChoiceGridLater(content, row, info, returnScrollY, 6500L);
            refreshChoiceGridLater(content, row, info, returnScrollY, 11000L);
        }

        private void refreshChoiceGridLater(final LinearLayout content, final View row,
                                            final RedirectIconInfo info, final int returnScrollY,
                                            long delayMillis) {
            content.postDelayed(new Runnable() {
                public void run() {
                    if (content.getWindowToken() == null || content.getChildCount() < 3) return;
                    View previous = content.getChildAt(2);
                    content.removeViewAt(2);
                    content.addView(createChoiceGridCard(row, info, null, returnScrollY), 2,
                            previous == null ? new LinearLayout.LayoutParams(-1, -2)
                                    : previous.getLayoutParams());
                }
            }, delayMillis);
        }

        private void finishChoice(AlertDialog dialog, int returnScrollY) {
            if (dialog != null) {
                dialog.dismiss();
            } else {
                showIconPage(activity, returnScrollY, false);
            }
        }

        private View createChoiceAppCard(RedirectIconInfo info, ResolveInfo resolveInfo) {
            LinearLayout card = new LinearLayout(activity);
            card.setOrientation(LinearLayout.VERTICAL);
            card.setGravity(Gravity.CENTER_HORIZONTAL);
            setBackground(card, resources, "selector_setting_sub_item_bg_single");
            card.setPadding(dp(activity, 18), dp(activity, 34), dp(activity, 18), dp(activity, 30));
            LinearLayout.LayoutParams cardLp = new LinearLayout.LayoutParams(-1, -2);
            card.setLayoutParams(cardLp);

            ImageView icon = new ImageView(activity);
            icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
            Drawable official = iconManager.getOfficialIcon(info);
            if (official != null) {
                icon.setImageDrawable(official);
            }
            card.addView(icon, new LinearLayout.LayoutParams(dp(activity, 58), dp(activity, 58)));

            TextView title = text(activity, iconManager.getLableForPackage(info.packageName, info.componentName),
                    20, 0xff333333, false);
            title.setGravity(Gravity.CENTER);
            title.setClickable(true);
            title.setPadding(dp(activity, 14), dp(activity, 5), dp(activity, 14), dp(activity, 5));
            // Keep the editable label visually close to the settings controls without changing the card layout.
            title.setBackgroundDrawable(roundedDrawable(0x03ffffff, 0x22000000, dp(activity, 5)));
            title.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    showRenameIconDialog(info, resolveInfo, title);
                }
            });
            LinearLayout.LayoutParams titleLp = new LinearLayout.LayoutParams(-2, -2);
            titleLp.topMargin = dp(activity, 14);
            titleLp.gravity = Gravity.CENTER_HORIZONTAL;
            card.addView(title, titleLp);

            TextView subtitle = text(activity, versionSubtitle(resolveInfo), 13, 0xff9a9a9a, false);
            subtitle.setGravity(Gravity.CENTER);
            LinearLayout.LayoutParams subLp = new LinearLayout.LayoutParams(-1, -2);
            subLp.topMargin = dp(activity, 6);
            card.addView(subtitle, subLp);

            TextView hint = text(activity, "可选用精心设计过的图标替换应用默认图标", 13, 0xff999999, false);
            hint.setGravity(Gravity.CENTER);
            LinearLayout.LayoutParams hintLp = new LinearLayout.LayoutParams(-1, -2);
            hintLp.topMargin = dp(activity, 10);
            card.addView(hint, hintLp);
            return card;
        }

        private void showRenameIconDialog(final RedirectIconInfo info,
                                          final ResolveInfo resolveInfo,
                                          final TextView titleView) {
            if (info == null) return;
            final Dialog dialog = new Dialog(activity);
            LinearLayout root = new LinearLayout(activity);
            prepareSmartisanDialogRoot(activity, root);

            TextView heading = text(activity, "修改应用名称", 18, 0xff333333, true);
            heading.setGravity(Gravity.CENTER);
            root.addView(heading, new LinearLayout.LayoutParams(-1, dp(activity, 54)));

            LinearLayout content = new LinearLayout(activity);
            content.setOrientation(LinearLayout.VERTICAL);
            content.setPadding(dp(activity, 24), dp(activity, 20), dp(activity, 24), dp(activity, 20));
            final EditText input = new EditText(activity);
            input.setSingleLine(true);
            input.setSelectAllOnFocus(true);
            input.setTextSize(17);
            input.setTextColor(0xff454545);
            input.setText(iconManager.getLableForPackage(info.packageName, info.componentName));
            input.setSelection(input.length());
            input.setPadding(dp(activity, 14), 0, dp(activity, 14), 0);
            input.setBackgroundDrawable(roundedDrawable(0xffffffff, 0xffc8c8c8, dp(activity, 4)));
            content.addView(input, new LinearLayout.LayoutParams(-1, dp(activity, 48)));
            root.addView(content, new LinearLayout.LayoutParams(-1, -2));

            root.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(-1, 1));

            LinearLayout buttons = new LinearLayout(activity);
            buttons.setOrientation(LinearLayout.HORIZONTAL);
            TextView cancel = smartisanDialogActionButton(activity, "取消", false, -1);
            cancel.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    dialog.dismiss();
                }
            });
            TextView confirm = smartisanDialogActionButton(activity, "确定", true, 1);
            confirm.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    String displayName = input.getText() == null ? ""
                            : input.getText().toString().trim();
                    if (displayName.length() == 0) {
                        input.setError("名称不能为空");
                        return;
                    }
                    String originalName = info.originalName;
                    if (TextUtils.isEmpty(originalName) && resolveInfo != null) {
                        try {
                            CharSequence label = resolveInfo.loadLabel(activity.getPackageManager());
                            originalName = label == null ? "" : label.toString();
                        } catch (Throwable ignored) {
                        }
                    }
                    RedirectIconDB.updateDisplayName(activity, info.packageName,
                            info.componentName, displayName, originalName);
                    updateDesktopItemTitle(activity, info.packageName, info.componentName, displayName);
                    titleView.setText(displayName);
                    dialog.dismiss();
                    Toast.makeText(activity, "应用名称已修改", Toast.LENGTH_SHORT).show();
                }
            });
            buttons.addView(cancel, new LinearLayout.LayoutParams(0, dp(activity, 56), 1.0f));
            buttons.addView(smartisanDivider(activity), new LinearLayout.LayoutParams(1, dp(activity, 56)));
            buttons.addView(confirm, new LinearLayout.LayoutParams(0, dp(activity, 56), 1.0f));
            root.addView(buttons, new LinearLayout.LayoutParams(-1, dp(activity, 56)));

            dialog.setContentView(root);
            dialog.show();
            Window shown = dialog.getWindow();
            if (shown != null) {
                shown.setBackgroundDrawableResource(android.R.color.transparent);
                int screenWidth = activity.getResources().getDisplayMetrics().widthPixels;
                shown.setLayout(Math.min(dp(activity, 360), screenWidth - dp(activity, 32)), -2);
                shown.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE
                        | WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);
            }
            input.requestFocus();
        }

        private void addChoiceCell(final GridLayout grid, final View row, final RedirectIconInfo info,
                                   final IconChoice choice, final AlertDialog dialog,
                                   final int returnScrollY, int index) {
            final SquareFrameLayout cell = new SquareFrameLayout(activity);
            cell.setPadding(dp(activity, 5), dp(activity, 5), dp(activity, 5), dp(activity, 5));
            GridLayout.LayoutParams lp = new GridLayout.LayoutParams(
                    GridLayout.spec(GridLayout.UNDEFINED, 1f),
                    GridLayout.spec(GridLayout.UNDEFINED, 1f));
            lp.width = 0;
            lp.height = -2;
            lp.setMargins(0, 0, 0, 0);
            cell.setLayoutParams(lp);

            FrameLayout box = new FrameLayout(activity);
            box.setBackground(choiceIconBackground(activity, false));
            FrameLayout.LayoutParams boxLp = new FrameLayout.LayoutParams(-1, -1);
            cell.addView(box, boxLp);

            FrameLayout iconHolder = new FrameLayout(activity);
            FrameLayout.LayoutParams holderLp = new FrameLayout.LayoutParams(
                    dp(activity, 62), dp(activity, 62), Gravity.CENTER);
            box.addView(iconHolder, holderLp);

            final ImageView icon = new ImageView(activity);
            icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
            FrameLayout.LayoutParams iconLp = new FrameLayout.LayoutParams(dp(activity, 48), dp(activity, 48), Gravity.CENTER);
            iconHolder.addView(icon, iconLp);

            final ProgressBar progress = new ProgressBar(activity);
            FrameLayout.LayoutParams progressLp = new FrameLayout.LayoutParams(dp(activity, 24), dp(activity, 24), Gravity.CENTER);
            iconHolder.addView(progress, progressLp);

            ImageView check = new ImageView(activity);
            check.setScaleType(ImageView.ScaleType.FIT_CENTER);
            check.setImageDrawable(safeDrawable(resources,
                    drawable(resources, "preview_picture_selected")));
            FrameLayout.LayoutParams checkLp = new FrameLayout.LayoutParams(dp(activity, 24), dp(activity, 24),
                    Gravity.RIGHT | Gravity.TOP);
            check.setVisibility(isChoiceSelected(info, choice) ? View.VISIBLE : View.GONE);
            iconHolder.addView(check, checkLp);

            bindChoiceIcon(icon, progress, check, info, choice);
            cell.setClickable(true);
            cell.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    applyChoice(row, info, choice, returnScrollY);
                    if (choice != null && choice.type == IconChoice.TYPE_CUSTOM) {
                        if (dialog != null) {
                            dialog.dismiss();
                        }
                    } else {
                        finishChoice(dialog, returnScrollY);
                    }
                }
            });
            grid.addView(cell);
        }

        private void bindChoiceIcon(final ImageView icon, final ProgressBar progress,
                                    final ImageView check,
                                    final RedirectIconInfo info, final IconChoice choice) {
            final String requestKey = choiceRequestKey(info, choice);
            final int px = dp(activity, 72);
            final String sourceType = choice.type == IconChoice.TYPE_ORIGINAL ? "DEFAULT"
                    : choice.type == IconChoice.TYPE_LIBRARY ? "RESOURCE"
                    : choice.type == IconChoice.TYPE_PACKED ? "PACK" : "CUSTOM";
            final IconPreviewRepository.IconRenderKey renderKey = new IconPreviewRepository.IconRenderKey(
                    info.packageName, info.componentName, info.ownerId, sourceType,
                    choice.name == null ? "" : choice.name,
                    packageVersionStamp(activity, info.packageName), px,
                    activity.getResources().getDisplayMetrics().densityDpi, 1);
            icon.setTag(renderKey);
            Drawable drawable = IconPreviewRepository.get(activity).cachedDrawable(renderKey);
            if (drawable != null) {
                progress.setVisibility(View.GONE);
                icon.setImageDrawable(drawable);
                icon.setVisibility(View.VISIBLE);
                check.setVisibility(isChoiceSelected(info, choice) ? View.VISIBLE : View.GONE);
                return;
            }
            progress.setVisibility(View.GONE);
            icon.setVisibility(View.VISIBLE);
            if (choice.type == IconChoice.TYPE_CUSTOM) {
                icon.setImageDrawable(plusIcon(resources));
                check.setVisibility(isChoiceSelected(info, choice) ? View.VISIBLE : View.GONE);
            } else {
                icon.setImageDrawable(null);
                check.setVisibility(View.GONE);
            }
            final java.lang.ref.WeakReference<ImageView> iconRef = new java.lang.ref.WeakReference<ImageView>(icon);
            final java.lang.ref.WeakReference<ImageView> checkRef = new java.lang.ref.WeakReference<ImageView>(check);
            IconPreviewRepository.get(activity).request(renderKey, IconPreviewRepository.Priority.P0_VISIBLE,
                    new IconPreviewRepository.DrawableLoader() {
                        public Drawable load() { return iconDrawableForChoice(info, choice); }
                    }, new IconPreviewRepository.Callback() {
                        public void onIconReady(String key, Bitmap bitmap) {
                            ImageView target = iconRef.get();
                            ImageView targetCheck = checkRef.get();
                            if (target == null || !key.equals(String.valueOf(target.getTag()))) return;
                            if (bitmap != null) {
                                target.setImageBitmap(bitmap);
                                if (targetCheck != null) {
                                    targetCheck.setVisibility(isChoiceSelected(info, choice) ? View.VISIBLE : View.GONE);
                                }
                            } else {
                                if (choice.type == IconChoice.TYPE_CUSTOM) {
                                    target.setImageDrawable(plusIcon(resources));
                                    if (targetCheck != null) {
                                        targetCheck.setVisibility(isChoiceSelected(info, choice) ? View.VISIBLE : View.GONE);
                                    }
                                } else {
                                    target.setImageDrawable(null);
                                    if (targetCheck != null) {
                                        targetCheck.setVisibility(View.GONE);
                                    }
                                }
                            }
                        }
                    });
        }

        private void retryBindChoiceIcon(final ImageView icon, final ProgressBar progress,
                                         final ImageView check,
                                         final RedirectIconInfo info, final IconChoice choice,
                                         final String requestKey, final int attempt) {
            final long[] delays = new long[]{80L, 180L, 320L, 600L, 1000L, 1600L};
            if (attempt >= delays.length) {
                progress.setVisibility(View.GONE);
                icon.setImageDrawable(plusIcon(resources));
                icon.setVisibility(View.VISIBLE);
                return;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
                public void run() {
                    if (isActivityInvalid() || !requestKey.equals(icon.getTag())) {
                        logOperation(activity, "ICON_ASYNC_STALE_DROPPED", "requestKey=" + requestKey);
                        return;
                    }
                    Drawable retry = iconDrawableForChoice(info, choice);
                    if (retry != null) {
                        progress.setVisibility(View.GONE);
                        icon.setImageDrawable(retry);
                        icon.setVisibility(View.VISIBLE);
                        check.setVisibility(isChoiceSelected(info, choice) ? View.VISIBLE : View.GONE);
                    } else {
                        retryBindChoiceIcon(icon, progress, check, info, choice, requestKey, attempt + 1);
                    }
                }
            }, delays[attempt]);
        }

        private String choiceRequestKey(RedirectIconInfo info, IconChoice choice) {
            String pkg = info == null || info.packageName == null ? "" : info.packageName;
            String component = info == null || info.componentName == null ? "" : info.componentName;
            String candidate = choice == null || choice.name == null ? "" : choice.name;
            int type = choice == null ? -1 : choice.type;
            return pkg + ':' + component + ':' + type + ':' + candidate + ':' + iconDataGeneration;
        }

        private Drawable iconDrawableForChoice(RedirectIconInfo info, IconChoice choice) {
            if (choice == null) {
                return null;
            }
            if (choice.type == IconChoice.TYPE_ORIGINAL) {
                return iconManager.getOfficialIcon(info);
            }
            if (choice.type == IconChoice.TYPE_LIBRARY) {
                return libraryIconDrawableNonBlocking(activity, resources, choice.name);
            }
            if (choice.type == IconChoice.TYPE_PACKED) {
                return packedIconFromPackage(activity, choice.name, iconManager.getResolveInfo(info.packageName, info.componentName));
            }
            if (choice.type == IconChoice.TYPE_CUSTOM) {
                RedirectIconInfo latest = RedirectIconDB.getRedirectIconInfo(activity, info.packageName, info.componentName);
                byte[] iconData = latest == null ? null : latest.iconData;
                if (iconData == null) {
                    iconData = RedirectIconDB.getRedirectIcon(activity, info.packageName, info.componentName);
                }
                if (iconData != null) {
                    Bitmap bitmap = BitmapFactory.decodeByteArray(iconData, 0, iconData.length);
                    if (bitmap != null) {
                        return new BitmapDrawable(activity.getResources(), bitmap);
                    }
                }
                return null;
            }
            return null;
        }

        private List<IconChoice> iconChoicesFor(RedirectIconInfo info) {
            ArrayList<IconChoice> out = new ArrayList<IconChoice>();
            ArrayList<String> names = new ArrayList<String>();
            IconPreviewRepository repository = IconPreviewRepository.get(activity);
            IconPreviewRepository.ImprovedCandidate mainCandidate =
                    repository.resolveImprovedCandidate(info.packageName, info.componentName);
            if (mainCandidate.exists && !names.contains(mainCandidate.sourceId)) {
                names.add(mainCandidate.sourceId);
            }
            List<String> repoVariants = repository.getVariantsForPackage(info.packageName);
            if (repoVariants != null) {
                for (String v : repoVariants) {
                    if (!TextUtils.isEmpty(v) && !names.contains(v)) names.add(v);
                }
            }
            List<String> variants = iconVariantNames(activity, info.packageName);
            if (variants != null) {
                for (String v : variants) {
                    String name = stripPng(v);
                    if (!TextUtils.isEmpty(name) && !names.contains(name)) names.add(name);
                }
            }
            String baseName = info.packageName;
            if (!names.contains(baseName)) {
                names.add(0, baseName);
            }
            String alias = smartisanSystemIconAlias(activity, iconManager.getResolveInfo(info.packageName, info.componentName));
            if (alias != null && !names.contains(alias)) {
                names.add(0, alias);
            }
            HashMap<String, Boolean> seen = new HashMap<String, Boolean>();
            for (int i = 0; i < names.size(); i++) {
                String name = stripPng(names.get(i));
                if (name == null || name.length() == 0 || seen.containsKey(name)) {
                    continue;
                }
                if (!libraryIconStored(activity, resources, name)) {
                    continue;
                }
                seen.put(name, Boolean.TRUE);
                out.add(new IconChoice(IconChoice.TYPE_LIBRARY, name, "图标库"));
            }
            ResolveInfo resolve = iconManager.getResolveInfo(info.packageName, info.componentName);
            try {
                ArrayList<String> packs = com.smartisanos.home.settings.icons.IconPackManager.getIconPackPackages(activity);
                for (int i = 0; i < packs.size(); i++) {
                    String pack = packs.get(i);
                    if (packedIconFromPackage(activity, pack, resolve) != null) {
                        out.add(new IconChoice(IconChoice.TYPE_PACKED, pack,
                                com.smartisanos.home.settings.icons.IconPackManager.getIconPackLabel(activity, pack)));
                    }
                }
            } catch (Throwable ignored) {
            }
            out.add(new IconChoice(IconChoice.TYPE_CUSTOM, null, "+"));
            return out;
        }

        private boolean isChoiceSelected(RedirectIconInfo info, IconChoice choice) {
            if (info == null || choice == null) {
                return false;
            }
            RedirectIconInfo latest = RedirectIconDB.getRedirectIconInfo(activity, info.packageName, info.componentName);
            String mode = RedirectIconDB.modeOf(latest);
            if (choice.type == IconChoice.TYPE_ORIGINAL) {
                return RedirectIconDB.MODE_ORIGINAL.equals(mode) || (latest != null && !latest.useImprovedAppIcon);
            }
            if (choice.type == IconChoice.TYPE_LIBRARY) {
                if (RedirectIconDB.MODE_RESOURCE.equals(mode)) {
                    return choice.name.equals(RedirectIconDB.resourceNameOf(latest));
                }
                return isAutomaticImprovedChoice(latest, info)
                        && packedIcon(activity, iconManager.getResolveInfo(
                                info.packageName, info.componentName)) == null
                        && choice.name.equals(automaticLibraryChoiceName(info));
            }
            if (choice.type == IconChoice.TYPE_PACKED) {
                return RedirectIconDB.MODE_PACK.equals(mode)
                        && choice.name.equals(RedirectIconDB.packNameOf(latest));
            }
            if (choice.type == IconChoice.TYPE_CUSTOM) {
                return RedirectIconDB.MODE_CUSTOM.equals(mode);
            }
            return false;
        }

        private boolean isAutomaticImprovedChoice(RedirectIconInfo latest, RedirectIconInfo info) {
            if (latest == null) {
                return isImprovedIconEnabled(activity);
            }
            return latest.useImprovedAppIcon
                    && RedirectIconDB.MODE_AUTO.equals(RedirectIconDB.modeOf(latest));
        }

        private String automaticLibraryChoiceName(RedirectIconInfo info) {
            if (info == null) return null;
            IconPreviewRepository.ImprovedCandidate candidate =
                    IconPreviewRepository.get(activity).resolveImprovedCandidate(info.packageName, info.componentName);
            return candidate.exists ? candidate.sourceId : null;
        }

        private void applyChoice(View row, RedirectIconInfo info, IconChoice choice, int returnScrollY) {
            if (choice == null || info == null) {
                return;
            }
            if (choice.type == IconChoice.TYPE_ORIGINAL) {
                selectOriginal(row, info);
                return;
            }
            if (choice.type == IconChoice.TYPE_CUSTOM) {
                pickCustomIcon(info, returnScrollY);
                return;
            }
            if (choice.type == IconChoice.TYPE_LIBRARY) {
                info.useImprovedAppIcon = true;
                info.drawableName = RedirectIconDB.MODE_RESOURCE + ":" + choice.name;
                info.iconData = null;
                RedirectIconDB.updateResourceIcon(activity, info.packageName, info.componentName, choice.name);
                forceUpdateIcon(activity, info);
                invalidateIconData();
            }
            if (choice.type == IconChoice.TYPE_PACKED) {
                info.useImprovedAppIcon = true;
                info.drawableName = RedirectIconDB.MODE_PACK + ":" + choice.name;
                info.iconData = null;
                RedirectIconDB.updatePackIcon(activity, info.packageName, info.componentName, choice.name);
                forceUpdateIcon(activity, info);
                invalidateIconData();
            }
        }

        private String versionSubtitle(ResolveInfo resolveInfo) {
            try {
                ActivityInfo ai = resolveInfo == null ? null : resolveInfo.activityInfo;
                if (ai == null || ai.packageName == null) {
                    return "";
                }
                PackageInfo pkg = activity.getPackageManager().getPackageInfo(ai.packageName, 0);
                return pkg == null || pkg.versionName == null ? "" : pkg.versionName;
            } catch (Throwable ignored) {
                return "";
            }
        }

        private Drawable choiceIconBackground(Context context, boolean selected) {
            Drawable visual = safeDrawable(resources,
                    drawable(resources, "icon_preview_frame_visual"));
            if (visual != null) {
                return visual.mutate();
            }
            // The resource is normally present in the maintained settings APK.
            // Keep the existing visual as a compatibility fallback if that APK is stale.
            GradientDrawable fallback = new GradientDrawable();
            fallback.setColor(Color.TRANSPARENT);
            fallback.setCornerRadius(dp(context, 5));
            fallback.setStroke(1, 0x12000000);
            return fallback;
        }

        private void pickCustomIcon(RedirectIconInfo info, int returnScrollY) {
            activity.getSharedPreferences(ICON_OVERRIDE_PREFS, Context.MODE_PRIVATE).edit()
                    .putString(PREF_PENDING_CUSTOM_ICON_KEY, info.getPrimaryId())
                    .putInt(PREF_PENDING_CUSTOM_ICON_RETURN_SCROLL_Y, returnScrollY)
                    .putInt(PREF_PENDING_CUSTOM_ICON_CHOICE_SCROLL_Y, currentScrollY(activity))
                    .putBoolean(PREF_PENDING_CUSTOM_ICON_RESTORE_CHOICE, true).apply();
            beginPickCustomIcon(activity);
        }

        private void useImprovedIcon(View row, RedirectIconInfo info) {
            info.useImprovedAppIcon = true;
            info.drawableName = RedirectIconDB.MODE_AUTO;
            info.iconData = null;
            RedirectIconDB.updateAutoIcon(activity, info.packageName, info.componentName);
            forceUpdateIcon(activity, info);
            invalidateIconData();
        }

        private boolean isImprovedSelected(RedirectIconInfo info, Drawable candidate) {
            if (info == null || candidate == null) {
                return false;
            }
            // The adapter keeps its list for smooth scrolling. Resolve the latest persisted
            // state here because the global switch updates rows asynchronously in the background.
            RedirectIconInfo latest = RedirectIconDB.getRedirectIconInfo(activity,
                    info.packageName, info.componentName);
            if (latest == null) {
                latest = info;
            }
            String mode = RedirectIconDB.modeOf(latest);
            if (RedirectIconDB.MODE_CUSTOM.equals(mode) || RedirectIconDB.MODE_RESOURCE.equals(mode)
                    || RedirectIconDB.MODE_PACK.equals(mode)) {
                ResolveInfo resolveInfo = iconManager.getResolveInfo(info.packageName, info.componentName);
                return resolveManagedIcon(activity, resolveInfo, resources, null) != null;
            }
            if (RedirectIconDB.MODE_ORIGINAL.equals(mode)) {
                return false;
            }
            ResolveInfo resolveInfo = iconManager.getResolveInfo(info.packageName, info.componentName);
            return resolveManagedIcon(activity, resolveInfo, resources, null) != null;
        }

        private Drawable packedIcon(Context context, ResolveInfo info) {
            try {
                ActivityInfo ai = info == null ? null : info.activityInfo;
                if (ai == null || ai.packageName == null) {
                    return null;
                }
                Class<?> cls = Class.forName("com.smartisanos.home.settings.icons.IconPackManager");
                Object icon = cls.getMethod("getPackedIcon", Context.class, String.class, String.class)
                        .invoke(null, context, ai.packageName, ai.name);
                return icon instanceof Drawable ? (Drawable) icon : null;
            } catch (Throwable ignored) {
                return null;
            }
        }

        private void setIcon(View root, Resources resources, String idName, Drawable icon) {
            ImageView view = (ImageView) byId(root, resources, idName);
            if (view != null) {
                view.setImageDrawable(icon == null ? plusIcon(resources) : icon);
            }
        }

        private static long packageVersionStamp(Context context, String packageName) {
            if (context == null || TextUtils.isEmpty(packageName)) return 0L;
            try {
                return context.getPackageManager().getPackageInfo(packageName, 0).lastUpdateTime;
            } catch (Throwable ignored) {
                return 0L;
            }
        }

        private static String iconSourceType(String mode, IconSourceManager.Selection global) {
            if (RedirectIconDB.MODE_CUSTOM.equals(mode)) return "CUSTOM";
            if (RedirectIconDB.MODE_RESOURCE.equals(mode)) return "RESOURCE";
            if (RedirectIconDB.MODE_PACK.equals(mode)) return "PACK";
            if (global == null || global.type == IconSourceManager.Type.DEFAULT) return "DEFAULT";
            return global.type == IconSourceManager.Type.PACK ? "PACK" : "IMPROVED";
        }

        private static String iconSourceId(RedirectIconInfo info, IconSourceManager.Selection global) {
            String mode = RedirectIconDB.modeOf(info);
            if (RedirectIconDB.MODE_RESOURCE.equals(mode)) return String.valueOf(RedirectIconDB.resourceNameOf(info));
            if (RedirectIconDB.MODE_PACK.equals(mode)) return String.valueOf(RedirectIconDB.packNameOf(info));
            if (RedirectIconDB.MODE_CUSTOM.equals(mode)) {
                byte[] data = info == null ? null : info.iconData;
                return "custom_" + (data == null ? 0 : data.length);
            }
            return global == null || global.packageName == null ? "" : global.packageName;
        }

        private Drawable safeDrawable(Resources resources, int resId) {
            try {
                return resources.getDrawable(resId);
            } catch (Throwable ignored) {
                return null;
            }
        }

    }

    private static final class IconSection {
        final String title;

        IconSection(String title) {
            this.title = title;
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
        return resolveManagedIcon(context, info, resources, null);
    }

    /**
     * The settings row always keeps the right-hand alternative visible.  Its
     * selection state is decided separately from the drawable preview, so
     * disabling global improved icons moves the check to the left original
     * icon instead of replacing the right-hand candidate with the plus tile.
     */
    private static Drawable previewIconDrawable(Context context, ResolveInfo info, Resources resources) {
        return effectiveIconDrawable(context, info, resources, null);
    }

    private static Drawable previewIconDrawable(Context context, ResolveInfo info, Resources resources,
                                                IconSourceManager.Selection temporary) {
        if (context == null || info == null || info.activityInfo == null || temporary == null) {
            return info == null ? null : info.loadIcon(context.getPackageManager());
        }
        ActivityInfo ai = info.activityInfo;
        if (temporary.type == IconSourceManager.Type.DEFAULT) {
            try {
                return info.loadIcon(context.getPackageManager());
            } catch (Throwable ignored) {
                return null;
            }
        }
        if (temporary.type == IconSourceManager.Type.PACK) {
            Drawable packIcon = packedIconFromPackage(context, temporary.packageName, info);
            if (packIcon != null) return packIcon;
            try {
                return info.loadIcon(context.getPackageManager());
            } catch (Throwable ignored) {
                return null;
            }
        }
        if (temporary.type == IconSourceManager.Type.IMPROVED) {
            com.smartisanos.home.settings.icons.IconPreviewRepository repository =
                    com.smartisanos.home.settings.icons.IconPreviewRepository.get(context);
            com.smartisanos.home.settings.icons.IconPreviewRepository.ImprovedCandidate candidate =
                    repository.resolveImprovedCandidate(ai.packageName, ai.name);
            if (candidate != null && candidate.exists) {
                Drawable loaded = repository.loadImprovedIconDrawable(candidate.sourceId);
                if (loaded != null) return loaded;
            }
            try {
                return info.loadIcon(context.getPackageManager());
            } catch (Throwable ignored) {
                return null;
            }
        }
        try {
            return info.loadIcon(context.getPackageManager());
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Drawable candidateIconDrawable(Context context, ResolveInfo info, Resources resources) {
        return resolveManagedIcon(context, info, resources, null);
    }

    /** One source decision for desktop, list previews and the temporary chooser preview. */
    private static Drawable resolveManagedIcon(Context context, ResolveInfo info, Resources resources,
                                               IconSourceManager.Selection temporaryGlobal) {
        if (context == null || info == null || info.activityInfo == null) {
            return null;
        }

        ActivityInfo ai = info.activityInfo;
        RedirectIconInfo redirect = RedirectIconDB.getRedirectIconInfo(context, ai.packageName, ai.name);
        String mode = RedirectIconDB.modeOf(redirect);
        // Manual sources are always terminal. A missing manual source deliberately falls back
        // to the APK icon below; it must never borrow the active global source.
        if (RedirectIconDB.MODE_ORIGINAL.equals(mode)) return null;
        if (RedirectIconDB.MODE_CUSTOM.equals(mode)) {
            if (redirect != null && redirect.iconData != null) {
                Bitmap bitmap = BitmapFactory.decodeByteArray(redirect.iconData, 0, redirect.iconData.length);
                if (bitmap != null) {
                    return new android.graphics.drawable.BitmapDrawable(context.getResources(), bitmap);
                }
            }
            return null;
        }
        if (RedirectIconDB.MODE_RESOURCE.equals(mode)) {
            Drawable custom = libraryIconDrawable(context, resources, RedirectIconDB.resourceNameOf(redirect));
            return custom;
        }
        if (RedirectIconDB.MODE_PACK.equals(mode)) {
            String pack = RedirectIconDB.packNameOf(redirect);
            return pack == null ? null : com.smartisanos.home.settings.icons.IconPackManager
                    .getPackedIcon(context, pack, ai.packageName, ai.name);
        }
        IconSourceManager.Selection global = temporaryGlobal == null
                ? IconSourceManager.get(context) : temporaryGlobal;
        if (global.type == IconSourceManager.Type.PACK) {
            return packedIconFromPackage(context, global.packageName, info);
        }
        if (global.type == IconSourceManager.Type.IMPROVED) {
            com.smartisanos.home.settings.icons.IconPreviewRepository repository =
                    com.smartisanos.home.settings.icons.IconPreviewRepository.get(context);
            int iconPx = dp(context, 52);
            Drawable cached = repository.resolveDesktopImprovedIconCachedOnly(ai.packageName, ai.name, 0L, iconPx);
            if (cached != null) {
                android.util.Log.i("LauncherIconRaster", "DESKTOP_IMPROVED_CANDIDATE package=" + ai.packageName
                        + " candidate=" + ai.packageName + " cacheState=MEMORY_OR_DISK");
                return cached;
            }
            com.smartisanos.home.settings.icons.IconPreviewRepository.ImprovedCandidate candidate =
                    repository.resolveImprovedCandidate(ai.packageName, ai.name);
            if (candidate != null && candidate.exists) {
                android.util.Log.i("LauncherIconRaster", "DESKTOP_IMPROVED_REQUESTED package=" + ai.packageName
                        + " candidate=" + candidate.sourceId);
                final String pkgName = ai.packageName;
                final String candidateId = candidate.sourceId;
                final Context appContext = context.getApplicationContext() == null ? context : context.getApplicationContext();
                repository.requestDesktopImprovedIcon(ai.packageName, ai.name, 0L, iconPx,
                        new com.smartisanos.home.settings.icons.IconPreviewRepository.Callback() {
                            public void onIconReady(String key, Bitmap bitmap) {
                                if (bitmap != null && isImprovedIconEnabled(appContext)) {
                                    android.util.Log.i("LauncherIconRaster", "DESKTOP_IMPROVED_READY package=" + pkgName + " candidate=" + candidateId);
                                    scheduleSmartisanIconRefresh(appContext, java.util.Collections.singletonList(pkgName));
                                }
                            }
                        });
            }
            return smartisanIconDrawableCachedOnly(context, info, resources);
        }
        return null;
    }

    private static Drawable effectiveIconDrawable(Context context, ResolveInfo info, Resources resources,
                                                  IconSourceManager.Selection temporaryGlobal) {
        Drawable managed = resolveManagedIcon(context, info, resources, temporaryGlobal);
        if (managed != null) return managed;
        try {
            return info == null ? null : info.loadIcon(context.getPackageManager());
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static boolean hasManualIconOverride(Context context, ActivityInfo activityInfo) {
        if (context == null || activityInfo == null) return false;
        RedirectIconInfo info = RedirectIconDB.getRedirectIconInfo(context,
                activityInfo.packageName, activityInfo.name);
        String mode = RedirectIconDB.modeOf(info);
        return RedirectIconDB.MODE_CUSTOM.equals(mode) || RedirectIconDB.MODE_RESOURCE.equals(mode)
                || RedirectIconDB.MODE_PACK.equals(mode) || RedirectIconDB.MODE_ORIGINAL.equals(mode);
    }

    private static Drawable packedIconFromPackage(Context context, String pack, ResolveInfo info) {
        ActivityInfo ai = info == null ? null : info.activityInfo;
        return ai == null ? null : com.smartisanos.home.settings.icons.IconPackManager
                .getPackedIconNonBlocking(context, pack, ai.packageName, ai.name);
    }

    public static Drawable currentLauncherIconDrawable(Context context, String packageName) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return null;
        }
        try {
            Drawable cachedImproved = smartisanNetworkIconDrawable(context, packageName);
            if (cachedImproved != null) {
                return cachedImproved;
            }
            PackageManager pm = context.getPackageManager();
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            intent.setPackage(packageName);
            java.util.List<ResolveInfo> activities = pm.queryIntentActivities(intent, 0);
            if (activities == null || activities.isEmpty()) {
                return null;
            }
            ResolveInfo best = activities.get(0);
            for (ResolveInfo item : activities) {
                if (item != null && item.activityInfo != null
                        && item.activityInfo.enabled && item.activityInfo.exported) {
                    best = item;
                    break;
                }
            }
            return normalizeLauncherIcon(candidateIconDrawable(context, best, context.getResources()));
        } catch (Throwable ignored) {
            return null;
        }
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
            Drawable custom = libraryIconDrawable(context, resources, RedirectIconDB.resourceNameOf(redirect));
            if (custom != null) {
                return custom;
            }
        }
        return selectedIconDrawable(context, info, null, resources);
    }

    private static Drawable smartisanIconDrawable(Context context, ResolveInfo info, Resources resources) {
        ActivityInfo activityInfo = info == null ? null : info.activityInfo;
        String packageName = activityInfo == null ? null : activityInfo.packageName;
        String systemAlias = smartisanSystemIconAlias(context, info);
        if (systemAlias != null) {
            Drawable onlineSystemIcon = smartisanNetworkIconDrawable(context, systemAlias);
            if (onlineSystemIcon != null) {
                return onlineSystemIcon;
            }
        }
        Drawable local = maintainedResourceIcon(context, resources, smartisanIconNameFor(context, info));
        if (local != null) {
            return local;
        }
        return smartisanNetworkIconDrawable(context, info);
    }

    /** Same resolution order as the normal icon path, but never schedules HTTP work. */
    private static Drawable smartisanIconDrawableCachedOnly(Context context, ResolveInfo info,
                                                            Resources resources) {
        ActivityInfo activityInfo = info == null ? null : info.activityInfo;
        String packageName = activityInfo == null ? null : activityInfo.packageName;
        String systemAlias = smartisanSystemIconAlias(context, info);
        if (systemAlias != null) {
            Drawable alias = libraryIconDrawableNonBlocking(context, resources, systemAlias);
            if (alias != null) return alias;
        }
        Drawable local = maintainedResourceIcon(context, resources, smartisanIconNameFor(context, info));
        if (local != null) return local;
        return libraryIconDrawableNonBlocking(context, resources,
                activityInfo == null ? null : activityInfo.packageName);
    }

    private static Drawable libraryIconDrawable(Context context, Resources resources, String name) {
        if (name == null || name.length() == 0) {
            return null;
        }
        Drawable local = maintainedResourceIcon(context, resources, name);
        if (local != null) {
            return local;
        }
        return smartisanNetworkIconDrawable(context, name);
    }

    private static Drawable libraryIconDrawableNonBlocking(Context context, Resources resources, String name) {
        if (name == null || name.length() == 0) {
            return null;
        }
        Drawable local = maintainedResourceIcon(context, resources, name);
        if (local != null) {
            return local;
        }
        Bitmap cached = null;
        synchronized (sSmartisanIconCache) {
            cached = sSmartisanIconCache.get(name);
        }
        if (isUsableIconBitmap(cached)) {
            return new android.graphics.drawable.BitmapDrawable(context.getResources(), cached);
        }
        if (cached != null) {
            synchronized (sSmartisanIconCache) {
                sSmartisanIconCache.remove(name);
            }
            Log.w(LOG_TAG, "ICON_EMPTY_RESULT_REJECTED memory key=" + name);
        }
        // The choice grid is built from libraryIconStored(), which also sees
        // the persistent cache. Reload that local PNG here after a process
        // restart so a valid disk entry cannot become an empty grid cell just
        // because the in-memory bitmap map has not been warmed yet.
        Bitmap diskCached = readCachedSmartisanIcon(context, name);
        if (diskCached != null) {
            synchronized (sSmartisanIconCache) {
                sSmartisanIconCache.put(name, diskCached);
            }
            return new android.graphics.drawable.BitmapDrawable(context.getResources(), diskCached);
        }
        return null;
    }

    private static boolean libraryIconAvailable(Context context, Resources resources, String name) {
        if (name == null || name.length() == 0) {
            return false;
        }
        if (maintainedResourceIcon(context, resources, name) != null) {
            return true;
        }
        return readCachedSmartisanIcon(context, name) != null;
    }

    private static boolean libraryIconStored(Context context, Resources resources, String name) {
        if (name == null || name.length() == 0) {
            return false;
        }
        if (maintainedResourceIcon(context, resources, name) != null) {
            return true;
        }
        synchronized (sSmartisanIconCache) {
            if (sSmartisanIconCache.get(name) != null) return true;
        }
        File file = smartisanIconCacheFile(context, name);
        return file != null && file.exists() && file.length() > 0;
    }

    /**
     * Map vendor-specific system packages to one canonical Smartisan icon.
     * The alias is deliberately restricted to system/updated-system apps so a
     * third-party app named "Camera" or "Music" is never replaced by accident.
     * Calendar and clock stay on the existing dynamic-icon implementation.
     */
    private static String smartisanSystemIconAlias(Context context, ResolveInfo info) {
        ActivityInfo ai = info == null ? null : info.activityInfo;
        if (ai == null) {
            return null;
        }
        CharSequence label = null;
        try {
            label = context == null ? null : info.loadLabel(context.getPackageManager());
        } catch (Throwable ignored) {
        }
        return com.smartisanos.home.settings.icons.IconManager.resolveSmartisanSystemIconName(ai.packageName, ai.name, label);
    }

    private static String smartisanIconNameFor(Context context, ResolveInfo info) {
        ActivityInfo ai = info == null ? null : info.activityInfo;
        if (ai == null) {
            return null;
        }
        CharSequence label = null;
        try {
            label = context == null ? null : info.loadLabel(context.getPackageManager());
        } catch (Throwable ignored) {
        }
        return com.smartisanos.home.settings.icons.IconManager.resolveSmartisanSystemIconName(ai.packageName, ai.name, label);
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

    public static String candidateIdToDrawableName(String candidateId) {
        if (TextUtils.isEmpty(candidateId)) return "";
        return candidateId.replace('.', '_').replace('-', '_');
    }

    private static Drawable maintainedResourceIcon(Context context, Resources resources, String name) {
        if (TextUtils.isEmpty(name)) return null;
        String resourceName = candidateIdToDrawableName(name);
        Drawable icon = safeDrawable(resources, drawable(resources, resourceName));
        if (icon != null) {
            return icon;
        }
        icon = safeDrawable(resources, drawable(resources, name));
        if (icon != null || context == null) {
            return icon;
        }
        try {
            Resources appResources = context.getResources();
            icon = safeDrawable(appResources,
                    appResources.getIdentifier(resourceName, "drawable", context.getPackageName()));
            if (icon != null) {
                return icon;
            }
            return safeDrawable(appResources, appResources.getIdentifier(name,
                    "drawable", context.getPackageName()));
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Drawable smartisanNetworkIconDrawable(Context context, ResolveInfo info) {
        ActivityInfo ai = info == null ? null : info.activityInfo;
        if (context == null || ai == null || ai.packageName == null || ai.packageName.length() == 0) {
            return null;
        }
        return smartisanNetworkIconDrawable(context, ai.packageName);
    }

    private static Drawable smartisanNetworkIconDrawable(Context context, String packageName) {
        if (context == null || packageName == null || packageName.length() == 0) {
            return null;
        }
        Bitmap bitmap = smartisanNetworkIconBitmap(context, packageName);
        return bitmap == null ? null : new android.graphics.drawable.BitmapDrawable(context.getResources(), bitmap);
    }

    private static Bitmap smartisanNetworkIconBitmap(Context context, String packageName) {
        return smartisanNetworkIconBitmap(context, packageName, false);
    }

    private static Bitmap smartisanNetworkIconBitmap(Context context, String packageName, boolean allowNetwork) {
        if (packageName == null || packageName.length() == 0
                || !packageName.matches("[A-Za-z0-9._-]+")) {
            return null;
        }
        synchronized (sSmartisanIconCache) {
            Bitmap memoryCached = sSmartisanIconCache.get(packageName);
            if (isUsableIconBitmap(memoryCached)) return memoryCached;
            if (memoryCached != null) {
                sSmartisanIconCache.remove(packageName);
                Log.w(LOG_TAG, "ICON_CACHE_WRITE_REJECTED memory recycled_or_transparent key=" + packageName);
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
        // Icon loading also runs on Launcher's model/database worker. Blocking
        // that thread on HTTP keeps the desktop on "initializing". Only the
        // dedicated fetch executor may perform network I/O.
        if (!allowNetwork) {
            scheduleSmartisanIconFetch(context, packageName);
            return null;
        }
        Bitmap bitmap = null;
        boolean allMirrorsNotFound = true;
        StrictMode.ThreadPolicy oldPolicy = null;
        try {
            oldPolicy = StrictMode.getThreadPolicy();
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(oldPolicy).permitNetwork().build());
            for (String baseUrl : ONLINE_ICON_BASE_URLS) {
                InputStream in = null;
                HttpURLConnection conn = null;
                try {
                    URL url = new URL(baseUrl + packageName + ".png");
                    conn = (HttpURLConnection) url.openConnection();
                    // Fail over quickly when one domestic/overseas mirror is
                    // unreachable instead of blocking every queued icon.
                    conn.setConnectTimeout(1200);
                    conn.setReadTimeout(1800);
                    conn.setUseCaches(true);
                    conn.setRequestProperty("Accept", "image/png");
                    conn.setRequestProperty("User-Agent", "SmartisanLauncher-OnlineIcon/1");
                    int responseCode = conn.getResponseCode();
                    if (responseCode != 200) {
                        if (responseCode != 404) {
                            allMirrorsNotFound = false;
                        }
                        continue;
                    }
                    allMirrorsNotFound = false;
                    String contentType = conn.getContentType();
                    if (contentType != null && !contentType.toLowerCase().startsWith("image/")) {
                        continue;
                    }
                    in = conn.getInputStream();
                    byte[] data = readAllBytes(in, 512 * 1024);
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    options.inScaled = false;
                    Bitmap decoded = BitmapFactory.decodeByteArray(data, 0, data.length, options);
                    if (isUsableIconBitmap(decoded) && decoded.getWidth() >= 48 && decoded.getHeight() >= 48
                            && decoded.getWidth() <= 1024 && decoded.getHeight() <= 1024) {
                        bitmap = decoded;
                        writeCachedSmartisanIcon(context, packageName, bitmap);
                        break;
                    }
                } catch (Throwable ignored) {
                    // A timeout/DNS/TLS failure is not proof that the icon does
                    // not exist. Do not poison the persistent miss cache.
                    allMirrorsNotFound = false;
                } finally {
                    if (in != null) {
                        try {
                            in.close();
                        } catch (Throwable ignored) {
                        }
                    }
                    if (conn != null) {
                        try {
                            conn.disconnect();
                        } catch (Throwable ignored) {
                        }
                    }
                }
            }
        } catch (Throwable ignored) {
        } finally {
            if (oldPolicy != null) {
                try {
                    StrictMode.setThreadPolicy(oldPolicy);
                } catch (Throwable ignored) {
                }
            }
        }
        synchronized (sSmartisanIconCache) {
            if (bitmap != null) {
                sSmartisanIconCache.put(packageName, bitmap);
            } else {
                // A transient network miss must not become a process-lifetime
                // negative cache after the retry window expires.
                sSmartisanIconCache.remove(packageName);
            }
        }
        if (bitmap == null && allMirrorsNotFound) {
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
        SMARTISAN_ICON_FETCH_EXECUTOR.execute(new Runnable() {
            public void run() {
                try {
                    android.os.Process.setThreadPriority(android.os.Process.THREAD_PRIORITY_BACKGROUND);
                    Bitmap downloaded = smartisanNetworkIconBitmap(appContext, packageName, true);
                    if (downloaded != null && isImprovedIconEnabled(appContext)) {
                        java.util.Set<String> changedPackages =
                                promoteDownloadedImprovedIcon(appContext, packageName);
                        if (!changedPackages.isEmpty()) {
                            scheduleSmartisanIconRefresh(appContext, changedPackages);
                        }
                    }
                } finally {
                    synchronized (sSmartisanIconFetchPending) {
                        sSmartisanIconFetchPending.remove(packageName);
                    }
                }
            }
        });
    }

    private static java.util.Set<String> promoteDownloadedImprovedIcon(Context context, String packageName) {
        java.util.LinkedHashSet<String> changedPackages = new java.util.LinkedHashSet<String>();
        if (context == null || TextUtils.isEmpty(packageName) || packageName.indexOf('_') >= 0) {
            return changedPackages;
        }
        if (!isImprovedIconEnabled(context)) {
            return changedPackages;
        }
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            List<ResolveInfo> matches = context.getPackageManager().queryIntentActivities(intent, 0);
            for (int i = 0; matches != null && i < matches.size(); i++) {
                ResolveInfo match = matches.get(i);
                ActivityInfo ai = match == null ? null : match.activityInfo;
                if (ai == null) continue;
                // Downloads may be keyed by a canonical Smartisan system-icon alias
                // (for example, the vendor's file manager or compass). That key is
                // not an installed Android package, so setPackage(key) would find no
                // row to promote. Resolve the alias back to its real launcher
                // activity, then keep the downstream update_icon dispatch scoped to
                // that real package only.
                String alias = smartisanSystemIconAlias(context, match);
                if (!packageName.equals(ai.packageName)
                        && !packageName.equals(alias)) {
                    continue;
                }
                RedirectIconInfo stored = RedirectIconDB.getRedirectIconInfo(context, ai.packageName, ai.name);
                String mode = RedirectIconDB.modeOf(stored);
                if (stored == null || RedirectIconDB.MODE_ORIGINAL.equals(mode)
                        || RedirectIconDB.MODE_AUTO.equals(mode)) {
                    if (!isAutoIconSelection(stored)) {
                        RedirectIconDB.updateAutoIcon(context, ai.packageName, ai.name);
                        changedPackages.add(ai.packageName);
                    }
                }
            }
            Log.i(LOG_TAG, "ONLINE_ICON_AUTO_PROMOTION key=" + packageName
                    + " changedPackageCount=" + changedPackages.size()
                    + " packages=" + changedPackages);
        } catch (Throwable ignored) {
        }
        return changedPackages;
    }

    private static Bitmap readCachedSmartisanIcon(Context context, String packageName) {
        try {
            File file = smartisanIconCacheFile(context, packageName);
            if (file == null || !file.exists()) {
                return null;
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            options.inScaled = false;
            Bitmap bitmap = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
            if (!isUsableIconBitmap(bitmap)) {
                file.delete();
                Log.w(LOG_TAG, "ICON_EMPTY_RESULT_REJECTED disk key=" + packageName);
                return null;
            }
            return bitmap;
        } catch (Throwable ignored) {
            return null;
        }
    }

    /** Removes only the uninstalled package's optional improved-icon cache. */
    public static void clearCachedImprovedIcon(Context context, String packageName) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return;
        }
        synchronized (sSmartisanIconCache) {
            sSmartisanIconCache.remove(packageName);
        }
        try {
            File file = smartisanIconCacheFile(context, packageName);
            if (file != null && file.isFile()) {
                file.delete();
            }
            context.getSharedPreferences(SMARTISAN_ICON_CACHE_PREFS, Context.MODE_PRIVATE).edit()
                    .remove("miss." + packageName).apply();
        } catch (Throwable ignored) {
        }
    }

    private static void writeCachedSmartisanIcon(Context context, String packageName, Bitmap bitmap) {
        if (!isUsableIconBitmap(bitmap)) {
            Log.w(LOG_TAG, "ICON_CACHE_WRITE_REJECTED disk invalid key=" + packageName);
            return;
        }
        FileOutputStream out = null;
        File temp = null;
        try {
            File file = smartisanIconCacheFile(context, packageName);
            if (file == null) {
                return;
            }
            File dir = file.getParentFile();
            if (dir != null && !dir.exists()) {
                dir.mkdirs();
            }
            temp = new File(file.getParentFile(), file.getName() + ".tmp");
            out = new FileOutputStream(temp);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, out);
            out.flush();
            out.close();
            out = null;
            if (!temp.renameTo(file)) {
                temp.delete();
                Log.w(LOG_TAG, "ICON_CACHE_WRITE_REJECTED atomic_rename key=" + packageName);
                return;
            }
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
            if (temp != null && temp.exists()) {
                temp.delete();
            }
        }
    }

    /**
     * Resolves the source that is effective now, rather than asking whether a
     * candidate exists on disk.  Smali uses this as the single split between
     * the original APK path and the managed replacement path.
     */
    public static boolean hasEffectiveManagedIcon(Object itemInfo) {
        if (itemInfo == null) return false;
        try {
            java.lang.reflect.Field packageField = itemInfo.getClass().getField("packageName");
            java.lang.reflect.Field componentField = itemInfo.getClass().getField("componentName");
            String packageName = String.valueOf(packageField.get(itemInfo));
            String componentName = String.valueOf(componentField.get(itemInfo));
            Context context = currentApplicationContext();
            if (context == null || TextUtils.isEmpty(packageName)) return false;
            ResolveInfo info = resolveLauncherActivity(context.getPackageManager(), packageName, componentName);
            boolean managed = info != null && iconOverrideDrawable(info, context.getPackageManager()) != null;
            android.util.Log.i("LauncherIconRaster", "EFFECTIVE_ICON_SOURCE packageName=" + packageName
                    + " componentName=" + componentName + " sourceType="
                    + (managed ? "MANAGED_OVERRIDE" : "DEFAULT_APK"));
            return managed;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean isUsableIconBitmap(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled() || bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0) {
            return false;
        }
        try {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] row = new int[width];
            for (int y = 0; y < height; y++) {
                bitmap.getPixels(row, 0, width, 0, y, width, 1);
                for (int x = 0; x < width; x++) {
                    if ((row[x] >>> 24) != 0) return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static void scheduleSmartisanIconRefresh(Context context,
                                                      java.util.Collection<String> packages) {
        if (context == null || packages == null || packages.isEmpty()) {
            return;
        }
        synchronized (MaintainedLauncherSettingsHost.class) {
            sSmartisanIconRefreshPackages.addAll(packages);
            if (sSmartisanIconRefreshScheduled) {
                return;
            }
            sSmartisanIconRefreshScheduled = true;
        }
        final Context app = context.getApplicationContext() == null
                ? context : context.getApplicationContext();
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                java.util.ArrayList<String> changedPackages;
                synchronized (MaintainedLauncherSettingsHost.class) {
                    sSmartisanIconRefreshScheduled = false;
                    changedPackages = new java.util.ArrayList<String>(sSmartisanIconRefreshPackages);
                    sSmartisanIconRefreshPackages.clear();
                }
                applyIconChanges(app, changedPackages);
                invalidateActiveIconAdapter();
            }
        });
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
        File persistent = new File(new File(context.getFilesDir(), SMARTISAN_ICON_CACHE_DIR),
                Integer.toHexString(packageName.hashCode()) + ".png");
        // Preserve icons downloaded by earlier builds that used cacheDir.
        if (!persistent.exists()) {
            File legacy = new File(new File(context.getCacheDir(), SMARTISAN_ICON_CACHE_DIR),
                    persistent.getName());
            if (legacy.exists()) {
                File parent = persistent.getParentFile();
                if (parent != null) parent.mkdirs();
                legacy.renameTo(persistent);
            }
        }
        return persistent;
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
            return com.smartisanos.home.settings.icons.IconPackManager
                    .getPackedIconNonBlocking(context, ai.packageName, ai.name);
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
        final UserHandle profileUser;
        final long profileSerial;
        final String key;
        final String pinyinSpaced;
        final String pinyinCompact;
        final String initials;
        final String t9Code;
        final Drawable icon;
        int historyRank = -1;
        int lastScore;

        SearchEntry(String label, String packageName, String className, int userId, Drawable icon) {
            this(label, packageName, className, userId, icon, null, -1L);
        }

        SearchEntry(String label, String packageName, String className, int userId, Drawable icon,
                    UserHandle profileUser, long profileSerial) {
            this.label = label;
            this.labelLower = label == null ? "" : label.toLowerCase();
            this.packageName = packageName;
            this.className = className;
            this.userId = userId;
            this.profileUser = profileUser;
            this.profileSerial = profileSerial;
            this.key = packageName + "\t" + className + "\t"
                    + (profileSerial >= 0L ? profileSerial : userId);
            this.pinyinSpaced = toLatinPinyin(label);
            this.pinyinCompact = compactLetters(this.pinyinSpaced);
            this.initials = pinyinInitials(this.pinyinSpaced);
            this.t9Code = toT9Code(label + " " + packageName + " " + pinyinCompact + " " + initials);
            this.icon = icon;
        }
    }

    private static final class ProfileAppEntry {
        final String label;
        final String packageName;
        final ComponentName componentName;
        final UserHandle profileUser;
        final int userId;
        final long profileSerial;
        final Drawable icon;

        ProfileAppEntry(String label, ComponentName componentName, UserHandle profileUser,
                        int userId, long profileSerial, Drawable icon) {
            this.label = label == null ? "" : label;
            this.componentName = componentName;
            this.packageName = componentName == null ? "" : componentName.getPackageName();
            this.profileUser = profileUser;
            this.userId = userId;
            this.profileSerial = profileSerial;
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

    private static final class SquareFrameLayout extends FrameLayout {
        SquareFrameLayout(Context context) {
            super(context);
        }

        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            int size = View.MeasureSpec.getSize(widthMeasureSpec);
            int exact = View.MeasureSpec.makeMeasureSpec(size, View.MeasureSpec.EXACTLY);
            super.onMeasure(exact, exact);
        }
    }

    private static final class IconPageData {
        final IconManager iconManager;
        final List<RedirectIconInfo> entries;
        final IconPreviewRepository.AppIconSnapshot snapshot;

        IconPageData(IconManager iconManager, List<RedirectIconInfo> entries,
                     IconPreviewRepository.AppIconSnapshot snapshot) {
            this.iconManager = iconManager;
            this.entries = entries == null
                    ? new ArrayList<RedirectIconInfo>() : entries;
            this.snapshot = snapshot == null
                    ? new IconPreviewRepository.AppIconSnapshot(null) : snapshot;
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
