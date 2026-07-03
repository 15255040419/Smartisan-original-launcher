package smartisanos.app.wallpaper;

import android.app.WallpaperManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.provider.Settings;
import android.text.TextUtils;

import java.util.concurrent.CopyOnWriteArrayList;

/**
 * Compatibility implementation for non-Smartisan Android builds.
 *
 * Smartisan OS exposes this class from the framework.  AOSP devices do not,
 * although the original launcher references it whenever tablet mode is
 * evaluated.  Keeping the same API prevents class verification failures and
 * maps wallpaper changes to the public Android broadcast contract.
 */
public final class TabletWallpaperHelper {
    public interface WallpaperChangeListener {
        void onWallpaperChanged(String wallpaper);
    }

    private static volatile TabletWallpaperHelper instance;

    private final Context appContext;
    private final CopyOnWriteArrayList<WallpaperChangeListener> listeners =
            new CopyOnWriteArrayList<>();
    private volatile boolean receiverRegistered;

    private TabletWallpaperHelper(Context context) {
        appContext = context.getApplicationContext();
    }

    public static TabletWallpaperHelper getInstance(Context context) {
        if (instance == null) {
            synchronized (TabletWallpaperHelper.class) {
                if (instance == null) {
                    instance = new TabletWallpaperHelper(context);
                }
            }
        }
        return instance;
    }

    public void registerWallpaperChangeListener(WallpaperChangeListener listener) {
        if (listener == null) return;
        if (!listeners.contains(listener)) listeners.add(listener);
        ensureReceiverRegistered();
    }

    public void unregisterWallpaperChangeListener(WallpaperChangeListener listener) {
        if (listener != null) listeners.remove(listener);
    }

    public String getWallpaper() {
        String value = readSetting("desktop_wallpaper_uri");
        if (!TextUtils.isEmpty(value)) return value;
        SharedPreferences prefs = appContext.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE);
        value = prefs.getString("launcher_wallpaper_uri", "");
        return value == null ? "" : value;
    }

    private String readSetting(String key) {
        try {
            String value = Settings.System.getString(appContext.getContentResolver(), key);
            if (!TextUtils.isEmpty(value)) return value;
        } catch (RuntimeException ignored) {
        }
        try {
            return Settings.Global.getString(appContext.getContentResolver(), key);
        } catch (RuntimeException ignored) {
            return "";
        }
    }

    private synchronized void ensureReceiverRegistered() {
        if (receiverRegistered) return;
        IntentFilter filter = new IntentFilter(Intent.ACTION_WALLPAPER_CHANGED);
        appContext.registerReceiver(new BroadcastReceiver() {
            @Override public void onReceive(Context context, Intent intent) {
                String wallpaper = getWallpaper();
                for (WallpaperChangeListener listener : listeners) {
                    try {
                        listener.onWallpaperChanged(wallpaper);
                    } catch (RuntimeException ignored) {
                    }
                }
            }
        }, filter);
        receiverRegistered = true;
    }
}
