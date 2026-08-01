package smartisanos.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class SettingItemText extends LinearLayout {
    protected ImageView mIcon;
    protected ImageView mIconFrame;
    protected TextView mArrow;
    protected TextView mTitle;
    protected TextView mSummary;
    protected TextView mSubTitle;
    protected TextView mValue;
    protected FrameLayout framelayout;
    protected LinearLayout mTextContainer;

    public SettingItemText(Context context) {
        this(context, null);
    }

    public SettingItemText(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SettingItemText(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs);
        init(context);
        applySmartisanAttributes(context, attrs);
    }

    protected void init(Context context) {
        setOrientation(HORIZONTAL);
        setGravity(Gravity.CENTER_VERTICAL);
        setMinimumHeight(dp(82));
        setPadding(dp(18), 0, dp(14), 0);
        setBackground(cardBackground());
        setClickable(true);

        framelayout = new FrameLayout(context);
        mIcon = new ImageView(context);
        mIcon.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        framelayout.addView(mIcon, new FrameLayout.LayoutParams(dp(54), dp(54), Gravity.CENTER));
        addView(framelayout, new LayoutParams(dp(70), -1));

        mTextContainer = new LinearLayout(context);
        mTextContainer.setOrientation(VERTICAL);
        mTextContainer.setGravity(Gravity.CENTER_VERTICAL);
        mTitle = text(context, 18, 0xff333333, true);
        mSummary = text(context, 14, 0xff888888, false);
        mSubTitle = mSummary;
        mTextContainer.addView(mTitle, new LayoutParams(-1, -2));
        mTextContainer.addView(mSummary, new LayoutParams(-1, -2));
        addView(mTextContainer, new LayoutParams(0, -1, 1.0f));

        initRightWidget();
    }

    protected void initRightWidget() {
        if (mValue != null) {
            removeView(mValue);
        }
        if (mArrow != null) {
            removeView(mArrow);
        }
        mValue = text(getContext(), 14, 0xff878c96, false);
        mValue.setGravity(Gravity.RIGHT | Gravity.CENTER_VERTICAL);
        mValue.setSingleLine(true);
        addView(mValue, new LayoutParams(LayoutParams.WRAP_CONTENT, -1));
        mArrow = text(getContext(), 26, 0xffb7b7b7, false);
        mArrow.setText(">");
        mArrow.setGravity(Gravity.CENTER);
        addView(mArrow, new LayoutParams(dp(34), -1));
    }

    public void setTitle(int resId) {
        try {
            setTitle(getResources().getText(resId));
        } catch (Throwable ignored) {
        }
    }

    public void setTitle(CharSequence title) {
        mTitle.setText(title);
    }

    public void setSummary(CharSequence summary) {
        mSummary.setText(summary == null ? "" : summary);
        mSummary.setVisibility(summary == null || summary.length() == 0 ? GONE : VISIBLE);
    }

    public void setSubTitle(int resId) {
        try {
            setSubTitle(getResources().getText(resId));
        } catch (Throwable ignored) {
        }
    }

    public void setSubTitle(CharSequence subTitle) {
        setSummary(subTitle);
    }

    public TextView getSubTitleView() {
        return mSubTitle;
    }

    public void setValue(CharSequence value) {
        if (mValue != null) {
            mValue.setText(value == null ? "" : value);
            mValue.setVisibility(value == null || value.length() == 0 ? GONE : VISIBLE);
        }
    }

    public void setArrowVisible(boolean visible) {
        if (mArrow != null) mArrow.setVisibility(visible ? VISIBLE : INVISIBLE);
    }

    public void setBackgroundStyle(int style) {
    }

    public void setMidContentPaddingLeft(int left) {
        mTextContainer.setPadding(left, 0, 0, 0);
    }

    public void setLeftIcon(int resId) {
        try {
            mIcon.setImageResource(resId);
            framelayout.setVisibility(VISIBLE);
        } catch (Throwable ignored) {
        }
    }

    private static TextView text(Context context, int sp, int color, boolean bold) {
        TextView tv = new TextView(context);
        tv.setTextSize(sp);
        tv.setTextColor(color);
        tv.setGravity(Gravity.CENTER_VERTICAL);
        if (bold) {
            tv.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        }
        return tv;
    }

    protected GradientDrawable cardBackground() {
        GradientDrawable d = new GradientDrawable();
        d.setColor(0xffffffff);
        d.setStroke(1, 0x11000000);
        return d;
    }

    private void applySmartisanAttributes(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        CharSequence title = firstText(context, attrs, "title");
        if (title != null) {
            setTitle(title);
        }
        CharSequence subTitle = firstText(context, attrs, "subTitle");
        if (subTitle != null) {
            setSubTitle(subTitle);
        }
        int icon = firstResource(attrs, "icon");
        if (icon != 0) {
            setLeftIcon(icon);
        } else {
            framelayout.setVisibility(GONE);
        }
    }

    private static CharSequence firstText(Context context, AttributeSet attrs, String name) {
        CharSequence value = readText(context, attrs, "http://schemas.android.com/apk/res-auto", name);
        if (value != null) {
            return value;
        }
        value = readText(context, attrs, "http://schemas.android.com/apk/res/smartisanos", name);
        if (value != null) {
            return value;
        }
        return readText(context, attrs, "http://schemas.android.com/apk/res/com.android.settings", name);
    }

    private static CharSequence readText(Context context, AttributeSet attrs, String namespace, String name) {
        int resId = attrs.getAttributeResourceValue(namespace, name, 0);
        if (resId != 0) {
            try {
                return context.getResources().getText(resId);
            } catch (Throwable ignored) {
            }
        }
        return attrs.getAttributeValue(namespace, name);
    }

    private static int firstResource(AttributeSet attrs, String name) {
        int resId = attrs.getAttributeResourceValue("http://schemas.android.com/apk/res/smartisanos", name, 0);
        if (resId != 0) {
            return resId;
        }
        return attrs.getAttributeResourceValue("http://schemas.android.com/apk/res/com.android.settings", name, 0);
    }

    protected int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }
}
