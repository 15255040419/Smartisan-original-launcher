package com.smartisanos.launcher.data;

import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * Read-only safe-area mapping for the complete original opened-folder scene.
 *
 * <p>This class never rewrites LayoutProperty or Constants. It preserves all
 * internal folder geometry and only returns one uniform root transform plus a
 * screen-space clipping rectangle.</p>
 */
public final class FolderSceneMetrics {
    private static final String FOLDER_PAGE_CLASS =
            "com.smartisanos.launcher.view.b.t";
    private static final float EPSILON = 0.0001f;

    private FolderSceneMetrics() {
    }

    public static Result resolve(Object page, int currentMode, Object layoutProperty) {
        final int folderMode = staticIntMethod("getPAGE_1_3X3_MODE_FOLDER");
        if (page == null
                || !FOLDER_PAGE_CLASS.equals(page.getClass().getName())
                || currentMode != folderMode
                || layoutProperty == null) {
            return Result.identity(0, 0);
        }

        final int width = staticIntField("window_width");
        final int height = staticIntField("window_height");
        if (width <= 0 || height <= 0) {
            return Result.identity(Math.max(0, width), Math.max(0, height));
        }

        final int topInset = clamp(staticIntField("status_bar_height"), 0, height);
        final int bottomInset = clamp(staticIntField("navigation_bar_height"),
                0, Math.max(0, height - topInset));
        final float frameWidth = positive(number(layoutProperty,
                "folder_bookcase_width"), width);
        final float frameHeight = positive(number(layoutProperty,
                "folder_bookcase_height"), height);
        final float titleCenterY = FolderVisualGeometry.resolveTitleScreenY(
                layoutProperty, number(layoutProperty,
                        "folder_title_location_y"));
        final float titleFontSize = positive(number(layoutProperty,
                "folder_text_font_size"), 0.0f);
        // folder_title_font_max_height is a 900 px texture-cache ceiling, not
        // the visible one-line title height. The original Mc node adds one font
        // size of padding above and below the rendered line.
        final float titleHeight = titleFontSize * 3.0f;
        final float titleWidth = positive(number(layoutProperty,
                "folder_title_font_max_width"), 0.0f);
        final float indicatorCenterY =
                FolderVisualGeometry.resolveIndicatorScreenY(
                        layoutProperty, number(layoutProperty,
                                "folder_dot_view_location_y"));
        final float indicatorHeight = positive(number(layoutProperty,
                "dot_height"), 0.0f);

        final float frameLeft = (width - frameWidth) * 0.5f;
        final float frameTop =
                FolderVisualGeometry.bookcaseCenterScreenY() - frameHeight * 0.5f;
        float visualLeft = frameLeft;
        float visualTop = frameTop;
        float visualRight = frameLeft + frameWidth;
        float visualBottom = frameTop + frameHeight;

        if (titleCenterY > 0.0f && titleHeight > 0.0f) {
            visualTop = Math.min(visualTop, titleCenterY - titleHeight * 0.5f);
            visualBottom = Math.max(visualBottom, titleCenterY + titleHeight * 0.5f);
            if (titleWidth > 0.0f) {
                visualLeft = Math.min(visualLeft, (width - titleWidth) * 0.5f);
                visualRight = Math.max(visualRight, (width + titleWidth) * 0.5f);
            }
        }
        if (indicatorCenterY > 0.0f && indicatorHeight > 0.0f) {
            visualTop = Math.min(visualTop, indicatorCenterY - indicatorHeight * 0.5f);
            visualBottom = Math.max(visualBottom,
                    indicatorCenterY + indicatorHeight * 0.5f);
        }

        return calculate(width, height, topInset, bottomInset,
                visualLeft, visualTop, visualRight, visualBottom);
    }

