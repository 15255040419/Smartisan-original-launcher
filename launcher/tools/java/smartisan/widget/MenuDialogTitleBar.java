package smartisan.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

/** Public-API implementation for the pristine QuickSearch menu_dialog title layout. */
public final class MenuDialogTitleBar extends LinearLayout {
    private static final String RESOURCE_PACKAGE =
            "com.smartisanos.launcher.quicksearch.originalresources";

    private TextView title;
    private ImageView leftButton;
    private ImageView rightButton;

    public MenuDialogTitleBar(Context context) {
        this(context, null);
    }

    public MenuDialogTitleBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public MenuDialogTitleBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setOrientation(VERTICAL);
        int layout = resource("layout", "menu_dialog_title_bar");
        LayoutInflater.from(context).cloneInContext(context).inflate(layout, this, true);
        title = (TextView) findViewById(resource("id", "title"));
        leftButton = (ImageView) findViewById(resource("id", "btn_cancel_left"));
        rightButton = (ImageView) findViewById(resource("id", "btn_cancel_right"));
        if (title == null || leftButton == null || rightButton == null) {
            throw new IllegalStateException("pristine MenuDialogTitleBar closure incomplete");
        }
        installPristineBottomShadow();
    }

    public void setTitle(CharSequence text) {
        title.setText(text);
    }

    public void setOnLeftButtonClickListener(View.OnClickListener listener) {
        leftButton.setOnClickListener(listener);
    }

    public void setOnRightButtonClickListener(View.OnClickListener listener) {
        rightButton.setOnClickListener(listener);
    }

    public void setLeftButtonVisibility(int visibility) {
        leftButton.setVisibility(visibility);
    }

    public void setRightButtonVisibility(int visibility) {
        rightButton.setVisibility(visibility);
    }

    /** Public-API equivalent of the pristine BarsHelper title shadow/divider projection. */
    private void installPristineBottomShadow() {
        View container = findViewById(resource("id", "menu_dialog_title_bar_container"));
        if (!(container instanceof RelativeLayout)) return;
        RelativeLayout bar = (RelativeLayout) container;

        int shadowHeight = getResources().getDimensionPixelOffset(
                resource("dimen", "title_bar_shadow_height"));
        View shadow = new View(getContext());
        shadow.setBackground(getResources().getDrawable(
                resource("drawable", "smt_title_bar_shadow")));
        RelativeLayout.LayoutParams shadowParams = new RelativeLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, shadowHeight);
        shadowParams.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
        shadow.setTranslationY(shadowHeight);
        bar.addView(shadow, shadowParams);

        int dividerHeight = getResources().getDimensionPixelSize(
                resource("dimen", "bar_divider_height"));
        View divider = new View(getContext());
        divider.setBackground(getResources().getDrawable(resource("drawable", "divider_bg")));
        RelativeLayout.LayoutParams dividerParams = new RelativeLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, dividerHeight);
        dividerParams.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM);
        divider.setTranslationY(dividerHeight);
        bar.addView(divider, dividerParams);
        bar.setElevation(0.1f);
    }

    private int resource(String type, String name) {
        return getResources().getIdentifier(name, type, RESOURCE_PACKAGE);
    }
}
