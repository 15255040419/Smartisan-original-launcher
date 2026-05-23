package com.smartisanos.home.settings;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class PreviewSettingItemView extends RelativeLayout {
    private ImageView previewImage;
    private ImageView checkedImage;
    private TextView previewTitle;
    private Drawable normalDrawable;
    private Drawable focusedDrawable;

    public PreviewSettingItemView(Context context) {
        this(context, null);
    }

    public PreviewSettingItemView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PreviewSettingItemView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        buildMaintainedPreview(context);

        int normalRes = attrRes(attrs, "previewNormalDrawable");
        int focusedRes = attrRes(attrs, "PreviewFocusedDrawable");
        if (normalRes != 0) {
            normalDrawable = getResources().getDrawable(normalRes);
            previewImage.setImageDrawable(normalDrawable);
        }
        if (focusedRes != 0) {
            focusedDrawable = getResources().getDrawable(focusedRes);
        }
        int titleRes = attrRes(attrs, "previewTitle");
        if (titleRes != 0) {
            previewTitle.setText(getResources().getText(titleRes));
            previewTitle.setVisibility(VISIBLE);
        } else {
            previewTitle.setVisibility(GONE);
        }
        setChecked(false);
    }

    public void setChecked(boolean checked) {
        if (previewImage != null && normalDrawable != null && focusedDrawable != null) {
            previewImage.setImageDrawable(checked ? focusedDrawable : normalDrawable);
        }
        if (checkedImage != null) {
            checkedImage.setVisibility(checked ? VISIBLE : GONE);
        }
    }

    public void setCheckedState(boolean checked) {
        setChecked(checked);
    }

    public void setTitle(CharSequence value) {
        if (previewTitle != null) {
            previewTitle.setText(value);
            previewTitle.setVisibility(VISIBLE);
        }
    }

    public void setTitleText(CharSequence value) {
        setTitle(value);
    }

    public void setPreview(Drawable drawable) {
        if (previewImage != null) {
            previewImage.setImageDrawable(drawable);
        }
    }

    public void setPreviewBitmap(Bitmap bitmap) {
        if (previewImage != null && bitmap != null) {
            previewImage.setImageDrawable(new BitmapDrawable(getResources(), bitmap));
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

    private void buildMaintainedPreview(Context context) {
        previewImage = new ImageView(context);
        previewImage.setId(View.generateViewId());
        previewImage.setPadding(dp(10), 0, dp(10), 0);
        LayoutParams imageLp = new LayoutParams(-2, -2);
        imageLp.topMargin = dp(12);
        imageLp.addRule(CENTER_HORIZONTAL);
        addView(previewImage, imageLp);

        previewTitle = new TextView(context);
        previewTitle.setTextSize(15);
        previewTitle.setTextColor(0xff4f5360);
        previewTitle.setGravity(android.view.Gravity.CENTER_HORIZONTAL);
        previewTitle.setSingleLine(true);
        LayoutParams titleLp = new LayoutParams(-2, -2);
        titleLp.topMargin = dp(9);
        titleLp.addRule(BELOW, previewImage.getId());
        titleLp.addRule(CENTER_HORIZONTAL);
        addView(previewTitle, titleLp);

        checkedImage = new ImageView(context);
        int checkRes = getResources().getIdentifier("preview_picture_selected", "drawable", "com.smartisanos.home");
        if (checkRes != 0) {
            checkedImage.setImageResource(checkRes);
        }
        LayoutParams checkLp = new LayoutParams(-2, -2);
        checkLp.addRule(ALIGN_RIGHT, previewImage.getId());
        checkLp.addRule(ALIGN_TOP, previewImage.getId());
        addView(checkedImage, checkLp);
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }
}
