package com.smartisanos.launcher.settings;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Method;

public class BaseSettingsActivity extends Activity {
    private static final String SETTINGS_ASSET = "settings_maintained/maintained-settings-res.apk";
    private static final String SETTINGS_PKG = "com.smartisanos.home";
    private static final String STATE_SCROLL_Y = "settings_scroll_y";
    private static final String EXTRA_SETTINGS_SLIDE_DIRECTION = "settings_slide_direction";

    private static File sSettingsApk;
    private static Resources sSettingsResources;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        tuneWindow(this);
    }

    @Override
    public void onBackPressed() {
        // Some second-level Activities host original-style third-level views in
        // place.  Let that view stack consume Back before returning the real
        // Activity to the settings landing page.
        if (com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost
                .handleModernSettingsBack(this)) {
            return;
        }
        if (this instanceof SettingsMainActivity) {
            super.onBackPressed();
            return;
        }
        // Settings sub-pages are separate Activities.  Do not let a system back
        // gesture finish the settings task and expose Launcher underneath it.
        // This Activity uses a resource Context whose package name is
        // com.smartisanos.home; use the real APK package for navigation.
        Intent up = new Intent();
        up.setClassName("com.smartisanos.launcher", SettingsMainActivity.class.getName());
        up.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP | Intent.FLAG_ACTIVITY_SINGLE_TOP);
        up.putExtra(EXTRA_SETTINGS_SLIDE_DIRECTION, -1);
        startActivity(up);
        finish();
        applySettingsBackTransition();
    }

    /** Starts a modern settings child with the original horizontal drill-down. */
    protected final void startSettingsChildActivity(Intent intent) {
        intent.putExtra(EXTRA_SETTINGS_SLIDE_DIRECTION, 1);
        startActivity(intent);
        // These IDs are packaged in the Launcher APK, rather than in the
        // dynamically loaded settings resource APK.  ColorOS honors them as a
        // normal cross-Activity window transition, avoiding the black gap that
        // the previous one-sided decor animation left between two windows.
        applySettingsForwardTransition();
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    protected final void applySettingsForwardTransition() {
        overridePendingTransition(settingsAnimation("slide_in_from_right"),
                settingsAnimation("slide_out_to_left"));
    }

    protected final void applySettingsBackTransition() {
        overridePendingTransition(settingsAnimation("slide_in_from_left"),
                settingsAnimation("slide_out_to_right"));
    }

    private int settingsAnimation(String name) {
        Context application = getApplicationContext();
        Resources resources = application == null ? getResources() : application.getResources();
        return resources.getIdentifier(name, "anim", "com.smartisanos.launcher");
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        View content = findViewById(android.R.id.content);
        if (content != null) {
            View scroll = findFirstScrollableChild(content);
            if (scroll != null) {
                outState.putInt(STATE_SCROLL_Y, scroll.getScrollY());
            }
        }
        super.onSaveInstanceState(outState);
    }

    @Override
    protected void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        final int scrollY = savedInstanceState.getInt(STATE_SCROLL_Y, 0);
        if (scrollY == 0) {
            return;
        }
        View content = findViewById(android.R.id.content);
        final View scroll = content == null ? null : findFirstScrollableChild(content);
        if (scroll != null) {
            scroll.post(new Runnable() {
                @Override
                public void run() {
                    scroll.scrollTo(scroll.getScrollX(), scrollY);
                }
            });
        }
    }

    private static View findFirstScrollableChild(View root) {
        if (root instanceof android.widget.ScrollView
                || root instanceof android.widget.HorizontalScrollView
                || root instanceof android.widget.ListView
                || root instanceof android.widget.GridView) {
            return root;
        }
        if (root instanceof android.view.ViewGroup) {
            android.view.ViewGroup group = (android.view.ViewGroup) root;
            for (int i = 0; i < group.getChildCount(); i++) {
                View result = findFirstScrollableChild(group.getChildAt(i));
                if (result != null) {
                    return result;
                }
            }
        }
        return null;
    }

    @Override
    protected void attachBaseContext(Context newBase) {
        try {
            Resources res = getSettingsResources(newBase);
            super.attachBaseContext(new SettingsResourceContext(newBase, res));
        } catch (Exception e) {
            android.util.Log.e("BaseSettingsActivity", "Failed to load custom resources!", e);
            super.attachBaseContext(newBase);
        }
    }

    private static synchronized Resources getSettingsResources(Context context) throws Exception {
        if (sSettingsResources != null) {
            return sSettingsResources;
        }
        sSettingsApk = copySettingsResources(context);
        sSettingsResources = loadExternalResources(context, sSettingsApk.getAbsolutePath());
        return sSettingsResources;
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

    private static File copySettingsResources(Context context) throws Exception {
        Context app = (context != null && context.getApplicationContext() != null)
                ? context.getApplicationContext() : context;
        File out = new File(app.getCacheDir(), "maintained-settings-res.apk");
        long updateTime = 0L;
        try {
            updateTime = app.getPackageManager()
                    .getPackageInfo(app.getPackageName(), 0).lastUpdateTime;
        } catch (Throwable ignored) {
        }
        SharedPreferences prefs = app.getSharedPreferences("maintained_settings_res", Context.MODE_PRIVATE);
        long copiedUpdateTime = prefs.getLong("copied_last_update_time", -1L);
        if (out.exists() && out.length() > 0 && copiedUpdateTime == updateTime) {
            return out;
        }
        InputStream in = app.getAssets().open(SETTINGS_ASSET);
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

    @SuppressWarnings("unchecked")
    protected <T extends View> T findViewByName(String name) {
        int id = getResources().getIdentifier(name, "id", SETTINGS_PKG);
        return id != 0 ? (T) findViewById(id) : null;
    }

    protected String getStringByName(String name, String defaultValue) {
        int id = getResources().getIdentifier(name, "string", SETTINGS_PKG);
        return id != 0 ? getString(id) : defaultValue;
    }

    protected void setupTitleBar(String titleText) {
        android.widget.TextView btnBack = findViewByName("btn_back");
        if (btnBack != null) {
            btnBack.setOnClickListener(new android.view.View.OnClickListener() {
                @Override
                public void onClick(android.view.View v) {
                    onBackPressed();
                }
            });
        }
        android.widget.TextView tvTitle = findViewByName("tv_title");
        if (tvTitle != null) {
            tvTitle.setText(titleText);
        }
        android.view.View title = findViewByName("view_title");
        if (title instanceof com.smartisanos.home.widget.sys.Title) {
            com.smartisanos.home.widget.sys.Title smartisanTitle = (com.smartisanos.home.widget.sys.Title) title;
            smartisanTitle.setTitle(titleText);
            smartisanTitle.setBackClickListener(new android.view.View.OnClickListener() {
                @Override
                public void onClick(android.view.View v) {
                    onBackPressed();
                }
            });
        }
    }

    protected void setupMainTitleBar(String titleText) {
        android.widget.TextView btnBack = findViewByName("btn_back");
        if (btnBack != null) {
            btnBack.setVisibility(android.view.View.GONE);
        }
        android.widget.TextView tvTitle = findViewByName("tv_title");
        if (tvTitle != null) {
            tvTitle.setText(titleText);
        }
        android.view.View title = findViewByName("view_title");
        if (title instanceof com.smartisanos.home.widget.sys.Title) {
            com.smartisanos.home.widget.sys.Title smartisanTitle = (com.smartisanos.home.widget.sys.Title) title;
            smartisanTitle.setTitle(titleText);
            if (smartisanTitle.getBackButton() != null) {
                smartisanTitle.getBackButton().setVisibility(android.view.View.GONE);
            }
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

    private static class SettingsResourceContext extends ContextWrapper {
        private final Resources resources;
        private final Resources.Theme theme;
        private boolean themeInitialized = false;

        SettingsResourceContext(Context base, Resources resources) {
            super(base);
            this.resources = resources;
            this.theme = resources.newTheme();
        }

        @Override
        public Resources getResources() {
            return resources;
        }

        @Override
        public AssetManager getAssets() {
            return resources.getAssets();
        }

        @Override
        public Resources.Theme getTheme() {
            if (!themeInitialized) {
                try {
                    theme.setTo(super.getTheme());
                    themeInitialized = true;
                } catch (Throwable ignored) {
                }
            }
            return theme;
        }

        @Override
        public String getPackageName() {
            return SETTINGS_PKG;
        }

        @Override
        public ClassLoader getClassLoader() {
            return BaseSettingsActivity.class.getClassLoader();
        }

        @Override
        public Object getSystemService(String name) {
            Object service = super.getSystemService(name);
            if (Context.LAYOUT_INFLATER_SERVICE.equals(name) && service instanceof LayoutInflater) {
                LayoutInflater inflater = ((LayoutInflater) service).cloneInContext(this);
                inflater.setFactory2(new LayoutInflater.Factory2() {
                    @Override
                    public View onCreateView(View parent, String name, Context context, android.util.AttributeSet attrs) {
                        return onCreateView(name, context, attrs);
                    }
                    @Override
                    public View onCreateView(String name, Context context, android.util.AttributeSet attrs) {
                        if ("com.smartisanos.home.widget.sys.GridViewWithHeaderAndFooter".equals(name)
                                || "com.smartisanos.launcher.theme.ThemePreviewGridView".equals(name)) {
                            return new WrapContentGridView(context, attrs);
                        }
                        if ("com.smartisanos.home.widget.sys.VideoPlayerView".equals(name)) {
                            android.widget.ImageView iv = new android.widget.ImageView(context, attrs);
                            iv.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
                            return iv;
                        }
                        if ("com.smartisanos.home.widget.sys.SelectOptionsView".equals(name)) {
                            return new android.widget.LinearLayout(context, attrs);
                        }
                        if ("com.smartisan.moreapps.AppsView".equals(name)) {
                            android.widget.LinearLayout placeholder = new android.widget.LinearLayout(context, attrs);
                            placeholder.setVisibility(View.GONE);
                            return placeholder;
                        }
                        return null;
                    }
                });
                return inflater;
            }
            return service;
        }
    }

    public static class WrapContentGridView extends android.widget.GridView {
        public WrapContentGridView(Context context, android.util.AttributeSet attrs) {
            super(context, attrs);
        }

        @Override
        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            int expandSpec = View.MeasureSpec.makeMeasureSpec(Integer.MAX_VALUE >> 2, View.MeasureSpec.AT_MOST);
            super.onMeasure(widthMeasureSpec, expandSpec);
        }
    }
}
