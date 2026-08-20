package com.smartisanos.launcher.theme;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;

/**
 * Ordinary-Android replacement for isSmartisanLauncherBelowKeyguard().
 *
 * This class only owns one Keyguard-to-Launcher eligibility session. The
 * original Smartisan prepare, play and force-finish events remain unchanged.
 */
public final class LauncherBelowKeyguardCompat {
    public static final String ACTION_INTERNAL_PLAY =
            "com.smartisanos.launcher.action.INTERNAL_COMMIT_UNLOCK_ANIMATION";
    public static final String ACTION_INTERNAL_FORCE_FINISH =
            "com.smartisanos.launcher.action.INTERNAL_FORCE_FINISH_UNLOCK_ANIMATION";

    private static final String TAG = "UnlockAnimation";
    private static final Object LOCK = new Object();
    private static final long DISMISS_HANDOFF_TIMEOUT_MS = 1500L;
    private static final long PLAY_COMPLETION_TIMEOUT_MS = 2500L;

    private static Context applicationContext;
    private static long keyguardSessionId;
    private static boolean keyguardSessionActive;
    private static boolean launcherWasBelowKeyguard;
    private static boolean unlockPrepared;
    private static boolean unlockDismissPending;
    private static boolean unlockConsumed;
    private static boolean launcherResumed;
    private static boolean launcherHasWindowFocus;
    private static boolean visibleBeforeScreenOff;
    private static boolean internalPlayPermit;
    private static boolean unlockAnimationRunning;
    private static boolean originalPlayDispatched;
    private static boolean auxiliaryTransitionRunning;
    private static boolean ignoreReplacedAnimationFinish;

    private LauncherBelowKeyguardCompat() {
    }

    public static void onLauncherResumed(Activity activity) {
        synchronized (LOCK) {
            remember(activity);
            launcherResumed = true;
            logLocked(activity, "UNLOCK_LAUNCHER_RESUME", null);
        }
        tryCommitUnlockAnimation(activity, "RESUME");
    }

    public static void onLauncherPaused(Activity activity) {
        boolean scheduleNonDirectCancel = false;
        long pauseSession = 0L;
        synchronized (LOCK) {
            remember(activity);
            boolean screenTurningOff = !isInteractive(activity) || isKeyguardLocked(activity);
            boolean wasVisibleHome = launcherResumed && isDefaultHome(activity);
            // onPause is the last reliable callback on some ROMs. Window focus may
            // already be false here, so snapshot the still-resumed default HOME.
            launcherResumed = false;
            logLocked(activity, "UNLOCK_LAUNCHER_PAUSE", null);
            if (unlockAnimationRunning || unlockDismissPending || internalPlayPermit
                    || unlockConsumed || unlockPrepared) {
                if (!screenTurningOff && !isKeyguardLocked(activity)) {
                    // Power/keyguard state can trail onPause by a few hundred
                    // milliseconds. Delay cancellation only; SCREEN_OFF or a
                    // resumed Launcher invalidates this candidate.
                    scheduleNonDirectCancel = true;
                    pauseSession = keyguardSessionId;
                }
            }
            if (wasVisibleHome && screenTurningOff) {
                // Preserve this across the synchronous original force-finish;
                // SCREEN_OFF consumes and clears it immediately afterwards.
                visibleBeforeScreenOff = true;
            }
        }
        if (scheduleNonDirectCancel) schedulePausedNonDirectCancellation(activity, pauseSession);
    }

    public static void onWindowFocusChanged(Activity activity, boolean hasFocus) {
        synchronized (LOCK) {
            remember(activity);
            if (!hasFocus && launcherActuallyVisibleLocked(activity)
                    && (!isInteractive(activity) || isKeyguardLocked(activity))) {
                visibleBeforeScreenOff = true;
            }
            launcherHasWindowFocus = hasFocus;
            logLocked(activity,
                    hasFocus ? "UNLOCK_WINDOW_FOCUS_TRUE" : "UNLOCK_WINDOW_FOCUS_FALSE", null);
        }
        if (hasFocus) tryCommitUnlockAnimation(activity, "WINDOW_FOCUS");
    }

