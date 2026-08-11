package com.smartisanos.launcher.quicksearch;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Read-only bridge to icon bytes already held by the Launcher model.
 *
 * Q4 deliberately does not decode, resize, query PackageManager, access disk,
 * download, or retain a second Bitmap cache. Q5 can consume the handle off the
 * UI thread and perform any required presentation work asynchronously.
 */
public final class SearchIconBridge {
    // vivo user builds suppress the dedicated QS_ICON_BRIDGE tag. Keep Q4
    // diagnostics on the same visible tag and level as QS_INDEX_READY.
    private static final String TAG = QuickSearchIndexLogger.TAG;
    private static final String MODEL_CLASS = "com.smartisanos.launcher.Aa";
    private static final String MODEL_SNAPSHOT = "nc";
    private static final String ICON_DATA_FIELD = "iconData";
    private static final Object DIAGNOSTIC_LOCK = new Object();
    private static volatile boolean diagnosticReported;

    public enum Status { HIT, MISS, INVALID }

    public static final class IconResult {
        public final Status status;
        public final String iconKey;
        public final String source;
        public final IconHandle handle;

        private IconResult(Status status, String iconKey, String source, IconHandle handle) {
            this.status = status;
            this.iconKey = iconKey == null ? "" : iconKey;
            this.source = source == null ? "" : source;
            this.handle = handle;
        }

        public static IconResult miss(String key, String source) {
            return new IconResult(Status.MISS, key, source, null);
        }

        public static IconResult invalid(String key, String source) {
            return new IconResult(Status.INVALID, key, source, null);
        }
    }

    /** Short-lived view of the model-owned final icon bytes; no Bitmap is copied. */
    public static final class IconHandle {
        public final String packageName;
        public final String className;
        public final int userId;
        public final long profileSerial;
        public final String iconKey;
        public final byte[] encodedPng;

        private IconHandle(SearchEntry entry, byte[] encodedPng) {
            this.packageName = entry.packageName;
            this.className = entry.className;
            this.userId = entry.userId;
            this.profileSerial = entry.profileSerial;
            this.iconKey = entry.iconKey;
            this.encodedPng = encodedPng;
        }
    }

    private SearchIconBridge() {
    }

    /**
     * Finds a matching model item and returns its already-populated iconData.
     * This method intentionally treats a missing in-memory field as MISS rather
     * than calling ItemInfo.Oe(), which could load from the database.
     */
    public static IconResult getCachedIcon(SearchEntry entry) {
        if (entry == null || TextUtils.isEmpty(entry.packageName)
                || TextUtils.isEmpty(entry.className)) {
            return IconResult.invalid(entry == null ? "" : entry.iconKey, "invalid_entry");
        }
        try {
            Map model = launcherModelSnapshot();
            if (model == null || model.isEmpty()) {
                return IconResult.miss(entry.iconKey, "model_empty");
            }
            for (Object value : model.values()) {
                if (value == null || !matches(value, entry)) {
                    continue;
                }
                byte[] bytes = inMemoryIconData(value);
                if (bytes == null || bytes.length == 0) {
                    return IconResult.miss(entry.iconKey, "icon_data_unavailable");
                }
                return new IconResult(Status.HIT, entry.iconKey, "launcher_item_icon_data",
                        new IconHandle(entry, bytes));
            }
            return IconResult.miss(entry.iconKey, "model_entry_missing");
        } catch (Throwable error) {
            Log.w(TAG, "QS_ICON_BRIDGE_LOOKUP_FAILED type=" + error.getClass().getName());
            return IconResult.invalid(entry.iconKey, "lookup_failed");
        }
    }

    /** One aggregate side-channel diagnostic after the Q2 model snapshot is ready. */
    public static void diagnoseOnce(Context context, List<SearchEntry> entries) {
        if (entries == null) return;
        synchronized (DIAGNOSTIC_LOCK) {
            if (diagnosticReported) return;
            diagnosticReported = true;
        }
        long begin = SystemClock.elapsedRealtime();
        int hits = 0;
        int misses = 0;
        int invalid = 0;
        Log.i(TAG, "QS_ICON_BRIDGE_BEGIN entries=" + entries.size());
        for (SearchEntry entry : entries) {
            IconResult result = getCachedIcon(entry);
            if (result.status == Status.HIT) hits++;
            else if (result.status == Status.MISS) misses++;
            else invalid++;
        }
        long elapsed = SystemClock.elapsedRealtime() - begin;
        Log.i(TAG, "QS_ICON_BRIDGE_END entries=" + entries.size()
                + " hits=" + hits + " misses=" + misses + " invalid=" + invalid
                + " hitRate=" + (entries.isEmpty() ? 0.0d : (hits * 100.0d / entries.size()))
                + " elapsedMs=" + elapsed);
        diagnoseDecodeCost(entries);
    }

    /** Decode-cost probe only; every Bitmap is recycled immediately and never cached. */
    public static void diagnoseDecodeCost(List<SearchEntry> entries) {
        if (entries == null) return;
        ArrayList<IconHandle> hits = new ArrayList<IconHandle>();
        for (SearchEntry entry : entries) {
            IconResult result = getCachedIcon(entry);
            if (result.status == Status.HIT && result.handle != null) {
                hits.add(result.handle);
            }
        }
        decodeGroup("top5", hits, Math.min(5, hits.size()));
        decodeGroup("all_hit", hits, hits.size());
    }

    private static void decodeGroup(String scope, List<IconHandle> handles, int count) {
        long begin = SystemClock.elapsedRealtime();
        long bytes = 0L;
        int success = 0;
        int failed = 0;
        Log.i(TAG, "QS_ICON_DECODE_BEGIN scope=" + scope + " count=" + count);
        for (int i = 0; i < count; i++) {
            byte[] encoded = handles.get(i).encodedPng;
            if (encoded == null || encoded.length == 0) {
                failed++;
                continue;
            }
            bytes += encoded.length;
            Bitmap bitmap = null;
            try {
                bitmap = BitmapFactory.decodeByteArray(encoded, 0, encoded.length);
                if (bitmap == null) {
                    failed++;
                } else {
                    success++;
                }
            } catch (Throwable ignored) {
                failed++;
            } finally {
                if (bitmap != null && !bitmap.isRecycled()) {
                    bitmap.recycle();
                }
            }
        }
        Log.i(TAG, "QS_ICON_DECODE_END scope=" + scope + " count=" + count
                + " bytes=" + bytes + " elapsedMs="
                + (SystemClock.elapsedRealtime() - begin)
                + " success=" + success + " failed=" + failed);
    }

    private static Map launcherModelSnapshot() throws Exception {
        Class<?> modelClass = Class.forName(MODEL_CLASS);
        Object value = modelClass.getMethod(MODEL_SNAPSHOT).invoke(null);
        return value instanceof Map ? (Map) value : null;
    }

    private static boolean matches(Object item, SearchEntry entry) throws Exception {
        if (!entry.packageName.equals(stringField(item, "packageName"))
                || !entry.className.equals(stringField(item, "componentName"))) {
            return false;
        }
        Object user = item.getClass().getField("userId").get(item);
        return user instanceof Number && ((Number) user).intValue() == entry.userId;
    }

    private static byte[] inMemoryIconData(Object item) throws Exception {
        Field field = item.getClass().getDeclaredField(ICON_DATA_FIELD);
        field.setAccessible(true);
        Object value = field.get(item);
        return value instanceof byte[] ? (byte[]) value : null;
    }

    private static String stringField(Object item, String name) throws Exception {
        Object value = item.getClass().getField(name).get(item);
        return value == null ? "" : String.valueOf(value);
    }
}
