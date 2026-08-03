package com.smartisanos.launcher.theme;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;

/** Owns only the backup/restore storage selector UI; business actions stay in the host. */
final class MaintainedBackupStorageDialog {
    interface Listener {
        void onSystemDirectory();
        void onAppDirectory();
    }

    private MaintainedBackupStorageDialog() {}

    static void show(final Activity activity, Resources resources, String title,
            String systemLabel, String systemDescription, String appLabel, String appDescription,
            String cancelLabel, String confirmLabel,
            final Listener listener) {
        final Dialog dialog = new Dialog(activity);
        final int[] selected = new int[] { 0 };
        LinearLayout root = new LinearLayout(activity);
        MaintainedLauncherSettingsHost.prepareSmartisanDialogRoot(activity, root);

        TextView titleView = MaintainedLauncherSettingsHost.text(activity, title, 18, 0xff5c5c5c, true);
        titleView.setGravity(Gravity.CENTER);
        titleView.setBackgroundColor(0xfff2f2f2);
        root.addView(titleView, new LinearLayout.LayoutParams(-1,
                MaintainedLauncherSettingsHost.dp(activity, 53)));
        root.addView(MaintainedLauncherSettingsHost.smartisanDivider(activity),
                new LinearLayout.LayoutParams(-1, 1));

        final SmartisanChoiceDot system = new SmartisanChoiceDot(activity);
        final SmartisanChoiceDot app = new SmartisanChoiceDot(activity);
        system.setChecked(true);
        LinearLayout systemRow = optionRow(activity, system, systemLabel, systemDescription);
        LinearLayout appRow = optionRow(activity, app, appLabel, appDescription);
        View.OnClickListener chooseSystem = new View.OnClickListener() {
            public void onClick(View v) {
                selected[0] = 0;
                system.setChecked(true);
                app.setChecked(false);
            }
        };
        View.OnClickListener chooseApp = new View.OnClickListener() {
            public void onClick(View v) {
                selected[0] = 1;
                system.setChecked(false);
                app.setChecked(true);
            }
        };
        systemRow.setOnClickListener(chooseSystem);
        appRow.setOnClickListener(chooseApp);
        root.addView(systemRow, new LinearLayout.LayoutParams(-1,
                MaintainedLauncherSettingsHost.dp(activity, 72)));
        root.addView(MaintainedLauncherSettingsHost.smartisanDivider(activity),
                new LinearLayout.LayoutParams(-1, 1));
        root.addView(appRow, new LinearLayout.LayoutParams(-1,
                MaintainedLauncherSettingsHost.dp(activity, 72)));

        LinearLayout buttons = new LinearLayout(activity);
        buttons.setOrientation(LinearLayout.HORIZONTAL);
        TextView cancel = MaintainedLauncherSettingsHost.smartisanDialogActionButton(
                activity, cancelLabel, false, -1);
        cancel.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { dialog.dismiss(); }
        });
        TextView confirm = MaintainedLauncherSettingsHost.smartisanDialogActionButton(
                activity, confirmLabel, true, 1);
        confirm.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                dialog.dismiss();
                if (selected[0] == 0) listener.onSystemDirectory();
                else listener.onAppDirectory();
            }
        });
        buttons.addView(cancel, new LinearLayout.LayoutParams(0,
                MaintainedLauncherSettingsHost.dp(activity, 47), 1.0f));
        buttons.addView(MaintainedLauncherSettingsHost.smartisanDivider(activity),
                new LinearLayout.LayoutParams(1, MaintainedLauncherSettingsHost.dp(activity, 47)));
        buttons.addView(confirm, new LinearLayout.LayoutParams(0,
                MaintainedLauncherSettingsHost.dp(activity, 47), 1.0f));
        root.addView(buttons, new LinearLayout.LayoutParams(-1,
                MaintainedLauncherSettingsHost.dp(activity, 47)));

        dialog.setContentView(root);
        Window window = dialog.getWindow();
        if (window != null) window.setBackgroundDrawableResource(android.R.color.transparent);
        dialog.show();
        Window shown = dialog.getWindow();
        if (shown != null) {
            int width = Math.min(MaintainedLauncherSettingsHost.dp(activity, 380),
                    activity.getResources().getDisplayMetrics().widthPixels
                            - MaintainedLauncherSettingsHost.dp(activity, 32));
            shown.setLayout(width, -2);
        }
    }

    private static LinearLayout optionRow(Activity activity, SmartisanChoiceDot radio,
            String label, String description) {
        LinearLayout row = new LinearLayout(activity);
        row.setGravity(Gravity.CENTER_VERTICAL);
        // Match SmartisanDialog: text starts at 20dp and the 26dp radio is
        // anchored to the trailing edge, independent of screen density.
        row.setPadding(MaintainedLauncherSettingsHost.dp(activity, 20), 0,
                MaintainedLauncherSettingsHost.dp(activity, 20), 0);
        row.setBackgroundDrawable(MaintainedLauncherSettingsHost.smartisanDialogListRowBackground());
        LinearLayout copy = new LinearLayout(activity);
        copy.setOrientation(LinearLayout.VERTICAL);
        copy.setGravity(Gravity.CENTER_VERTICAL);
        // Keep the description clear of the trailing choice dot.  The
        // original Smartisan rows reserve a visible text-safe area before
        // the control; using dp here keeps the wrap point stable across
        // density and screen-width variants instead of letting text run
        // underneath the dot.
        copy.setPadding(0, 0, MaintainedLauncherSettingsHost.dp(activity, 48), 0);
        TextView text = MaintainedLauncherSettingsHost.text(activity, label, 16, 0xff5c5c5c, false);
        text.setGravity(Gravity.BOTTOM);
        TextView detail = MaintainedLauncherSettingsHost.text(activity, description, 12, 0xff999999, false);
        detail.setGravity(Gravity.TOP);
        detail.setSingleLine(false);
        detail.setMaxLines(2);
        detail.setEllipsize(null);
        copy.addView(text, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        copy.addView(detail, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        row.addView(copy, new LinearLayout.LayoutParams(0,
                MaintainedLauncherSettingsHost.dp(activity, 72), 1.0f));
        LinearLayout radioBox = new LinearLayout(activity);
        radioBox.setGravity(Gravity.CENTER_VERTICAL | Gravity.RIGHT);
        radioBox.addView(radio, new LinearLayout.LayoutParams(
                MaintainedLauncherSettingsHost.dp(activity, 26),
                MaintainedLauncherSettingsHost.dp(activity, 26)));
        row.addView(radioBox, new LinearLayout.LayoutParams(
                MaintainedLauncherSettingsHost.dp(activity, 26),
                MaintainedLauncherSettingsHost.dp(activity, 72)));
        return row;
    }

    /** Smartisan-style pale ring with a small filled center. */
    static final class SmartisanChoiceDot extends View {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private boolean checked;

        SmartisanChoiceDot(Activity activity) {
            super(activity);
            setClickable(false);
        }

        void setChecked(boolean value) {
            checked = value;
            invalidate();
        }

        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            float density = getResources().getDisplayMetrics().density;
            float radius = 11f * density;
            float cx = getWidth() * 0.5f;
            float cy = getHeight() * 0.5f;
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(3f * density);
            paint.setColor(0xffeeeeee);
            canvas.drawCircle(cx, cy, radius, paint);
            if (checked) {
                paint.setStyle(Paint.Style.FILL);
                paint.setColor(0xffa98270);
                canvas.drawCircle(cx, cy, radius * 0.52f, paint);
            }
        }
    }
}
