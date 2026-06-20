package com.smartisanos.launcher.data;

import java.lang.reflect.Array;

public final class FolderCellPositionAdapter {
    private static final String FOLDER_PAGE_CLASS = "com.smartisanos.launcher.view.b.a";
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

    private static boolean isFolderPage(Object page) {
        Class<?> type = page.getClass();
        while (type != null) {
            if (FOLDER_PAGE_CLASS.equals(type.getName())) {
                return true;
            }
            type = type.getSuperclass();
        }
        return false;
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
