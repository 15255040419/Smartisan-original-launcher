package com.smartisanos.launcher;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.Process;
import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/** Minimal bridge between Android O pinned shortcuts and the original QuickLaunch database path. */
public final class ShortcutCompatBridge {
    public static final String EXTRA_PACKAGE = "smartisan.shortcut.package";
    public static final String EXTRA_ID = "smartisan.shortcut.id";
    public static final String EXTRA_USER_SERIAL = "smartisan.shortcut.user_serial";
    public static final String EXTRA_FINAL_ICON = "smartisan.shortcut.final_icon";
    public static final String EXTRA_LAUNCH_VIA_ACTIVITY = "smartisan.shortcut.launch_via_activity";
    public static final String EXTRA_ALLOW_PRIMARY_FALLBACK = "smartisan.shortcut.primary_user";
    private static final String TAG = "ShortcutCompat";
    private static final ThreadLocal<String> PENDING_DELETE_DIALOG = new ThreadLocal<>();

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
            boolean isPrimaryUser = user != null && Process.myUserHandle().equals(user);
            setField(item, "userId", userId);
            Log.i(TAG, "SHORTCUT_USER_RESOLVED package=" + packageName
                    + " shortcutId=" + shortcutId
                    + " userIdentifier=" + userId
                    + " userSerial=" + userSerial
                    + " isPrimaryUser=" + isPrimaryUser);

