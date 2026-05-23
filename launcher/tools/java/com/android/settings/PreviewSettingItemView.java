package com.android.settings;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class PreviewSettingItemView extends LinearLayout {
    private final ImageView mPreviewImage;
    private final TextView mPreviewTitle;
    private final CheckView mCheckedImage;
    private Drawable mNormalDrawable;
    private Drawable mFocusedDrawable;

    public PreviewSettingItemView(Context context) {
        this(context, null);
    }

    public PreviewSettingItemView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public PreviewSettingItemView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs);
        setOrientation(VERTICAL);
        setGravity(Gravity.CENTER);
        mPreviewImage = new ImageView(context);
        mPreviewImage.setScaleType(ImageView.ScaleType.FIT_CENTER);
        addView(mPreviewImage, new LayoutParams(dp(64), dp(64)));
        mPreviewTitle = text(context, 15, 0xff555555, false);
        mPreviewTitle.setGravity(Gravity.CENTER);
        addView(mPreviewTitle, new LayoutParams(-1, -2));
        mCheckedImage = new CheckView(context);
        LayoutParams lp = new LayoutParams(dp(36), dp(36));
        lp.topMargin = dp(5);
        addView(mCheckedImage, lp);
        setChecked(false);
    }

    public boolean isChecked() {
        return mCheckedImage.getVisibility() == VISIBLE && mCheckedImage.isChecked();
    }

    public void setChecked(boolean checked) {
        mCheckedImage.setChecked(checked);
        mCheckedImage.setVisibility(VISIBLE);
        if (mFocusedDrawable != null || mNormalDrawable != null) {
            mPreviewImage.setImageDrawable(checked && mFocusedDrawable != null ? mFocusedDrawable : mNormalDrawable);
        }
    }

    public void setCheckImgMarginDimens(int top, int right, int bottom, int left) {
        LayoutParams lp = (LayoutParams) mCheckedImage.getLayoutParams();
        lp.setMargins(left, top, right, bottom);
        mCheckedImage.setLayoutParams(lp);
    }

    public void setPreview(Drawable drawable) {
        mNormalDrawable = drawable;
        mPreviewImage.setImageDrawable(drawable);
    }

    public void setPreview(int resId) {
        mPreviewImage.setImageResource(resId);
    }

    public void setPreviewFocused(Drawable drawable) {
        mFocusedDrawable = drawable;
    }

    public void setTitle(int resId) {
        try {
            setTitle(getResources().getText(resId));
        } catch (Throwable ignored) {
        }
    }

    public void setTitle(CharSequence title) {
        mPreviewTitle.setText(title);
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setSelected(isChecked());
    }

    private TextView text(Context context, int sp, int color, boolean bold) {
        TextView tv = new TextView(context);
        tv.setTextSize(sp);
        tv.setTextColor(color);
        if (bold) {
            tv.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        }
        return tv;
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }

    private static final class CheckView extends android.view.View {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private boolean checked;

        CheckView(Context context) {
            super(context);
        }

        void setChecked(boolean checked) {
            this.checked = checked;
            invalidate();
        }

        boolean isChecked() {
            return checked;
        }

        protected void onDraw(Canvas canvas) {
            float w = getWidth();
            float h = getHeight();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(checked ? 0xffdc504a : 0xffe7ecef);
            canvas.drawCircle(w / 2.0f, h / 2.0f, Math.min(w, h) / 2.0f - 2.0f, paint);
            if (checked) {
                paint.setColor(Color.WHITE);
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(4.0f);
                canvas.drawLine(w * 0.30f, h * 0.52f, w * 0.45f, h * 0.68f, paint);
                canvas.drawLine(w * 0.45f, h * 0.68f, w * 0.72f, h * 0.34f, paint);
            }
        }
    }
}
