package com.smartisanos.launcher.data;

import android.util.Log;

import java.lang.reflect.Field;

public final class LayoutPropertyAdapter {
    private static final String TAG = "LayoutPropertyAdapter";
    private static final float BASE_WIDTH = 1080.0f;
    private static final float BASE_HEIGHT = 1920.0f;
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

        float resourceBaseWidth = resourceBaseWidth(property);
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
            Log.i(TAG, "adapt suffix=" + suffix
                    + ", screen=" + width + "x" + height
                    + ", resourceBase=" + resourceBaseWidth + "x" + resourceBaseHeight
                    + ", scaleX=" + scaleX + ", scaleY=" + scaleY);
        } catch (Throwable t) {
            Log.w(TAG, "layout adaptation skipped", t);
        }
    }

    private static float resourceBaseWidth(Object property) {
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
        if (name.startsWith("folder_preview_")) {
            return scale;
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
