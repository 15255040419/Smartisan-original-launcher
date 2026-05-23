package smartisanos.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CompoundButton;

public class SettingItemSwitch extends SettingItemText {
    private SwitchEx mSwitch;

    public SettingItemSwitch(Context context) {
        this(context, null);
    }

    public SettingItemSwitch(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SettingItemSwitch(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    protected void initRightWidget() {
        mSwitch = new SwitchEx(getContext());
        addView(mSwitch, new LayoutParams(-2, -2));
    }

    public SwitchEx getSwitch() {
        return mSwitch;
    }

    public void setChecked(boolean checked) {
        mSwitch.setChecked(checked);
    }

    public boolean isChecked() {
        return mSwitch.isChecked();
    }

    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener listener) {
        mSwitch.setOnCheckedChangeListener(listener);
    }
}
