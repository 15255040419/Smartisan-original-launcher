package com.smartisanos.launcher.diagnostics;

import android.os.SystemClock;
import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Per-startup, GL-thread-only timing for the two Page contents created by MainView.
 * It deliberately aggregates normal cells and only emits individual cells at 50 ms.
 */
public final class StartupPageSceneDiagnostics {
    private static final String TAG = "LauncherPageScene";
    private static final long SLOW_CELL_MS = 50L;
    private static final int TOP_CELL_COUNT = 5;
    private static final ThreadLocal<PageSession> CURRENT_PAGE = new ThreadLocal<PageSession>();
    private static int sNormalPageConstructed;

    private StartupPageSceneDiagnostics() {
    }

    public static synchronized void pageConstructBegin(Object pageInfo) {
        if (CURRENT_PAGE.get() != null || pageInfo == null
                || intValue(pageInfo, "status", -1) != 0) {
            return;
        }
        int ordinal = sNormalPageConstructed++;
        if (ordinal >= 2) {
            return;
        }
        PageSession session = new PageSession(pageInfo);
        CURRENT_PAGE.set(session);
        Log.i(TAG, "PAGE_INIT_BEGIN pageIndex=" + session.pageIndex
                + " pageStatus=" + session.pageStatus
                + " itemCount=pending factoryOrdinal=" + ordinal);
    }

    public static void pageConstructEnd(Object page) {
        PageSession session = CURRENT_PAGE.get();
        if (session == null) {
            return;
        }
        session.bindPage(page);
        session.finish();
        CURRENT_PAGE.remove();
    }

    public static void cellBegin(Object cell) {
        PageSession session = CURRENT_PAGE.get();
        if (session != null) {
            session.beginCell(cell);
        }
    }

    public static void stage(Object item, String stage) {
        PageSession session = CURRENT_PAGE.get();
        if (session != null) {
            session.stage(item, stage);
        }
    }

    public static void textureCacheResult(Object item, boolean hit) {
        PageSession session = CURRENT_PAGE.get();
        if (session != null) {
            session.textureCacheResult(item, hit);
        }
    }

    public static void bitmapCompose(Object item) {
        PageSession session = CURRENT_PAGE.get();
        if (session != null) {
            session.bitmapCompose(item);
        }
    }

    public static void shadowCompose(Object item) {
        PageSession session = CURRENT_PAGE.get();
        if (session != null) {
            session.shadowCompose(item);
        }
    }

    public static void textureCreate(Object item) {
        PageSession session = CURRENT_PAGE.get();
        if (session != null) {
            session.textureCreate(item);
        }
    }

    public static void cellEnd(Object cell) {
        PageSession session = CURRENT_PAGE.get();
        if (session != null) {
            session.endCell(cell);
        }
    }

    private static final class PageSession {
        Object page;
        int pageIndex;
        int pageStatus;
        int itemCount;
        final long startMs;
        final List<CellRecord> cells = new ArrayList<CellRecord>();
        final Map<String, Integer> sourceResolveByPackage = new HashMap<String, Integer>();
        final Map<String, Integer> bitmapComposeByPackage = new HashMap<String, Integer>();
        final Map<String, Integer> shadowComposeByPackage = new HashMap<String, Integer>();
        final Map<String, Integer> textureCreateByPackage = new HashMap<String, Integer>();
        int textureCacheHit;
        int textureCacheMiss;
        int textureCreateCount;
        int textureUploadCount;
        int bitmapComposeCount;
        int shadowComposeCount;
        CellRecord activeCell;

        PageSession(Object page) {
            this.page = page;
            pageIndex = intValue(page, "pageIndex", -1);
            pageStatus = intValue(page, "status", invokeInt(page, "xn", -1));
            itemCount = collectionSize(page, "pn");
            startMs = SystemClock.elapsedRealtime();
        }

        void bindPage(Object createdPage) {
            page = createdPage;
            pageIndex = intValue(createdPage, "pageIndex", pageIndex);
            pageStatus = invokeInt(createdPage, "xn", pageStatus);
            itemCount = collectionSize(createdPage, "pn");
        }

        void beginCell(Object cell) {
            if (activeCell != null) {
                return;
            }
            activeCell = new CellRecord(cell, itemForCell(cell));
            activeCell.stage("SCENE_SETUP");
        }

        void stage(Object item, String stage) {
            if (activeCell != null && (activeCell.cell == item || matches(activeCell.item, item))) {
                activeCell.stage(stage);
            }
        }

