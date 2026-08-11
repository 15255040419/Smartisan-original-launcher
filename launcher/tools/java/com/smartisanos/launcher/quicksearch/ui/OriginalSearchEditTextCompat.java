package com.smartisanos.launcher.quicksearch.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.EditText;

/** Lets the search lifecycle handle Back before the IME consumes it. */
public final class OriginalSearchEditTextCompat extends EditText {
    public interface BackListener {
        void onSearchBack();
    }

    private BackListener backListener;

    public OriginalSearchEditTextCompat(Context context) {
        this(context, null);
    }

    public OriginalSearchEditTextCompat(Context context, AttributeSet attrs) {
        this(context, attrs, android.R.attr.editTextStyle);
    }

    public OriginalSearchEditTextCompat(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void setBackListener(BackListener listener) {
        backListener = listener;
    }

    @Override public boolean onKeyPreIme(int keyCode, KeyEvent event) {
        if (keyCode == KeyEvent.KEYCODE_BACK && backListener != null) {
            if (event.getAction() == KeyEvent.ACTION_UP && !event.isCanceled()) {
                backListener.onSearchBack();
            }
            return true;
        }
        return super.onKeyPreIme(keyCode, event);
    }
}
