package com.android.settings.widget;

import android.content.Context;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;

public class LauncherPreview extends LinearLayout implements View.OnClickListener {
    public interface Callback {
        void onLauncherModeChanged(int mode);
        void onLauncherThemeChanged(int theme);
    }

    private Callback mCallback;
    private final ImageView mPreview;
    private final PreviewOptionItemView mGridLauncher12;
    private final PreviewOptionItemView mGridLauncher20;
    private final PreviewOptionItemView mClassicThemeOptionView;
    private final PreviewOptionItemView mTransparentThemeOptionView;

    public LauncherPreview(Context context) {
        this(context, null);
    }

    public LauncherPreview(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public LauncherPreview(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs);
        setOrientation(VERTICAL);
        setGravity(Gravity.CENTER);
        mPreview = new ImageView(context);
        mPreview.setScaleType(ImageView.ScaleType.FIT_CENTER);
        addView(mPreview, new LayoutParams(dp(130), dp(206)));

        LinearLayout gridRow = new LinearLayout(context);
        gridRow.setOrientation(HORIZONTAL);
        mGridLauncher12 = option(context, 12, "十二宫格");
        mGridLauncher20 = option(context, 20, "二十宫格");
        gridRow.addView(mGridLauncher12, new LayoutParams(0, -1, 1.0f));
        gridRow.addView(mGridLauncher20, new LayoutParams(0, -1, 1.0f));
        addView(gridRow, new LayoutParams(-1, dp(110)));

        LinearLayout themeRow = new LinearLayout(context);
        themeRow.setOrientation(HORIZONTAL);
        mClassicThemeOptionView = option(context, 0, "材质主题");
        mTransparentThemeOptionView = option(context, 1, "透明主题");
        themeRow.addView(mClassicThemeOptionView, new LayoutParams(0, -1, 1.0f));
        themeRow.addView(mTransparentThemeOptionView, new LayoutParams(0, -1, 1.0f));
        addView(themeRow, new LayoutParams(-1, dp(96)));
        refresh();
    }

    public void setCallback(Callback callback) {
        mCallback = callback;
    }

    public void refresh() {
        int mode = readGlobal("launcher_mode", 12);
        int theme = readGlobal("launcher_grid_theme", 0);
        mGridLauncher12.setChecked(mode != 20);
        mGridLauncher20.setChecked(mode == 20);
        mClassicThemeOptionView.setChecked(theme == 0);
        mTransparentThemeOptionView.setChecked(theme != 0);
    }

    public void onClick(View view) {
        Object tag = view.getTag();
        if (!(tag instanceof Integer)) {
            return;
        }
        int value = ((Integer) tag).intValue();
        if (value == 12 || value == 20) {
            Settings.Global.putInt(getContext().getContentResolver(), "launcher_mode", value);
            if (mCallback != null) {
                mCallback.onLauncherModeChanged(value);
            }
        } else {
            Settings.Global.putInt(getContext().getContentResolver(), "launcher_grid_theme", value);
            if (mCallback != null) {
                mCallback.onLauncherThemeChanged(value);
            }
        }
        refresh();
    }

    private PreviewOptionItemView option(Context context, int tag, String title) {
        PreviewOptionItemView view = new PreviewOptionItemView(context);
        view.setTag(Integer.valueOf(tag));
        view.setTitle(title);
        view.setOnClickListener(this);
        return view;
    }

    private int readGlobal(String key, int def) {
        try {
            return Settings.Global.getInt(getContext().getContentResolver(), key, def);
        } catch (Throwable ignored) {
            return def;
        }
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }
}
