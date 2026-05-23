package com.android.settings;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;

public class SettingItemTextVertical extends smartisanos.widget.SettingItemText {
    public SettingItemTextVertical(Context context) {
        this(context, null);
    }

    public SettingItemTextVertical(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SettingItemTextVertical(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setGravity(Gravity.CENTER_VERTICAL);
    }
}
