package com.smartisanos.launcher.data;

import android.util.Log;

import java.lang.reflect.Field;

public final class LayoutPropertyAdapter {
    private static final String TAG = "LayoutPropertyAdapter";
    private static final float BASE_WIDTH = 1080.0f;
    private static final float BASE_HEIGHT = 1920.0f;
    // The bookcase texture includes transparent side margins. A full-screen-width
    // node produces the original launcher's roughly 84%-wide visible frame.
    private static final float FOLDER_WIDTH_RATIO = 1.0f;
    // The PNG's visible shelf centers are 358 px apart inside a 1356 px node.
    private static final float FOLDER_VISIBLE_ROW_RATIO = 358.0f / 1356.0f;
    private static final float FOLDER_ICON_TO_VISIBLE_ROW_RATIO = 0.48f;
    private static final float FOLDER_TEXT_TO_VISIBLE_ROW_RATIO = 0.092f;
    private static final float FOLDER_NAME_OFFSET_TO_VISIBLE_ROW_RATIO = 0.29f;
    // Measured from the visible shelf interiors of the 246px (MODE_12) and
    // 178px (MODE_20) closed-folder textures. Both texture sets share these
    // normalized centers, so the same geometry works at every screen scale.
    private static final float FOLDER_PREVIEW_ICON_RATIO_2X2 = 0.27f;
    private static final float FOLDER_PREVIEW_ICON_RATIO_3X3 = 0.17f;
    private static final float FOLDER_PREVIEW_FIRST_COLUMN_2X2 = 0.356f;
    private static final float FOLDER_PREVIEW_COLUMN_PITCH_2X2 = 0.288f;
    private static final float FOLDER_PREVIEW_FIRST_ROW_2X2 = 0.280f;
    private static final float FOLDER_PREVIEW_ROW_PITCH_2X2 = 0.366f;
    private static final float FOLDER_PREVIEW_FIRST_COLUMN_3X3 = 0.308f;
    private static final float FOLDER_PREVIEW_COLUMN_PITCH_3X3 = 0.192f;
    private static final float FOLDER_PREVIEW_FIRST_ROW_3X3 = 0.220f;
    private static final float FOLDER_PREVIEW_ROW_PITCH_3X3 = 0.244f;
    private static final float EPSILON = 0.01f;

    private LayoutPropertyAdapter() {
    }

    public static void adapt(Object property, String suffix) {
        if (property == null) {
            return;
        }

        int width = staticInt("com.smartisanos.launcher.data.Constants", "window_width");
        int height = staticInt("com.smartisanos.launcher.data.Constants", "window_height");
        if (width <= 0 || height <= 0) {
            return;
        }

        float resourceBaseWidth = resourceBaseWidth(property, suffix);
        float resourceBaseHeight = resourceBaseWidth * (BASE_HEIGHT / BASE_WIDTH);
        float scaleX = width / resourceBaseWidth;
        float scaleY = height / resourceBaseHeight;
        float scale = Math.min(1.0f, Math.min(scaleX, scaleY));
        if (Math.abs(scale - 1.0f) < EPSILON
                && Math.abs(scaleX - 1.0f) < EPSILON
                && Math.abs(scaleY - 1.0f) < EPSILON) {
            return;
        }

        try {
            Field[] fields = property.getClass().getFields();
            for (Field field : fields) {
                String name = field.getName();
                Class<?> type = field.getType();
                if (type == Float.TYPE) {
                    float factor = factorFor(name, suffix, scaleX, scaleY, scale);
                    if (factor != 1.0f) {
                        field.setFloat(property, field.getFloat(property) * factor);
                    }
                } else if (type == Integer.TYPE && shouldScaleInt(name)) {
                    float factor = factorFor(name, suffix, scaleX, scaleY, scale);
                    if (factor != 1.0f) {
                        int value = field.getInt(property);
                        field.setInt(property, Math.round(value * factor));
                    }
                }
            }
            normalizeFolderLayout(property, suffix, width);
            Log.i(TAG, "adapt suffix=" + suffix
                    + ", screen=" + width + "x" + height
                    + ", resourceBase=" + resourceBaseWidth + "x" + resourceBaseHeight
                    + ", scaleX=" + scaleX + ", scaleY=" + scaleY);
        } catch (Throwable t) {
            Log.w(TAG, "layout adaptation skipped", t);
        }
    }

