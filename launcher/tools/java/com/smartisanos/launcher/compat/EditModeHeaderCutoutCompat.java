package com.smartisanos.launcher.compat;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.opengl.GLSurfaceView;

import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.WeakHashMap;

/** Keeps the edit-mode status-bar title out of real display cutouts. */
public final class EditModeHeaderCutoutCompat {
    private static final String TAG = "EditModeCutout";
    private static final WeakHashMap<View, Binding> BINDINGS = new WeakHashMap<View, Binding>();

    private EditModeHeaderCutoutCompat() {}

    /**
     * Returns the title center in scene screen coordinates and keeps the current title bound to
     * later decor size/inset changes. A zero-cutout or pre-28 device retains the original center.
     */
    public static float resolveAndBind(Activity activity, Object titleNode, float sceneWidth,
            float titleWidth, float titleHeight) {
        if (activity == null || titleNode == null || sceneWidth <= 0f || titleWidth <= 0f) {
            return sceneWidth * 0.5f;
        }
        View decor = activity.getWindow() == null ? null : activity.getWindow().getDecorView();
        if (decor == null) {
            return sceneWidth * 0.5f;
        }

        Binding binding;
        boolean installListener = false;
        synchronized (BINDINGS) {
            binding = BINDINGS.get(decor);
            if (binding == null) {
                binding = new Binding(decor);
                BINDINGS.put(decor, binding);
                installListener = true;
            }
            binding.activity = new WeakReference<Activity>(activity);
            binding.titleNode = new WeakReference<Object>(titleNode);
            binding.sceneWidth = sceneWidth;
            binding.titleWidth = titleWidth;
            binding.titleHeight = titleHeight;
        }
        float center = resolveCenter(decor, sceneWidth, titleWidth, titleHeight);
        binding.lastCenter = center;
        if (installListener) {
            final Binding finalBinding = binding;
            decor.post(new Runnable() {
                @Override
                public void run() {
                    View root = finalBinding.decor.get();
                    if (root == null) {
                        return;
                    }
                    root.addOnLayoutChangeListener(finalBinding);
                    if (Build.VERSION.SDK_INT >= 20) {
                        root.requestApplyInsets();
                    }
                }
            });
        }
        logGeometry(decor, sceneWidth, titleWidth, titleHeight, center);
        return center;
    }

    private static float resolveCenter(View decor, float sceneWidth, float titleWidth,
            float titleHeight) {
        final float defaultCenter = sceneWidth * 0.5f;
        if (Build.VERSION.SDK_INT < 28 || decor == null) {
            return defaultCenter;
        }
        WindowInsets insets = decor.getRootWindowInsets();
        DisplayCutout cutout = insets == null ? null : insets.getDisplayCutout();
        List<Rect> bounds = cutout == null ? null : cutout.getBoundingRects();
        int decorWidth = decor.getWidth();
        if (bounds == null || bounds.isEmpty() || decorWidth <= 0) {
            return defaultCenter;
        }

        final float scale = sceneWidth / (float) decorWidth;
        final float titleBandBottomPx = titleHeight > 0f ? titleHeight / scale
                : Math.max(1, cutout.getSafeInsetTop());
        ArrayList<float[]> blocked = new ArrayList<float[]>();
        for (Rect rect : bounds) {
            if (rect == null || rect.isEmpty() || rect.bottom <= 0
                    || rect.top >= titleBandBottomPx) {
                continue;
            }
            float left = clamp(rect.left * scale, 0f, sceneWidth);
            float right = clamp(rect.right * scale, 0f, sceneWidth);
            if (right > left) {
                blocked.add(new float[] {left, right});
            }
        }
        if (blocked.isEmpty()) {
            return defaultCenter;
        }
        Collections.sort(blocked, new Comparator<float[]>() {
            @Override
            public int compare(float[] a, float[] b) {
                return Float.compare(a[0], b[0]);
            }
        });
        blocked = merge(blocked);

        float half = titleWidth * 0.5f;
        if (!intersectsAny(defaultCenter - half, defaultCenter + half, blocked)) {
            return defaultCenter;
        }

        float leftEdge = Math.max(insets.getSystemWindowInsetLeft(), cutout.getSafeInsetLeft())
                * scale;
        float rightEdge = sceneWidth - Math.max(insets.getSystemWindowInsetRight(),
                cutout.getSafeInsetRight()) * scale;
        ArrayList<float[]> safe = safeSegments(leftEdge, rightEdge, blocked);
        if (safe.isEmpty()) {
            return defaultCenter;
        }

        // Original behavior is centered. On a collision, prefer the left outer safe region,
        // then the right outer region, then the largest remaining safe region.
        float[] left = safe.get(0);
        if (fits(left, titleWidth)) {
            return (left[0] + left[1]) * 0.5f;
        }
        float[] right = safe.get(safe.size() - 1);
        if (right != left && fits(right, titleWidth)) {
            return (right[0] + right[1]) * 0.5f;
        }
        float[] largest = null;
        for (float[] segment : safe) {
            if (largest == null || width(segment) > width(largest)) {
                largest = segment;
            }
        }
        if (largest == null) {
            return defaultCenter;
        }
        float segmentCenter = (largest[0] + largest[1]) * 0.5f;

        // A wide center notch can leave less horizontal room than the full title. Keeping the
        // title wholly on-screen then necessarily overlaps either the notch bound or a screen
        // edge. Preserve the title and use the real top safe inset as the rounded-corner guard;
        // this mirrors the original visual inset without a model-specific or fixed-pixel offset.
        float cornerGuard = cutout.getSafeInsetTop() * scale;
        if (largest == left) {
            float protectedLeft = Math.max(leftEdge, cornerGuard);
            return clamp(segmentCenter, protectedLeft + half, rightEdge - half);
        }
        if (largest == right) {
            float protectedRight = Math.min(rightEdge, sceneWidth - cornerGuard);
            return clamp(segmentCenter, leftEdge + half, protectedRight - half);
        }
        return clamp(segmentCenter, leftEdge + half, rightEdge - half);
    }

