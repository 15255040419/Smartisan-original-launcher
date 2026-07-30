package com.smartisanos.launcher.data;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * Read-only internal geometry for the real opened-folder scene.
 *
 * <p>The original resource geometry stays authoritative. These calculations
 * only derive three independent visible gaps and keep the icon plus label as
 * one centered shelf-content group. No LayoutProperty or Constants field is
 * written.</p>
 */
public final class FolderVisualGeometry {
    private static final float BASE_BOOKCASE_WIDTH = 1080.0f;
    private static final float BASE_ROW_GAP = 358.0f;
    private static final float BASE_APP_LABEL_GAP = 20.0f;
    private static final float BASE_ICON_VISIBLE_BOTTOM_INSET = 22.0f;
    private static final float BASE_TITLE_GAP = 300.0f;
    private static final float BASE_INDICATOR_GAP = 44.0f;

    // Visible bounds of the original 1080 x 1356 folder_open_3_3.png.
    private static final float VISIBLE_TOP_RATIO = 129.0f / 1356.0f;
    // The last solid frame row is y=1224. Rows below it are only the long
    // translucent drop shadow and must not define the pagination gap.
    private static final float VISIBLE_BOTTOM_INSET_RATIO = 132.0f / 1356.0f;

    private FolderVisualGeometry() {
    }

    public static float resolveLabelCenterY(Object layoutProperty, float originalY) {
        if (!isFolderLayoutProperty(layoutProperty)) {
            return originalY;
        }
        final float iconHeight = positive(number(layoutProperty,
                "icon_size_with_shadow"), 0.0f);
        final float labelHeight = positive(number(layoutProperty,
                "text_font_size"), 0.0f);
        if (iconHeight <= 0.0f || labelHeight <= 0.0f) {
            return originalY;
        }
        return calculateLabelCenterY(iconHeight, labelHeight,
                scaleFor(layoutProperty));
    }

    public static float rowGap(Object layoutProperty) {
        if (!isFolderLayoutProperty(layoutProperty)) {
            return BASE_ROW_GAP;
        }
        return BASE_ROW_GAP * scaleFor(layoutProperty);
    }

    public static float contentGroupCenterCorrectionY(Object layoutProperty) {
        if (!isFolderLayoutProperty(layoutProperty)) {
            return 0.0f;
        }
        final float iconHeight = positive(number(layoutProperty,
                "icon_size_with_shadow"), 0.0f);
        final float labelHeight = positive(number(layoutProperty,
                "text_font_size"), 0.0f);
        if (iconHeight <= 0.0f || labelHeight <= 0.0f) {
            return 0.0f;
        }
        final float labelCenterY = calculateLabelCenterY(iconHeight, labelHeight,
                scaleFor(layoutProperty));
        final float contentGroupTop = iconHeight * 0.5f;
        final float contentGroupBottom = labelCenterY - labelHeight * 0.5f;
        final float contentGroupCenterY =
                (contentGroupTop + contentGroupBottom) * 0.5f;
        return -contentGroupCenterY;
    }

    public static float resolveTitleScreenY(Object layoutProperty, float originalY) {
        if (!isFolderLayoutProperty(layoutProperty)) {
            return originalY;
        }
        final float height = positive(number(layoutProperty,
                "folder_bookcase_height"), 0.0f);
        if (height <= 0.0f) {
            return originalY;
        }
        final float visibleTop = bookcaseCenterScreenY()
                - height * 0.5f
                + height * VISIBLE_TOP_RATIO;
        return visibleTop - BASE_TITLE_GAP * scaleFor(layoutProperty);
    }

    public static float resolveIndicatorScreenY(Object layoutProperty,
            float originalY) {
        if (!isFolderLayoutProperty(layoutProperty)) {
            return originalY;
        }
        final float height = positive(number(layoutProperty,
                "folder_bookcase_height"), 0.0f);
        if (height <= 0.0f) {
            return originalY;
        }
        final float visibleBottom = bookcaseCenterScreenY()
                + height * 0.5f
                - height * VISIBLE_BOTTOM_INSET_RATIO;
        return visibleBottom + BASE_INDICATOR_GAP * scaleFor(layoutProperty);
    }

