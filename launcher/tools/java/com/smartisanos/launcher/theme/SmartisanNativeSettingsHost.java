package com.smartisanos.launcher.theme;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.util.Log;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.LayoutInflater.Factory2;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;

import smartisanos.widget.TitleBar;

public final class SmartisanNativeSettingsHost {
    private static final String TAG = "SmartisanNativeSettings";
    private static final String SETTINGS_ASSET = "settings_native/com.android.settings-100.apk";
    private static final String SETTINGS_PACKAGE = "com.android.settings";

    private SmartisanNativeSettingsHost() {
    }

    public static void show(final Activity activity) {
        try {
            try {
                activity.setTaskDescription(new ActivityManager.TaskDescription("锤子桌面"));
                ActivityManager manager = (ActivityManager) activity.getSystemService(Context.ACTIVITY_SERVICE);
                if (manager != null) {
                    List<ActivityManager.AppTask> tasks = manager.getAppTasks();
                    if (tasks != null) {
                        for (ActivityManager.AppTask task : tasks) {
                            try {
                                task.setExcludeFromRecents(true);
                            } catch (Throwable ignored) {
                            }
                        }
                    }
                }
            } catch (Throwable ignored) {
            }
            File settingsApk = copySettingsApk(activity);
            Resources settingsResources = loadResources(activity, settingsApk);
            Context settingsContext = new SettingsResourceContext(activity, settingsResources);
            int layoutId = settingsResources.getIdentifier(
                    "launcher_settings_fragment", "layout", SETTINGS_PACKAGE);
            if (layoutId == 0) {
                throw new IllegalStateException("launcher_settings_fragment not found");
            }
            LayoutInflater inflater = LayoutInflater.from(activity).cloneInContext(settingsContext);
            inflater.setFactory2(new SafeSettingsFactory(settingsContext));
            LinearLayout root = new LinearLayout(settingsContext);
            root.setOrientation(LinearLayout.VERTICAL);
            root.setBackgroundColor(0xfffafafa);

            TitleBar titleBar = new TitleBar(settingsContext);
            int titleId = settingsResources.getIdentifier("launcher_settings_options", "string", SETTINGS_PACKAGE);
            if (titleId != 0) {
                titleBar.setTitle(settingsResources.getText(titleId));
            }
            titleBar.setBackClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    activity.finish();
                }
            });
            root.addView(titleBar, new LinearLayout.LayoutParams(-1, -2));

            View content = inflater.inflate(settingsResources.getLayout(layoutId), root, false);
            root.addView(content, new LinearLayout.LayoutParams(-1, 0, 1.0f));
            activity.setContentView(root);
        } catch (Throwable t) {
            Log.e(TAG, "Failed to inflate native Smartisan settings", t);
            writeFailure(activity, t);
            Toast.makeText(activity, "原生 Smartisan 设置页加载失败：" + summarize(t), Toast.LENGTH_LONG).show();
            showFailurePage(activity, t);
        }
    }

    private static File copySettingsApk(Context context) throws Exception {
        File out = new File(context.getCacheDir(), "smartisan-settings-res.apk");
        if (out.exists() && out.length() > 1024 * 1024) {
            return out;
        }
        InputStream in = context.getAssets().open(SETTINGS_ASSET);
        FileOutputStream fos = new FileOutputStream(out);
        byte[] buffer = new byte[64 * 1024];
        int read;
        while ((read = in.read(buffer)) != -1) {
            fos.write(buffer, 0, read);
        }
        fos.close();
        in.close();
        return out;
    }

    private static Resources loadResources(Context base, File apk) throws Exception {
        AssetManager assets = AssetManager.class.newInstance();
        Method addAssetPath = AssetManager.class.getMethod("addAssetPath", String.class);
        int cookie = ((Integer) addAssetPath.invoke(assets, apk.getAbsolutePath())).intValue();
        if (cookie == 0) {
            throw new IllegalStateException("addAssetPath failed: " + apk);
        }
        Resources baseRes = base.getResources();
        return new Resources(assets, baseRes.getDisplayMetrics(), baseRes.getConfiguration());
    }

    private static void writeFailure(Context context, Throwable throwable) {
        File out = new File(context.getCacheDir(), "smartisan-native-settings-error.txt");
        try {
            FileOutputStream fos = new FileOutputStream(out);
            String text = throwable.toString();
            fos.write(text.getBytes("UTF-8"));
            Throwable cause = throwable.getCause();
            while (cause != null) {
                fos.write(("\ncaused by: " + cause.toString()).getBytes("UTF-8"));
                cause = cause.getCause();
            }
            StringWriter writer = new StringWriter();
            throwable.printStackTrace(new PrintWriter(writer));
            fos.write(("\n\nstack:\n" + writer.toString()).getBytes("UTF-8"));
            fos.close();
        } catch (Throwable ignored) {
        }
    }

    private static void showFailurePage(Activity activity, Throwable throwable) {
        TextView error = new TextView(activity);
        error.setText("原生 Smartisan 设置页加载失败\n\n" + summarize(throwable)
                + "\n\n" + deepest(throwable)
                + "\n\n请查看 logcat: SmartisanNativeSettings");
        error.setTextColor(0xff333333);
        error.setTextSize(16);
        error.setGravity(Gravity.CENTER);
        error.setPadding(32, 32, 32, 32);
        activity.setContentView(error);
    }

    private static String summarize(Throwable throwable) {
        StringBuilder builder = new StringBuilder();
        Throwable current = throwable;
        int count = 0;
        while (current != null && count < 8) {
            if (count > 0) {
                builder.append(" <- ");
            }
            builder.append(current.getClass().getSimpleName());
            String message = current.getMessage();
            if (message != null && message.length() > 0) {
                builder.append(": ");
                builder.append(message.length() > 80 ? message.substring(0, 80) : message);
            }
            current = current.getCause();
            count++;
        }
        return builder.toString();
    }

    private static String deepest(Throwable throwable) {
        Throwable current = throwable;
        Throwable deepest = throwable;
        while (current != null) {
            deepest = current;
            current = current.getCause();
        }
        if (deepest == null) {
            return "";
        }
        String message = deepest.getMessage();
        if (message == null) {
            message = "";
        }
        if (message.length() > 260) {
            message = message.substring(0, 260);
        }
        return "deepest: " + deepest.getClass().getName() + "\n" + message;
    }

    private static final class SafeSettingsFactory implements Factory2 {
        private final Context mContext;

        SafeSettingsFactory(Context context) {
            mContext = context;
        }

        public View onCreateView(View parent, String name, Context context, android.util.AttributeSet attrs) {
            return create(name, attrs);
        }

        public View onCreateView(String name, Context context, android.util.AttributeSet attrs) {
            return create(name, attrs);
        }

        private View create(String name, android.util.AttributeSet attrs) {
            View view = null;
            if ("LinearLayout".equals(name)) {
                LinearLayout linear = new LinearLayout(mContext);
                linear.setOrientation(readInt(attrs, "orientation", LinearLayout.VERTICAL));
                view = linear;
            } else if ("ScrollView".equals(name)) {
                view = new ScrollView(mContext);
            } else if ("TextView".equals(name)) {
                TextView tv = new TextView(mContext);
                CharSequence text = readText(mContext, attrs, "http://schemas.android.com/apk/res/android", "text");
                if (text != null) {
                    tv.setText(text);
                }
                tv.setTextColor(0xff666666);
                tv.setTextSize(15);
                tv.setGravity(Gravity.CENTER_VERTICAL);
                view = tv;
            } else if ("ImageView".equals(name)) {
                view = new ImageView(mContext);
            } else if ("FrameLayout".equals(name)) {
                view = new FrameLayout(mContext);
            }

            if (view != null) {
                int id = attrs.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "id", 0);
                if (id != 0) {
                    view.setId(id);
                }
                int visibility = readInt(attrs, "visibility", 0);
                if (visibility == 1) {
                    view.setVisibility(View.INVISIBLE);
                } else if (visibility == 2) {
                    view.setVisibility(View.GONE);
                }
                return view;
            }
            return null;
        }

        private static int readInt(android.util.AttributeSet attrs, String name, int def) {
            try {
                return attrs.getAttributeIntValue("http://schemas.android.com/apk/res/android", name, def);
            } catch (Throwable ignored) {
                return def;
            }
        }

        private static CharSequence readText(Context context, android.util.AttributeSet attrs, String namespace, String name) {
            int resId = attrs.getAttributeResourceValue(namespace, name, 0);
            if (resId != 0) {
                try {
                    return context.getResources().getText(resId);
                } catch (Throwable ignored) {
                }
            }
            return attrs.getAttributeValue(namespace, name);
        }
    }

    private static final class SettingsResourceContext extends ContextWrapper {
        private final Resources mResources;
        private final Resources.Theme mTheme;

        SettingsResourceContext(Context base, Resources resources) {
            super(base);
            mResources = resources;
            mTheme = resources.newTheme();
            try {
                mTheme.applyStyle(android.R.style.Theme_Material_Light_NoActionBar, true);
            } catch (Throwable ignored) {
            }
        }

        public Resources getResources() {
            return mResources;
        }

        public AssetManager getAssets() {
            return mResources.getAssets();
        }

        public Resources.Theme getTheme() {
            return mTheme;
        }

        public Object getSystemService(String name) {
            if (LAYOUT_INFLATER_SERVICE.equals(name)) {
                return LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return super.getSystemService(name);
        }

        public String getPackageName() {
            return SETTINGS_PACKAGE;
        }

        public ClassLoader getClassLoader() {
            return SmartisanNativeSettingsHost.class.getClassLoader();
        }
    }
}
