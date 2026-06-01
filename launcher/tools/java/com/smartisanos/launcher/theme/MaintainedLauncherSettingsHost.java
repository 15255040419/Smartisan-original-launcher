package com.smartisanos.launcher.theme;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DownloadManager;
import android.app.PendingIntent;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
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
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.StrictMode;
import android.provider.Settings;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
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
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class MaintainedLauncherSettingsHost {
    private static android.os.Handler sThemePageHandler;
    private static Runnable sThemePageRunnable;
    private static Resources sSettingsResources;
    private static File sSettingsApk;
    private static Bitmap sPendingThemeScreenshot;
    private static final String SETTINGS_ASSET = "settings_maintained/maintained-settings-res.apk";
    private static final String SETTINGS_PKG = "com.smartisanos.home";
    private static final String THEME_DOWNLOAD_PREFS = "theme_download_prefs";
    private static final String ICON_OVERRIDE_PREFS = "icon_override_prefs";
    private static final String WALLPAPER_PREFS = "launcher_settings";
    private static final String PREF_WALLPAPER_URI = "launcher_wallpaper_uri";
    private static final String PREF_WALLPAPER_THUMB = "launcher_wallpaper_thumb";
    private static final String PREF_WALLPAPER_READY = "launcher_wallpaper_ready";
    private static final String PREF_WALLPAPER_REFRESH_PENDING = "launcher_wallpaper_refresh_pending";
    private static final String PREF_IMPROVED_ICON_ENABLED = "launcher_improved_icon_enabled";
    private static final String KEY_DESKTOP_WALLPAPER_URI = "desktop_wallpaper_uri";
    private static final String KEY_LOCKSCREEN_BACKGROUND = "lockscreen_background";
    private static final String PREF_PENDING_CUSTOM_ICON_KEY = "pending_custom_icon_key";
    private static final String PREF_PENDING_ICON_SCROLL_Y = "pending_icon_scroll_y";
    private static final int REQUEST_PICK_CUSTOM_ICON = 53026;
    private static int sRestoreIconPageScrollY = -1;
    private static final Map<String, Bitmap> sThemePreviewCache = new HashMap<String, Bitmap>();
    private static final Map<String, Bitmap> sSmartisanIconCache = new HashMap<String, Bitmap>();
    private static final String THEME_DOWNLOAD_BASE =
            "https://github.com/15255040419/smartisan-launcher/releases/download/themes-v1/";
    private static final ThemeEntry[] LOCAL_THEMES = new ThemeEntry[]{
            new ThemeEntry("smartisan_theme_black", "com.smartisanos.home", "经典黑", true),
    };
    private static final ThemeEntry[] ONLINE_THEMES = new ThemeEntry[]{
            new ThemeEntry("smartisan_theme_blue", "com.smartisanos.launcher.theme.blue", "蓝色", false),
            new ThemeEntry("smartisan_theme_light_blue", "com.smartisanos.launcher.theme.lightblue", "经典蓝", false),
            theme("smartisan_theme_aero", "毛玻璃"),
            theme("smartisan_theme_mist", "白雾"),
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
        try {
            migrateBuiltinIconDefaults(activity);
            migrateOldOriginalIconDefaults(activity);
            migrateIconPackDefault(activity);
            maybeRefreshLauncherIcons(activity);
            tuneWindow(activity);
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = inflate(activity, context, "setting_main");
            bindPage(activity, resources, root);
            tuneScrollBars(root);
            activity.setContentView(root);
        } catch (Throwable t) {
            showFailure(activity, t);
        }
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
                return null;
            }
        });
        return inflater.inflate(layoutId, null);
    }

    private static void bindPage(final Activity activity, Resources resources, View root) {
        View title = find(resources, root, "view_title");
        if (title instanceof Title) {
            ((Title) title).setTitle("桌面设置");
        }

        bindGrid(activity, resources, root);
        bindSwitch(activity, resources, root, "item_id_hide_lable", "launcher_hide_lable", false);
        bindSwitch(activity, resources, root, "item_id_unlock_anim", "launcher_unlock_animation_enabled", true);
        bindSwitch(activity, resources, root, "multi_block_fast_launch_app", "fast_launch_app_on", true);

        hide(resources, root, "item_id_hide_navigation_bar");
        hide(resources, root, "id_unlock_anim_tips");
        hide(resources, root, "setting_defaultsearchengine");
        hide(resources, root, "searchengine_text");
        hide(resources, root, "current_engine");
        hide(resources, root, "item_id_enable_cellular");
        hide(resources, root, "id_enable_cellular_tips");
        hide(resources, root, "launcher_flip_animation");
        bindCurrentThemePreviewIcon(activity, resources, root, "item_id_themes");
        bindWallpaperSettingIcon(activity, resources, root);
        bindMainSettingIcon(resources, root, "item_page_flip_anims", "page_flip_animation_default_upper", true);
        bindMainSettingIcon(resources, root, "item_id_icons", "icon_setting_icon");

        click(activity, resources, root, "item_id_themes", new View.OnClickListener() {
            public void onClick(View v) {
                showThemePage(activity);
            }
        });
        click(activity, resources, root, "item_id_launcher_wallpaper", new View.OnClickListener() {
            public void onClick(View v) {
                showWallpaperPage(activity);
            }
        });
        click(activity, resources, root, "item_page_flip_anims", new View.OnClickListener() {
            public void onClick(View v) {
                showPageFlipPage(activity);
            }
        });
        click(activity, resources, root, "item_id_icons", new View.OnClickListener() {
            public void onClick(View v) {
                showIconPage(activity);
            }
        });
        click(activity, resources, root, "setting_switch_launcher", new View.OnClickListener() {
            public void onClick(View v) {
                openDefaultHomeSettings(activity);
            }
        });
        clickToast(activity, resources, root, "setting_share", "分享功能后续接入");
        clickToast(activity, resources, root, "more_check_upgradation", "当前已是本地移植版本");
        clickToast(activity, resources, root, "setting_feedback", "反馈功能后续接入");
        clickToast(activity, resources, root, "setting_user_experience", "用户体验计划后续接入");
        clickToast(activity, resources, root, "setting_battery_optimization", "请在系统电池设置中调整");
        clickToast(activity, resources, root, "setting_about_us", "锤子桌面");
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
                return info.loadIcon(pm);
            } catch (Throwable ignored) {
                return null;
            }
        }
        try {
            Drawable override = iconOverrideDrawable(info, pm);
            if (override != null) {
                return override;
            }
        } catch (Throwable ignored) {
        }
        try {
            return info.loadIcon(pm);
        } catch (Throwable ignored) {
            return null;
        }
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
            saveGaussianWallpaperCopy(activity, Uri.parse(launcherUri));
            String thumbPath = saveWallpaperThumbnail(activity, Uri.parse(launcherUri));
            syncLauncherWallpaperUri(activity, launcherUri);
            try {
                activity.getSharedPreferences(WALLPAPER_PREFS, Context.MODE_PRIVATE)
                        .edit()
                        .putString(PREF_WALLPAPER_URI, launcherUri)
                        .putString(PREF_WALLPAPER_THUMB, thumbPath == null ? "" : thumbPath)
                        .putBoolean(PREF_WALLPAPER_READY, true)
                        .commit();
            } catch (Throwable ignored) {
            }
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
                    return true;
                } catch (Throwable ignored) {
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
            return true;
        } catch (Throwable ignored) {
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
        } catch (Throwable ignored) {
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

    public static String currentLauncherWallpaperUri(Context context) {
        return selectedWallpaperUri(context);
    }

    public static boolean isLauncherWallpaperTheme(Context context) {
        String id = currentTheme(context);
        return "smartisan_theme_aero".equals(id) || "smartisan_theme_mist".equals(id);
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
                        showThemePage(activity);
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
        } catch (Throwable t) {
            showFailure(activity, t);
        }
    }

    private static void showWallpaperPage(final Activity activity) {
        try {
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
                replaceSimpleListWithScroll(activity, context, resources, list, adapter,
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
            }
            tuneScrollBars(root);
            activity.setContentView(root);
        } catch (Throwable t) {
            showFailure(activity, t);
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

    private static void replaceSimpleListWithScroll(Activity activity, SettingsResourceContext context,
                                                    Resources resources, ListView list, SimpleTextAdapter adapter,
                                                    View.OnClickListener[] listeners) {
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
        scroll.setVerticalScrollBarEnabled(false);
        scroll.setOverScrollMode(View.OVER_SCROLL_NEVER);
        LinearLayout content = new LinearLayout(context);
        content.setOrientation(LinearLayout.VERTICAL);
        for (int i = 0; i < adapter.getCount(); i++) {
            View row = adapter.getView(i, null, content);
            if (listeners != null && i < listeners.length && listeners[i] != null) {
                row.setClickable(true);
                row.setOnClickListener(listeners[i]);
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
        AppIconAdapter adapter = new AppIconAdapter(activity, context, resources);
        int count = adapter.getCount();
        for (int i = 0; i < count; i++) {
            content.addView(adapter.getView(i, null, content));
        }
        content.addView(iconPageFooter(activity, context, resources));
        scroll.addView(content, new ScrollView.LayoutParams(-1, -2));
        parent.addView(scroll, index, listLp);
    }

    private static void bindBackTitle(final Activity activity, Resources resources, View root, String idName, String titleText) {
        TextView btnBack = (TextView) find(resources, root, "btn_back");
        if (btnBack != null) {
            btnBack.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    stopThemePagePolling();
                    show(activity);
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
                    show(activity);
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

    private static void applyWallpaperChange(Context context) {
        String uri = selectedWallpaperUri(context);
        if (uri != null && uri.length() > 0) {
            syncLauncherWallpaperUri(context, uri);
        }
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
        try {
            context.sendBroadcast(new Intent(Intent.ACTION_WALLPAPER_CHANGED));
        } catch (Throwable ignored) {
        }
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
        if (context instanceof Activity) {
            showRestartLoading((Activity) context);
        }
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(new Runnable() {
            public void run() {
                scheduleLauncherRestart(context);
                if (context instanceof Activity) {
                    finishSettingsTask((Activity) context);
                }
                try {
                    Process.killProcess(Process.myPid());
                } catch (Throwable ignored) {
                    startLauncherFromForeground(context);
                }
            }
        }, 420);
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
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(new Runnable() {
            public void run() {
                refreshLauncherWallpaperSurface();
            }
        }, 120);
        handler.postDelayed(new Runnable() {
            public void run() {
                refreshLauncherWallpaperSurface();
            }
        }, 420);
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
        if (previewImg != null) {
            Bitmap bitmap = themeLargePreviewBitmap(activity, entry.id);
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
        try {
            Class<?> dialogClass = Class.forName("smartisanos.app.SmartisanProgressDialog");
            Object dialog = dialogClass.getConstructor(Context.class).newInstance(activity);
            
            int drawableId = activity.getResources().getIdentifier("loading_progress", "drawable", activity.getPackageName());
            if (drawableId != 0) {
                dialogClass.getMethod("setIndeterminateDrawableResource", int.class).invoke(dialog, drawableId);
            }
            dialogClass.getMethod("setCancelable", boolean.class).invoke(dialog, false);
            dialogClass.getMethod("setCanceledOnTouchOutside", boolean.class).invoke(dialog, false);
            dialogClass.getMethod("setMessage", String.class).invoke(dialog, "正在重启桌面...");
            dialogClass.getMethod("show").invoke(dialog);
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
        writePageAnimation(context, next);
        Toast.makeText(context, "桌面翻页动画：" + animName(next), Toast.LENGTH_SHORT).show();
    }

    private static void savePageAnimation(Activity activity, int value) {
        writePageAnimation(activity, value);
        refreshPageAnimation(value);
        Toast.makeText(activity, "桌面翻页动画：" + animName(value), Toast.LENGTH_SHORT).show();
    }

    private static int readPageAnimation(Context context) {
        try {
            return context.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                    .getInt("launcher_page_animation", readGlobal(context, "launcher_page_animation", 0));
        } catch (Throwable ignored) {
            return readGlobal(context, "launcher_page_animation", 0);
        }
    }

    private static void writePageAnimation(Context context, int value) {
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
        pkg = normalizeThemePackage(activity, id, pkg);
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
        try {
            SharedPreferences.Editor editor = activity.getSharedPreferences("com.smartisanos.launcher_prefs", 0).edit();
            editor.putString("launcher_theme", id);
            editor.putString("launcher_grid_theme", id);
            editor.remove("launcher_theme_preview_res");
            editor.commit();
        } catch (Throwable ignored) {
        }
        try {
            if (Build.VERSION.SDK_INT < 23 || Settings.System.canWrite(activity)) {
                Settings.System.putString(activity.getContentResolver(), "launcher_theme", id);
                Settings.System.putString(activity.getContentResolver(), "launcher_grid_theme", id);
                Settings.System.putString(activity.getContentResolver(), "launcher_theme_preview_res", null);
            }
        } catch (Throwable ignored) {
        }
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
                        updateThemeDetail(activity, getMaintainedResources(activity), entry, null, btnOk, btnDownload, statusIcon);
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

    private static void click(Context context, Resources resources, View root, String idName, View.OnClickListener listener) {
        View view = find(resources, root, idName);
        if (view != null) {
            view.setOnClickListener(listener);
            view.setClickable(true);
        }
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
        String legacyMode = mode == 20 ? "16" : "9";
        String[] candidates = new String[]{
                "theme_preview/" + themeId + "/" + mode + "/trident_S.jpg",
                "theme_preview/" + themeId + "/preview_" + legacyMode + "_S.jpg",
                "theme_preview/" + themeId + "/preview_" + legacyMode + "_S.png",
                "theme_preview/" + themeId + "/12/trident_S.jpg",
                "theme_preview/" + themeId + "/20/trident_S.jpg",
                "theme_preview/" + themeId + "/preview_9_S.jpg",
                "theme_preview/" + themeId + "/preview_9_S.png",
                "theme_preview/" + themeId + "/preview_16_S.jpg",
                "theme_preview/" + themeId + "/preview_16_S.png",
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
        String legacyMode = mode == 20 ? "16" : "9";
        String[] candidates = new String[]{
                "theme_preview/" + themeId + "/" + mode + "/delta_L.jpg",
                "theme_preview/" + themeId + "/preview_" + legacyMode + "_L.jpg",
                "theme_preview/" + themeId + "/preview_" + legacyMode + "_L.png",
                "theme_preview/" + themeId + "/" + mode + "/trident_L.jpg",
                "theme_preview/" + themeId + "/12/delta_L.jpg",
                "theme_preview/" + themeId + "/20/delta_L.jpg",
                "theme_preview/" + themeId + "/preview_9_L.jpg",
                "theme_preview/" + themeId + "/preview_9_L.png",
                "theme_preview/" + themeId + "/preview_16_L.jpg",
                "theme_preview/" + themeId + "/preview_16_L.png"
        };
        for (int i = 0; i < candidates.length; i++) {
            Bitmap bitmap = assetBitmap(context, candidates[i]);
            if (bitmap != null) {
                return bitmap;
            }
        }
        return null;
    }

    public static boolean isTransparentThemeWithWallpaper(Context context, boolean originalTransparentVal) {
        return originalTransparentVal;
    }

    private static String currentTheme(Context context) {
        try {
            Class<?> cls = Class.forName("com.smartisanos.launcher.data.O");
            Object value = cls.getMethod("j", android.content.ContentResolver.class)
                    .invoke(null, context.getContentResolver());
            if (value instanceof String && ((String) value).length() > 0) {
                return (String) value;
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.Global.getString(context.getContentResolver(), "launcher_grid_theme");
            if (value != null && value.length() > 0) {
                return value;
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.System.getString(context.getContentResolver(), "launcher_grid_theme");
            if (value != null && value.length() > 0) {
                return value;
            }
        } catch (Throwable ignored) {
        }
        try {
            return context.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                    .getString("launcher_grid_theme", "smartisan_theme_black");
        } catch (Throwable ignored) {
            return "smartisan_theme_black";
        }
    }

    private static View iconPageHeader(final Activity activity, SettingsResourceContext context, Resources resources) {
        LinearLayout root = new LinearLayout(context);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setLayoutParams(new AbsListView.LayoutParams(-1, dp(context, 112)));

        root.addView(iconHeaderRow(activity, context, resources, "改进版图标", null,
                "selector_setting_sub_item_bg_top", new View.OnClickListener() {
            public void onClick(View v) {
                toggleImprovedIcon(activity);
            }
        }, true),
                new LinearLayout.LayoutParams(-1, dp(context, 56)));

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
        title.setTextSize(20);
        texts.addView(title, new LinearLayout.LayoutParams(-2, -1));

        if (subtitleText != null && subtitleText.length() > 0) {
            TextView subtitle = new TextView(context);
            subtitle.setGravity(Gravity.CENTER_VERTICAL);
            subtitle.setSingleLine(true);
            subtitle.setText(subtitleText);
            subtitle.setTextColor(0xff9d9fa6);
            subtitle.setTextSize(15);
            RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(-2, -1);
            lp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
            lp.addRule(RelativeLayout.CENTER_VERTICAL);
            lp.rightMargin = dp(context, 24);
            row.addView(subtitle, lp);
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
            
            if (installed) {
                if (downloading != null) {
                    downloading.setText("");
                    downloading.setVisibility(View.GONE);
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
                checked.setVisibility(entry.id.equals(currentThemeId) ? View.VISIBLE : View.GONE);
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
            try {
                List<RedirectIconInfo> resolved = iconManager.getIconRedirectedApplications();
                for (int i = 0; i < resolved.size(); i++) {
                    RedirectIconInfo info = resolved.get(i);
                    ResolveInfo resolveInfo = iconManager.getResolveInfo(info.packageName, info.componentName);
                    if (shouldShowIconEntry(resolveInfo)) {
                        apps.add(info);
                    }
                }
                Collections.sort(apps, new Comparator<RedirectIconInfo>() {
                    public int compare(RedirectIconInfo a, RedirectIconInfo b) {
                        String la = a == null ? "" : iconManager.getLableForPackage(a.packageName, a.componentName);
                        String lb = b == null ? "" : iconManager.getLableForPackage(b.packageName, b.componentName);
                        return la.compareToIgnoreCase(lb);
                    }
                });
            } catch (Throwable ignored) {
            }
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
        if (redirect != null && redirect.useImprovedAppIcon && RedirectIconDB.MODE_AUTO.equals(mode)) {
            Drawable smartisan = smartisanIconDrawable(context, info, resources);
            if (smartisan != null) {
                return smartisan;
            }
        }
        Drawable packed = packedIcon(context, info);
        if (packed != null) {
            return packed;
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
        Drawable local = safeDrawable(resources, drawable(resources, smartisanIconNameFor(context, info)));
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
        if ("com.android.dialer".equals(pkg) || "com.android.phone".equals(pkg)
                || "com.google.android.dialer".equals(pkg) || "电话".equals(label)) {
            return "app_icon_phone";
        }
        if ("com.android.mms".equals(pkg) || "com.google.android.apps.messaging".equals(pkg)
                || key.contains("mms") || key.contains("messaging")
                || "短信".equals(label) || "信息".equals(label)) {
            return "app_icon_mms";
        }
        if ("com.smartisanos.weather".equals(pkg) || "com.android.weather".equals(pkg)
                || key.contains("weather") || "天气".equals(label)) {
            return "app_icon_weather";
        }
        if ("com.smartisanos.appstore".equals(pkg) || key.contains("appstore")
                || key.contains("market") || "应用商店".equals(label)) {
            return "app_icon_app_store";
        }
        if ("com.smartisanos.reader".equals(pkg) || key.contains("reader") || "阅读".equals(label)) {
            return "app_icon_reader";
        }
        if ("com.google.android.googlequicksearchbox".equals(pkg)
                || key.contains("googlequicksearchbox")
                || "搜索".equals(label)) {
            return "app_icon_search";
        }
        if ("com.smartisanos.notes".equals(pkg) || key.contains("note") || "便签".equals(label)
                || "笔记".equals(label)) {
            return "app_icon_notes";
        }
        if ("com.smartisanos.gamecenter".equals(pkg) || key.contains("gamecenter") || "游戏中心".equals(label)) {
            return "app_icon_game_center";
        }
        if ("com.smartisanos.cloudsync".equals(pkg) || key.contains("cloudsync") || "欢喜云".equals(label)) {
            return "app_icon_smile_cloud";
        }
        if ("com.smartisanos.bbs".equals(pkg) || key.contains("bbs") || "锤子论坛".equals(label)) {
            return "app_icon_bbs";
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

    private static Drawable smartisanNetworkIconDrawable(Context context, ResolveInfo info) {
        ActivityInfo ai = info == null ? null : info.activityInfo;
        if (context == null || ai == null || ai.packageName == null || ai.packageName.length() == 0) {
            return null;
        }
        Bitmap bitmap = smartisanNetworkIconBitmap(ai.packageName);
        return bitmap == null ? null : new android.graphics.drawable.BitmapDrawable(context.getResources(), bitmap);
    }

    private static Bitmap smartisanNetworkIconBitmap(String packageName) {
        if (packageName == null || packageName.length() == 0) {
            return null;
        }
        synchronized (sSmartisanIconCache) {
            if (sSmartisanIconCache.containsKey(packageName)) {
                return sSmartisanIconCache.get(packageName);
            }
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
        return bitmap;
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
