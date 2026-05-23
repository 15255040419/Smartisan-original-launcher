package com.smartisanos.launcher.data;

import android.util.Log;

import java.lang.reflect.Field;
import java.util.ArrayList;

public final class FolderCellPositionAdapter {
    private static final String TAG = "FolderCellPosition";
    private static final String FOLDER_PAGE_CLASS = "com.smartisanos.launcher.view.b.a";
    private FolderCellPositionAdapter() {
    }

    public static float adjustX(Object page, int row, int column, float x) {
        return x;
    }

    private static Field field(Object target, String name) throws NoSuchFieldException {
        Class<?> type = target.getClass();
        while (type != null) {
            try {
                Field field = type.getDeclaredField(name);
                field.setAccessible(true);
                return field;
            } catch (NoSuchFieldException ignored) {
                type = type.getSuperclass();
            }
        }
        throw new NoSuchFieldException(name);
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
}
