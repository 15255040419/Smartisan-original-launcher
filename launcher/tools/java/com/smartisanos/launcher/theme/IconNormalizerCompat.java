package com.smartisanos.launcher.theme;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/**
 * Narrow Launcher3 IconNormalizer port for DEFAULT desktop artwork only.
 *
 * <p>This class intentionally calculates only the standard visible-alpha convex-hull scale. It
 * never wraps legacy icons, changes an AdaptiveIconDrawable mask, crops source pixels, or applies
 * package, shape, device, or fill-ratio rules of its own.</p>
 */
final class IconNormalizerCompat {
    private static final int MIN_VISIBLE_ALPHA = 40;
    private static final float MAX_SQUARE_AREA_FACTOR = 375.0f / 576.0f;
    private static final float MAX_CIRCLE_AREA_FACTOR = 380.0f / 576.0f;
    private static final float CIRCLE_AREA_BY_RECT = (float) Math.PI / 4.0f;
    private static final float LINEAR_SCALE_SLOPE =
            (MAX_CIRCLE_AREA_FACTOR - MAX_SQUARE_AREA_FACTOR)
                    / (1.0f - CIRCLE_AREA_BY_RECT);

    static final class Result {
        static final Result IDENTITY = new Result(1.0f, 0.5f, 0.5f);

        final float scale;
        final float visibleCenterX;
        final float visibleCenterY;

        Result(float scale, float visibleCenterX, float visibleCenterY) {
            this.scale = scale;
            this.visibleCenterX = visibleCenterX;
            this.visibleCenterY = visibleCenterY;
        }
    }

    private IconNormalizerCompat() {
    }

    static Result getScale(Drawable drawable, int maxSize) {
        if (drawable == null || maxSize <= 0) return Result.IDENTITY;
        int width = drawable.getIntrinsicWidth();
        int height = drawable.getIntrinsicHeight();
        if (width <= 0 || height <= 0) return Result.IDENTITY;
        int largest = Math.max(width, height);
        if (largest > maxSize) {
            width = Math.max(1, maxSize * width / largest);
            height = Math.max(1, maxSize * height / largest);
        }

        Bitmap alpha = Bitmap.createBitmap(width, height, Bitmap.Config.ALPHA_8);
        Canvas canvas = new Canvas(alpha);
        Rect oldBounds = new Rect(drawable.getBounds());
        try {
            drawable.setBounds(0, 0, width, height);
            drawable.draw(canvas);
        } finally {
            drawable.setBounds(oldBounds);
        }

        int[] pixels = new int[width * height];
        Bitmap argb = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas argbCanvas = new Canvas(argb);
        argbCanvas.drawColor(Color.TRANSPARENT);
        argbCanvas.drawBitmap(alpha, 0, 0, null);
        argb.getPixels(pixels, 0, width, 0, 0, width, height);
        alpha.recycle();
        argb.recycle();

        float[] leftBorder = new float[height];
        float[] rightBorder = new float[height];
        int top = -1;
        int bottom = -1;
        int left = width;
        int right = -1;
        for (int y = 0; y < height; y++) {
            int first = -1;
            int last = -1;
            int row = y * width;
            for (int x = 0; x < width; x++) {
                if (Color.alpha(pixels[row + x]) > MIN_VISIBLE_ALPHA) {
                    if (first == -1) first = x;
                    last = x;
                }
            }
            leftBorder[y] = first;
            rightBorder[y] = last;
            if (first != -1) {
                if (top == -1) top = y;
                bottom = y;
                left = Math.min(left, first);
                right = Math.max(right, last);
            }
        }
        if (top == -1 || right == -1) return Result.IDENTITY;

        convertToConvexArray(leftBorder, 1, top, bottom);
        convertToConvexArray(rightBorder, -1, top, bottom);
        float area = 0.0f;
        for (int y = top; y <= bottom; y++) {
            if (leftBorder[y] >= 0) area += rightBorder[y] - leftBorder[y] + 1.0f;
        }
        float rectArea = (bottom + 1 - top) * (right + 1 - left);
        if (area <= 0.0f || rectArea <= 0.0f) return Result.IDENTITY;
        float hullByRect = area / rectArea;
        float targetArea = hullByRect < CIRCLE_AREA_BY_RECT
                ? MAX_CIRCLE_AREA_FACTOR
                : MAX_SQUARE_AREA_FACTOR + LINEAR_SCALE_SLOPE * (1.0f - hullByRect);
        float areaScale = area / (width * (float) height);
        float scale = areaScale > targetArea ? (float) Math.sqrt(targetArea / areaScale) : 1.0f;
        return new Result(scale, (left + right + 1.0f) / (2.0f * width),
                (top + bottom + 1.0f) / (2.0f * height));
    }

    /** Direct port of Launcher3 IconNormalizer.convertToConvexArray. */
    private static void convertToConvexArray(float[] coordinates, int direction, int top,
            int bottom) {
        float[] angles = new float[Math.max(0, coordinates.length - 1)];
        int first = top;
        int last = -1;
        float lastAngle = Float.MAX_VALUE;
        for (int i = top + 1; i <= bottom; i++) {
            if (coordinates[i] <= -1) continue;
            int start;
            if (lastAngle == Float.MAX_VALUE) {
                start = first;
            } else {
                float currentAngle = (coordinates[i] - coordinates[last]) / (i - last);
                start = last;
                if ((currentAngle - lastAngle) * direction < 0) {
                    while (start > first) {
                        start--;
                        currentAngle = (coordinates[i] - coordinates[start]) / (i - start);
                        if ((currentAngle - angles[start]) * direction >= 0) break;
                    }
                }
            }
            lastAngle = (coordinates[i] - coordinates[start]) / (i - start);
            for (int j = start; j < i; j++) {
                angles[j] = lastAngle;
                coordinates[j] = coordinates[start] + lastAngle * (j - start);
            }
            last = i;
        }
    }
}