        void textureCacheResult(Object item, boolean hit) {
            if (!hasActiveItem(item)) {
                return;
            }
            if (hit) {
                textureCacheHit++;
                activeCell.stage("ICON_CACHE_HIT");
            } else {
                textureCacheMiss++;
                increment(sourceResolveByPackage, activeCell.packageName);
                activeCell.stage("ICON_CACHE_MISS");
            }
        }

        void bitmapCompose(Object item) {
            if (hasActiveItem(item)) {
                bitmapComposeCount++;
                increment(bitmapComposeByPackage, activeCell.packageName);
                activeCell.stage("ICON_BITMAP_RASTER");
            }
        }

        void shadowCompose(Object item) {
            if (hasActiveItem(item)) {
                shadowComposeCount++;
                increment(shadowComposeByPackage, activeCell.packageName);
                activeCell.stage("SMARTISAN_SHADOW");
            }
        }

        void textureCreate(Object item) {
            if (hasActiveItem(item)) {
                textureCreateCount++;
                textureUploadCount++;
                increment(textureCreateByPackage, activeCell.packageName);
                activeCell.stage("SMENGINE_TEXTURE_CREATE");
            }
        }

        void endCell(Object cell) {
            if (activeCell == null || activeCell.cell != cell) {
                return;
            }
            activeCell.finish();
            cells.add(activeCell);
            if (activeCell.durationMs >= SLOW_CELL_MS) {
                Log.i(TAG, "SLOW_CELL itemType=" + activeCell.kind
                        + " package=" + activeCell.packageName
                        + " durationMs=" + activeCell.durationMs
                        + " dominantStage=" + activeCell.dominantStage());
            }
            activeCell = null;
        }

        void finish() {
            long durationMs = SystemClock.elapsedRealtime() - startMs;
            long total = 0L;
            long min = Long.MAX_VALUE;
            long max = 0L;
            long first = -1L;
            for (CellRecord cell : cells) {
                total += cell.durationMs;
                min = Math.min(min, cell.durationMs);
                max = Math.max(max, cell.durationMs);
                if (first < 0L) {
                    first = cell.durationMs;
                }
            }
            long average = cells.isEmpty() ? 0L : total / cells.size();
            Log.i(TAG, "PAGE_INIT_END pageIndex=" + pageIndex
                    + " pageStatus=" + pageStatus
                    + " itemCount=" + itemCount
                    + " durationMs=" + durationMs
                    + " cellCount=" + cells.size()
                    + " cellCreateTotalMs=" + total
                    + " cellCreateMinMs=" + (min == Long.MAX_VALUE ? 0L : min)
                    + " cellCreateMaxMs=" + max
                    + " cellCreateAverageMs=" + average
                    + " firstCellMs=" + first
                    + " textureCacheHit=" + textureCacheHit
                    + " textureCacheMiss=" + textureCacheMiss
                    + " textureCreateCount=" + textureCreateCount
                    + " textureUploadCount=" + textureUploadCount
                    + " bitmapComposeCount=" + bitmapComposeCount
                    + " shadowComposeCount=" + shadowComposeCount
                    + " stageMs=" + stageSummary());
            logTopCells();
            logRepeated("sourceResolve", sourceResolveByPackage);
            logRepeated("bitmapCompose", bitmapComposeByPackage);
            logRepeated("shadowCompose", shadowComposeByPackage);
            logRepeated("textureCreate", textureCreateByPackage);
        }

        private boolean hasActiveItem(Object item) {
            return activeCell != null && matches(activeCell.item, item);
        }

        private String stageSummary() {
            Map<String, Long> totals = new HashMap<String, Long>();
            for (CellRecord cell : cells) {
                cell.addStagesTo(totals);
            }
            return totals.toString();
        }

        private void logTopCells() {
            List<CellRecord> top = new ArrayList<CellRecord>(cells);
            Collections.sort(top, new Comparator<CellRecord>() {
                @Override
                public int compare(CellRecord left, CellRecord right) {
                    return left.durationMs < right.durationMs ? 1 : left.durationMs == right.durationMs ? 0 : -1;
                }
            });
            StringBuilder builder = new StringBuilder("SLOW_CELL_TOP5 pageIndex=").append(pageIndex);
            int count = Math.min(TOP_CELL_COUNT, top.size());
            for (int i = 0; i < count; i++) {
                CellRecord cell = top.get(i);
                builder.append(" #").append(i + 1).append('=')
                        .append(cell.kind).append('/').append(cell.packageName)
                        .append('/').append(cell.durationMs).append("ms/")
                        .append(cell.dominantStage());
            }
            Log.i(TAG, builder.toString());
        }

