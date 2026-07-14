package com.smartisanos.launcher.data;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

public final class FolderCellPositionAdapter {
    private static final String FOLDER_PAGE_CLASS = "com.smartisanos.launcher.view.b.a";
    private static final String FOLDER_CONTAINER_CLASS = "com.smartisanos.launcher.view.b.t";
    private static final float BASE_BOOKCASE_WIDTH = 1080.0f;
    private static final int COLUMN_COUNT = 3;
    private static final int MIDDLE_ROW = 1;
    private FolderCellPositionAdapter() {
    }

    public static float adjustX(Object page, int row, int column, float x) {
        return x;
    }

    public static float adjustY(Object page, int row, int column, float y) {
        if (page == null || !isFolderPage(page)) {
            return y;
        }
        Float middleY = cellY(COLUMN_COUNT + clampColumn(column));
        int width = staticInt("window_width");
        if (middleY == null || width <= 0) {
            return y;
        }
        // The open bookcase is always fitted to the screen width. Deriving the
        // shelf spacing from that width avoids private-field reflection and also
        // keeps the texture's aspect ratio authoritative on every density bucket.
        float rowHeight = width * (358.0f / BASE_BOOKCASE_WIDTH);
        // Folder grid row indices run bottom-to-top in the engine: row 2 is the
        // first visible shelf and row 0 is the last one.
        return middleY + (MIDDLE_ROW - row) * rowHeight;
    }

    public static float adjustYByIndex(Object page, int index, float y) {
        if (index < 0) {
            return y;
        }
        return adjustY(page, index / COLUMN_COUNT, index % COLUMN_COUNT, y);
    }

    /**
     * Returns folder-safe cell centers without changing the global Constants
     * array shared by the desktop and folder page views.
     */
    public static Object adaptPositions(Object owner, Object positions) {
        if (!hasClassName(owner, FOLDER_CONTAINER_CLASS)
                || positions == null
                || !positions.getClass().isArray()) {
            return positions;
        }
        try {
            int length = Array.getLength(positions);
            Object adapted = Array.newInstance(positions.getClass().getComponentType(), length);
            for (int index = 0; index < length; index++) {
                Object source = Array.get(positions, index);
                Object copy = copyPoint(source);
                if (copy != null) {
                    float y = floatField(copy, "y", 0.0f);
                    setFloatField(copy, "y", adjustedY(positions, index, y));
                }
                Array.set(adapted, index, copy);
            }
            return adapted;
        } catch (Throwable ignored) {
            return positions;
        }
    }

    private static boolean isFolderPage(Object page) {
        if (hasClassName(page, FOLDER_PAGE_CLASS)
                || hasClassName(page, FOLDER_CONTAINER_CLASS)) {
            return true;
        }
        Object container = getField(page, "dl");
        return hasClassName(container, FOLDER_CONTAINER_CLASS);
    }

    private static boolean hasClassName(Object target, String name) {
        Class<?> type = target == null ? null : target.getClass();
        while (type != null) {
            if (name.equals(type.getName())) {
                return true;
            }
            type = type.getSuperclass();
        }
        return false;
    }

    private static Object getField(Object target, String name) {
        if (target == null) {
            return null;
        }
        Class<?> cls = target.getClass();
        while (cls != null) {
            try {
                Field field = cls.getDeclaredField(name);
                field.setAccessible(true);
                return field.get(target);
            } catch (Throwable ignored) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    private static Object copyPoint(Object source) throws Exception {
        if (source == null) {
            return null;
        }
        Class<?> type = source.getClass();
        Constructor<?> constructor = type.getDeclaredConstructor(type);
        constructor.setAccessible(true);
        return constructor.newInstance(source);
    }

    private static float adjustedY(Object positions, int index, float fallback) {
        int column = clampColumn(index % COLUMN_COUNT);
        int middleIndex = COLUMN_COUNT + column;
        if (middleIndex >= Array.getLength(positions)) {
            return fallback;
        }
        Object middle = Array.get(positions, middleIndex);
        int width = staticInt("window_width");
        if (middle == null || width <= 0) {
            return fallback;
        }
        float middleY = floatField(middle, "y", fallback);
        float rowHeight = width * (358.0f / BASE_BOOKCASE_WIDTH);
        int row = index / COLUMN_COUNT;
        return middleY + (MIDDLE_ROW - row) * rowHeight;
    }

    private static float floatField(Object target, String name, float fallback) {
        Object value = getField(target, name);
        return value instanceof Number ? ((Number) value).floatValue() : fallback;
    }

    private static void setFloatField(Object target, String name, float value) {
        if (target == null) {
            return;
        }
        Class<?> cls = target.getClass();
        while (cls != null) {
            try {
                Field field = cls.getDeclaredField(name);
                field.setAccessible(true);
                field.setFloat(target, value);
                return;
            } catch (Throwable ignored) {
                cls = cls.getSuperclass();
            }
        }
    }

    private static int clampColumn(int column) {
        return Math.max(0, Math.min(column, COLUMN_COUNT - 1));
    }

    private static int staticInt(String fieldName) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return constants.getField(fieldName).getInt(null);
        } catch (Throwable ignored) {
        }
        return 0;
    }

    private static Float cellY(int index) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            Object points = constants.getField("pageCellCenterPoints").get(null);
            Object point = Array.get(points, index);
            return point.getClass().getField("y").getFloat(point);
        } catch (Throwable ignored) {
            return null;
        }
    }
}