    /** SCREEN_OFF is only an auxiliary signal; a real locked Keyguard is required. */
    public static boolean armFromScreenOff(Context context) {
        synchronized (LOCK) {
            remember(context);
            logLocked(context, "UNLOCK_SCREEN_OFF", null);
            boolean below = visibleBeforeScreenOff || launcherActuallyVisibleLocked(context)
                    || (launcherWasBelowKeyguard && unlockConsumed
                    && (launcherHasWindowFocus || unlockAnimationRunning));
            visibleBeforeScreenOff = false;
            if (!isUnlockAnimationEnabled()) {
                cancelLocked("UNLOCK_SESSION_NOT_ARMED_DISABLED", context);
                return false;
            }
            if (!isKeyguardLocked(context)) {
                visibleBeforeScreenOff = false;
                cancelLocked("UNLOCK_SESSION_NOT_ARMED_NO_KEYGUARD", context);
                return false;
            }
            if (keyguardSessionActive) {
                logLocked(context, "UNLOCK_SESSION_NOT_ARMED_DUPLICATE", null);
                return true;
            }
            if (!below) {
                cancelLocked("UNLOCK_SESSION_NOT_ARMED_NOT_VISIBLE_HOME", context);
                return false;
            }
            keyguardSessionId++;
            boolean replacedRunningAnimation = unlockAnimationRunning;
            keyguardSessionActive = true;
            launcherWasBelowKeyguard = true;
            unlockPrepared = false;
            unlockDismissPending = false;
            unlockConsumed = false;
            internalPlayPermit = false;
            unlockAnimationRunning = false;
            originalPlayDispatched = false;
            auxiliaryTransitionRunning = false;
            ignoreReplacedAnimationFinish = replacedRunningAnimation;
            logLocked(context, "UNLOCK_SESSION_ARMED", null);
            return true;
        }
    }

    public static boolean canPrepare(Context context) {
        synchronized (LOCK) {
            boolean allowed = isUnlockAnimationEnabled()
                    && keyguardSessionActive && launcherWasBelowKeyguard && !unlockConsumed;
            logLocked(context, allowed ? "UNLOCK_PREPARE_BEGIN" : "UNLOCK_SKIP_NO_SESSION", null);
            return allowed;
        }
    }

    public static void onPrepareReady(Context context) {
        synchronized (LOCK) {
            if (!keyguardSessionActive || !launcherWasBelowKeyguard || unlockConsumed) {
                logLocked(context, "UNLOCK_SKIP_NO_SESSION", "prepareReady");
                return;
            }
            unlockPrepared = true;
            logLocked(context, "UNLOCK_PREPARE_READY", null);
        }
        tryCommitUnlockAnimation(context, "PREPARE_READY");
    }

    public static void onPrepareFailed(Context context) {
        synchronized (LOCK) {
            cancelLocked("UNLOCK_SKIP_NOT_PREPARED", context);
        }
        dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
    }

