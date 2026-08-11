package smartisan.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;

/** Public-API host for pristine ShadowButton XML geometry and state drawables. */
public final class ShadowButton extends Button {
    public ShadowButton(Context context) {
        this(context, null);
    }

    public ShadowButton(Context context, AttributeSet attrs) {
        this(context, attrs, android.R.attr.buttonStyle);
    }

    public ShadowButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
