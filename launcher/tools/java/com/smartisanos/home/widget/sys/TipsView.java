package com.smartisanos.home.widget.sys;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

public class TipsView extends TextView {
    public TipsView(Context context) {
        this(context, null);
    }

    public TipsView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setTextColor(0xff8a8a8a);
        setTextSize(13);
        setPadding(dp(20), dp(4), dp(20), dp(10));
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }
}
