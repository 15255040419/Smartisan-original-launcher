package com.smartisanos.launcher;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.Process;
import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

/** Minimal bridge between Android O pinned shortcuts and the original QuickLaunch database path. */
public final class ShortcutCompatBridge {
    public static final String EXTRA_PACKAGE = "smartisan.shortcut.package";
    public static final String EXTRA_ID = "smartisan.shortcut.id";
    public static final String EXTRA_USER_SERIAL = "smartisan.shortcut.user_serial";
    public static final String EXTRA_FINAL_ICON = "smartisan.shortcut.final_icon";
    public static final String EXTRA_LAUNCH_VIA_ACTIVITY = "smartisan.shortcut.launch_via_activity";
    public static final String EXTRA_ALLOW_PRIMARY_FALLBACK = "smartisan.shortcut.primary_user";
    private static final String TAG = "ShortcutCompat";

    private ShortcutCompatBridge() { }

    public static String key(String packageName, String shortcutId, long userSerial) {
        return packageName + "|" + shortcutId + "|" + userSerial;
    }

    public static long userSerial(Context context, UserHandle user) {
        UserManager manager = (UserManager) context.getSystemService(Context.USER_SERVICE);
        return manager != null && user != null ? manager.getSerialNumberForUser(user) : -1L;
    }

    public static Object createItem(Context context, ShortcutInfo shortcut, long userSerial) {
        final String packageName = shortcut.getPackage();
        final String shortcutId = shortcut.getId();
        try {
            Class<?> wrapperClass = Class.forName("com.smartisanos.launcher.d.k");
            Object wrapper = wrapperClass.getConstructor(ShortcutInfo.class).newInstance(shortcut);
            Class<?> converterClass = Class.forName("com.smartisanos.launcher.d.j");
            Object item = converterClass.getMethod("c", wrapperClass).invoke(null, wrapper);
            if (item == null) return null;
            UserHandle user = shortcut.getUserHandle();
            int userId = user == null ? -1 : userIdentifier(user);
            setField(item, "userId", userId);
            Bitmap icon = (Bitmap) getField(item, "icon");
            Bitmap normalized = drawableToNormalizedShortcutBitmap(icon, targetIconSize(context, icon));
            if (normalized == null) {
                Log.w(TAG, "SHORTCUT_ICON_LOADED iconSource=fallback package=" + packageName
                        + " shortcutId=" + shortcutId);
                return null;
            }
            Class<?> compositor = Class.forName("com.smartisanos.launcher.e.s");
            Bitmap composed = (Bitmap) compositor.getMethod("a", Context.class, Bitmap.class, String.class, int.class)
                    .invoke(null, context, normalized, packageName, userId);
            setField(item, "icon", composed != null ? composed : normalized);
            setField(item, "intent", createLaunchIntent(context, packageName, shortcutId, userSerial,
                    user != null && Process.myUserHandle().equals(user)));
            Log.i(TAG, "SHORTCUT_ICON_COMPOSED package=" + packageName + " shortcutId=" + shortcutId
                    + " normalizedWidth=" + normalized.getWidth() + " normalizedHeight=" + normalized.getHeight()
                    + " frameType=" + frameType(packageName));
            return item;
        } catch (ReflectiveOperationException e) {
            Log.e(TAG, "SHORTCUT_ITEM_CREATE_FAILED type=" + e.getClass().getSimpleName(), e);
            return null;
        }
    }