    private static ArrayList<float[]> merge(ArrayList<float[]> sorted) {
        ArrayList<float[]> result = new ArrayList<float[]>();
        for (float[] interval : sorted) {
            if (result.isEmpty()) {
                result.add(new float[] {interval[0], interval[1]});
                continue;
            }
            float[] last = result.get(result.size() - 1);
            if (interval[0] <= last[1]) {
                last[1] = Math.max(last[1], interval[1]);
            } else {
                result.add(new float[] {interval[0], interval[1]});
            }
        }
        return result;
    }

    private static ArrayList<float[]> safeSegments(float contentLeft, float contentRight,
            ArrayList<float[]> blocked) {
        ArrayList<float[]> safe = new ArrayList<float[]>();
        float start = contentLeft;
        for (float[] interval : blocked) {
            float intervalLeft = Math.max(contentLeft, interval[0]);
            float intervalRight = Math.min(contentRight, interval[1]);
            if (intervalRight <= contentLeft || intervalLeft >= contentRight) {
                continue;
            }
            if (intervalLeft > start) {
                safe.add(new float[] {start, intervalLeft});
            }
            start = Math.max(start, intervalRight);
        }
        if (start < contentRight) {
            safe.add(new float[] {start, contentRight});
        }
        return safe;
    }

    private static boolean intersectsAny(float left, float right, ArrayList<float[]> blocked) {
        for (float[] interval : blocked) {
            if (left < interval[1] && right > interval[0]) {
                return true;
            }
        }
        return false;
    }

    private static boolean fits(float[] segment, float titleWidth) {
        return width(segment) >= titleWidth;
    }

    private static float width(float[] segment) {
        return segment[1] - segment[0];
    }

    private static float clamp(float value, float min, float max) {
        return Math.max(min, Math.min(max, value));
    }

    private static void scheduleBindingApply(final Binding binding) {
        Activity activity = binding.activity == null ? null : binding.activity.get();
        if (activity == null || binding.titleNode == null || binding.titleNode.get() == null) {
            return;
        }
        View decor = activity.getWindow() == null ? null : activity.getWindow().getDecorView();
        final float center = resolveCenter(decor, binding.sceneWidth, binding.titleWidth,
                binding.titleHeight);
        if (Math.abs(center - binding.lastCenter) < 0.5f) {
            return;
        }
        binding.lastCenter = center;
        GLSurfaceView surface = findGlSurfaceView(decor);
        if (surface == null) {
            Log.w(TAG, "Unable to refresh edit header: GLSurfaceView not found");
            return;
        }
        surface.queueEvent(new Runnable() {
            @Override
            public void run() {
                applyNodeTranslate(binding, center);
            }
        });
    }

    private static void applyNodeTranslate(Binding binding, float center) {
        Object node = binding.titleNode == null ? null : binding.titleNode.get();
        if (node == null) {
            return;
        }
        try {
            Method setTranslate = node.getClass().getMethod("setTranslate",
                    Float.TYPE, Float.TYPE, Float.TYPE);
            setTranslate.invoke(node, center - binding.sceneWidth * 0.5f, 0f, 0f);
            Method update = node.getClass().getMethod("updateGeometricState");
            update.invoke(node);
            View decor = binding.decor.get();
            logGeometry(decor, binding.sceneWidth, binding.titleWidth, binding.titleHeight, center);
        } catch (Throwable error) {
            Log.w(TAG, "Unable to refresh edit header geometry", error);
        }
    }

    private static GLSurfaceView findGlSurfaceView(View view) {
        if (view instanceof GLSurfaceView) {
            return (GLSurfaceView) view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup group = (ViewGroup) view;
        for (int i = 0; i < group.getChildCount(); i++) {
            GLSurfaceView result = findGlSurfaceView(group.getChildAt(i));
            if (result != null) {
                return result;
            }
        }
        return null;
    }

    private static void logGeometry(View decor, float sceneWidth, float titleWidth,
            float titleHeight, float center) {
        String cutoutText = "none";
        if (Build.VERSION.SDK_INT >= 28 && decor != null) {
            WindowInsets insets = decor.getRootWindowInsets();
            DisplayCutout cutout = insets == null ? null : insets.getDisplayCutout();
            if (cutout != null) {
                cutoutText = String.valueOf(cutout.getBoundingRects()) + " safe=["
                        + cutout.getSafeInsetLeft() + "," + cutout.getSafeInsetTop() + ","
                        + cutout.getSafeInsetRight() + "," + cutout.getSafeInsetBottom() + "]";
            }
        }
        Log.i(TAG, "sceneWidth=" + sceneWidth + " title=" + titleWidth + "x"
                + titleHeight + " center=" + center + " cutouts=" + cutoutText);
    }

    private static final class Binding implements View.OnLayoutChangeListener {
        final WeakReference<View> decor;
        WeakReference<Activity> activity;
        WeakReference<Object> titleNode;
        float sceneWidth;
        float titleWidth;
        float titleHeight;
        float lastCenter = Float.NaN;

        Binding(View view) {
            decor = new WeakReference<View>(view);
        }

        @Override
        public void onLayoutChange(View view, int left, int top, int right, int bottom,
                int oldLeft, int oldTop, int oldRight, int oldBottom) {
            scheduleBindingApply(this);
        }
    }
}