    public static float bookcaseCenterScreenY() {
        final int height = staticIntField("window_height");
        if (height <= 0) {
            return 0.0f;
        }
        return height * 0.5f - folderPageWorldCenterY();
    }

    static float calculateLabelCenterY(float iconHeight, float labelHeight,
            float geometryScale) {
        final float appLabelGap = BASE_APP_LABEL_GAP * geometryScale;
        final float iconVisibleBottom = iconHeight * 0.5f
                - BASE_ICON_VISIBLE_BOTTOM_INSET * geometryScale;
        return -(iconVisibleBottom + appLabelGap + labelHeight * 0.5f);
    }

    static float calculateTitleScreenY(float bookcaseCenterY,
            float bookcaseHeight, float geometryScale) {
        final float visibleTop = bookcaseCenterY
                - bookcaseHeight * 0.5f
                + bookcaseHeight * VISIBLE_TOP_RATIO;
        return visibleTop - BASE_TITLE_GAP * geometryScale;
    }

    static float calculateIndicatorScreenY(float bookcaseCenterY,
            float bookcaseHeight, float geometryScale) {
        final float visibleBottom = bookcaseCenterY
                + bookcaseHeight * 0.5f
                - bookcaseHeight * VISIBLE_BOTTOM_INSET_RATIO;
        return visibleBottom + BASE_INDICATOR_GAP * geometryScale;
    }

    private static float scaleFor(Object layoutProperty) {
        final float width = positive(number(layoutProperty,
                "folder_bookcase_width"), BASE_BOOKCASE_WIDTH);
        return width / BASE_BOOKCASE_WIDTH;
    }

    public static boolean isFolderLayoutProperty(Object layoutProperty) {
        if (layoutProperty == null) {
            return false;
        }
        try {
            final Class<?> constants = Class.forName(
                    "com.smartisanos.launcher.data.Constants");
            final Method folderModeMethod = constants.getMethod(
                    "getPAGE_1_3X3_MODE_FOLDER");
            final int folderMode =
                    ((Number) folderModeMethod.invoke(null)).intValue();
            final Method modeMethod = constants.getMethod("mode", int.class);
            return modeMethod.invoke(null, folderMode) == layoutProperty;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static float folderPageWorldCenterY() {
        try {
            final Class<?> constants = Class.forName(
                    "com.smartisanos.launcher.data.Constants");
            if (!constants.getField("ENABLE_LARGE_SCREEN_MODE").getBoolean(null)) {
                return 0.0f;
            }
            final Method folderModeMethod = constants.getMethod(
                    "getPAGE_1_3X3_MODE_FOLDER");
            final int folderMode =
                    ((Number) folderModeMethod.invoke(null)).intValue();
            final Object modes = constants.getField(
                    "pageWorldCenterPointsInWindow").get(null);
            final Object pages = Array.get(modes, folderMode);
            final Object point = Array.get(pages, 0);
            return number(point, "y");
        } catch (Throwable ignored) {
            return 0.0f;
        }
    }

    private static float number(Object target, String fieldName) {
        if (target == null) {
            return 0.0f;
        }
        try {
            final Field field = target.getClass().getField(fieldName);
            final Object value = field.get(target);
            return value instanceof Number
                    ? ((Number) value).floatValue() : 0.0f;
        } catch (Throwable ignored) {
            return 0.0f;
        }
    }

    private static int staticIntField(String fieldName) {
        try {
            final Class<?> constants = Class.forName(
                    "com.smartisanos.launcher.data.Constants");
            return constants.getField(fieldName).getInt(null);
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static float positive(float value, float fallback) {
        return value > 0.0f ? value : fallback;
    }
}
