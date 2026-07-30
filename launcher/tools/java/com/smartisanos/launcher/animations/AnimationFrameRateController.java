package com.smartisanos.launcher.animations;

/**
 * Allocation-free render cadence classifier for the original SMEngine clock.
 *
 * <p>The engine was authored around a 20-unit step at 60 rendered frames per
 * second. This controller observes actual render callbacks, not the display's
 * advertised refresh rate, and switches only after a candidate cadence remains
 * stable for 24 valid frames.</p>
 */
public final class AnimationFrameRateController {
    private static final float STEP_AT_60_FPS = 20.0f;
    private static final float MAX_VALID_INTERVAL_MS = 25.0f;
    private static final float EMA_ALPHA = 0.0625f;
    private static final int REQUIRED_STABLE_FRAMES = 24;

    private static long sLastFrameUptime;
    private static float sIntervalEmaMs;
    private static int sEffectiveFps = 60;
    private static int sCandidateFps = 60;
    private static int sCandidateFrames;

    private AnimationFrameRateController() {
    }

    public static void reset() {
        sLastFrameUptime = 0L;
        sIntervalEmaMs = 0.0f;
        sEffectiveFps = 60;
        sCandidateFps = 60;
        sCandidateFrames = 0;
    }

    public static float nextEngineStep(long frameUptime) {
        final long previous = sLastFrameUptime;
        sLastFrameUptime = frameUptime;
        if (previous == 0L) {
            return 0.0f;
        }

        final float intervalMs = frameUptime - previous;
        if (intervalMs > 0.0f && intervalMs <= MAX_VALID_INTERVAL_MS) {
            if (sIntervalEmaMs == 0.0f) {
                sIntervalEmaMs = intervalMs;
            } else {
                sIntervalEmaMs += (intervalMs - sIntervalEmaMs) * EMA_ALPHA;
            }
            updateCandidate(classifyCadence(sIntervalEmaMs, sEffectiveFps));
        }
        return STEP_AT_60_FPS * 60.0f / sEffectiveFps;
    }

    public static int getEffectiveRenderFps() {
        return sEffectiveFps;
    }

    private static void updateCandidate(int candidateFps) {
        if (candidateFps == sEffectiveFps) {
            sCandidateFps = candidateFps;
            sCandidateFrames = 0;
            return;
        }
        if (candidateFps != sCandidateFps) {
            sCandidateFps = candidateFps;
            sCandidateFrames = 1;
            return;
        }
        if (++sCandidateFrames >= REQUIRED_STABLE_FRAMES) {
            sEffectiveFps = candidateFps;
            sCandidateFrames = 0;
        }
    }

    private static int classifyCadence(float intervalMs, int currentFps) {
        // Hysteresis widens the current tier by roughly one millisecond. This
        // prevents 59/60/61-style jitter from repeatedly changing the clock.
        if (currentFps == 144 && intervalMs < 8.15f) {
            return 144;
        }
        if (currentFps == 120 && intervalMs >= 7.55f && intervalMs < 10.15f) {
            return 120;
        }
        if (currentFps == 90 && intervalMs >= 9.45f && intervalMs < 14.40f) {
            return 90;
        }
        if (currentFps == 60 && intervalMs >= 13.60f) {
            return 60;
        }

        if (intervalMs < 7.65f) {
            return 144;
        }
        if (intervalMs < 9.75f) {
            return 120;
        }
        if (intervalMs < 13.90f) {
            return 90;
        }
        return 60;
    }
}
