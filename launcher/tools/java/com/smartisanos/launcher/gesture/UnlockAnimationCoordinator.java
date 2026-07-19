package com.smartisanos.launcher.gesture;

import android.content.Context;
import android.content.Intent;
import android.app.KeyguardManager;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;

public final class UnlockAnimationCoordinator {
    private static final String TAG = "UnlockAnimation";
    public static final String EXTRA_LIFECYCLE_CLAIMED_PLAY =
            "com.smartisanos.launcher.extra.LIFECYCLE_CLAIMED_UNLOCK_PLAY";

    private static final int IDLE = 0;
    private static final int SCREEN_OFF_ARMED = 1;
    private static final int PREPARED = 2;
    private static final int PLAY_CLAIMED = 3;
    private static final int PLAYING = 4;
    private static final int FINISHED = 5;

    private static int sState = IDLE;
    private static long sUnlockGeneration = 0;
    private static boolean sScreenOffArmed = false;
    private static boolean sPlayClaimed = false;
    private static boolean sAnimationStarted = false;
    private static boolean sAnimationFinished = false;
    private static boolean sLifecycleOriginalPlayDispatchPending = false;
    private static String sClaimedSource = null;

    private static final Object LOCK = new Object();

    private UnlockAnimationCoordinator() {
    }

    public static void resetForProcessStart() {
        synchronized (LOCK) {
            sState = IDLE;
            sUnlockGeneration = 0;
            sScreenOffArmed = false;
            sPlayClaimed = false;
            sAnimationStarted = false;
            sAnimationFinished = false;
            sLifecycleOriginalPlayDispatchPending = false;
            sClaimedSource = null;
            Log.i(TAG, "UNLOCK_COLD_START_NOT_ARMED state=IDLE generation=0");
        }
    }

    public static boolean onRealScreenOff(String source, Context context) {
        synchronized (LOCK) {
            if (context != null) {
                try {
                    PowerManager pm = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
                    if (pm != null && pm.isInteractive()) {
                        logDiagnostic("UNLOCK_SCREEN_OFF_REJECTED", source, "reason=device_interactive");
                        return false;
                    }
                } catch (Throwable ignored) {
                }
            }

            if (sState == SCREEN_OFF_ARMED || sState == PREPARED) {
                logDiagnostic("UNLOCK_DUPLICATE_SCREEN_OFF_IGNORED", source,
                        "reason=already_armed_or_prepared");
                return false;
            }

            sUnlockGeneration++;
            sScreenOffArmed = true;
            sPlayClaimed = false;
            sAnimationStarted = false;
            sAnimationFinished = false;
            sLifecycleOriginalPlayDispatchPending = false;
            sClaimedSource = null;
            sState = SCREEN_OFF_ARMED;

            logDiagnostic("UNLOCK_GENERATION_CREATED", source, null);
            logDiagnostic("UNLOCK_SCREEN_OFF_ACCEPTED", source, null);
            return true;
        }
    }

    public static boolean requestUnlockPlay(String source) {
        synchronized (LOCK) {
            logDiagnostic("UNLOCK_PLAY_REQUESTED", source, null);
            if (!sScreenOffArmed) {
                logDiagnostic("UNLOCK_PLAY_REQUEST_REJECTED", source, "reason=NO_SCREEN_OFF_CYCLE");
                return false;
            }

            if (sPlayClaimed) {
                logDiagnostic("UNLOCK_PLAY_REQUEST_REJECTED", source, "reason=ALREADY_CLAIMED");
                return false;
            }

            sPlayClaimed = true;
            sClaimedSource = source;
            sState = PLAY_CLAIMED;

            logDiagnostic("UNLOCK_PLAY_CLAIMED", source, null);
            return true;
        }
    }

    /**
     * Lifecycle fallback is only for ROMs that never deliver USER_PRESENT to
     * the HOME process.  It shares the same claim as the real broadcast and
     * only permits the one synthetic dispatch immediately below.
     */
    public static boolean requestLifecycleFallbackPlay(Context context) {
        if (!isActuallyUnlocked(context)) {
            logResumeNotARealUnlock("DEVICE_STILL_LOCKED_OR_NOT_INTERACTIVE");
            return false;
        }
        synchronized (LOCK) {
            if (!requestUnlockPlay("LIFECYCLE_FALLBACK")) {
                return false;
            }
            sLifecycleOriginalPlayDispatchPending = true;
            return true;
        }
    }

    public static boolean onAnimationStarted(long generation) {
        synchronized (LOCK) {
            if (generation != sUnlockGeneration) {
                logStaleDiagnostic("UNLOCK_STALE_GENERATION_IGNORED", "start", generation);
                return false;
            }
            if (!sPlayClaimed) {
                logDiagnostic("UNLOCK_DUPLICATE_START_BLOCKED", "start", "reason=NO_PLAY_CLAIM");
                return false;
            }
            if (sAnimationStarted) {
                logDiagnostic("UNLOCK_DUPLICATE_START_BLOCKED", "start", "generation=" + generation);
                return false;
            }
            sAnimationStarted = true;
            sState = PLAYING;
            logDiagnostic("UNLOCK_ANIMATION_START", "start", "generation=" + generation);
            return true;
        }
    }

    public static void onAnimationFinished(long generation) {
        synchronized (LOCK) {
            if (generation != sUnlockGeneration) {
                logStaleDiagnostic("UNLOCK_STALE_GENERATION_IGNORED", "finish", generation);
                return;
            }
            if (sAnimationFinished) {
                return;
            }
            sAnimationFinished = true;
            sState = FINISHED;
            logDiagnostic("UNLOCK_ANIMATION_FINISH", "finish", "generation=" + generation);
        }
    }

