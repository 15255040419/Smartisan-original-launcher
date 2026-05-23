package com.smartisanos.home.widget.sys;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;

public class Title extends FrameLayout {
    private TextView titleView;
    private TextView backView;

    public Title(Context context) {
        this(context, null);
    }

    public Title(Context context, AttributeSet attrs) {
        super(context, attrs);
        setBackgroundColor(0xfffbfbfb);
        titleView = new TextView(context);
        titleView.setGravity(Gravity.CENTER);
        titleView.setTextColor(0xff555555);
        titleView.setTextSize(21);
        titleView.setTypeface(android.graphics.Typeface.create("sans-serif-medium", 0));
        int titleRes = attrRes(attrs, "title_titlex");
        if (titleRes != 0) {
            titleView.setText(getResources().getText(titleRes));
        }
        addView(titleView, new FrameLayout.LayoutParams(-1, dp(54)));

        backView = new TextView(context);
        backView.setGravity(Gravity.LEFT | Gravity.CENTER_VERTICAL);
        backView.setSingleLine(true);
        backView.setTextColor(0xff777777);
        backView.setTextSize(16);
        backView.setText(resourceText("title_button_text_back", "返回"));
        backView.setPadding(dp(10), 0, dp(12), 0);
        backView.setMaxWidth(dp(102));
        int bg = resourceId("selector_title_button_back", "drawable");
        if (bg != 0) {
            backView.setBackgroundResource(bg);
        }
        addView(backView, new FrameLayout.LayoutParams(-2, dp(44), Gravity.LEFT | Gravity.CENTER_VERTICAL));
        if (attrBool(attrs, "title_disableBackButton", false)) {
            backView.setVisibility(GONE);
        }

        View line = new View(context);
        line.setBackgroundColor(0x1f000000);
        addView(line, new FrameLayout.LayoutParams(-1, 1, Gravity.BOTTOM));
    }

    public void setTitle(CharSequence title) {
        titleView.setText(title);
    }

    public void setBackClickListener(OnClickListener listener) {
        backView.setVisibility(VISIBLE);
        backView.setOnClickListener(listener);
    }

    private int attrRes(AttributeSet attrs, String name) {
        if (attrs == null) return 0;
        int value = attrs.getAttributeResourceValue("http://schemas.android.com/apk/res-auto", name, 0);
        if (value == 0) {
            value = attrs.getAttributeResourceValue("http://schemas.android.com/apk/res/com.smartisanos.home", name, 0);
        }
        return value;
    }

    private boolean attrBool(AttributeSet attrs, String name, boolean def) {
        if (attrs == null) return def;
        return attrs.getAttributeBooleanValue("http://schemas.android.com/apk/res-auto", name,
                attrs.getAttributeBooleanValue("http://schemas.android.com/apk/res/com.smartisanos.home", name, def));
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