        private void logRepeated(String name, Map<String, Integer> counts) {
            for (Map.Entry<String, Integer> entry : counts.entrySet()) {
                if (entry.getValue().intValue() > 1) {
                    Log.i(TAG, "CELL_COMPONENT_REPEAT metric=" + name
                            + " package=" + entry.getKey()
                            + " count=" + entry.getValue());
                }
            }
        }
    }

    private static final class CellRecord {
        final Object cell;
        final Object item;
        final String packageName;
        final String kind;
        final long startMs = SystemClock.elapsedRealtime();
        final Map<String, Long> stages = new HashMap<String, Long>();
        long stageStartMs = startMs;
        String currentStage = "SCENE_SETUP";
        long durationMs;

        CellRecord(Object cell, Object item) {
            this.cell = cell;
            this.item = item;
            packageName = stringValue(item, "packageName", "none");
            kind = itemKind(item);
        }

        void stage(String nextStage) {
            long now = SystemClock.elapsedRealtime();
            addStage(currentStage, now - stageStartMs);
            currentStage = nextStage == null ? "unknown" : nextStage;
            stageStartMs = now;
        }

        void finish() {
            long now = SystemClock.elapsedRealtime();
            addStage(currentStage, now - stageStartMs);
            durationMs = now - startMs;
        }

        void addStagesTo(Map<String, Long> totals) {
            for (Map.Entry<String, Long> entry : stages.entrySet()) {
                Long previous = totals.get(entry.getKey());
                totals.put(entry.getKey(), Long.valueOf((previous == null ? 0L : previous.longValue()) + entry.getValue().longValue()));
            }
        }

        String dominantStage() {
            String result = "none";
            long max = -1L;
            for (Map.Entry<String, Long> entry : stages.entrySet()) {
                if (entry.getValue().longValue() > max) {
                    max = entry.getValue().longValue();
                    result = entry.getKey();
                }
            }
            return result;
        }

        private void addStage(String stage, long duration) {
            Long previous = stages.get(stage);
            stages.put(stage, Long.valueOf((previous == null ? 0L : previous.longValue()) + Math.max(0L, duration)));
        }
    }

    private static Object itemForCell(Object cell) {
        try {
            Method method = cell.getClass().getMethod("Rl");
            return method.invoke(cell);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static int collectionSize(Object object, String methodName) {
        try {
            Object value = object.getClass().getMethod(methodName).invoke(object);
            return value instanceof List ? ((List<?>) value).size() : -1;
        } catch (Throwable ignored) {
            return -1;
        }
    }

    private static int invokeInt(Object object, String methodName, int fallback) {
        try {
            Object value = object.getClass().getMethod(methodName).invoke(object);
            return value instanceof Integer ? ((Integer) value).intValue() : fallback;
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static int intValue(Object object, String fieldName, int fallback) {
        try {
            Field field = findField(object, fieldName);
            Object value = field == null ? null : field.get(object);
            return value instanceof Number ? ((Number) value).intValue() : fallback;
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static String stringValue(Object object, String fieldName, String fallback) {
        try {
            Field field = findField(object, fieldName);
            Object value = field == null ? null : field.get(object);
            return value instanceof String && ((String) value).length() > 0 ? (String) value : fallback;
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static Field findField(Object object, String fieldName) {
        for (Class<?> type = object == null ? null : object.getClass(); type != null; type = type.getSuperclass()) {
            try {
                Field field = type.getDeclaredField(fieldName);
                field.setAccessible(true);
                return field;
            } catch (Throwable ignored) {
            }
        }
        return null;
    }

    private static boolean matches(Object left, Object right) {
        return left == right || (left != null && left.equals(right));
    }

    private static String itemKind(Object item) {
        int type = intValue(item, "itemType", -1);
        switch (type) {
            case 0:
                return "APPLICATION";
            case 1:
                return "SHORTCUT";
            case 2:
                return "FOLDER";
            default:
                String packageName = stringValue(item, "packageName", "");
                return packageName.contains("calendar") || packageName.contains("weather")
                        ? "ACTIVE_ICON" : "SPECIAL";
        }
    }

    private static void increment(Map<String, Integer> counts, String packageName) {
        Integer previous = counts.get(packageName);
        counts.put(packageName, Integer.valueOf(previous == null ? 1 : previous.intValue() + 1));
    }
}