    public static void scaleFolderPreviewForIconSize(Object property, float factor) {
        if (property == null || factor <= 0f) {
            return;
        }
        String[] dimensions = {"_2_2", "_3_3"};
        String[] names = {
                "folder_preview_left_margin",
                "folder_preview_top_margin",
                "folder_preview_icon_side_length",
                "folder_preview_icon_horizontal_space",
                "folder_preview_icon_vertical_space"
        };
        for (String dimension : dimensions) {
            for (String name : names) {
                try {
                    scaleNumericField(property, name + dimension, factor);
                } catch (Throwable ignored) {
                }
            }
        }
        centerFolderPreview(property, 2, "_2_2");
        centerFolderPreview(property, 3, "_3_3");
        // Open-folder labels belong to the icon group as well. Keep their font
        // proportional when the user changes the global launcher icon size.
        if (numericField(property, "folder_bookcase_height") > 0f
                && numericField(property, "dock_height") <= EPSILON) {
            try {
                scaleNumericField(property, "text_font_size", factor);
            } catch (Throwable ignored) {
            }
        }
    }

    private static void centerFolderPreview(Object property, int gridSize, String suffix) {
        try {
            float container = numericField(property, "icon_size_with_shadow");
            if (container <= 0f) {
                return;
            }
            float sideRatio = gridSize == 2
                    ? FOLDER_PREVIEW_ICON_RATIO_2X2 : FOLDER_PREVIEW_ICON_RATIO_3X3;
            float side = container * sideRatio;
            float firstColumn = container * (gridSize == 2
                    ? FOLDER_PREVIEW_FIRST_COLUMN_2X2 : FOLDER_PREVIEW_FIRST_COLUMN_3X3);
            float columnPitch = container * (gridSize == 2
                    ? FOLDER_PREVIEW_COLUMN_PITCH_2X2 : FOLDER_PREVIEW_COLUMN_PITCH_3X3);
            float firstRow = container * (gridSize == 2
                    ? FOLDER_PREVIEW_FIRST_ROW_2X2 : FOLDER_PREVIEW_FIRST_ROW_3X3);
            float rowPitch = container * (gridSize == 2
                    ? FOLDER_PREVIEW_ROW_PITCH_2X2 : FOLDER_PREVIEW_ROW_PITCH_3X3);
            setNumericField(property, "folder_preview_icon_side_length" + suffix, side);
            setNumericField(property, "folder_preview_icon_horizontal_space" + suffix,
                    Math.max(0f, columnPitch - side));
            setNumericField(property, "folder_preview_icon_vertical_space" + suffix,
                    Math.max(0f, rowPitch - side));
            setNumericField(property, "folder_preview_left_margin" + suffix,
                    Math.max(0f, firstColumn - side * 0.5f));
            setNumericField(property, "folder_preview_top_margin" + suffix,
                    Math.max(0f, firstRow - side * 0.5f));
            // Drop animations are centered around the folder node, while the PNG's
            // visible shelves are slightly above its geometric center. Match the
            // animation target to the final viewport centers so release does not
            // land low and then jump upward when the preview texture is rebuilt.
            float visibleCenter = gridSize == 2
                    ? (FOLDER_PREVIEW_FIRST_ROW_2X2
                    + FOLDER_PREVIEW_FIRST_ROW_2X2
                    + FOLDER_PREVIEW_ROW_PITCH_2X2) * 0.5f
                    : FOLDER_PREVIEW_FIRST_ROW_3X3 + FOLDER_PREVIEW_ROW_PITCH_3X3;
            setNumericField(property, "folder_icon_center_offset" + suffix,
                    container * (0.5f - visibleCenter));
        } catch (Throwable ignored) {
        }
    }

