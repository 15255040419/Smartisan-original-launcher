package com.smartisan.launchertest.fixture;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.view.Gravity;
import android.widget.TextView;

public final class LauncherActivityA extends Activity {
    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        TextView view = new TextView(this);
        view.setText("Fixture A");
        view.setTextColor(Color.WHITE);
        view.setTextSize(28.0f);
        view.setGravity(Gravity.CENTER);
        view.setBackgroundColor(Color.rgb(33, 150, 243));
        setContentView(view);
    }
}
