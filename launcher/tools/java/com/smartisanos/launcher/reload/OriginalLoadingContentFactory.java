package com.smartisanos.launcher.reload;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.Gravity;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.graphics.drawable.Drawable;

/**
 * The single content constructor for the original Smartisan loading capsule.
 * Its values are intentionally a direct transcription of
 * SmartisanProgressDialog.onCreate(), not a redesigned loading view.
 */
public final class OriginalLoadingContentFactory {
    private static final int ROOT_BACKGROUND = 0x99000000;
    private static final int PANEL_BACKGROUND = -0xe2dede;

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
        int referenceWidth = getLoadingReferenceWidth(context);
        int panelHeight = referenceWidth * 3 / 4 / 5;

        FrameLayout root = new FrameLayout(context);
        root.setBackgroundColor(ROOT_BACKGROUND);

        LinearLayout panel = new LinearLayout(context);
        panel.setOrientation(LinearLayout.HORIZONTAL);
        panel.setGravity(Gravity.CENTER);
        GradientDrawable background = new GradientDrawable();
        background.setColor(PANEL_BACKGROUND);
        background.setCornerRadius(panelHeight / 2f);
        panel.setBackground(background);
        panel.setPadding(panelHeight / 2, panelHeight / 6, panelHeight / 2, panelHeight / 6);

        ProgressBar progress = new ProgressBar(context);
        progress.setIndeterminate(true);
        if (progressDrawable != null) {
            progress.setIndeterminateDrawable(progressDrawable.mutate());
        }
        int progressSize = (int) (panelHeight * 0.6f);
        LinearLayout.LayoutParams progressParams = new LinearLayout.LayoutParams(progressSize,
                progressSize);
        progressParams.gravity = Gravity.CENTER_VERTICAL;
        panel.addView(progress, progressParams);

        TextView message = new TextView(context);
        message.setTextColor(0xffffffff);
        message.setTextSize(2, 15.0f);
        LinearLayout.LayoutParams messageParams = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT);
        messageParams.gravity = Gravity.CENTER_VERTICAL;
        messageParams.leftMargin = panelHeight / 3;
        panel.addView(message, messageParams);
        updateMessage(message, messageText);

        FrameLayout.LayoutParams panelParams = new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.WRAP_CONTENT, panelHeight, Gravity.CENTER);
        root.addView(panel, panelParams);
        return new Content(root, panel, progress, message, referenceWidth, panelHeight);
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

    /** Uses the same physical-width baseline in :reload and the Launcher process. */
    public static int getLoadingReferenceWidth(Context context) {
        if (context != null && Build.VERSION.SDK_INT >= 30) {
            try {
                WindowManager manager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
                if (manager != null) {
                    int width = manager.getMaximumWindowMetrics().getBounds().width();
                    if (width > 0) return width;
                }
            } catch (Throwable ignored) {
            }
        }
        return context == null ? 0 : context.getResources().getDisplayMetrics().widthPixels;
    }
}
