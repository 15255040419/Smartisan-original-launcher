package com.android.quicksearchbox.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/** Presentation-only host for the pristine application_suggestion.xml hierarchy. */
public final class ApplicationSuggestionView extends RelativeLayout {
    public ApplicationSuggestionView(Context context) {
        this(context, null);
    }

    public ApplicationSuggestionView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ApplicationSuggestionView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
