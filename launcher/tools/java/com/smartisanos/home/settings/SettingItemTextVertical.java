package com.smartisanos.home.settings;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.Gravity;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class SettingItemTextVertical extends LinearLayout {
    private final ImageView icon;

    public SettingItemTextVertical(Context context) {
        this(context, null);
    }

    public SettingItemTextVertical(Context context, AttributeSet attrs) {
        super(context, attrs);
        setOrientation(HORIZONTAL);
        setGravity(Gravity.CENTER_VERTICAL);
        setPadding(dp(24), 0, dp(18), 0);
        setClickable(true);

        icon = new ImageView(context);
        int iconRes = attrRes(attrs, "setting_item_text_vertical_icon");
        if (iconRes != 0) {
            icon.setImageResource(iconRes);
        }
        icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
        addView(icon, new LinearLayout.LayoutParams(dp(58), dp(58)));

        LinearLayout texts = new LinearLayout(context);
        texts.setOrientation(VERTICAL);
        texts.setGravity(Gravity.CENTER_VERTICAL);
        texts.setPadding(dp(18), 0, 0, 0);
        TextView title = new TextView(context);
        title.setTextSize(18);
        title.setTextColor(0xff333333);
        title.setTypeface(android.graphics.Typeface.create("sans-serif-medium", 0));
        int titleRes = attrRes(attrs, "setting_item_text_vertical_title");
        if (titleRes != 0) title.setText(getResources().getText(titleRes));
        texts.addView(title, new LinearLayout.LayoutParams(-1, -2));

        TextView sub = new TextView(context);
        sub.setTextSize(14);
        sub.setTextColor(0xff888888);
        int subRes = attrRes(attrs, "setting_item_text_vertical_subTitle");
        if (subRes != 0) sub.setText(getResources().getText(subRes));
        texts.addView(sub, new LinearLayout.LayoutParams(-1, -2));
        addView(texts, new LinearLayout.LayoutParams(0, -1, 1.0f));

        ImageView arrow = new ImageView(context);
        int arrowRes = attrRes(attrs, "arrow");
        if (arrowRes != 0) arrow.setImageResource(arrowRes);
        arrow.setAlpha(160);
        addView(arrow, new LinearLayout.LayoutParams(dp(28), -1));
    }

    public void setIconBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            icon.setImageBitmap(bitmap);
        }
    }

    private int attrRes(AttributeSet attrs, String name) {
        if (attrs == null) return 0;
        int value = attrs.getAttributeResourceValue("http://schemas.android.com/apk/res-auto", name, 0);
        if (value == 0) {
            value = attrs.getAttributeResourceValue("http://schemas.android.com/apk/res/com.smartisanos.home", name, 0);
        }
        return value;
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }
}
