package com.smartisanos.launcher.data;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/** Reads icon blobs in bounded batches so Android's CursorWindow cannot overflow. */
public final class IconDatabaseCompat {
    private static final String TAG = "IconDatabaseCompat";
    private static final int BATCH_SIZE = 12;

    private IconDatabaseCompat() {}

    public static List<Long> loadIcons(Map<Long, Object> items) {
        ArrayList<Long> loaded = new ArrayList<>();
        if (items == null || items.isEmpty()) return loaded;
        SQLiteDatabase db;
        String blobColumn;
        Method setIconData;
        Method parseColor;
        Method attachColor;
        Field colorField;
        try {
            Class<?> providerClass = Class.forName("com.smartisanos.launcher.data.C");
            Object provider = providerClass.getMethod("getInstance").invoke(null);
            if (provider == null) return loaded;
            db = (SQLiteDatabase) providerClass.getMethod("getReadableDatabase").invoke(provider);
            Class<?> utilsClass = Class.forName("com.smartisanos.launcher.e.s");
            blobColumn = (String) utilsClass.getMethod("rg").invoke(null);
            Class<?> itemClass = Class.forName("com.smartisanos.launcher.data.ItemInfo");
            setIconData = itemClass.getMethod("a", byte[].class);
            colorField = itemClass.getField("color");
            Class<?> colorClass = Class.forName(
                    "com.smartisanos.launcher.actions.sort.color.IconColor$ColorInfo");
            parseColor = colorClass.getMethod("K", String.class);
            attachColor = colorClass.getMethod("e", itemClass);
        } catch (Exception error) {
            Log.w(TAG, "Launcher icon database API is unavailable", error);
            return loaded;
        }
        ArrayList<Long> owners = new ArrayList<>(items.keySet());
        for (int start = 0; start < owners.size(); start += BATCH_SIZE) {
            int end = Math.min(start + BATCH_SIZE, owners.size());
            StringBuilder selection = new StringBuilder("owner IN (");
            String[] args = new String[end - start];
            for (int index = start; index < end; index++) {
                if (index > start) selection.append(',');
                selection.append('?');
                args[index - start] = String.valueOf(owners.get(index));
            }
            selection.append(')');

            Cursor cursor = null;
            try {
                cursor = db.query("table_icons",
                        new String[] {"owner", "color_info", blobColumn},
                        selection.toString(), args, null, null, null);
                int ownerIndex = cursor.getColumnIndexOrThrow("owner");
                int colorIndex = cursor.getColumnIndex("color_info");
                int blobIndex = cursor.getColumnIndexOrThrow(blobColumn);
                while (cursor.moveToNext()) {
                    long owner = cursor.getLong(ownerIndex);
                    Object item = items.get(owner);
                    byte[] blob = cursor.getBlob(blobIndex);
                    if (owner <= 0 || item == null || blob == null || blob.length == 0) continue;
                    if (colorIndex >= 0) {
                        Object color = parseColor.invoke(null, cursor.getString(colorIndex));
                        if (color != null) {
                            attachColor.invoke(color, item);
                            colorField.set(item, color);
                        }
                    }
                    setIconData.invoke(item, (Object) blob);
                    loaded.add(owner);
                }
            } catch (Exception error) {
                Log.w(TAG, "Icon batch " + start + ".." + end + " could not be read", error);
            } finally {
                if (cursor != null) cursor.close();
            }
        }
        return loaded;
    }
}