    private static void normalizeFolderLayout(Object property, String suffix, int screenWidth)
            throws ReflectiveOperationException {
        if (!"_folder".equals(suffix) || screenWidth <= 0) {
            return;
        }
        float bookcaseWidth = numericField(property, "folder_bookcase_width");
        float bookcaseHeight = numericField(property, "folder_bookcase_height");
        if (bookcaseWidth <= 0 || bookcaseHeight <= 0) {
            return;
        }
        float targetWidth = screenWidth * FOLDER_WIDTH_RATIO;
        if (bookcaseWidth > targetWidth + EPSILON) {
            float frameFactor = targetWidth / bookcaseWidth;
            float targetHeight = bookcaseHeight * frameFactor;
            setNumericField(property, "folder_bookcase_width", targetWidth);
            setNumericField(property, "folder_bookcase_cover_width", targetWidth);
            setNumericField(property, "folder_bookcase_height", targetHeight);
            setNumericField(property, "folder_bookcase_cover_height", targetHeight);
            bookcaseHeight = targetHeight;
        }

        float iconSize = numericField(property, "icon_size_origin");
        float visibleRowHeight = bookcaseHeight * FOLDER_VISIBLE_ROW_RATIO;
        float targetIconSize = visibleRowHeight * FOLDER_ICON_TO_VISIBLE_ROW_RATIO;
        if (iconSize > 0f && Math.abs(iconSize - targetIconSize) > EPSILON) {
            float iconFactor = targetIconSize / iconSize;
            scaleNumericField(property, "icon_size_origin", iconFactor);
            scaleNumericField(property, "icon_size_with_shadow", iconFactor);
            scaleNumericField(property, "icon_size_origin_resize", iconFactor);
        }

        float textSize = numericField(property, "text_font_size");
        float targetTextSize = visibleRowHeight * FOLDER_TEXT_TO_VISIBLE_ROW_RATIO;
        if (textSize > 0f && Math.abs(textSize - targetTextSize) > EPSILON) {
            scaleNumericField(property, "text_font_size", targetTextSize / textSize);
        }

        float nameOffset = numericField(property, "name_off_set_y");
        float targetNameOffset = visibleRowHeight * FOLDER_NAME_OFFSET_TO_VISIBLE_ROW_RATIO;
        setNumericField(property, "name_off_set_y",
                nameOffset > 0f ? targetNameOffset : -targetNameOffset);
        Log.i(TAG, "folder content normalized: icon=" + targetIconSize
                + ", text=" + targetTextSize + ", row=" + visibleRowHeight);
    }

    private static float numericField(Object property, String fieldName) {
        try {
            Field field = property.getClass().getField(fieldName);
            if (field.getType() == Float.TYPE) {
                return field.getFloat(property);
            }
            if (field.getType() == Integer.TYPE) {
                return field.getInt(property);
            }
        } catch (Throwable ignored) {
        }
        return 0f;
    }

    private static void setNumericField(Object property, String fieldName, float value)
            throws ReflectiveOperationException {
        Field field = property.getClass().getField(fieldName);
        if (field.getType() == Float.TYPE) {
            field.setFloat(property, value);
        } else if (field.getType() == Integer.TYPE) {
            field.setInt(property, Math.round(value));
        }
    }

    private static void scaleNumericField(Object property, String fieldName, float factor)
            throws ReflectiveOperationException {
        setNumericField(property, fieldName, numericField(property, fieldName) * factor);
    }

