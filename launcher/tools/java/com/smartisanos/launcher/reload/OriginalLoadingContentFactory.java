package com.smartisanos.launcher.reload;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.graphics.drawable.Drawable;

import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

/**
 * The single content constructor for the original Smartisan loading panel.
 * The 246x160dp vertical structure comes from the maintained copy of
 * smartisan_progress_dialog.xml. The spinner itself remains the launcher's
 * original loading_progress animation-list.
 */
public final class OriginalLoadingContentFactory {
    private static final int ROOT_BACKGROUND = 0x99000000;
    private static final int PANEL_BACKGROUND = 0xff181818;

    public static final class Content {
        public final FrameLayout root;
        public final LinearLayout panel;
        public final ProgressBar progress;
        public final TextView message;
        public final int referenceWidth;
        public final int panelHeight;

        private Content(FrameLayout root, LinearLayout panel, ProgressBar progress,
                TextView message, int referenceWidth, int panelHeight) {
            this.root = root;
            this.panel = panel;
            this.progress = progress;
            this.message = message;
            this.referenceWidth = referenceWidth;
            this.panelHeight = panelHeight;
        }
    }

    private OriginalLoadingContentFactory() {
    }

    public static Content create(Context context, Drawable progressDrawable, String messageText) {
        int panelWidth = dp(context, 246);
        int panelHeight = dp(context, 160);

        FrameLayout root = new FrameLayout(context);
        root.setBackgroundColor(ROOT_BACKGROUND);

        LinearLayout panel = new LinearLayout(context);
        panel.setOrientation(LinearLayout.VERTICAL);
        panel.setGravity(Gravity.CENTER);
        Drawable originalBackground = MaintainedLauncherSettingsHost.loadMaintainedDrawableResource(
                context, "smartisan_progress_dialog_bg");
        if (originalBackground != null) {
            panel.setBackground(originalBackground);
        } else {
            GradientDrawable fallback = new GradientDrawable();
            fallback.setColor(PANEL_BACKGROUND);
            fallback.setCornerRadius(dp(context, 12));
            panel.setBackground(fallback);
        }
        panel.setPadding(dp(context, 28), 0, dp(context, 28), 0);

        ProgressBar progress = new ProgressBar(context);
        progress.setIndeterminate(true);
        if (progressDrawable != null) {
            progress.setIndeterminateDrawable(progressDrawable.mutate());
        }
        int progressSize = dp(context, 48);
        LinearLayout.LayoutParams progressParams = new LinearLayout.LayoutParams(progressSize,
                progressSize);
        progressParams.gravity = Gravity.CENTER_HORIZONTAL;
        progressParams.topMargin = dp(context, 2);
        panel.addView(progress, progressParams);

        TextView message = new TextView(context);
        message.setTextColor(0xffffffff);
        message.setTextSize(2, 13.0f);
        message.setSingleLine(true);
        message.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams messageParams = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        messageParams.gravity = Gravity.CENTER_HORIZONTAL;
        messageParams.topMargin = dp(context, 12);
        panel.addView(message, messageParams);
        updateMessage(message, messageText);

        FrameLayout.LayoutParams panelParams = new FrameLayout.LayoutParams(
                panelWidth, panelHeight, Gravity.CENTER);
        root.addView(panel, panelParams);
        return new Content(root, panel, progress, message, panelWidth, panelHeight);
    }

    public static void updateMessage(TextView message, String value) {
        if (message == null) return;
        if (value == null || value.length() == 0) {
            message.setVisibility(android.view.View.GONE);
        } else {
            message.setText(value);
            message.setVisibility(android.view.View.VISIBLE);
        }
    }

    private static int dp(Context context, int value) {
        float density = context == null ? 1f : context.getResources().getDisplayMetrics().density;
        return Math.max(1, (int) (value * density + 0.5f));
    }
}