    /** USER_PRESENT/dismiss only makes an existing legal session pending. */
    public static void onDismissSignal(Context context, String action) {
        final long session;
        synchronized (LOCK) {
            remember(context);
            logLocked(context, "UNLOCK_USER_PRESENT", action);
            if (!keyguardSessionActive || !launcherWasBelowKeyguard) {
                logLocked(context, unlockConsumed ? "UNLOCK_SKIP_CONSUMED" : "UNLOCK_SKIP_NO_SESSION", action);
                return;
            }
            if (unlockConsumed) {
                logLocked(context, "UNLOCK_SKIP_CONSUMED", action);
                return;
            }
            unlockDismissPending = true;
            session = keyguardSessionId;
            logLocked(context, "UNLOCK_DISMISS_PENDING", action);
        }
        tryCommitUnlockAnimation(context, "DISMISS");
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                Context context;
                boolean cancel = false;
                synchronized (LOCK) {
                    context = applicationContext;
                    if (keyguardSessionId == session && keyguardSessionActive
                            && unlockDismissPending && !unlockConsumed) {
                        cancelLocked("UNLOCK_CANCEL_NOT_DIRECT_HOME", context);
                        cancel = true;
                    }
                }
                if (cancel) dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
            }
        }, DISMISS_HANDOFF_TIMEOUT_MS);
    }

    /** The sole point that may grant one dispatch into the original play chain. */
    public static void tryCommitUnlockAnimation(Context context, String source) {
        boolean dispatch = false;
        boolean forceFinish = false;
        long dispatchSession = -1L;
        synchronized (LOCK) {
            remember(context);
            logLocked(context, "UNLOCK_TRY_COMMIT", source);
            if (!isUnlockAnimationEnabled()) {
                cancelLocked("UNLOCK_SKIP_DISABLED", context);
                forceFinish = true;
            } else if (!keyguardSessionActive || !launcherWasBelowKeyguard) {
                logLocked(context, unlockConsumed ? "UNLOCK_SKIP_CONSUMED" : "UNLOCK_SKIP_NO_SESSION", source);
            } else if (unlockConsumed) {
                logLocked(context, "UNLOCK_SKIP_CONSUMED", source);
            } else if (!unlockDismissPending) {
                logLocked(context, "UNLOCK_SKIP_NO_DISMISS", source);
            } else if (!unlockPrepared) {
                if (!isKeyguardLocked(context) && launcherResumed && launcherHasWindowFocus) {
                    cancelLocked("UNLOCK_SKIP_NOT_PREPARED", context);
                    forceFinish = true;
                } else {
                    logLocked(context, "UNLOCK_SKIP_NOT_PREPARED", source);
                }
            } else if (!launcherResumed) {
                logLocked(context, "UNLOCK_SKIP_NOT_RESUMED", source);
            } else if (!launcherHasWindowFocus) {
                logLocked(context, "UNLOCK_SKIP_NO_FOCUS", source);
            } else if (isKeyguardLocked(context)) {
                logLocked(context, "UNLOCK_SKIP_KEYGUARD_STILL_LOCKED", source);
            } else if (!isDefaultHome(context)) {
                cancelLocked("UNLOCK_CANCEL_NOT_DIRECT_HOME", context);
                forceFinish = true;
            } else if (!isLauncherRuntimeReady() || MaintainedLauncherSettingsHost.shouldSkipUnlockAnimation()) {
                cancelLocked("UNLOCK_CANCEL_INVALID_LAUNCHER_STATE", context);
                forceFinish = true;
            } else {
                unlockConsumed = true;
                unlockDismissPending = false;
                keyguardSessionActive = false;
                internalPlayPermit = true;
                logLocked(context, "UNLOCK_SESSION_CONSUMED", source);
                logLocked(context, "UNLOCK_COMMIT_PLAY", source);
                dispatch = true;
                dispatchSession = keyguardSessionId;
            }
        }
        if (forceFinish) dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
        if (dispatch) {
            dispatchOriginalAction(context, ACTION_INTERNAL_PLAY);
            schedulePlayCompletionWatchdog(context, dispatchSession);
        }
    }

    public static boolean takeInternalPlayPermit(Context context) {
        synchronized (LOCK) {
            if (!internalPlayPermit || !unlockConsumed || !launcherWasBelowKeyguard) {
                logLocked(context, "UNLOCK_SKIP_CONSUMED", "internalPermit");
                return false;
            }
            internalPlayPermit = false;
            return true;
        }
    }

    public static boolean isLauncherBelowKeyguard(Context context) {
        synchronized (LOCK) {
            return context != null && launcherWasBelowKeyguard
                    && (keyguardSessionActive || unlockConsumed || unlockAnimationRunning);
        }
    }

    public static void onOriginalPlayDispatched() {
        synchronized (LOCK) {
            originalPlayDispatched = true;
            logLocked(applicationContext, "UNLOCK_ORIGINAL_PLAY_DISPATCHED", null);
            if (auxiliaryTransitionRunning) {
                // The original engine may retarget its in-flight q(0) prepare
                // transition to q(1) without issuing a second start callback.
                auxiliaryTransitionRunning = false;
                unlockAnimationRunning = true;
                logLocked(applicationContext, "UNLOCK_ANIMATION_START", "COALESCED_AFTER_PREPARE");
            }
        }
    }

    public static void onUnlockAnimationStarted() {
        boolean stale;
        boolean auxiliary;
        Context context;
        synchronized (LOCK) {
            context = applicationContext;
            boolean committedPlay = originalPlayDispatched && unlockConsumed
                    && launcherWasBelowKeyguard;
            auxiliary = !committedPlay && keyguardSessionActive
                    && launcherWasBelowKeyguard && unlockPrepared;
            stale = !committedPlay && !auxiliary;
            if (auxiliary) {
                auxiliaryTransitionRunning = true;
                logLocked(context, "UNLOCK_PREPARE_TRANSITION_START", null);
                return;
            }
            if (stale) {
                cancelLocked("UNLOCK_CANCEL_STALE_ANIMATION_START", context);
            }
            unlockAnimationRunning = true;
            logLocked(context, "UNLOCK_ANIMATION_START", stale ? "STALE" : null);
        }
        if (stale) dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
    }

    public static void onUnlockAnimationFinished() {
        synchronized (LOCK) {
            if (ignoreReplacedAnimationFinish) {
                ignoreReplacedAnimationFinish = false;
                logLocked(applicationContext, "UNLOCK_REPLACED_FINISH_IGNORED", null);
                return;
            }
            if (auxiliaryTransitionRunning) {
                auxiliaryTransitionRunning = false;
                logLocked(applicationContext, "UNLOCK_PREPARE_TRANSITION_FINISH", null);
                return;
            }
            unlockAnimationRunning = false;
            logLocked(applicationContext, "UNLOCK_ANIMATION_FINISH", null);
            clearSessionLocked();
        }
    }

    public static void onForceFinishComplete() {
        synchronized (LOCK) {
            unlockAnimationRunning = false;
            logLocked(applicationContext, "UNLOCK_FORCE_FINISH", null);
            clearSessionLocked();
        }
    }

    public static void forceFinishOriginal(Context context, String reason) {
        synchronized (LOCK) {
            cancelLocked("UNLOCK_FORCE_FINISH_REQUEST", context);
            logLocked(context, "UNLOCK_FORCE_FINISH_REASON", reason);
        }
        dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
    }

    public static void onUnlockSettingChanged(boolean enabled) {
        if (enabled) return;
        Context context;
        synchronized (LOCK) {
            context = applicationContext;
            cancelLocked("UNLOCK_CANCEL_DISABLED", context);
        }
        dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
    }

    private static void cancelLocked(String event, Context context) {
        logLocked(context, event, null);
        clearSessionLocked();
    }

    private static void clearSessionLocked() {
        keyguardSessionActive = false;
        launcherWasBelowKeyguard = false;
        unlockPrepared = false;
        unlockDismissPending = false;
        unlockConsumed = false;
        internalPlayPermit = false;
        originalPlayDispatched = false;
        auxiliaryTransitionRunning = false;
    }

    private static boolean launcherActuallyVisibleLocked(Context context) {
        return launcherResumed && launcherHasWindowFocus && isDefaultHome(context);
    }

    private static void schedulePausedNonDirectCancellation(final Context context, final long session) {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                boolean cancel = false;
                synchronized (LOCK) {
                    if (keyguardSessionId == session && !launcherResumed
                            && !isKeyguardLocked(context) && isInteractive(context)
                            && (unlockAnimationRunning || unlockDismissPending || internalPlayPermit
                            || unlockConsumed || unlockPrepared)) {
                        cancelLocked("UNLOCK_CANCEL_NOT_DIRECT_HOME", context);
                        visibleBeforeScreenOff = false;
                        cancel = true;
                    }
                }
                if (cancel) dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
            }
        }, 300L);
    }

    private static void schedulePlayCompletionWatchdog(final Context context, final long session) {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public void run() {
                boolean cancel = false;
                synchronized (LOCK) {
                    if (keyguardSessionId == session && unlockConsumed
                            && (unlockAnimationRunning || originalPlayDispatched)) {
                        cancelLocked("UNLOCK_CANCEL_PLAY_TIMEOUT", context);
                        cancel = true;
                    }
                }
                if (cancel) dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
            }
        }, PLAY_COMPLETION_TIMEOUT_MS);
    }

    private static boolean isDefaultHome(Context context) {
        if (context == null) return false;
        try {
            Intent home = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_HOME);
            ResolveInfo resolved = context.getPackageManager().resolveActivity(
                    home, PackageManager.MATCH_DEFAULT_ONLY);
            ComponentName component = resolved == null || resolved.activityInfo == null ? null
                    : new ComponentName(resolved.activityInfo.packageName, resolved.activityInfo.name);
            return component != null && context.getPackageName().equals(component.getPackageName());
        } catch (Throwable error) {
            Log.w(TAG, "Unable to resolve default HOME", error);
            return false;
        }
    }

    private static boolean isKeyguardLocked(Context context) {
        if (context == null) return false;
        try {
            KeyguardManager keyguard = (KeyguardManager) context.getSystemService(Context.KEYGUARD_SERVICE);
            return keyguard != null && keyguard.isKeyguardLocked();
        } catch (Throwable error) {
            return false;
        }
    }

    private static boolean isInteractive(Context context) {
        if (context == null) return true;
        try {
            PowerManager power = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
            return power == null || power.isInteractive();
        } catch (Throwable error) {
            return true;
        }
    }

    private static boolean isUnlockAnimationEnabled() {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return constants.getField("ENABLE_UNLOCK_ANIMATION").getBoolean(null);
        } catch (Throwable error) {
            return false;
        }
    }

    private static boolean isLauncherRuntimeReady() {
        try {
            Class<?> launcherProxy = Class.forName("com.smartisanos.launcher.J");
            return Boolean.TRUE.equals(launcherProxy.getMethod("Ua").invoke(null));
        } catch (Throwable error) {
            return false;
        }
    }

    private static void dispatchOriginalAction(Context context, String action) {
        if (context == null) return;
        try {
            Class<?> proxyClass = Class.forName("com.smartisanos.launcher.ja");
            Object proxy = proxyClass.getMethod("getInstance").invoke(null);
            if (proxy == null) {
                Log.w(TAG, "Original unlock dispatch ignored: ApplicationProxy is not ready");
                return;
            }
            Class<?> receiverClass = Class.forName("com.smartisanos.launcher.ia");
            java.lang.reflect.Constructor<?> constructor =
                    receiverClass.getDeclaredConstructor(proxyClass);
            constructor.setAccessible(true);
            Object receiver = constructor.newInstance(proxy);
            receiverClass.getMethod("onReceive", Context.class, Intent.class)
                    .invoke(receiver, context, new Intent(action));
        } catch (Throwable error) {
            Log.e(TAG, "Unable to dispatch original unlock action " + action, error);
        }
    }

    private static void remember(Context context) {
        if (context == null) return;
        Context app = context.getApplicationContext();
        applicationContext = app == null ? context : app;
    }

    private static void logLocked(Context context, String event, String detail) {
        Log.i(TAG, event
                + " sessionId=" + keyguardSessionId
                + " uptime=" + SystemClock.uptimeMillis()
                + " resumed=" + launcherResumed
                + " focus=" + launcherHasWindowFocus
                + " keyguardLocked=" + isKeyguardLocked(context)
                + " wasBelowKeyguard=" + launcherWasBelowKeyguard
                + " prepared=" + unlockPrepared
                + " pending=" + unlockDismissPending
                + " consumed=" + unlockConsumed
                + " running=" + unlockAnimationRunning
                + " screenOffVisible=" + visibleBeforeScreenOff
                + (detail == null ? "" : " detail=" + detail));
    }
}