    public static Intent createLaunchIntent(Context context, String packageName, String shortcutId, long userSerial,
                                            boolean allowPrimaryFallback) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, ShortcutLaunchActivity.class));
        intent.putExtra(EXTRA_PACKAGE, packageName);
        intent.putExtra(EXTRA_ID, shortcutId);
        intent.putExtra(EXTRA_USER_SERIAL, userSerial);
        intent.putExtra(EXTRA_FINAL_ICON, true);
        intent.putExtra(EXTRA_LAUNCH_VIA_ACTIVITY, true);
        intent.putExtra(EXTRA_ALLOW_PRIMARY_FALLBACK, allowPrimaryFallback);
        return intent;
    }

    /** Uses the original DatabaseUpdater.Action.maa entry without duplicating its model/PageView work. */
    public static boolean dispatchInstall(Object item) {
        try {
            Class<?> actionClass = Class.forName("com.smartisanos.launcher.data.DatabaseUpdater$Action");
            @SuppressWarnings({"unchecked", "rawtypes"})
            Object action = Enum.valueOf((Class<? extends Enum>) actionClass.asSubclass(Enum.class), "maa");
            Method dispatch = Class.forName("com.smartisanos.launcher.data.F").getMethod(
                    "b", actionClass, java.util.List.class, ArrayList.class);
            ArrayList<Object> items = new ArrayList<>(1);
            items.add(item);
            dispatch.invoke(null, action, null, items);
            Log.i(TAG, "SHORTCUT_DATABASE_DISPATCHED action=maa package=" + getField(item, "packageName")
                    + " shortcutId=" + getField(item, "shortcutId"));
            return true;
        } catch (ReflectiveOperationException e) {
            Log.e(TAG, "SHORTCUT_DATABASE_DISPATCH_FAILED type=" + e.getClass().getSimpleName(), e);
            return false;
        }
    }

    /** Removes only transparent margins, preserves aspect ratio, and centers on the original icon canvas. */
    public static Bitmap drawableToNormalizedShortcutBitmap(Bitmap source, int targetSize) {
        if (source == null || targetSize <= 0) {
            return null;
        }
        final int width = source.getWidth();
        final int height = source.getHeight();
        int left = width;
        int top = height;
        int right = -1;
        int bottom = -1;
        int[] pixels = new int[width * height];
        source.getPixels(pixels, 0, width, 0, 0, width, height);
        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                if ((pixels[y * width + x] >>> 24) > 8) {
                    left = Math.min(left, x);
                    top = Math.min(top, y);
                    right = Math.max(right, x);
                    bottom = Math.max(bottom, y);
                }
            }
        }
        if (right < left || bottom < top) {
            return null;
        }
        Rect src = new Rect(left, top, right + 1, bottom + 1);
        float scale = Math.min((float) targetSize / src.width(), (float) targetSize / src.height());
        int drawWidth = Math.max(1, Math.round(src.width() * scale));
        int drawHeight = Math.max(1, Math.round(src.height() * scale));
        Rect dst = new Rect((targetSize - drawWidth) / 2, (targetSize - drawHeight) / 2,
                (targetSize + drawWidth) / 2, (targetSize + drawHeight) / 2);
        Bitmap normalized = Bitmap.createBitmap(targetSize, targetSize, Bitmap.Config.ARGB_8888);
        new Canvas(normalized).drawBitmap(source, src, dst, new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG));
        return normalized;
    }

    private static int targetIconSize(Context context, Bitmap bitmap) {
        // The original compositor reads this same canvas size from LayoutProperty. Keep the fallback
        // only for an unavailable layout during early model startup.
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            int mode = (Integer) constants.getMethod("getPAGE_1_3X3_MODE").invoke(null);
            Object property = constants.getMethod("mode", int.class).invoke(null, mode);
            return Math.max(1, Math.round(property.getClass().getField("icon_size_origin").getFloat(property)));
        } catch (ReflectiveOperationException ignored) {
            return Math.max(bitmap.getWidth(), bitmap.getHeight());
        }
    }

    private static int userIdentifier(UserHandle user) {
        try {
            return (Integer) UserHandle.class.getMethod("getIdentifier").invoke(user);
        } catch (ReflectiveOperationException ignored) {
            return -1;
        }
    }

    private static Object getField(Object target, String name) throws ReflectiveOperationException {
        return target.getClass().getField(name).get(target);
    }

    private static void setField(Object target, String name, Object value) throws ReflectiveOperationException {
        target.getClass().getField(name).set(target, value);
    }

    private static String frameType(String packageName) {
        if ("com.tencent.mm".equals(packageName)) return "wechat_shortcut";
        if ("com.eg.android.AlipayGphone".equals(packageName)) return "alipay_shortcut";
        return "contact_shortcut";
    }
}
