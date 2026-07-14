package com.smartisanos.launcher.compat;

import android.util.Log;

import com.smartisanos.launcher.data.FolderCellPositionAdapter;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/**
 * Fixes the return target used by the original drag-up animation inside an
 * opened folder.
 *
 * The opened folder layout is adapted at creation time by
 * {@link FolderCellPositionAdapter#adjustY(Object, int, int, float)}. The
 * original drag animation does not recompute child positions when the finger is
 * released; it animates cells back to {@code cell.km().xy}. If that target was
 * captured or overwritten from the unadapted raw folder grid, the middle shelf
 * still looks correct but the top/bottom shelves return to the wrong vertical
 * position. This class updates the animation target and the current transform,
 * not the actual cell order.
 */
public final class FolderReturnTargetCompat {
    private static final String TAG = "FolderReturnTargetCompat";
    private static final String FOLDER_PAGE_CLASS = "com.smartisanos.launcher.view.b.a";
    private static final String FOLDER_CONTAINER_CLASS = "com.smartisanos.launcher.view.b.t";

    private FolderReturnTargetCompat() {
    }

    public static void normalizeFolderReturnTargets(Object draggedCell) {
        if (draggedCell == null) {
            return;
        }
        try {
            Object page = ownerPage(draggedCell);
            if (!isFolderPage(page)) {
                return;
            }
            List<Object> cells = collectCells(page);
            if (!cells.contains(draggedCell)) {
                cells.add(draggedCell);
            }
            for (Object cell : cells) {
                normalizeCellTarget(page, cell);
            }
        } catch (Throwable t) {
            Log.d(TAG, "normalizeFolderReturnTargets ignored", t);
        }
    }

    private static void normalizeCellTarget(Object page, Object cell) {
        if (page == null || cell == null) {
            return;
        }
        try {
            int row = intValue(call(cell, "getRowIndex"), -1);
            int col = intValue(call(cell, "Al"), -1);
            if (row < 0 || col < 0) {
                return;
            }
            int index = intValue(call(page, "getIndex", new Class[]{Integer.TYPE, Integer.TYPE},
                    new Object[]{Integer.valueOf(row), Integer.valueOf(col)}), -1);
            Object container = getField(page, "dl");
            Object positions = call(container, "ir");
            if (!(positions instanceof Object[]) || index < 0 || index >= ((Object[]) positions).length) {
                return;
            }
            Object raw = ((Object[]) positions)[index];
            if (raw == null) {
                return;
            }

            float x = floatField(raw, "x", 0f);
            float rawY = floatField(raw, "y", 0f);
            float y = FolderCellPositionAdapter.adjustY(page, row, col, rawY);
            float z = floatField(raw, "z", floatField(page, "WG", 0f));

            Object state = call(cell, "km");
            Object target = getField(state, "xy");
            if (target == null) {
                target = newPoint(raw);
                setObjectField(state, "xy", target);
            }
            setFloatField(target, "x", x);
            setFloatField(target, "y", y);
            setFloatField(target, "z", z);
            call(cell, "setTranslate", new Class[]{Float.TYPE, Float.TYPE, Float.TYPE},
                    new Object[]{Float.valueOf(x), Float.valueOf(y), Float.valueOf(z)});
            call(cell, "updateGeometricState");
            Log.d(TAG, "target row=" + row + " col=" + col + " rawY=" + rawY + " y=" + y);
        } catch (Throwable t) {
            Log.d(TAG, "normalizeCellTarget ignored", t);
        }
    }

    private static Object ownerPage(Object cell) {
        Object page = call(cell, "Af");
        if (page == null) {
            page = call(cell, "_k");
        }
        if (page == null) {
            page = call(cell, "getParent");
        }
        return page;
    }

    private static List<Object> collectCells(Object page) {
        ArrayList<Object> result = new ArrayList<Object>();
        addAll(result, call(page, "on"));
        addAll(result, call(page, "pn"));
        addAll(result, call(page, "mn"));
        return result;
    }

    private static void addAll(List<Object> out, Object value) {
        if (value instanceof Iterable) {
            for (Object item : (Iterable<?>) value) {
                if (item != null && !out.contains(item)) {
                    out.add(item);
                }
            }
        }
    }

    private static boolean isFolderPage(Object page) {
        if (hasClassName(page, FOLDER_PAGE_CLASS)) {
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

    private static Object newPoint(Object source) throws Exception {
        Constructor<?> ctor = source.getClass().getConstructor(source.getClass());
        ctor.setAccessible(true);
        return ctor.newInstance(source);
    }

    private static Object call(Object target, String name) {
        return call(target, name, null, null);
    }

    private static Object call(Object target, String name, Class<?>[] types, Object[] args) {
        if (target == null) {
            return null;
        }
        try {
            Method method = types == null ? target.getClass().getMethod(name) : target.getClass().getMethod(name, types);
            method.setAccessible(true);
            return method.invoke(target, args == null ? new Object[0] : args);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static int intValue(Object value, int fallback) {
        return value instanceof Number ? ((Number) value).intValue() : fallback;
    }

    private static float floatField(Object target, String name, float fallback) {
        Object value = getField(target, name);
        return value instanceof Number ? ((Number) value).floatValue() : fallback;
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

    private static void setObjectField(Object target, String name, Object value) {
        if (target == null) {
            return;
        }
        Class<?> cls = target.getClass();
        while (cls != null) {
            try {
                Field field = cls.getDeclaredField(name);
                field.setAccessible(true);
                field.set(target, value);
                return;
            } catch (Throwable ignored) {
                cls = cls.getSuperclass();
            }
        }
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
}
