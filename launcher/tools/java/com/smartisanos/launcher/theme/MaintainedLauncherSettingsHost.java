package com.smartisanos.launcher.theme;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.Dialog;
import android.app.DownloadManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.SharedPreferences;
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
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.provider.Settings;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.BaseAdapter;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;

import com.smartisanos.home.settings.PreviewSettingItemView;
import com.smartisanos.home.settings.SettingItemSwitch;
import com.smartisanos.home.settings.SettingItemTextVertical;
import com.smartisanos.home.widget.sys.Title;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class MaintainedLauncherSettingsHost {
    private static final String SETTINGS_ASSET = "settings_maintained/maintained-settings-res.apk";
    private static final String SETTINGS_PKG = "com.smartisanos.home";
    private static final String THEME_DOWNLOAD_BASE =
            "https://gh-proxy.org/https://github.com/15255040419/smartisan-launcher/releases/download/themes-v1/";
    private static final ThemeEntry[] LOCAL_THEMES = new ThemeEntry[]{
            new ThemeEntry("smartisan_theme_black", "com.smartisanos.home", "经典黑", true),
    };
    private static final ThemeEntry[] ONLINE_THEMES = new ThemeEntry[]{
            new ThemeEntry("smartisan_theme_light_blue", "com.smartisanos.launcher.theme.blue", "经典蓝", false),
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

    private static void tuneWindow(Activity activity) {
        if (Build.VERSION.SDK_INT >= 21) {
            activity.getWindow().setStatusBarColor(0xfff7f7f7);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            activity.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
        }
    }

    private static File copySettingsResources(Context context) throws Exception {
        File out = new File(context.getCacheDir(), "maintained-settings-res.apk");
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
        File apk = copySettingsResources(activity);
        Resources resources = loadExternalResources(activity, apk.getAbsolutePath());
        return new SettingsResourceContext(activity, resources);
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
            ((Title) title).setTitle("锤子桌面");
        }

        bindGrid(activity, resources, root);
        bindSwitch(activity, resources, root, "item_id_hide_lable", "launcher_hide_lable", false);
        bindSwitch(activity, resources, root, "item_id_unlock_anim", "launcher_unlock_animation_enabled", true);
        bindSwitch(activity, resources, root, "multi_block_fast_launch_app", "launcher_fast_launch_app", true);
        bindCurrentThemePreviewIcon(activity, resources, root);

        hide(resources, root, "item_id_hide_navigation_bar");
        hide(resources, root, "id_unlock_anim_tips");
        hide(resources, root, "setting_defaultsearchengine");
        hide(resources, root, "searchengine_text");
        hide(resources, root, "current_engine");
        hide(resources, root, "item_id_enable_cellular");
        hide(resources, root, "id_enable_cellular_tips");
        hide(resources, root, "launcher_flip_animation");

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

    private static void bindCurrentThemePreviewIcon(Context context, Resources resources, View root) {
        View item = find(resources, root, "item_id_themes");
        if (item instanceof SettingItemTextVertical) {
            Bitmap bitmap = themePreviewBitmap(context, currentTheme(context));
            if (bitmap == null) {
                bitmap = themePreviewBitmap(context, "smartisan_theme_black");
            }
            ((SettingItemTextVertical) item).setIconBitmap(bitmap);
        }
    }

    private static void showThemePage(final Activity activity) {
        try {
            tuneWindow(activity);
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = inflate(activity, context, "theme_preview_gridview");
            bindBackTitle(activity, resources, root, "view_title", getString(resources, "launcher_theme_text", "桌面主题"));
            GridView installed = asGrid(find(resources, root, "installed_list"));
            if (installed != null) {
                final ThemePreviewAdapter installedAdapter = new ThemePreviewAdapter(activity, context, resources, true);
                installed.setAdapter(installedAdapter);
                installed.setNumColumns(2);
                installed.setVerticalSpacing(0);
                installed.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
                    public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                        showThemeItemPage(activity, installedAdapter.entryAt(position));
                    }
                });
            }
            GridView notInstalled = asGrid(find(resources, root, "not_installed_list"));
            if (notInstalled != null) {
                final ThemePreviewAdapter onlineAdapter = new ThemePreviewAdapter(activity, context, resources, false);
                notInstalled.setAdapter(onlineAdapter);
                notInstalled.setNumColumns(2);
                notInstalled.setVerticalSpacing(0);
                notInstalled.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
                    public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                        showThemeItemPage(activity, onlineAdapter.entryAt(position));
                    }
                });
            }
            tuneScrollBars(root);
            activity.setContentView(root);
        } catch (Throwable t) {
            showFailure(activity, t);
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
                bindThemeDots(activity, context, resources, dots, entries, selected, previewImg, btnOk, btnDownload);
            }
            updateThemeDetail(activity, resources, entries[selected[0]], previewImg, btnOk, btnDownload);

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
                list.setAdapter(new SimpleTextAdapter(activity, resources,
                        new String[]{
                                getString(resources, "launcher_wallpaper_pick_text", "选择图片"),
                                getString(resources, "launcher_wallpaper_restore_default_text", "恢复默认壁纸")
                        },
                        new String[]{
                                "从系统图片选择器选择桌面壁纸",
                                "恢复锤子桌面内置背景"
                        }));
                list.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {
                    public void onItemClick(android.widget.AdapterView<?> parent, View view, int position, long id) {
                        if (position == 0) {
                            pickWallpaper(activity);
                        } else {
                            Toast.makeText(activity, "默认壁纸恢复逻辑后续接入桌面主题资源", Toast.LENGTH_SHORT).show();
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
        try {
            tuneWindow(activity);
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = inflate(activity, context, "app_icon_settings_layout");
            bindBackTitle(activity, resources, root, "view_title", getString(resources, "icon_setting_text", "应用图标"));
            ListView list = asList(find(resources, root, "icons_list_view"));
            if (list != null) {
                list.addHeaderView(iconPageHeader(activity, resources), null, false);
                list.addFooterView(iconPageFooter(activity, context, resources), null, false);
                list.setAdapter(new AppIconAdapter(activity, context, resources));
            }
            tuneScrollBars(root);
            activity.setContentView(root);
        } catch (Throwable t) {
            showFailure(activity, t);
        }
    }

    private static void bindBackTitle(final Activity activity, Resources resources, View root, String idName, String titleText) {
        TextView btnBack = (TextView) find(resources, root, "btn_back");
        if (btnBack != null) {
            btnBack.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
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
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int i = 0; i < group.getChildCount(); i++) {
                tuneScrollBars(group.getChildAt(i));
            }
        }
    }

    private static String getString(Resources resources, String name, String fallback) {
        int id = resources.getIdentifier(name, "string", SETTINGS_PKG);
        return id == 0 ? fallback : resources.getString(id);
    }

    private static int drawable(Resources resources, String name) {
        return resources.getIdentifier(name, "drawable", SETTINGS_PKG);
    }

    private static void pickWallpaper(Activity activity) {
        Intent intent = new Intent(Intent.ACTION_PICK);
        intent.setType("image/*");
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
                boolean next = !item.isChecked();
                item.setChecked(next);
                Settings.System.putString(context.getContentResolver(), key, Boolean.toString(next));
            }
        });
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
        writeLauncherModePref(context, mode);
        try {
            Settings.Global.putInt(context.getContentResolver(), "launcher_mode", mode);
            Settings.Global.putInt(context.getContentResolver(), "launcher_multi_block_mode", multiBlockMode);
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
                    ((Activity) context).finish();
                }
                Process.killProcess(Process.myPid());
            }
        }, 850);
    }

    private static void scheduleLauncherRestart(Context context) {
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.setClassName(context.getPackageName(), "com.smartisanos.launcher.LauncherAlias");
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_NO_ANIMATION | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            intent.addCategory(Intent.CATEGORY_HOME);
            int flags = PendingIntent.FLAG_CANCEL_CURRENT;
            if (Build.VERSION.SDK_INT >= 23) {
                flags |= PendingIntent.FLAG_IMMUTABLE;
            }
            PendingIntent pendingIntent = PendingIntent.getActivity(context, 1001, intent, flags);
            AlarmManager alarmManager = (AlarmManager) context.getSystemService(Context.ALARM_SERVICE);
            if (alarmManager != null) {
                alarmManager.set(AlarmManager.RTC, System.currentTimeMillis() + 120, pendingIntent);
            } else {
                context.startActivity(intent);
            }
        } catch (Throwable ignored) {
            startLauncherFromForeground(context);
        }
    }

    private static void startLauncherFromForeground(Context context) {
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.setClassName(context.getPackageName(), "com.smartisanos.launcher.LauncherAlias");
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_NO_ANIMATION | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            intent.addCategory(Intent.CATEGORY_HOME);
            if (context instanceof Activity) {
                ((Activity) context).overridePendingTransition(0, 0);
            }
            context.startActivity(intent);
            if (context instanceof Activity) {
                ((Activity) context).overridePendingTransition(0, 0);
            }
        } catch (Throwable ignored) {
        }
    }

    private static ThemeEntry[] allThemeEntries() {
        ThemeEntry[] entries = Arrays.copyOf(LOCAL_THEMES, LOCAL_THEMES.length + ONLINE_THEMES.length);
        System.arraycopy(ONLINE_THEMES, 0, entries, LOCAL_THEMES.length, ONLINE_THEMES.length);
        return entries;
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
                                      final View btnDownload) {
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
                    updateThemeDetail(activity, resources, entries[selected[0]], previewImg, btnOk, btnDownload);
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
                                          final TextView btnOk, final View btnDownload) {
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
        if (btnOk != null) {
            btnOk.setVisibility(installed ? View.VISIBLE : View.GONE);
            btnOk.setEnabled(!current);
            btnOk.setText(getString(resources, "theme_title_bar_btn_setup", "设定"));
            btnOk.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    applyTheme(activity, entry.id, entry.pkg, entry.name);
                }
            });
        }
        if (btnDownload != null) {
            btnDownload.setVisibility(installed ? View.GONE : View.VISIBLE);
            btnDownload.setEnabled(!installed);
            btnDownload.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    long id = downloadTheme(activity, entry);
                    if (id >= 0) {
                        btnDownload.setEnabled(false);
                        monitorThemeDownload(activity, id, entry, btnOk, btnDownload);
                    }
                }
            });
        }
    }

    private static void showRestartLoading(Activity activity) {
        try {
            tuneWindowForLoading(activity);
            RestartLoadingView loadingView = new RestartLoadingView(activity);
            activity.setContentView(loadingView);
            loadingView.start();
        } catch (Throwable ignored) {
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
        int current = readGlobal(context, "launcher_page_animation", 0);
        int next = current == 0 ? 3 : (current == 3 ? 4 : (current == 4 ? 6 : 0));
        Settings.Global.putInt(context.getContentResolver(), "launcher_page_animation", next);
        Toast.makeText(context, "桌面翻页动画：" + animName(next), Toast.LENGTH_SHORT).show();
    }

    private static void savePageAnimation(Activity activity, int value) {
        try {
            Settings.Global.putInt(activity.getContentResolver(), "launcher_page_animation", value);
        } catch (Throwable ignored) {
        }
        try {
            Settings.System.putInt(activity.getContentResolver(), "launcher_page_animation", value);
        } catch (Throwable ignored) {
        }
        try {
            activity.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                    .edit()
                    .putInt("launcher_page_animation", value)
                    .commit();
        } catch (Throwable ignored) {
        }
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            constants.getField("SCROLL_ANIMATION_TYPE").setInt(null, value);
        } catch (Throwable ignored) {
        }
        Toast.makeText(activity, "桌面翻页动画：" + animName(value), Toast.LENGTH_SHORT).show();
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
        try {
            Settings.Global.putString(activity.getContentResolver(), "launcher_grid_theme", id);
            Settings.System.putString(activity.getContentResolver(), "launcher_grid_theme", id);
            Settings.Global.putString(activity.getContentResolver(), "launcher_theme_preview_res", pkg);
            Settings.System.putString(activity.getContentResolver(), "launcher_theme_preview_res", pkg);
            SharedPreferences.Editor editor = activity.getSharedPreferences("com.smartisanos.launcher_prefs", 0).edit();
            editor.putString("launcher_grid_theme", id);
            editor.putString("launcher_theme_preview_res", pkg);
            editor.commit();
        } catch (Throwable ignored) {
        }
        Toast.makeText(activity, "已应用：" + name, Toast.LENGTH_SHORT).show();
        restartLauncher(activity);
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

    private static long downloadTheme(Activity activity, ThemeEntry entry) {
        String url = THEME_DOWNLOAD_BASE + entry.pkg + ".apk";
        try {
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(url));
            request.setTitle(entry.name);
            request.setDescription("锤子桌面主题");
            request.setMimeType("application/vnd.android.package-archive");
            if (Build.VERSION.SDK_INT >= 11) {
                request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
            }
            DownloadManager manager = (DownloadManager) activity.getSystemService(Context.DOWNLOAD_SERVICE);
            if (manager == null) {
                throw new IllegalStateException("DownloadManager unavailable");
            }
            long id = manager.enqueue(request);
            Toast.makeText(activity, "已开始下载：" + entry.name + "，完成后请在通知栏安装", Toast.LENGTH_LONG).show();
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
                                             final View btnDownload) {
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
                        Toast.makeText(activity, entry.name + " 下载完成，请在通知栏安装", Toast.LENGTH_LONG).show();
                        if (btnDownload != null) {
                            btnDownload.setEnabled(true);
                        }
                        updateThemeDetail(activity, getMaintainedResources(activity), entry, null, btnOk, btnDownload);
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
                        Toast.makeText(activity, "下载中：" + percent + "%", Toast.LENGTH_SHORT).show();
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
            String value = Settings.System.getString(context.getContentResolver(), key);
            return value == null ? def : Boolean.parseBoolean(value);
        } catch (Throwable e) {
            return def;
        }
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

    private static Bitmap themePreviewBitmap(Context context, String themeId) {
        int mode = readLauncherMode(context);
        String[] candidates = new String[]{
                "theme_preview/" + themeId + "/" + mode + "/delta_L.jpg",
                "theme_preview/" + themeId + "/" + mode + "/trident_S.jpg",
                "theme_preview/" + themeId + "/12/delta_L.jpg",
                "theme_preview/" + themeId + "/20/delta_L.jpg",
        };
        for (int i = 0; i < candidates.length; i++) {
            Bitmap bitmap = assetBitmap(context, candidates[i]);
            if (bitmap != null) {
                return bitmap;
            }
        }
        return null;
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

    private static String currentTheme(Context context) {
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

    private static View iconPageHeader(Context context, Resources resources) {
        TextView header = text(context, "已重绘\n未重绘", 15, 0xff777777, true);
        header.setGravity(Gravity.LEFT | Gravity.CENTER_VERTICAL);
        header.setPadding(dp(context, 30), dp(context, 12), 0, dp(context, 8));
        header.setLayoutParams(new AbsListView.LayoutParams(-1, dp(context, 70)));
        return header;
    }

    private static View iconPageFooter(Context context, SettingsResourceContext settingsContext, Resources resources) {
        TextView footer = text(context, "更多图标替换能力后续接入", 14, 0xff999999, false);
        footer.setPadding(dp(context, 30), dp(context, 18), dp(context, 30), dp(context, 18));
        footer.setGravity(Gravity.LEFT | Gravity.CENTER_VERTICAL);
        footer.setLayoutParams(new AbsListView.LayoutParams(-1, dp(context, 64)));
        return footer;
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
            int current = readGlobal(activity, "launcher_page_animation", 0);
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
        private final ThemeEntry[] entries;
        private final String currentTheme;

        ThemePreviewAdapter(Activity activity, SettingsResourceContext context, Resources resources, boolean local) {
            this.activity = activity;
            this.context = context;
            this.resources = resources;
            this.entries = local ? LOCAL_THEMES : ONLINE_THEMES;
            this.currentTheme = currentTheme(activity);
        }

        public int getCount() {
            return entries.length;
        }

        public Object getItem(int position) {
            return entryAt(position);
        }

        public long getItemId(int position) {
            return position;
        }

        ThemeEntry entryAt(int position) {
            return position >= 0 && position < entries.length ? entries[position] : null;
        }

        public View getView(int position, View convertView, android.view.ViewGroup parent) {
            if (convertView == null) {
                int layoutId = resources.getIdentifier("theme_preview_block", "layout", SETTINGS_PKG);
                convertView = LayoutInflater.from(activity).cloneInContext(context).inflate(layoutId, parent, false);
            }
            ThemeEntry entry = entries[position];
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
            if (downloading != null) {
                downloading.setText("");
                downloading.setVisibility(View.GONE);
            }
            if (progress != null) {
                progress.setVisibility(View.GONE);
            }
            ImageView checked = (ImageView) byId(convertView, resources, "checked_image");
            if (checked != null) {
                checked.setVisibility(entry.id.equals(currentTheme) ? View.VISIBLE : View.GONE);
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
            int bg = drawable(resources, backgroundFor(position, titles.length));
            if (bg != 0) {
                row.setBackgroundResource(bg);
            } else {
                row.setBackgroundColor(Color.WHITE);
            }
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
        private final List<ResolveInfo> apps = new ArrayList<ResolveInfo>();

        AppIconAdapter(Activity activity, SettingsResourceContext context, Resources resources) {
            this.activity = activity;
            this.context = context;
            this.resources = resources;
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            try {
                apps.addAll(activity.getPackageManager().queryIntentActivities(intent, 0));
            } catch (Throwable ignored) {
            }
        }

        public int getCount() {
            return Math.min(apps.size(), 60);
        }

        public Object getItem(int position) {
            return apps.get(position);
        }

        public long getItemId(int position) {
            return position;
        }

        public View getView(int position, View convertView, android.view.ViewGroup parent) {
            if (convertView == null) {
                int layoutId = resources.getIdentifier("app_icon_settings_item_layout", "layout", SETTINGS_PKG);
                convertView = LayoutInflater.from(activity).cloneInContext(context).inflate(layoutId, parent, false);
                convertView.setLayoutParams(new AbsListView.LayoutParams(-1, dp(activity, 82)));
            }
            ResolveInfo info = apps.get(position);
            PackageManager pm = activity.getPackageManager();
            Drawable icon = info.loadIcon(pm);
            CharSequence label = info.loadLabel(pm);
            setIcon(convertView, resources, "official_icon", icon);
            setIcon(convertView, resources, "unofficial_icon", icon);
            View unofficialFrame = byId(convertView, resources, "unofficial_icon_frame");
            if (unofficialFrame != null) {
                unofficialFrame.setVisibility(View.INVISIBLE);
            }
            TextView name = (TextView) byId(convertView, resources, "app_name");
            TextView author = (TextView) byId(convertView, resources, "icon_author_name");
            if (name != null) {
                name.setText(label == null ? "" : label);
                name.setTextColor(0xff666666);
            }
            if (author != null) {
                author.setText("当前应用图标");
                author.setTextColor(0xffb4b4b4);
            }
            return convertView;
        }

        private void setIcon(View root, Resources resources, String idName, Drawable icon) {
            ImageView view = (ImageView) byId(root, resources, idName);
            if (view != null && icon != null) {
                view.setImageDrawable(icon);
            }
        }
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
    }
}
