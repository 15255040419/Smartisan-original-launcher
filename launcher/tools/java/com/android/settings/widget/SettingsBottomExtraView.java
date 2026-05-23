package com.android.settings.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class SettingsBottomExtraView extends LinearLayout {
    public SettingsBottomExtraView(Context context) {
        this(context, null);
    }

    public SettingsBottomExtraView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SettingsBottomExtraView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs);
        setOrientation(VERTICAL);
    }
}
