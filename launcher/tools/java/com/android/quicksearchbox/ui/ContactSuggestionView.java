package com.android.quicksearchbox.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/** Minimal public host for the pristine QuickSearch contact_suggestion hierarchy. */
public final class ContactSuggestionView extends RelativeLayout {
    public ContactSuggestionView(Context context) { this(context, null); }
    public ContactSuggestionView(Context context, AttributeSet attrs) { this(context, attrs, 0); }
    public ContactSuggestionView(Context context, AttributeSet attrs, int style) { super(context, attrs, style); }
}
