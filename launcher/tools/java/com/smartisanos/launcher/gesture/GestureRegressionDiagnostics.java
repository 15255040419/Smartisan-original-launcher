package com.smartisanos.launcher.gesture;

import android.util.Log;

import java.lang.reflect.Method;

/** Low-frequency diagnostics for the existing original multi-touch pipeline. */
public final class GestureRegressionDiagnostics {
    private static final String LOG_TAG = "GestureRegression";

    private GestureRegressionDiagnostics() {
    }

    public static void onFourFingerCallback(boolean direction, boolean receiverEnabled,
                                             boolean largeScreenMode) {
        Log.i(LOG_TAG, "FOUR_FINGER_CALLBACK direction=" + (direction ? "RIGHT" : "LEFT")
                + " ENABLE_FOUR_FINGER_HORIZONTALLY_SLIDE=" + receiverEnabled
                + " ENABLE_LARGE_SCREEN_MODE=" + largeScreenMode);
    }

    /** Snapshot only; it does not participate in any gate or ownership decision. */
    public static void onFourFingerGate(String reason) {
        Log.i(LOG_TAG, "FOUR_FINGER_GATE reason=" + reason
                + " activityReady=" + invokeBoolean("com.smartisanos.launcher.J", "Ua")
                + " receiverEnabled=" + invokeBoolean("com.smartisanos.launcher.J", "Za")
                + " multiPageMode=" + multiPageMode()
                + " themeAnimating=" + invokeBoolean("com.smartisanos.launcher.theme.t", "Xf")
                + " currentThemeNull=" + currentThemeNull()
                + " statusFlags=" + statusFlags());
    }

    private static String invokeBoolean(String className, String methodName) {
        try {
            Class<?> type = Class.forName(className);
            Method method = type.getMethod(methodName);
            return String.valueOf(method.invoke(null));
        } catch (Throwable ignored) {
            return "unknown";
        }
    }

    private static String multiPageMode() {
        try {
            Class<?> eb = Class.forName("com.smartisanos.launcher.view.Eb");
            Object workspace = eb.getMethod("getInstance").invoke(null);
            Object page = eb.getMethod("Gh").invoke(workspace);
            return String.valueOf(page.getClass().getMethod("vm").invoke(page));
        } catch (Throwable ignored) {
            return "unknown";
        }
    }

    private static String currentThemeNull() {
        try {
            Class<?> theme = Class.forName("com.smartisanos.launcher.theme.X");
            return String.valueOf(theme.getMethod("eg").invoke(null) == null);
        } catch (Throwable ignored) {
            return "unknown";
        }
    }

    private static String statusFlags() {
        try {
            Class<?> ub = Class.forName("com.smartisanos.launcher.ub");
            Object manager = ub.getMethod("getInstance").invoke(null);
            Method state = ub.getMethod("S", int.class);
            boolean folder = (Boolean) state.invoke(manager, 0x1000000);
            boolean dialog = (Boolean) state.invoke(manager, 0x2000000);
            boolean theme = (Boolean) state.invoke(manager, 8);
            boolean grid = (Boolean) state.invoke(manager, 4);
            return "folder=" + folder + ",dialog=" + dialog
                    + ",theme=" + theme + ",grid=" + grid;
        } catch (Throwable ignored) {
            return "unknown";
        }
    }
}
