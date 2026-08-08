package com.smartisanos.home.widget.sys;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class Title extends RelativeLayout {
    private TextView titleView;
    private TextView backView;
    private TextView okView;
    private View placeHolder;
    private int maxBackWidth;

    public Title(Context context) {
        this(context, null);
    }

    public Title(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public Title(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        int layout = resourceId("title_layout", "layout");
        if (layout != 0) {
            LayoutInflater.from(context).inflate(layout, this, true);
        }
        titleView = (TextView) findViewByName("tv_title");
        backView = (TextView) findViewByName("btn_back");
        okView = (TextView) findViewByName("btn_ok");
        placeHolder = findViewByName("place_holder");
        maxBackWidth = dimen("title_back_btn_max_width", dp(102));

        if (titleView == null || backView == null) {
            buildFallback(context);
        }
        applyAttributes(context, attrs);
        setTitleAlign();
    }

    public View getBackButton() {
        return backView;
    }

    public View getOkButton() {
        return okView;
    }

    public String getTitle() {
        return titleView == null ? "" : String.valueOf(titleView.getText());
    }

    public void setTitle(CharSequence title) {
        if (titleView != null) {
            titleView.setText(title);
            setTitleAlign();
        }
    }

    public void setBackClickListener(OnClickListener listener) {
        setBackButtonListener(listener);
    }

    public void setBackButtonListener(OnClickListener listener) {
        if (backView != null) {
            backView.setVisibility(VISIBLE);
            backView.setOnClickListener(listener);
            setTitleAlign();
        }
    }

    public void setBackButtonArrow(boolean show) {
        if (backView != null) {
            backView.setVisibility(show ? VISIBLE : INVISIBLE);
            setTitleAlign();
        }
    }

    public void setBackButtonText(int resId) {
        if (backView != null) {
            backView.setText(resId);
            setTitleAlign();
        }
    }

    public void setBackButtonText(CharSequence text) {
        if (backView != null) {
            backView.setText(text);
            setTitleAlign();
        }
    }

    public void setBackButtonTextByRes(int resId) {
        setBackButtonText(resId);
    }

    public void setOkButtonListener(OnClickListener listener) {
        if (okView != null) {
            okView.setVisibility(VISIBLE);
            okView.setOnClickListener(listener);
            setTitleAlign();
        }
    }

    public void setOkButtonText(int resId) {
        if (okView != null) {
            okView.setVisibility(VISIBLE);
            okView.setText(resId);
            setTitleAlign();
        }
    }

    public void setOkButtonText(CharSequence text) {
        if (okView != null) {
            okView.setVisibility(VISIBLE);
            okView.setText(text);
            setTitleAlign();
        }
    }

    public void updateBackButtonEnableState(boolean enabled) {
        if (backView != null) backView.setEnabled(enabled);
    }

    public void updateOkButtonEnableState(boolean enabled) {
        if (okView != null) okView.setEnabled(enabled);
    }

    private void applyAttributes(Context context, AttributeSet attrs) {
        if (attrs == null) return;
        if (attrBool(attrs, "title_disableBackButton", false) && backView != null) {
            backView.setVisibility(INVISIBLE);
        }
        int titleRes = attrRes(attrs, "title_titlex");
        if (titleRes != 0 && titleView != null) {
            titleView.setText(context.getResources().getText(titleRes));
        }
        CharSequence backText = attrText(attrs, "title_backText");
        if (backText != null && backView != null) {
            backView.setText(backText);
        }
        CharSequence okText = attrText(attrs, "title_okText");
        if (okText != null && okView != null) {
            okView.setVisibility(VISIBLE);
            okView.setText(okText);
        }
        ColorStateList titleColor = attrColor(attrs, "title_titleTextColor");
        if (titleColor != null && titleView != null) titleView.setTextColor(titleColor);
        ColorStateList backColor = attrColor(attrs, "title_backTextColor");
        if (backColor != null && backView != null) backView.setTextColor(backColor);
        ColorStateList okColor = attrColor(attrs, "title_okTextColor");
        if (okColor != null && okView != null) okView.setTextColor(okColor);
    }

    private void setTitleAlign() {
        if (titleView == null || backView == null) return;
        int backWidth = Math.min(maxBackWidth, measuredTextWidth(backView));
        int okWidth = okView != null && okView.getVisibility() == VISIBLE ? measuredTextWidth(okView) : 0;
        int side = Math.max(backWidth, okWidth);
        if (placeHolder != null && placeHolder.getLayoutParams() != null) {
            placeHolder.getLayoutParams().width = side;
            placeHolder.requestLayout();
        }
    }

    private int measuredTextWidth(TextView view) {
        if (view == null || view.getVisibility() == GONE) return 0;
        int width = (int) (view.getPaint().measureText(String.valueOf(view.getText())) + view.getPaddingLeft() + view.getPaddingRight());
        return Math.min(maxBackWidth, Math.max(width, view.getMeasuredWidth()));
    }

    private void buildFallback(Context context) {
        removeAllViews();
        setBackgroundColor(0xfffbfbfb);
        titleView = new TextView(context);
        titleView.setGravity(17);
        titleView.setTextColor(0xff555555);
        titleView.setTextSize(21);
        titleView.setText(resourceText("launcher_setting_name", "Desktop Settings"));
        addView(titleView, new RelativeLayout.LayoutParams(-1, dp(51)));
        backView = new TextView(context);
        backView.setGravity(16);
        backView.setSingleLine(true);
        backView.setTextColor(0xff777777);
        backView.setText(resourceText("title_button_text_back", "返回"));
        int bg = resourceId("selector_title_button_back", "drawable");
        if (bg != 0) backView.setBackgroundResource(bg);
        RelativeLayout.LayoutParams backLp = new RelativeLayout.LayoutParams(-2, dp(51));
        backLp.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
        addView(backView, backLp);
    }

    private View findViewByName(String name) {
        int id = resourceId(name, "id");
        return id == 0 ? null : findViewById(id);
    }

    private int attrRes(AttributeSet attrs, String name) {
        int value = attrs.getAttributeResourceValue("http://schemas.android.com/apk/res-auto", name, 0);
        if (value == 0) value = attrs.getAttributeResourceValue("http://schemas.android.com/apk/res/com.smartisanos.home", name, 0);
        return value;
    }

    private CharSequence attrText(AttributeSet attrs, String name) {
        int res = attrRes(attrs, name);
        if (res != 0) return getResources().getText(res);
        return attrs.getAttributeValue("http://schemas.android.com/apk/res-auto", name);
    }

    private ColorStateList attrColor(AttributeSet attrs, String name) {
        int res = attrRes(attrs, name);
        if (res == 0) return null;
        try {
            return getResources().getColorStateList(res);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private boolean attrBool(AttributeSet attrs, String name, boolean def) {
        return attrs.getAttributeBooleanValue("http://schemas.android.com/apk/res-auto", name,
                attrs.getAttributeBooleanValue("http://schemas.android.com/apk/res/com.smartisanos.home", name, def));
    }

    private int dimen(String name, int fallback) {
        int id = resourceId(name, "dimen");
        return id == 0 ? fallback : getResources().getDimensionPixelSize(id);
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }

    private int resourceId(String name, String type) {
        return getResources().getIdentifier(name, type, "com.smartisanos.home");
    }

    private CharSequence resourceText(String name, String fallback) {
        int id = resourceId(name, "string");
        return id == 0 ? fallback : getResources().getText(id);
    }
}
