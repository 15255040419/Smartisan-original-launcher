package com.android.settings.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

public class VerticalOptionsCheckView extends LinearLayout {
    public interface OptionSelectListener {
        void onOptionSelected(VerticalOptionsCheckView view, int index);
    }

    private OptionSelectListener mOptionSelectListener;
    private final PreviewOptionItemView mTopOptionView;
    private final PreviewOptionItemView mMiddleOptionView;
    private final PreviewOptionItemView mBottomOptionView;

    public VerticalOptionsCheckView(Context context) {
        this(context, null);
    }

    public VerticalOptionsCheckView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public VerticalOptionsCheckView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs);
        setOrientation(VERTICAL);
        setGravity(Gravity.CENTER);
        mTopOptionView = item(context, 0);
        mMiddleOptionView = item(context, 1);
        mBottomOptionView = item(context, 2);
        addView(mTopOptionView, new LayoutParams(-1, 0, 1.0f));
        addView(mMiddleOptionView, new LayoutParams(-1, 0, 1.0f));
        addView(mBottomOptionView, new LayoutParams(-1, 0, 1.0f));
    }

    public void setOptionSelectListener(OptionSelectListener listener) {
        mOptionSelectListener = listener;
    }

    public void setTitle(int resId) {
    }

    public void bindOptionPreview(int index, int resId) {
        option(index).setPreview(resId);
    }

    public void bindOptionTitle(int index, CharSequence title) {
        option(index).setTitle(title);
    }

    public void setSelectedOption(int index) {
        mTopOptionView.setChecked(index == 0);
        mMiddleOptionView.setChecked(index == 1);
        mBottomOptionView.setChecked(index == 2);
    }

    private PreviewOptionItemView item(Context context, final int index) {
        PreviewOptionItemView view = new PreviewOptionItemView(context);
        view.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                setSelectedOption(index);
                if (mOptionSelectListener != null) {
                    mOptionSelectListener.onOptionSelected(VerticalOptionsCheckView.this, index);
                }
            }
        });
        return view;
    }

    private PreviewOptionItemView option(int index) {
        if (index == 1) {
            return mMiddleOptionView;
        }
        if (index == 2) {
            return mBottomOptionView;
        }
        return mTopOptionView;
    }
}
