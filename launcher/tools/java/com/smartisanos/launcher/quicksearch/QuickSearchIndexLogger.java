package com.smartisanos.launcher.quicksearch;

import android.util.Log;

/** Compact phase logger; never emits one line per application. */
public final class QuickSearchIndexLogger {
    public static final String TAG = "QS_INDEX";

    private QuickSearchIndexLogger() {
    }

    public static void event(String event, long generation, int count, long elapsedMs,
            String reason) {
        Log.i(TAG, "QS_INDEX generation=" + generation
                + " event=" + event
                + " count=" + count
                + " elapsedMs=" + elapsedMs
                + " reason=" + safeReason(reason));
    }

    public static void failure(long generation, long elapsedMs, String reason, Throwable error) {
        String type = error == null ? "unknown" : error.getClass().getName();
        Log.e(TAG, "QS_INDEX generation=" + generation
                + " event=QS_INDEX_FAILED"
                + " count=0"
                + " elapsedMs=" + elapsedMs
                + " reason=" + safeReason(reason)
                + " error=" + type);
    }

    public static void identity(long generation, int candidateCount, int duplicateCount,
            long elapsedMs, String reason) {
        Log.i(TAG, "QS_INDEX generation=" + generation
                + " event=QS_INDEX_IDENTITY_READY"
                + " count=" + candidateCount
                + " duplicates=" + duplicateCount
                + " elapsedMs=" + elapsedMs
                + " reason=" + safeReason(reason));
    }

    public static void incremental(String event, String packageName, String reason,
            long generationBefore, long generationAfter, int countBefore, int countAfter,
            int added, int removed, int updated, long elapsedMs) {
        Log.i(TAG, "QS_INDEX event=" + event
                + " package=" + safePackage(packageName)
                + " reason=" + safeReason(reason)
                + " generationBefore=" + generationBefore
                + " generationAfter=" + generationAfter
                + " countBefore=" + countBefore
                + " countAfter=" + countAfter
                + " added=" + added
                + " removed=" + removed
                + " updated=" + updated
                + " elapsedMs=" + elapsedMs);
    }

    public static void incrementalFailure(String packageName, String reason,
            long generation, int count, long elapsedMs, Throwable error) {
        String type = error == null ? "unknown" : error.getClass().getName();
        Log.e(TAG, "QS_INDEX event=QS_INDEX_INCREMENTAL_FAILED"
                + " package=" + safePackage(packageName)
                + " reason=" + safeReason(reason)
                + " generationBefore=" + generation
                + " generationAfter=" + generation
                + " countBefore=" + count
                + " countAfter=" + count
                + " elapsedMs=" + elapsedMs
                + " error=" + type);
    }

    private static String safeReason(String reason) {
        if (reason == null || reason.trim().length() == 0) {
            return "unspecified";
        }
        return reason.trim().replace(' ', '_');
    }

    private static String safePackage(String packageName) {
        return packageName == null || packageName.trim().length() == 0
                ? "unknown" : packageName.trim();
    }
}