    public static Result calculate(int width, int height, int topInset, int bottomInset,
            float visualLeft, float visualTop, float visualRight, float visualBottom) {
        final int safeLeft = 0;
        final int safeTop = clamp(topInset, 0, Math.max(0, height));
        final int safeRight = Math.max(0, width);
        final int safeBottom = Math.max(safeTop,
                height - clamp(bottomInset, 0, Math.max(0, height - safeTop)));
        final SafeClipRect clip = new SafeClipRect(
                safeLeft, safeTop, safeRight, safeBottom);

        final float visualWidth = visualRight - visualLeft;
        final float visualHeight = visualBottom - visualTop;
        if (width <= 0 || height <= 0 || visualWidth <= 0.0f || visualHeight <= 0.0f) {
            return new Result(1.0f, 0.0f, 0.0f, clip);
        }
        if (visualLeft >= safeLeft - EPSILON
                && visualTop >= safeTop - EPSILON
                && visualRight <= safeRight + EPSILON
                && visualBottom <= safeBottom + EPSILON) {
            return new Result(1.0f, 0.0f, 0.0f, clip);
        }

        final float safeWidth = safeRight - safeLeft;
        final float safeHeight = safeBottom - safeTop;
        final float scale = Math.min(1.0f,
                Math.min(safeWidth / visualWidth, safeHeight / visualHeight));
        final float centerX = width * 0.5f;
        final float centerY = height * 0.5f;
        final float scaledLeft = centerX + (visualLeft - centerX) * scale;
        final float scaledRight = centerX + (visualRight - centerX) * scale;
        final float scaledTop = centerY + (visualTop - centerY) * scale;
        final float scaledBottom = centerY + (visualBottom - centerY) * scale;

        float physicalTranslateX = 0.0f;
        if (scaledLeft < safeLeft) {
            physicalTranslateX = safeLeft - scaledLeft;
        } else if (scaledRight > safeRight) {
            physicalTranslateX = safeRight - scaledRight;
        }
        float physicalTranslateY = 0.0f;
        if (scaledTop < safeTop) {
            physicalTranslateY = safeTop - scaledTop;
        } else if (scaledBottom > safeBottom) {
            physicalTranslateY = safeBottom - scaledBottom;
        }

        // SMEngine's local Y axis points upward, opposite screen-space Y.
        return new Result(scale, physicalTranslateX, -physicalTranslateY, clip);
    }

    private static float number(Object target, String fieldName) {
        try {
            Field field = target.getClass().getField(fieldName);
            Object value = field.get(target);
            return value instanceof Number ? ((Number) value).floatValue() : 0.0f;
        } catch (Throwable ignored) {
            return 0.0f;
        }
    }

    private static int staticIntField(String fieldName) {
        try {
            Class<?> constants = Class.forName(
                    "com.smartisanos.launcher.data.Constants");
            return constants.getField(fieldName).getInt(null);
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static int staticIntMethod(String methodName) {
        try {
            Class<?> constants = Class.forName(
                    "com.smartisanos.launcher.data.Constants");
            Method method = constants.getMethod(methodName);
            return ((Number) method.invoke(null)).intValue();
        } catch (Throwable ignored) {
            return Integer.MIN_VALUE;
        }
    }

    private static float positive(float value, float fallback) {
        return value > 0.0f ? value : fallback;
    }

    private static int clamp(int value, int minimum, int maximum) {
        return Math.max(minimum, Math.min(value, maximum));
    }

    public static final class Result {
        private final float uniformScale;
        private final float translateX;
        private final float translateY;
        private final SafeClipRect safeClipRect;

        private Result(float uniformScale, float translateX, float translateY,
                SafeClipRect safeClipRect) {
            this.uniformScale = uniformScale;
            this.translateX = translateX;
            this.translateY = translateY;
            this.safeClipRect = safeClipRect;
        }

        private static Result identity(int width, int height) {
            return new Result(1.0f, 0.0f, 0.0f,
                    new SafeClipRect(0, 0, Math.max(0, width), Math.max(0, height)));
        }

        public float getUniformScale() {
            return uniformScale;
        }

        public float getTranslateX() {
            return translateX;
        }

        public float getTranslateY() {
            return translateY;
        }

        public SafeClipRect getSafeClipRect() {
            return safeClipRect;
        }

        public boolean isIdentity() {
            return Math.abs(uniformScale - 1.0f) < EPSILON
                    && Math.abs(translateX) < EPSILON
                    && Math.abs(translateY) < EPSILON;
        }
    }

    public static final class SafeClipRect {
        private final int left;
        private final int top;
        private final int right;
        private final int bottom;

        private SafeClipRect(int left, int top, int right, int bottom) {
            this.left = left;
            this.top = top;
            this.right = right;
            this.bottom = bottom;
        }

        public int getLeft() {
            return left;
        }

        public int getTop() {
            return top;
        }

        public int getRight() {
            return right;
        }

        public int getBottom() {
            return bottom;
        }

        @Override
        public String toString() {
            return left + "," + top + "-" + right + "," + bottom;
        }
    }
}