            Bitmap source = (Bitmap) getField(item, "icon");
            String iconSource = "shortcut";
            Bitmap normalized = normalizeShortcutBitmap(context, source);
            if (normalized == null) {
                iconSource = "launcher_apps_retry";
                LauncherApps apps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
                Drawable drawable = apps == null ? null
                        : apps.getShortcutIconDrawable(shortcut, context.getResources().getDisplayMetrics().densityDpi);
                normalized = normalizeShortcutBitmap(context, drawableToBitmap(drawable));
            }
            if (normalized == null) {
                iconSource = "original_default";
                normalized = normalizeShortcutBitmap(context, originalDefaultShortcutIcon(context));
            }
            if (normalized == null) {
                iconSource = "application_fallback";
                Drawable drawable = context.getPackageManager().getApplicationIcon(packageName);
                normalized = normalizeShortcutBitmap(context, drawableToBitmap(drawable));
            }
            if (normalized == null) {
                Log.e(TAG, "SHORTCUT_ITEM_CREATE_FAILED reason=no_usable_icon package=" + packageName
                        + " shortcutId=" + shortcutId + " userId=" + userId);
                return null;
            }
            Log.i(TAG, "SHORTCUT_ICON_INPUT iconSource=" + iconSource + " package=" + packageName
                    + " shortcutId=" + shortcutId + " userId=" + userId);
            Log.i(TAG, "SHORTCUT_ICON_NORMALIZED package=" + packageName + " shortcutId=" + shortcutId
                    + " width=" + normalized.getWidth() + " height=" + normalized.getHeight());
            Bitmap finalBitmap;
            String finalMode;
            if (isProviderDecoratedShortcut(packageName)) {
                finalBitmap = normalized;
                finalMode = "source_already_decorated";
            } else {
                Class<?> compositor = Class.forName("com.smartisanos.launcher.e.s");
                Bitmap composed = (Bitmap) compositor.getMethod("a", Context.class, Bitmap.class, String.class, int.class)
                        .invoke(null, context, normalized, packageName, userId);
                if (composed == null) {
                    Log.e(TAG, "SHORTCUT_ITEM_CREATE_FAILED reason=icon_composition_failed package="
                            + packageName + " shortcutId=" + shortcutId + " userId=" + userId);
                    return null;
                }
                finalBitmap = composed;
                finalMode = "original_compositor";
            }
            Log.i(TAG, "SHORTCUT_ICON_FINAL_MODE package=" + packageName + " shortcutId=" + shortcutId
                    + " mode=" + finalMode);
            setField(item, "icon", finalBitmap);
            setField(item, "intent", createLaunchIntent(context, packageName, shortcutId, userSerial,
                    isPrimaryUser && userSerial >= 0));
            Log.i(TAG, "SHORTCUT_ICON_FINAL_READY package=" + packageName + " shortcutId=" + shortcutId
                    + " userId=" + userId + " frameType="
                    + (isProviderDecoratedShortcut(packageName) ? "source_already_decorated" : frameType(packageName))
                    + " iconSource=" + iconSource);
            return item;
        } catch (Throwable error) {
            Log.e(TAG, "SHORTCUT_ITEM_CREATE_FAILED type=" + error.getClass().getSimpleName(), error);
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
        if (item == null) {
            Log.e(TAG, "SHORTCUT_DATABASE_DISPATCH_FAILED reason=item_null");
            return false;
        }
        try {
            Class<?> actionClass = Class.forName("com.smartisanos.launcher.data.DatabaseUpdater$Action");
            Object action = resolveInstallAction(actionClass);
            Method dispatch = Class.forName("com.smartisanos.launcher.data.F").getMethod(
                    "b", actionClass, java.util.List.class, ArrayList.class);
            ArrayList<Object> items = new ArrayList<>(1);
            items.add(item);
            dispatch.invoke(null, action, null, items);
            Log.i(TAG, "SHORTCUT_DATABASE_DISPATCHED actionField=maa actionName="
                    + ((Enum<?>) action).name() + " itemCount=1 package=" + getField(item, "packageName")
                    + " shortcutId=" + getField(item, "shortcutId"));
            return true;
        } catch (Throwable error) {
            Throwable cause = error instanceof InvocationTargetException
                    && ((InvocationTargetException) error).getCause() != null
                    ? ((InvocationTargetException) error).getCause() : error;
            Log.e(TAG, "SHORTCUT_DATABASE_DISPATCH_FAILED type=" + cause.getClass().getSimpleName()
                    + " message=" + String.valueOf(cause.getMessage()), cause);
            return false;
        }
    }

    public static void onShortcutDeleteDialogRequested(Object item) {
        try {
            String identity = deleteIdentity(item);
            PENDING_DELETE_DIALOG.set(identity);
            Log.i(TAG, "SHORTCUT_DELETE_REQUESTED " + identity);
        } catch (Throwable error) {
            Log.e(TAG, "SHORTCUT_DELETE_REQUESTED_FAILED type=" + error.getClass().getSimpleName(), error);
        }
    }

    public static void onShortcutDeleteDialogShown() {
        String identity = PENDING_DELETE_DIALOG.get();
        if (identity == null) return;
        PENDING_DELETE_DIALOG.remove();
        Log.i(TAG, "SHORTCUT_DELETE_DIALOG_SHOWN " + identity);
    }

    /** Runs only after the original EVENT_UNINSTALL_SHORTCUT dispatch returns. */
    public static void onShortcutDelete(Context context, Object item) {
        try {
            Intent intent = (Intent) getField(item, "intent");
            String packageName = intent.getStringExtra(EXTRA_PACKAGE);
            String shortcutId = intent.getStringExtra(EXTRA_ID);
            long userSerial = intent.getLongExtra(EXTRA_USER_SERIAL, -1L);
            int userId = ((Number) getField(item, "userId")).intValue();
            Log.i(TAG, "SHORTCUT_DELETE_CONFIRMED " + deleteIdentity(item));
            Log.i(TAG, "SHORTCUT_DELETE_ACTION_RESOLVED field=naa enumName=EVENT_UNINSTALL_SHORTCUT");
            Log.i(TAG, "SHORTCUT_DELETE_DATABASE_DISPATCHED itemId=" + getField(item, "id") + " package=" + packageName
                    + " shortcutId=" + shortcutId + " userId=" + userId + " userSerial=" + userSerial);
            unpinShortcut(context, packageName, shortcutId, userId, userSerial);
        } catch (Throwable error) {
            Log.e(TAG, "SHORTCUT_UNPIN_FAILED reason=identity type=" + error.getClass().getSimpleName(), error);
        }
    }

    private static String deleteIdentity(Object item) throws ReflectiveOperationException {
        Intent intent = (Intent) getField(item, "intent");
        return "itemId=" + getField(item, "id")
                + " package=" + intent.getStringExtra(EXTRA_PACKAGE)
                + " shortcutId=" + intent.getStringExtra(EXTRA_ID)
                + " userId=" + getField(item, "userId")
                + " userSerial=" + intent.getLongExtra(EXTRA_USER_SERIAL, -1L);
    }

    private static void unpinShortcut(Context context, String packageName, String shortcutId, int userId, long userSerial) {
        Log.i(TAG, "SHORTCUT_UNPIN_BEGIN package=" + packageName + " shortcutId=" + shortcutId
                + " userId=" + userId + " userSerial=" + userSerial);
        try {
            if (packageName == null || shortcutId == null) throw new IllegalArgumentException("missing shortcut identity");
            UserManager users = (UserManager) context.getSystemService(Context.USER_SERVICE);
            UserHandle user = userSerial >= 0 && users != null ? users.getUserForSerialNumber(userSerial) : null;
            if (user == null && userId == userIdentifier(Process.myUserHandle())) user = Process.myUserHandle();
            if (user == null) throw new IllegalStateException("unresolved user");
            LauncherApps apps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
            if (apps == null) throw new IllegalStateException("LauncherApps unavailable");
            LauncherApps.ShortcutQuery query = new LauncherApps.ShortcutQuery()
                    .setPackage(packageName)
                    .setQueryFlags(LauncherApps.ShortcutQuery.FLAG_MATCH_PINNED);
            List<ShortcutInfo> pinned = apps.getShortcuts(query, user);
            ArrayList<String> remaining = new ArrayList<>();
            if (pinned != null) {
                for (ShortcutInfo value : pinned) {
                    if (!shortcutId.equals(value.getId())) remaining.add(value.getId());
                }
            }
            apps.pinShortcuts(packageName, remaining, user);
            Log.i(TAG, "SHORTCUT_UNPIN_SUCCESS package=" + packageName + " shortcutId=" + shortcutId
                    + " userId=" + userId + " userSerial=" + userSerial + " remaining=" + remaining.size());
        } catch (Throwable error) {
            Log.e(TAG, "SHORTCUT_UNPIN_FAILED package=" + packageName + " shortcutId=" + shortcutId
                    + " userId=" + userId + " userSerial=" + userSerial
                    + " type=" + error.getClass().getSimpleName(), error);
        }
    }

    private static Object resolveInstallAction(Class<?> actionClass) throws ReflectiveOperationException {
        Field field = actionClass.getField("maa");
        Object action = field.get(null);
        if (action == null || !actionClass.isInstance(action) || !(action instanceof Enum)) {
            throw new IllegalStateException("Invalid DatabaseUpdater.Action.maa object");
        }
        Enum<?> value = (Enum<?>) action;
        if (!"EVENT_INSTALL_OR_UPDATE_SHORTCUT".equals(value.name())) {
            throw new IllegalStateException("Unexpected DatabaseUpdater.Action.maa=" + value.name());
        }
        Log.i(TAG, "SHORTCUT_ACTION_RESOLVED field=maa enumName=" + value.name()
                + " ordinal=" + value.ordinal());
        return action;
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

    private static Bitmap normalizeShortcutBitmap(Context context, Bitmap source) {
        return source == null ? null
                : drawableToNormalizedShortcutBitmap(source, targetIconSize(context, source));
    }

    private static Bitmap originalDefaultShortcutIcon(Context context) {
        try {
            int id = context.getResources().getIdentifier("contact_shortcut", "drawable", context.getPackageName());
            return id == 0 ? null : drawableToBitmap(context.getResources().getDrawable(id));
        } catch (Throwable error) {
            Log.w(TAG, "SHORTCUT_ORIGINAL_DEFAULT_ICON_FAILED type="
                    + error.getClass().getSimpleName());
            return null;
        }
    }

    private static Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable == null) return null;
        int width = Math.max(1, drawable.getIntrinsicWidth());
        int height = Math.max(1, drawable.getIntrinsicHeight());
        Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        return bitmap;
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

    private static boolean isProviderDecoratedShortcut(String packageName) {
        return "com.tencent.mm".equals(packageName)
                || "com.eg.android.AlipayGphone".equals(packageName);
    }
}
