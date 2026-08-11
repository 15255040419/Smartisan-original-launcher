package com.smartisanos.launcher.quicksearch.ui;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;

/** Minimal runnable replacement for the private Smartisan SearchBar widget. */
public final class OriginalSearchBarCompat extends RelativeLayout {
    private static final String RESOURCE_PACKAGE =
            "com.smartisanos.launcher.quicksearch.originalresources";
    private EditText editText;
    private View clearButton;
    private View cancelButton;
    private OnClickListener cancelListener;

    public OriginalSearchBarCompat(Context context) {
        this(context, null);
    }

    public OriginalSearchBarCompat(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public OriginalSearchBarCompat(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        int layoutId = resource("layout", "qs_original_search_bar");
        if (layoutId == 0) {
            throw new IllegalStateException("qs_original_search_bar missing");
        }
        LayoutInflater.from(context).cloneInContext(context).inflate(layoutId, this, true);
        bindChildren();
    }

    public EditText getEditText() {
        return editText;
    }

    public void setCancelListener(OnClickListener listener) {
        cancelListener = listener;
    }

    public void setBackListener(OriginalSearchEditTextCompat.BackListener listener) {
        if (editText instanceof OriginalSearchEditTextCompat) {
            ((OriginalSearchEditTextCompat) editText).setBackListener(listener);
        }
    }

    private void bindChildren() {
        editText = (EditText) findViewById(resource("id", "qs_original_search_edit_text"));
        clearButton = findViewById(resource("id", "qs_original_search_clear"));
        cancelButton = findViewById(resource("id", "qs_original_search_cancel"));
        if (editText == null || clearButton == null || cancelButton == null) {
            throw new IllegalStateException("Original SearchBar children missing");
        }
        clearButton.setOnClickListener(new OnClickListener() {
            @Override public void onClick(View view) {
                // Pristine SearchBar.g(): clear only. The focused editor keeps focus/IME.
                editText.setText(null);
            }
        });
        cancelButton.setOnClickListener(new OnClickListener() {
            @Override public void onClick(View view) {
                if (cancelListener != null) cancelListener.onClick(view);
            }
        });
        editText.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence text, int start, int count,
                    int after) {
            }

            @Override public void onTextChanged(CharSequence text, int start, int before,
                    int count) {
                clearButton.setVisibility(text != null && text.length() > 0
                        ? VISIBLE : GONE);
            }

            @Override public void afterTextChanged(Editable editable) {
            }
        });
    }

    private int resource(String type, String name) {
        return getResources().getIdentifier(name, type, RESOURCE_PACKAGE);
    }
}
