package com.smartisan.launchertest.fixture;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public final class LauncherActivityC extends Activity {
    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        TextView label = new TextView(this);
        label.setText("Launcher Model Fixture C");
        label.setTextSize(22f);
        setContentView(label);
    }
}