    public static void onPrepareCompleted(long generation) {
        synchronized (LOCK) {
            if (generation != sUnlockGeneration) {
                logStaleDiagnostic("UNLOCK_STALE_GENERATION_IGNORED", "prepare", generation);
                return;
            }
            if (sPlayClaimed) {
                logDiagnostic("UNLOCK_PREPARE_IGNORED", "prepare", "reason=PLAY_ALREADY_CLAIMED");
                return;
            }
            sState = PREPARED;
            logDiagnostic("UNLOCK_PREPARE_DISPATCHED", "prepare", "generation=" + generation);
        }
    }

    public static boolean onBroadcastReceived(Context context, Intent intent) {
        if (intent == null) return false;
        String action = intent.getAction();
        if (action == null) return false;

        if (Intent.ACTION_SCREEN_OFF.equals(action)) {
            return onRealScreenOff("BROADCAST", context);
        }

        if ("action_keyguard_on".equals(action)) {
            synchronized (LOCK) {
                if (!sScreenOffArmed) {
                    boolean armed = onRealScreenOff("BROADCAST_FALLBACK", context);
                    if (armed) {
                        onPrepareCompleted(sUnlockGeneration);
                        return true;
                    }
                    return false;
                }
                if (sState == SCREEN_OFF_ARMED) {
                    onPrepareCompleted(sUnlockGeneration);
                    return true;
                }
                logDiagnostic("UNLOCK_PREPARE_REJECTED", "BROADCAST", "reason=already_prepared_or_stale");
                return false;
            }
        }

        if (Intent.ACTION_USER_PRESENT.equals(action) || "action_keyguard_to_dismiss".equals(action)) {
            if (intent.getBooleanExtra(EXTRA_LIFECYCLE_CLAIMED_PLAY, false)) {
                synchronized (LOCK) {
                    if (!sLifecycleOriginalPlayDispatchPending || !sPlayClaimed
                            || !"LIFECYCLE_FALLBACK".equals(sClaimedSource)) {
                        logDiagnostic("UNLOCK_PLAY_REQUEST_REJECTED", "LIFECYCLE_FALLBACK",
                                "reason=NO_PENDING_CLAIMED_DISPATCH");
                        return false;
                    }
                    sLifecycleOriginalPlayDispatchPending = false;
                    logDiagnostic("UNLOCK_ORIGINAL_PLAY_DISPATCHED", "LIFECYCLE_FALLBACK", null);
                    return true;
                }
            }
            boolean claimed = requestUnlockPlay("USER_PRESENT");
            if (claimed) {
                synchronized (LOCK) {
                    logDiagnostic("UNLOCK_ORIGINAL_PLAY_DISPATCHED", "USER_PRESENT", null);
                }
            }
            return claimed;
        }

        return true;
    }

    public static long getUnlockGeneration() {
        synchronized (LOCK) {
            return sUnlockGeneration;
        }
    }

    public static void logResumeNotARealUnlock(String reason) {
        synchronized (LOCK) {
            logDiagnostic("UNLOCK_RESUME_NOT_A_REAL_UNLOCK", "LIFECYCLE", "reason=" + reason);
        }
    }

    private static boolean isActuallyUnlocked(Context context) {
        if (context == null) {
            return false;
        }
        try {
            PowerManager power = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
            if (power != null && !power.isInteractive()) {
                return false;
            }
            KeyguardManager keyguard = (KeyguardManager) context.getSystemService(Context.KEYGUARD_SERVICE);
            return keyguard == null || !keyguard.isKeyguardLocked();
        } catch (Throwable error) {
            Log.w(TAG, "Unable to validate lifecycle unlock state", error);
            return false;
        }
    }

    private static void logDiagnostic(String marker, String source, String extra) {
        Log.i(TAG, marker + " generation=" + sUnlockGeneration
                + " source=" + source
                + " state=" + stateName(sState)
                + " screenOffArmed=" + sScreenOffArmed
                + " playClaimed=" + sPlayClaimed
                + " animationStarted=" + sAnimationStarted
                + " animationFinished=" + sAnimationFinished
                + " claimedSource=" + sClaimedSource
                + (extra != null ? " " + extra : "")
                + " uptimeMillis=" + SystemClock.uptimeMillis()
                + " threadName=" + Thread.currentThread().getName());
    }

    private static void logStaleDiagnostic(String marker, String source, long generation) {
        Log.w(TAG, marker + " currentGen=" + sUnlockGeneration
                + " eventGen=" + generation
                + " source=" + source
                + " state=" + stateName(sState)
                + " screenOffArmed=" + sScreenOffArmed
                + " playClaimed=" + sPlayClaimed
                + " animationStarted=" + sAnimationStarted
                + " animationFinished=" + sAnimationFinished
                + " claimedSource=" + sClaimedSource
                + " uptimeMillis=" + SystemClock.uptimeMillis()
                + " threadName=" + Thread.currentThread().getName());
    }

    private static String stateName(int state) {
        switch (state) {
            case SCREEN_OFF_ARMED: return "SCREEN_OFF_ARMED";
            case PREPARED: return "PREPARED";
            case PLAY_CLAIMED: return "PLAY_CLAIMED";
            case PLAYING: return "PLAYING";
            case FINISHED: return "FINISHED";
            default: return "IDLE";
        }
    }
}
