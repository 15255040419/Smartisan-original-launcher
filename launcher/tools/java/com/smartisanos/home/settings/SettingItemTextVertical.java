package com.smartisanos.home.settings;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.Gravity;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class SettingItemTextVertical extends RelativeLayout {
    private final FrameLayout frameLayout;
    private final ImageView icon;
    private final ImageView iconFrame;
    private final ImageView arrow;

    public SettingItemTextVertical(Context context) {
        this(context, null);
    }

    public SettingItemTextVertical(Context context, AttributeSet attrs) {
        super(context, attrs);
        setClickable(true);

        frameLayout = new FrameLayout(context);
        frameLayout.setId(0x5f100001);
        LayoutParams frameLp = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        frameLp.leftMargin = dp(21);
        frameLp.addRule(RelativeLayout.ALIGN_PARENT_LEFT);
        frameLp.addRule(RelativeLayout.CENTER_VERTICAL);
        addView(frameLayout, frameLp);

        iconFrame = new ImageView(context);
        iconFrame.setDuplicateParentStateEnabled(true);
        iconFrame.setScaleType(ImageView.ScaleType.FIT_CENTER);
        int defaultFrame = getResources().getIdentifier("wallpaper_setting_icon_frame", "drawable",
                "com.smartisanos.home");
        if (defaultFrame != 0) {
            iconFrame.setImageResource(defaultFrame);
        }
        frameLayout.addView(iconFrame, new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.WRAP_CONTENT,
                FrameLayout.LayoutParams.WRAP_CONTENT,
                Gravity.CENTER));

        icon = new ImageView(context);
        icon.setDuplicateParentStateEnabled(true);
        icon.setAdjustViewBounds(true);
        icon.setMaxWidth(dp(60));
        icon.setMaxHeight(dp(70));
        icon.setScaleType(ImageView.ScaleType.CENTER_CROP);
        frameLayout.addView(icon, new FrameLayout.LayoutParams(dp(60), dp(70), Gravity.CENTER));

        int iconRes = attrRes(attrs, "setting_item_text_vertical_icon");
        if (iconRes != 0) {
            icon.setImageResource(iconRes);
        }
        int iconFrame = attrRes(attrs, "iconFrame");
        if (iconFrame != 0) {
            setIconFrameResource(iconFrame);
        }

        arrow = new ImageView(context);
        arrow.setId(0x5f100003);
        arrow.setDuplicateParentStateEnabled(true);
        int arrowRes = attrRes(attrs, "arrow");
        if (arrowRes != 0) {
            arrow.setImageResource(arrowRes);
        } else {
            arrow.setVisibility(INVISIBLE);
        }
        LayoutParams arrowLp = new LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
        arrowLp.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
        arrowLp.addRule(RelativeLayout.CENTER_VERTICAL);
        arrow.setPadding(0, 0, dp(30), 0);
        addView(arrow, arrowLp);

        LinearLayout texts = new LinearLayout(context);
        texts.setId(0x5f100002);
        texts.setOrientation(LinearLayout.VERTICAL);
        texts.setGravity(Gravity.CENTER_VERTICAL);
        LayoutParams textLp = new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
        textLp.rightMargin = dp(30);
        textLp.addRule(RelativeLayout.LEFT_OF, arrow.getId());
        textLp.addRule(RelativeLayout.RIGHT_OF, frameLayout.getId());
        textLp.addRule(RelativeLayout.CENTER_VERTICAL);
        texts.setPadding(0, 0, 0, 0);
        TextView title = new TextView(context);
        title.setTextSize(18);
        title.setTextColor(0xff454a5c);
        title.setSingleLine(true);
        int titleRes = attrRes(attrs, "setting_item_text_vertical_title");
        if (titleRes != 0) title.setText(getResources().getText(titleRes));
        texts.addView(title, new LinearLayout.LayoutParams(-1, -2));

        TextView sub = new TextView(context);
        sub.setTextSize(13.5f);
        sub.setTextColor(0xff888888);
        int subRes = attrRes(attrs, "setting_item_text_vertical_subTitle");
        if (subRes != 0) sub.setText(getResources().getText(subRes));
        texts.addView(sub, new LinearLayout.LayoutParams(-1, -2));
        addView(texts, textLp);
    }

    public void setIconBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            icon.setScaleType(ImageView.ScaleType.CENTER_CROP);
            icon.setImageBitmap(bitmap);
        }
    }

    public void setIconResource(int resId) {
        if (resId != 0) {
            icon.setScaleType(ImageView.ScaleType.CENTER_CROP);
            icon.setImageResource(resId);
        }
    }

    public void setPreviewIconBitmap(Bitmap bitmap) {
        if (bitmap != null) {
            icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
            icon.setImageBitmap(bitmap);
        }
    }

    public void setPreviewIconResource(int resId) {
        if (resId != 0) {
            icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
            icon.setImageResource(resId);
        }
    }

    public void setIconFrameResource(int resId) {
        if (resId != 0) {
            iconFrame.setImageResource(resId);
        }
    }

    public void setIconScale(int width, int height) {
        FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(width, height, Gravity.CENTER);
        icon.setLayoutParams(lp);
        icon.setScaleType(ImageView.ScaleType.CENTER_CROP);
    }

    public void setImageResource(int resId) {
        setIconResource(resId);
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
