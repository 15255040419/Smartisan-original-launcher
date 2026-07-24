package com.smartisanos.home.settings.icons;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;

import java.io.File;

/**
 * Utility for decoding icon bitmaps with sample size matching target render bounds.
 * Preserves ARGB_8888 config and visual clarity by keeping sample short edge >= targetPixelSize * 2.
 */
public final class IconBitmapDecoder {
    private static final String TAG = "SmartisanPerf";

    private IconBitmapDecoder() {
    }

    /**
     * Decodes a image file down-sampled to near targetPixelSize * 2 bounds.
     */
    public static Bitmap decodeFileNearTarget(File file, int targetPixelSize) {
        if (file == null || !file.exists() || !file.isFile() || file.length() == 0) {
            return null;
        }
        try {
            BitmapFactory.Options bounds = new BitmapFactory.Options();
            bounds.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(file.getAbsolutePath(), bounds);
            if (bounds.outWidth <= 0 || bounds.outHeight <= 0) {
                return null;
            }

            int sampleSize = calculateInSampleSize(bounds.outWidth, bounds.outHeight, targetPixelSize);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = sampleSize;
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;

            long start = android.os.SystemClock.elapsedRealtime();
            Bitmap decoded = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
            long duration = android.os.SystemClock.elapsedRealtime() - start;

            if (decoded != null) {
                logSample("FILE", file.getName(), bounds.outWidth, bounds.outHeight,
                        targetPixelSize, sampleSize, decoded.getWidth(), decoded.getHeight(), duration);
            }
            return decoded;
        } catch (Throwable t) {
            return null;
        }
    }

    /**
     * Decodes a byte array down-sampled to near targetPixelSize * 2 bounds.
     */
    public static Bitmap decodeByteArrayNearTarget(byte[] data, int targetPixelSize) {
        if (data == null || data.length == 0) {
            return null;
        }
        try {
            BitmapFactory.Options bounds = new BitmapFactory.Options();
            bounds.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(data, 0, data.length, bounds);
            if (bounds.outWidth <= 0 || bounds.outHeight <= 0) {
                return null;
            }

            int sampleSize = calculateInSampleSize(bounds.outWidth, bounds.outHeight, targetPixelSize);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = sampleSize;
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;

            long start = android.os.SystemClock.elapsedRealtime();
            Bitmap decoded = BitmapFactory.decodeByteArray(data, 0, data.length, options);
            long duration = android.os.SystemClock.elapsedRealtime() - start;

            if (decoded != null) {
                logSample("BYTES", "byte[" + data.length + "]", bounds.outWidth, bounds.outHeight,
                        targetPixelSize, sampleSize, decoded.getWidth(), decoded.getHeight(), duration);
            }
            return decoded;
        } catch (Throwable t) {
            return null;
        }
    }

    /**
     * Calculates power-of-2 inSampleSize ensuring short edge >= targetPixelSize * 2.
     */
    public static int calculateInSampleSize(int outWidth, int outHeight, int targetPixelSize) {
        if (outWidth <= 0 || outHeight <= 0) {
            return 1;
        }
        int minTarget = targetPixelSize > 0 ? targetPixelSize * 2 : 384;
        int minEdge = Math.min(outWidth, outHeight);
        int sampleSize = 1;
        while (minEdge / (sampleSize * 2) >= minTarget) {
            sampleSize *= 2;
        }
        return sampleSize;
    }

    private static void logSample(String sourceType, String sourceName, int srcW, int srcH,
                                  int targetPx, int sampleSize, int decW, int decH, long durationMs) {
        Log.d(TAG, "ICON_DECODE_SAMPLE | type=" + sourceType
                + " | name=" + sourceName
                + " | src=" + srcW + "x" + srcH
                + " | targetPx=" + targetPx
                + " | inSampleSize=" + sampleSize
                + " | decoded=" + decW + "x" + decH
                + " | durationMs=" + durationMs
                + " | thread=" + Thread.currentThread().getName());
    }
}
