package com.smartisanos.launcher.settings;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class AboutActivity extends BaseSettingsActivity {
    private View mRoot;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        refresh();
    }

    public void refresh() {
        int layoutId = getResources().getIdentifier("setting_about_us", "layout", "com.smartisanos.home");
        mRoot = getLayoutInflater().inflate(layoutId, null);
        setContentView(mRoot);

        setupTitleBar(getStringByName("setting_about_us", "关于我们"));

        View moreProduct = findViewByName("setting_more_product");
        if (moreProduct != null) {
            moreProduct.setVisibility(View.GONE);
        }

        TextView version = findViewByName("version");
        if (version != null) {
            try {
                String versionName = getPackageManager().getPackageInfo("com.smartisanos.launcher", 0).versionName;
                version.setText("v" + versionName);
            } catch (Exception ignored) {
            }
        }
    }
}