    private static float resourceBaseWidth(Object property, String suffix) {
        // Open-folder resources use the bookcase/page coordinate system.  In the
        // xhdpi bundle that system is still 1080 wide even though dock_width is
        // 720, so using the dock as the base stretches all row positions by 1.5x.
        if ("_folder".equals(suffix)) {
            float folderWidth = numericField(property, "folder_bookcase_width");
            if (folderWidth > 0f) {
                return folderWidth;
            }
        }
        int width = intField(property, "dock_width");
        if (width <= 0) {
            width = intField(property, "page_title_width");
        }
        if (width <= 0) {
            width = intField(property, "page_title_shadow_width");
        }
        if (width <= 0) {
            return BASE_WIDTH;
        }
        return width;
    }

    private static int intField(Object property, String fieldName) {
        try {
            Field field = property.getClass().getField(fieldName);
            if (field.getType() == Integer.TYPE) {
                return field.getInt(property);
            }
        } catch (Throwable ignored) {
        }
        return 0;
    }

    private static int staticInt(String className, String fieldName) {
        try {
            Class<?> clazz = Class.forName(className);
            return clazz.getField(fieldName).getInt(null);
        } catch (Throwable t) {
            Log.w(TAG, "can't read " + className + "." + fieldName, t);
            return 0;
        }
    }

    private static boolean shouldScaleInt(String name) {
        if (name == null) {
            return false;
        }
        if ("page_cell_row_num".equals(name)
                || "page_cell_col_num".equals(name)
                || "dock_app_count".equals(name)) {
            return false;
        }
        return containsAny(name,
                "offset", "margin", "spacing", "location",
                "height", "width", "size", "length", "font", "space");
    }

    private static float factorFor(String name, String suffix, float scaleX, float scaleY, float scale) {
        if (name == null || name.length() == 0) {
            return 1.0f;
        }
        if (containsAny(name, "scale", "factor", "modulus", "angle")) {
            return 1.0f;
        }
        // The opened folder is one fixed-aspect scene designed from the screen width.
        // Its frame, grid, icon offsets and labels must all use the same scale or the
        // cells drift away from the shelves on tall displays.
        if ("_folder".equals(suffix)) {
            return scaleX;
        }
        if (name.startsWith("folder_preview_")) {
            return scale;
        }
        // Active icons are fixed-aspect artwork. Keep their background, digits,
        // weather glyphs and offsets in one uniform coordinate system instead
        // of stretching Y independently on tall displays.
        if (name.startsWith("weather_") || name.startsWith("calendar_")) {
            return name.contains("angle") || name.contains("angenle") ? 1.0f : scale;
        }
        if ("name_off_set_y".equals(name)
                || "icon_offset_y".equals(name)
                || "icon_offset_y_without_app_name".equals(name)) {
            return scaleY;
        }
        if ("max_app_name_length".equals(name)
                || "max_title_name_length".equals(name)) {
            return scaleX;
        }
        if (containsAny(name, "font", "textsize", "icon_size", "radius", "blur")) {
            return scale;
        }
        if (containsAny(name, "_offsety", "offset_y", "margin_top", "margin_bottom",
                "spacing_top", "spacing_bottom", "height", "_h", "location_y",
                "paddingtop", "paddingbottom", "padding_top", "padding_bottom",
                "distance", "translate_y")) {
            return scaleY;
        }
        if (containsAny(name, "_offsetx", "offset_x", "margin_left", "margin_right",
                "spacing_left", "spacing_right", "width", "_w", "location_x",
                "paddingleft", "paddingright", "padding_left", "padding_right")) {
            return scaleX;
        }
        if (containsAny(name, "cell_", "dock_", "folder_", "page_", "trash_",
                "calendar_", "clock_", "weather_", "edit_", "eye_", "lock_",
                "dot_", "setting_button", "shortcut_mask", "sort_icon")) {
            return scale;
        }
        return 1.0f;
    }

    private static boolean containsAny(String value, String... needles) {
        for (String needle : needles) {
            if (value.contains(needle)) {
                return true;
            }
        }
        return false;
    }
}
