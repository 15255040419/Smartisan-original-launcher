package com.smartisanos.launcher.theme;

import android.graphics.Bitmap;

/** AOSP Launcher3-style continuous alpha-hull normalizer for static applications. */
public final class SmartisanIconNormalizer {
    public static final String VERSION = "optical:v4-smartisan-full-canvas-area";
    public static final int ALPHA_THRESHOLD = 40;
    public static final int EDGE_GUARD_PX = 1;

    private static final float CIRCLE_AREA_BY_RECT = (float) (Math.PI / 4.0);
    /*
     * Smartisan's original 1080 3x3 optical reference was 166 inside a 192
     * artwork box. It is used here only as one dimensionless area target for
     * every shape/source, never as the retired per-icon origin_resize tier.
     */
    private static final float SMARTISAN_SQUARE_AREA_FACTOR = (166f * 166f) / (192f * 192f);
    /* Preserve Launcher3's small circle-vs-square area delta, not its smaller canvas target. */
    private static final float CIRCLE_SQUARE_AREA_DELTA = (380f - 375f) / 576f;
    private static final float SMARTISAN_CIRCLE_AREA_FACTOR =
            SMARTISAN_SQUARE_AREA_FACTOR + CIRCLE_SQUARE_AREA_DELTA;
    private static final float LINEAR_SCALE_SLOPE =
            (SMARTISAN_CIRCLE_AREA_FACTOR - SMARTISAN_SQUARE_AREA_FACTOR)
                    / (1f - CIRCLE_AREA_BY_RECT);

    public static final class Result {
        public final int left;
        public final int top;
        public final int right;
        public final int bottom;
        public final float centerX;
        public final float centerY;
        public final float scale;
        public final float hullArea;
        public final float boundsArea;
        public final float fillRatio;

        private Result(int left, int top, int right, int bottom, float scale,
                float hullArea, float boundsArea, float fillRatio) {
            this.left = left;
            this.top = top;
            this.right = right;
            this.bottom = bottom;
            this.centerX = (left + right + 1) * 0.5f;
            this.centerY = (top + bottom + 1) * 0.5f;
            this.scale = scale;
            this.hullArea = hullArea;
            this.boundsArea = boundsArea;
            this.fillRatio = fillRatio;
        }

        public int width() { return right - left + 1; }
        public int height() { return bottom - top + 1; }
    }

    private SmartisanIconNormalizer() { }

    public static Result analyze(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()
                || bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0) return null;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        float[] leftBorder = new float[height];
        float[] rightBorder = new float[height];
        java.util.Arrays.fill(leftBorder, -1f);
        java.util.Arrays.fill(rightBorder, -1f);
        int[] row = new int[width];
        int top = -1;
        int bottom = -1;
        int left = width;
        int right = -1;
        try {
            for (int y = 0; y < height; y++) {
                bitmap.getPixels(row, 0, width, 0, y, width, 1);
                int rowLeft = -1;
                int rowRight = -1;
                for (int x = 0; x < width; x++) {
                    if ((row[x] >>> 24) < ALPHA_THRESHOLD) continue;
                    if (rowLeft < 0) rowLeft = x;
                    rowRight = x;
                }
                if (rowLeft < 0) continue;
                leftBorder[y] = rowLeft;
                rightBorder[y] = rowRight;
                if (top < 0) top = y;
                bottom = y;
                left = Math.min(left, rowLeft);
                right = Math.max(right, rowRight);
            }
        } catch (Throwable ignored) {
            return null;
        }
        if (top < 0 || right < left || bottom < top) return null;

        convertToConvexArray(leftBorder, 1, top, bottom);
        convertToConvexArray(rightBorder, -1, top, bottom);
        float hullArea = 0f;
        for (int y = top; y <= bottom; y++) {
            if (leftBorder[y] >= 0f && rightBorder[y] >= leftBorder[y]) {
                hullArea += rightBorder[y] - leftBorder[y] + 1f;
            }
        }
        float boundsArea = (right - left + 1f) * (bottom - top + 1f);
        if (!(hullArea > 0f) || !(boundsArea > 0f)) return null;
        float fillRatio = Math.min(1f, hullArea / boundsArea);
        float targetArea = fillRatio < CIRCLE_AREA_BY_RECT
                ? SMARTISAN_CIRCLE_AREA_FACTOR
                : SMARTISAN_SQUARE_AREA_FACTOR
                        + LINEAR_SCALE_SLOPE * (1f - fillRatio);
        /*
         * Launcher3 compares the convex-hull area with the complete source
         * canvas.  Comparing it only with the alpha bounds, as v2 did, loses
         * the intentional transparent margin and turns 166/192 into an extra
         * global 0.865 long-side shrink after the bounds have already been
         * fitted.  That made Smartisan's Gallery, Wallet and Video artwork a
         * full visual tier smaller than the original icons.
         */
        float fullArea = width * (float) height;
        float visibleArea = hullArea / Math.max(1f, fullArea);
        /*
         * Unlike Launcher3's adaptive-icon pipeline, these Smartisan RAW files
         * can contain their own transparent authoring margin.  Returning 1 for
         * every under-filled canvas leaves shapes such as the wide cloud one
         * complete visual tier smaller.  Use the same continuous area formula
         * in both directions; StaticApplicationComposer remains responsible
         * for the single, geometry-only edge fit clamp.
         */
        float scale = (float) Math.sqrt(targetArea / Math.max(visibleArea, 0.0001f));
        if (!(scale > 0f) || Float.isNaN(scale) || Float.isInfinite(scale)) return null;
        return new Result(left, top, right, bottom, scale, hullArea, boundsArea, fillRatio);
    }

    private static void convertToConvexArray(float[] border, int direction, int top, int bottom) {
        float[] angles = new float[border.length - 1];
        int first = top;
        int last = -1;
        float lastAngle = Float.MAX_VALUE;
        for (int i = top + 1; i <= bottom; i++) {
            if (border[i] <= -1f) continue;
            int start;
            if (lastAngle == Float.MAX_VALUE) {
                start = first;
            } else {
                float currentAngle = (border[i] - border[last]) / (i - last);
                start = last;
                if ((currentAngle - lastAngle) * direction < 0f) {
                    while (start > first) {
                        start--;
                        currentAngle = (border[i] - border[start]) / (i - start);
                        if ((currentAngle - angles[start]) * direction >= 0f) break;
                    }
                }
            }
            lastAngle = (border[i] - border[start]) / (i - start);
            for (int j = start; j < i; j++) {
                angles[j] = lastAngle;
                border[j] = border[start] + lastAngle * (j - start);
            }
            last = i;
        }
    }
}
