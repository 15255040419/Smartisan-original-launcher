package com.smartisanos.launcher.reload;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;

/** Opaque private-process cover that remains visible until the new Launcher reports a real frame. */
public final class ReloadTransitionActivity extends Activity {
    private static final long FAILURE_TIMEOUT_MS = 10000L;
    private enum TransitionState { WAITING_FIRST_FRAME, COMPLETED, FAILED }
    private final Handler handler = new Handler(Looper.getMainLooper());
    private String token;
    private String reason;
    private String themeMode;
    private int gridMode;
    private int oldMainPid;
    private int oldIconSize = -1;
    private int newIconSize = -1;
    private boolean receiverRegistered;
    private TextView status;
    private Button retry;
    private View loadingPanel;
    private TransitionState state = TransitionState.FAILED;
    private final Runnable timeout = new Runnable() {
        @Override
        public void run() {
            if (state != TransitionState.WAITING_FIRST_FRAME) {
                return;
            }
            LauncherColdReloadCoordinator.log("RELOAD_TIMEOUT", token, reason, gridMode, themeMode);
            showFailure();
        }
    };
    private final BroadcastReceiver firstFrameReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (!ReloadProtocol.ACTION_FIRST_FRAME_READY.equals(intent.getAction())
                    || state != TransitionState.WAITING_FIRST_FRAME
                    || !token.equals(intent.getStringExtra(ReloadProtocol.EXTRA_RELOAD_TOKEN))) {
                return;
            }
            handler.removeCallbacks(timeout);
            state = TransitionState.COMPLETED;
            LauncherColdReloadCoordinator.log("FIRST_FRAME_TOKEN_MATCHED", token, reason,
                    intent.getIntExtra(ReloadProtocol.EXTRA_GRID_MODE, gridMode),
                    intent.getStringExtra(ReloadProtocol.EXTRA_THEME_MODE));
            LauncherColdReloadCoordinator.log("TRANSITION_FINISHED", token, reason, gridMode,
                    themeMode);
            overridePendingTransition(0, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                finishAndRemoveTask();
            } else {
                finish();
            }
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Launcher itself is portrait-only; lock this private cover before it creates content.
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
        getWindow().setWindowAnimations(0);
        getWindow().setBackgroundDrawable(new ColorDrawable(Color.BLACK));
        setFinishOnTouchOutside(false);
        LoadingUiWindowCompat.apply(getWindow());
        token = getIntent().getStringExtra(ReloadProtocol.EXTRA_RELOAD_TOKEN);
        reason = getIntent().getStringExtra(ReloadProtocol.EXTRA_RELOAD_REASON);
        gridMode = getIntent().getIntExtra(ReloadProtocol.EXTRA_GRID_MODE, -1);
        themeMode = getIntent().getStringExtra(ReloadProtocol.EXTRA_THEME_MODE);
        oldMainPid = getIntent().getIntExtra(ReloadProtocol.EXTRA_MAIN_PROCESS_PID, -1);
        oldIconSize = getIntent().getIntExtra(ReloadProtocol.EXTRA_ICON_SIZE_OLD, -1);
        newIconSize = getIntent().getIntExtra(ReloadProtocol.EXTRA_ICON_SIZE_NEW, -1);
        if ("ICON_SIZE_CHANGE".equals(reason)) {
            LauncherColdReloadCoordinator.registerIconSizeContext(token, oldIconSize, newIconSize,
                    oldMainPid, -1);
        }
        buildOpaqueLoading();
        if (token == null || token.length() == 0 || oldMainPid <= 0) {
            LauncherColdReloadCoordinator.log("RELOAD_FAILED", String.valueOf(token),
                    "invalid_transition_request", gridMode, themeMode);
            showFailure();
            return;
        }
        showTransitionLoading();
        registerFirstFrameReceiver();
        LauncherColdReloadCoordinator.log("TRANSITION_ACTIVITY_CREATED", token, reason, gridMode,
                themeMode);
        waitForTransitionFrame();
        beginWaitingForFirstFrame();
    }

    private void buildOpaqueLoading() {
        FrameLayout root = new FrameLayout(this);
        root.setBackgroundColor(Color.BLACK);
        loadingPanel = buildOriginalLoadingContent();
        root.addView(loadingPanel, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, loadingHeight(), Gravity.CENTER));
        LinearLayout content = new LinearLayout(this);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setGravity(Gravity.CENTER_HORIZONTAL);
        status = new TextView(this);
        status.setText("桌面重新载入失败");
        status.setTextColor(Color.WHITE);
        status.setTextSize(18);
        status.setGravity(Gravity.CENTER);
        status.setVisibility(View.GONE);
        LinearLayout.LayoutParams statusParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        content.addView(status, statusParams);
        retry = new Button(this);
        retry.setText("重试");
        retry.setVisibility(View.GONE);
        retry.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                beginWaitingForFirstFrame();
                showTransitionLoading();
                LauncherColdReloadCoordinator.retryStartLauncher(ReloadTransitionActivity.this,
                        token, reason, gridMode, themeMode);
            }
        });
        LinearLayout.LayoutParams retryParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        retryParams.topMargin = dp(16);
        content.addView(retry, retryParams);
        root.addView(content, new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT, Gravity.CENTER));
        setContentView(root);
    }

    private void waitForTransitionFrame() {
        final View decor = getWindow().getDecorView();
        decor.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public boolean onPreDraw() {
                if (decor.getViewTreeObserver().isAlive()) {
                    decor.getViewTreeObserver().removeOnPreDrawListener(this);
                }
                Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() {
                    @Override
                    public void doFrame(long frameTimeNanos) {
                        LauncherColdReloadCoordinator.log("TRANSITION_FIRST_FRAME", token, reason,
                                gridMode, themeMode);
                        if (!LauncherColdReloadCoordinator.terminateOldMainAndStartLauncher(
                                ReloadTransitionActivity.this, token, oldMainPid, reason,
                                gridMode, themeMode)) {
                            showFailure();
                        }
                    }
                });
                return true;
            }
        });
    }

    private void registerFirstFrameReceiver() {
        IntentFilter filter = new IntentFilter(ReloadProtocol.ACTION_FIRST_FRAME_READY);
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(firstFrameReceiver, filter, Context.RECEIVER_NOT_EXPORTED);
        } else {
            registerReceiver(firstFrameReceiver, filter);
        }
        receiverRegistered = true;
    }

    private void beginWaitingForFirstFrame() {
        state = TransitionState.WAITING_FIRST_FRAME;
        status.setVisibility(View.GONE);
        retry.setVisibility(View.GONE);
        handler.removeCallbacks(timeout);
        handler.postDelayed(timeout, FAILURE_TIMEOUT_MS);
    }

    private void showFailure() {
        state = TransitionState.FAILED;
        LauncherColdReloadCoordinator.cancelPendingLauncherStart(token);
        handler.removeCallbacks(timeout);
        if (loadingPanel != null) {
            loadingPanel.setVisibility(View.GONE);
        }
        status.setText("桌面重新载入失败");
        status.setVisibility(View.VISIBLE);
        retry.setVisibility(View.VISIBLE);
    }

    @Override
    protected void onDestroy() {
        LauncherColdReloadCoordinator.log("TRANSITION_DESTROYED", token,
                "state=" + state + "," + reason, gridMode, themeMode);
        LauncherColdReloadCoordinator.cancelPendingLauncherStart(token);
        handler.removeCallbacks(timeout);
        if (receiverRegistered) {
            try {
                unregisterReceiver(firstFrameReceiver);
            } catch (Throwable ignored) {
            }
        }
        super.onDestroy();
    }

    @Override
    protected void onPause() {
        super.onPause();
        LauncherColdReloadCoordinator.log("TRANSITION_PAUSED", token,
                "state=" + state + "," + reason, gridMode, themeMode);
    }

    @Override
    protected void onStop() {
        super.onStop();
        LauncherColdReloadCoordinator.log("TRANSITION_STOPPED", token,
                "state=" + state + "," + reason, gridMode, themeMode);
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }

    private View buildOriginalLoadingContent() {
        int height = loadingHeight();
        LinearLayout panel = new LinearLayout(this);
        panel.setOrientation(LinearLayout.HORIZONTAL);
        panel.setGravity(Gravity.CENTER);
        android.graphics.drawable.GradientDrawable background =
                new android.graphics.drawable.GradientDrawable();
        background.setColor(Color.rgb(29, 33, 34));
        background.setCornerRadius(height / 2f);
        panel.setBackground(background);
        panel.setPadding(height / 2, height / 6, height / 2, height / 6);

        ProgressBar progress = new ProgressBar(this);
        progress.setIndeterminate(true);
        int progressId = getResources().getIdentifier("loading_progress", "drawable", getPackageName());
        if (progressId != 0) {
            progress.setIndeterminateDrawable(getResources().getDrawable(progressId));
        }
        int progressSize = (int) (height * 0.6f);
        panel.addView(progress, new LinearLayout.LayoutParams(progressSize, progressSize));

        TextView message = new TextView(this);
        message.setText("正在加载桌面...");
        message.setTextColor(Color.WHITE);
        message.setTextSize(15);
        LinearLayout.LayoutParams messageParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        messageParams.gravity = Gravity.CENTER_VERTICAL;
        messageParams.leftMargin = height / 3;
        panel.addView(message, messageParams);
        return panel;
    }

    private int loadingHeight() {
        int width = getResources().getDisplayMetrics().widthPixels;
        return width * 3 / 4 / 5;
    }

    private void showTransitionLoading() {
        if (loadingPanel != null) {
            loadingPanel.setVisibility(View.VISIBLE);
        }
    }

}
