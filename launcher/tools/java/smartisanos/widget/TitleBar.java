package smartisanos.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;

public class TitleBar extends FrameLayout {
    private TextView mBack;
    private TextView mTitle;

    public TitleBar(Context context) {
        this(context, null);
    }

    public TitleBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public TitleBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setBackgroundColor(0xffffffff);
        setMinimumHeight(dp(56));

        mBack = new TextView(context);
        mBack.setText("<");
        mBack.setTextColor(0xff999999);
        mBack.setTextSize(28);
        mBack.setGravity(Gravity.CENTER);
        addView(mBack, new LayoutParams(dp(64), dp(56), Gravity.LEFT | Gravity.CENTER_VERTICAL));

        mTitle = new TextView(context);
        mTitle.setTextColor(0xff555555);
        mTitle.setTextSize(24);
        mTitle.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        mTitle.setGravity(Gravity.CENTER);
        addView(mTitle, new LayoutParams(-1, dp(56), Gravity.CENTER));

        CharSequence title = readText(context, attrs,
                "http://schemas.android.com/apk/res/smartisanos", "title_bar_center_text");
        if (title != null) {
            mTitle.setText(title);
        }
    }

    public void setTitle(CharSequence title) {
        mTitle.setText(title);
    }

    public void setTitle(int resId) {
        try {
            mTitle.setText(getResources().getText(resId));
        } catch (Throwable ignored) {
        }
    }

    public void setBackClickListener(OnClickListener listener) {
        mBack.setOnClickListener(listener);
    }

    public View getBackView() {
        return mBack;
    }

    private static CharSequence readText(Context context, AttributeSet attrs, String namespace, String name) {
        if (attrs == null) {
            return null;
        }
        int resId = attrs.getAttributeResourceValue(namespace, name, 0);
        if (resId != 0) {
            try {
                return context.getResources().getText(resId);
            } catch (Throwable ignored) {
            }
        }
        return attrs.getAttributeValue(namespace, name);
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }
}
