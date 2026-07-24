package com.smartisanos.home.settings.icons;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.LruCache;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Locale;

/**
 * Application-scoped, bounded icon renderer shared by the settings list, icon chooser and
 * per-application picker.  It deliberately owns no Activity or View; callers bind a render key
 * and discard callbacks whose row or page generation is no longer current.
 */
public final class IconPreviewRepository implements ComponentCallbacks2 {
    public interface Callback { void onIconReady(String key, Bitmap bitmap); }
    public interface DrawableLoader { Drawable load() throws Exception; }
    public enum Priority { P0_VISIBLE, P1_ADJACENT, P2_IDLE }

    public static final class ImprovedCandidate {
        public final String packageName;
        public final String componentName;
        public final String sourceId;
        public final boolean exists;

        public ImprovedCandidate(String packageName, String componentName, String sourceId, boolean exists) {
            this.packageName = packageName == null ? "" : packageName;
            this.componentName = componentName == null ? "" : componentName;
            this.sourceId = sourceId == null ? "" : sourceId;
            this.exists = exists;
        }
    }

    /** Stable identity for the final, target-sized bitmap. Never include a View or generation. */
    public static final class IconRenderKey {
        public final String packageName;
        public final String componentName;
        public final long userSerial;
        public final String sourceType;
        public final String sourceId;
        public final long sourceVersion;
        public final int targetPixelSize;
        public final int densityDpi;
        public final int renderRevision;

        public IconRenderKey(String packageName, String componentName, long userSerial,
                             String sourceType, String sourceId, long sourceVersion,
                             int targetPixelSize, int densityDpi, int renderRevision) {
            this.packageName = safe(packageName);
            this.componentName = safe(componentName);
            this.userSerial = userSerial;
            this.sourceType = safe(sourceType);
            this.sourceId = safe(sourceId);
            this.sourceVersion = sourceVersion;
            this.targetPixelSize = targetPixelSize;
            this.densityDpi = densityDpi;
            this.renderRevision = renderRevision;
        }

        @Override public boolean equals(Object value) {
            if (!(value instanceof IconRenderKey)) return false;
            IconRenderKey other = (IconRenderKey) value;
            return userSerial == other.userSerial && sourceVersion == other.sourceVersion
                    && targetPixelSize == other.targetPixelSize && densityDpi == other.densityDpi
                    && renderRevision == other.renderRevision && packageName.equals(other.packageName)
                    && componentName.equals(other.componentName) && sourceType.equals(other.sourceType)
                    && sourceId.equals(other.sourceId);
        }

        @Override public int hashCode() {
            int result = packageName.hashCode();
            result = 31 * result + componentName.hashCode();
            result = 31 * result + (int) (userSerial ^ (userSerial >>> 32));
            result = 31 * result + sourceType.hashCode();
            result = 31 * result + sourceId.hashCode();
            result = 31 * result + (int) (sourceVersion ^ (sourceVersion >>> 32));
            result = 31 * result + targetPixelSize;
            result = 31 * result + densityDpi;
            return 31 * result + renderRevision;
        }

        @Override public String toString() {
            return sourceType + '|' + packageName + '|' + componentName + '|' + userSerial + '|'
                    + sourceId + '|' + sourceVersion + '|' + targetPixelSize + '|'
                    + densityDpi + '|' + renderRevision;
        }

        private static String safe(String value) { return value == null ? "" : value; }
    }

    /** Immutable page metadata. The Adapter must not redo database/index/appfilter lookups. */
    public static final class AppIconRowModel {
        public final String packageName, componentName, displayName, configuredMode, configuredSourceId;
        public final long userSerial, appVersionStamp;
        public final boolean hasImprovedCandidate, hasPackCandidate;
        public final String improvedCandidateName, packDrawableName, sectionType;

        public AppIconRowModel(String packageName, String componentName, long userSerial,
                               String displayName, String configuredMode, String configuredSourceId,
                               boolean hasImprovedCandidate, String improvedCandidateName,
                               boolean hasPackCandidate, String packDrawableName, String sectionType,
                               long appVersionStamp) {
            this.packageName = packageName == null ? "" : packageName;
            this.componentName = componentName == null ? "" : componentName;
            this.userSerial = userSerial;
            this.displayName = displayName == null ? "" : displayName;
            this.configuredMode = configuredMode == null ? "" : configuredMode;
            this.configuredSourceId = configuredSourceId == null ? "" : configuredSourceId;
            this.hasImprovedCandidate = hasImprovedCandidate;
            this.improvedCandidateName = improvedCandidateName == null ? "" : improvedCandidateName;
            this.hasPackCandidate = hasPackCandidate;
            this.packDrawableName = packDrawableName == null ? "" : packDrawableName;
            this.sectionType = sectionType == null ? "" : sectionType;
            this.appVersionStamp = appVersionStamp;
        }
    }

    public static final class AppIconSnapshot {
        public final long builtUptime;
        public final ArrayList<AppIconRowModel> rows;
        public AppIconSnapshot(ArrayList<AppIconRowModel> rows) {
            this.builtUptime = android.os.SystemClock.uptimeMillis();
            this.rows = rows == null ? new ArrayList<AppIconRowModel>() : rows;
        }
    }

    private static final int DISK_LIMIT_BYTES = 64 * 1024 * 1024;
    private static volatile IconPreviewRepository sInstance;
    private final Context app;
    private final LruCache<IconRenderKey, Bitmap> cache;
    private final ThreadPoolExecutor decodePool;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final Map<IconRenderKey, ArrayList<Callback>> pending = new HashMap<IconRenderKey, ArrayList<Callback>>();
    private final Map<String, IconRenderKey> knownKeys = new HashMap<String, IconRenderKey>();
    private final AtomicLong sequence = new AtomicLong();
    private volatile boolean pauseP2;

    private IconPreviewRepository(Context context) {
        app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        ActivityManager am = (ActivityManager) app.getSystemService(Context.ACTIVITY_SERVICE);
        int memoryClass = am == null ? 192 : am.getMemoryClass();
        final int bytes = Math.max(6 * 1024 * 1024, Math.min(16 * 1024 * 1024,
                memoryClass * 1024 * 1024 / 32));
        cache = new LruCache<IconRenderKey, Bitmap>(bytes) {
            @Override protected int sizeOf(IconRenderKey key, Bitmap value) {
                return value == null ? 0 : value.getAllocationByteCount();
            }
        };
        decodePool = new ThreadPoolExecutor(2, 2, 15L, TimeUnit.SECONDS,
                new PriorityBlockingQueue<Runnable>());
        app.registerComponentCallbacks(this);
    }

    public static IconPreviewRepository get(Context context) {
        IconPreviewRepository value = sInstance;
        if (value != null) return value;
        synchronized (IconPreviewRepository.class) {
            if (sInstance == null) sInstance = new IconPreviewRepository(context);
            return sInstance;
        }
    }

    public Bitmap getCachedOfficialIcon(String packageName, String componentName, long userSerial,
                                        long versionStamp, int targetPx) {
        return cache.get(defaultKey(packageName, componentName, userSerial, versionStamp, targetPx));
    }

    public String requestOfficial(final ResolveInfo info, final long userSerial, final long versionStamp,
                                  final int targetPx, Callback callback) {
        if (info == null || info.activityInfo == null) return "";
        IconRenderKey key = defaultKey(info.activityInfo.packageName, info.activityInfo.name,
                userSerial, versionStamp, targetPx);
        request(key, Priority.P0_VISIBLE, new DrawableLoader() {
            public Drawable load() { return info.loadIcon(app.getPackageManager()); }
        }, callback);
        return key.toString();
    }

    public static void logPerf(String tag, String packageName, String componentName, long userSerial,
                               String sourceType, int targetPx, long durationMs) {
        android.util.Log.d("SmartisanPerf", tag + " | pkg=" + (packageName == null ? "" : packageName)
                + " | cmp=" + (componentName == null ? "" : componentName)
                + " | user=" + userSerial
                + " | type=" + (sourceType == null ? "" : sourceType)
                + " | targetPx=" + targetPx
                + " | thread=" + Thread.currentThread().getName()
                + " | durationMs=" + durationMs);
    }

    public void request(final IconRenderKey key, final Priority priority, final DrawableLoader loader,
                        Callback callback) {
        if (key == null || loader == null) return;
        if (priority != Priority.P2_IDLE) pauseP2 = false;
        synchronized (knownKeys) { knownKeys.put(key.toString(), key); }
        Bitmap ready = cache.get(key);
        if (ready != null) {
            logPerf("ICON_CACHE_HIT", key.packageName, key.componentName, key.userSerial, key.sourceType, key.targetPixelSize, 0);
            if (callback != null) callback.onIconReady(key.toString(), ready);
            return;
        }
        logPerf("ICON_CACHE_MISS", key.packageName, key.componentName, key.userSerial, key.sourceType, key.targetPixelSize, 0);
        synchronized (pending) {
            ArrayList<Callback> callbacks = pending.get(key);
            if (callbacks != null) {
                if (callback != null) callbacks.add(callback);
                return;
            }
            callbacks = new ArrayList<Callback>();
            if (callback != null) callbacks.add(callback);
            pending.put(key, callbacks);
        }
        if (priority == Priority.P2_IDLE && pauseP2) {
            finish(key, null);
            return;
        }
        decodePool.execute(new RenderTask(key, priority, loader, sequence.incrementAndGet()));
    }

    /** Schedules metadata/disk preparation without retaining or rasterizing a Bitmap. */
    public void schedule(Priority priority, final Runnable operation) {
        if (operation == null || (priority == Priority.P2_IDLE && pauseP2)) return;
        if (priority != Priority.P2_IDLE) pauseP2 = false;
        decodePool.execute(new RenderTask(null, priority, new DrawableLoader() {
            public Drawable load() { operation.run(); return null; }
        }, sequence.incrementAndGet()));
    }

    public Drawable cachedDrawable(String serializedKey) {
        IconRenderKey key;
        synchronized (knownKeys) { key = knownKeys.get(serializedKey); }
        return cachedDrawable(key);
    }

    public Drawable cachedDrawable(IconRenderKey key) {
        Bitmap bitmap = key == null ? null : cache.get(key);
        return bitmap == null ? null : new BitmapDrawable(app.getResources(), bitmap);
    }

    public void trimMemory() { trimMemory(ComponentCallbacks2.TRIM_MEMORY_RUNNING_LOW); }

    public void trimMemory(int level) {
        if (level >= ComponentCallbacks2.TRIM_MEMORY_COMPLETE) {
            pauseP2 = true;
            cache.evictAll();
        } else if (level >= ComponentCallbacks2.TRIM_MEMORY_BACKGROUND) {
            pauseP2 = true;
            cache.trimToSize(cache.maxSize() / 4);
        } else if (level >= ComponentCallbacks2.TRIM_MEMORY_RUNNING_LOW) {
            pauseP2 = true;
            cache.trimToSize(cache.maxSize() / 2);
        }
    }

    /** Low-priority maintenance after a completed online-icon write, never on page open. */
    public void trimOnlineDiskCacheAsync() {
        decodePool.execute(new RenderTask(null, Priority.P2_IDLE, new DrawableLoader() {
            public Drawable load() {
                trimOnlineDiskCache();
                return null;
            }
        }, sequence.incrementAndGet()));
    }

    private void trimOnlineDiskCache() {
        File dir = new File(app.getFilesDir(), "online_icon_cache_v3");
        File[] files = dir.listFiles();
        if (files == null) return;
        long total = 0;
        ArrayList<File> candidates = new ArrayList<File>();
        for (File file : files) {
            if (!file.isFile() || file.getName().endsWith(".tmp")) continue;
            total += file.length(); candidates.add(file);
        }
        if (total <= DISK_LIMIT_BYTES) return;
        Collections.sort(candidates, new Comparator<File>() {
            public int compare(File a, File b) { return a.lastModified() < b.lastModified() ? -1 : 1; }
        });
        long target = DISK_LIMIT_BYTES * 85L / 100L;
        for (File file : candidates) {
            if (total <= target) break;
            long size = file.length();
            if (file.delete()) total -= size;
        }
    }

    @Override public void onTrimMemory(int level) { trimMemory(level); }
    @Override public void onConfigurationChanged(Configuration configuration) { }
    @Override public void onLowMemory() { trimMemory(ComponentCallbacks2.TRIM_MEMORY_COMPLETE); }

    private final class RenderTask implements Runnable, Comparable<RenderTask> {
        final IconRenderKey key; final Priority priority; final DrawableLoader loader; final long order;
        RenderTask(IconRenderKey key, Priority priority, DrawableLoader loader, long order) {
            this.key = key; this.priority = priority; this.loader = loader; this.order = order;
        }
        public int compareTo(RenderTask other) {
            int result = priority.ordinal() - other.priority.ordinal();
            return result != 0 ? result : (order < other.order ? -1 : (order == other.order ? 0 : 1));
        }
        public void run() {
            Bitmap bitmap = null;
            long startMs = android.os.SystemClock.elapsedRealtime();
            if (key != null) {
                logPerf("ICON_DECODE_BEGIN", key.packageName, key.componentName, key.userSerial, key.sourceType, key.targetPixelSize, 0);
            }
            try { if (key != null) bitmap = drawableToBitmap(loader.load(), key.targetPixelSize); }
            catch (Throwable ignored) { }
            long durationMs = android.os.SystemClock.elapsedRealtime() - startMs;
            if (key != null) {
                logPerf("ICON_DECODE_END", key.packageName, key.componentName, key.userSerial, key.sourceType, key.targetPixelSize, durationMs);
            }
            if (key != null && bitmap != null) cache.put(key, bitmap);
            if (key != null) finish(key, bitmap);
        }
    }

    private void finish(final IconRenderKey key, final Bitmap bitmap) {
        main.post(new Runnable() { public void run() {
            ArrayList<Callback> callbacks;
            synchronized (pending) { callbacks = pending.remove(key); }
            if (callbacks == null) return;
            for (Callback value : callbacks) value.onIconReady(key.toString(), bitmap);
        }});
    }

    private IconRenderKey defaultKey(String pkg, String component, long user, long version, int px) {
        return new IconRenderKey(pkg, component, user, "DEFAULT", "", version, px,
                app.getResources().getDisplayMetrics().densityDpi, 1);
    }

    private Map<String, java.util.List<String>> sVariantsMap;

    public synchronized ImprovedCandidate resolveImprovedCandidate(String packageName, String componentName) {
        if (TextUtils.isEmpty(packageName)) {
            return new ImprovedCandidate(packageName, componentName, "", false);
        }
        ensureVariantsMapLoaded();
        String normalizedClass = componentName;
        if (!TextUtils.isEmpty(normalizedClass) && normalizedClass.startsWith(".")) {
            normalizedClass = packageName + normalizedClass;
        }

        // Matching order (Requirement III):
        // 1. 系统组件/系统别名候选 (优先于包名候选，确保手机管家优先归属 com.smartisanos.security)
        String systemAlias = smartisanSystemIconAlias(packageName, normalizedClass);
        if (!TextUtils.isEmpty(systemAlias) && checkCandidateExists(systemAlias)) {
            return new ImprovedCandidate(packageName, componentName, systemAlias, true);
        }

        // 2. packageName + 完整 componentName
        if (!TextUtils.isEmpty(normalizedClass)) {
            String key1 = packageName + "_" + normalizedClass;
            if (checkCandidateExists(key1)) {
                return new ImprovedCandidate(packageName, componentName, key1, true);
            }
        }

        // 3. packageName + 规范化 Activity 名
        if (!TextUtils.isEmpty(normalizedClass)) {
            int lastDot = normalizedClass.lastIndexOf('.');
            String simpleName = lastDot >= 0 ? normalizedClass.substring(lastDot + 1) : normalizedClass;
            String key2 = packageName + "_" + simpleName;
            if (checkCandidateExists(key2)) {
                return new ImprovedCandidate(packageName, componentName, key2, true);
            }
        }

        // 4. packageName 主图标
        if (checkCandidateExists(packageName)) {
            return new ImprovedCandidate(packageName, componentName, packageName, true);
        }

        // 5 & 6. variants.json / index.json
        java.util.List<String> variants = sVariantsMap == null ? null : sVariantsMap.get(packageName);
        if (variants != null && !variants.isEmpty()) {
            String firstVariant = stripPng(variants.get(0));
            if (!TextUtils.isEmpty(firstVariant)) {
                return new ImprovedCandidate(packageName, componentName, firstVariant, true);
            }
        }

        return new ImprovedCandidate(packageName, componentName, "", false);
    }

    public synchronized java.util.List<String> getVariantsForPackage(String packageName) {
        ensureVariantsMapLoaded();
        if (TextUtils.isEmpty(packageName) || sVariantsMap == null) {
            return Collections.emptyList();
        }
        java.util.List<String> list = sVariantsMap.get(packageName);
        if (list != null) {
            ArrayList<String> result = new ArrayList<String>();
            for (String item : list) {
                String stripped = stripPng(item);
                if (!TextUtils.isEmpty(stripped) && !result.contains(stripped)) {
                    result.add(stripped);
                }
            }
            return result;
        }
        return Collections.emptyList();
    }

    private boolean checkCandidateExists(String key) {
        if (TextUtils.isEmpty(key)) return false;
        // Check built-in resources
        String resName = key.replace('.', '_').replace('-', '_');
        int id = app.getResources().getIdentifier(resName, "drawable", app.getPackageName());
        if (id != 0) return true;

        // Check local disk cache
        File dir = new File(app.getFilesDir(), "online_icon_cache_v3");
        File diskFile = new File(dir, key + ".png");
        if (diskFile.exists() && diskFile.length() > 0) return true;

        // Check variants map
        if (sVariantsMap != null && sVariantsMap.containsKey(key)) return true;

        return false;
    }

    public Drawable loadImprovedIconDrawableCachedOnly(String sourceId) {
        if (TextUtils.isEmpty(sourceId)) return null;
        // 1. Built-in resources
        String resName = sourceId.replace('.', '_').replace('-', '_');
        int resId = app.getResources().getIdentifier(resName, "drawable", app.getPackageName());
        if (resId != 0) {
            try {
                Drawable d = app.getResources().getDrawable(resId);
                if (d != null) return d;
            } catch (Throwable ignored) {}
        }
        // 2. Local disk cache
        File dir = new File(app.getFilesDir(), "online_icon_cache_v3");
        File diskFile = new File(dir, sourceId + ".png");
        if (diskFile.exists() && diskFile.length() > 0) {
            try {
                Bitmap decoded = android.graphics.BitmapFactory.decodeFile(diskFile.getAbsolutePath());
                if (decoded != null) return new BitmapDrawable(app.getResources(), decoded);
            } catch (Throwable ignored) {}
        }
        return null;
    }

    public Drawable resolveDesktopImprovedIconCachedOnly(String packageName, String componentName, long userSerial, int targetPixelSize) {
        ImprovedCandidate candidate = resolveImprovedCandidate(packageName, componentName);
        if (!candidate.exists || TextUtils.isEmpty(candidate.sourceId)) {
            return null;
        }
        long versionStamp = 0L;
        try {
            versionStamp = app.getPackageManager().getPackageInfo(packageName, 0).lastUpdateTime;
        } catch (Throwable ignored) {}
        IconRenderKey key = new IconRenderKey(packageName, componentName, userSerial, "IMPROVED", candidate.sourceId,
                versionStamp, targetPixelSize, app.getResources().getDisplayMetrics().densityDpi, 1);
        Drawable inMemory = cachedDrawable(key);
        if (inMemory != null) {
            return inMemory;
        }
        return loadImprovedIconDrawableCachedOnly(candidate.sourceId);
    }

    public void requestDesktopImprovedIcon(String packageName, String componentName, long userSerial, int targetPixelSize, final Callback callback) {
        final ImprovedCandidate candidate = resolveImprovedCandidate(packageName, componentName);
        if (!candidate.exists || TextUtils.isEmpty(candidate.sourceId)) {
            if (callback != null) callback.onIconReady("", null);
            return;
        }
        long versionStamp = 0L;
        try {
            versionStamp = app.getPackageManager().getPackageInfo(packageName, 0).lastUpdateTime;
        } catch (Throwable ignored) {}
        IconRenderKey key = new IconRenderKey(packageName, componentName, userSerial, "IMPROVED", candidate.sourceId,
                versionStamp, targetPixelSize, app.getResources().getDisplayMetrics().densityDpi, 1);
        request(key, Priority.P1_ADJACENT, new DrawableLoader() {
            public Drawable load() throws Exception {
                return loadImprovedIconDrawable(candidate.sourceId);
            }
        }, callback);
    }

    public Drawable loadImprovedIconDrawable(String sourceId) {
        if (TextUtils.isEmpty(sourceId)) return null;
        // 1. Built-in resources
        String resName = sourceId.replace('.', '_').replace('-', '_');
        int resId = app.getResources().getIdentifier(resName, "drawable", app.getPackageName());
        if (resId != 0) {
            try {
                Drawable d = app.getResources().getDrawable(resId);
                if (d != null) return d;
            } catch (Throwable ignored) {}
        }
        // 2. Local disk cache
        File dir = new File(app.getFilesDir(), "online_icon_cache_v3");
        File diskFile = new File(dir, sourceId + ".png");
        if (diskFile.exists() && diskFile.length() > 0) {
            try {
                Bitmap decoded = android.graphics.BitmapFactory.decodeFile(diskFile.getAbsolutePath());
                if (decoded != null) return new BitmapDrawable(app.getResources(), decoded);
            } catch (Throwable ignored) {}
        }
        // 3. Online download from mirror
        Bitmap downloaded = downloadOnlineIcon(sourceId);
        if (downloaded != null) {
            return new BitmapDrawable(app.getResources(), downloaded);
        }
        return null;
    }

    private Bitmap downloadOnlineIcon(String sourceId) {
        if (TextUtils.isEmpty(sourceId) || !sourceId.matches("[A-Za-z0-9._-]+")) {
            return null;
        }
        String[] mirrors = new String[]{
            "https://gitee.com/RANH-F/Smartisan-original-launcher-download/raw/master/icons/drawable/",
            "https://raw.githubusercontent.com/RANH-F/Smartisan-original-launcher/main/icons/drawable/"
        };
        for (String baseUrl : mirrors) {
            InputStream in = null;
            HttpURLConnection conn = null;
            try {
                URL url = new URL(baseUrl + sourceId + ".png");
                conn = (HttpURLConnection) url.openConnection();
                conn.setConnectTimeout(1500);
                conn.setReadTimeout(2500);
                conn.setUseCaches(true);
                conn.setRequestProperty("Accept", "image/png");
                conn.setRequestProperty("User-Agent", "SmartisanLauncher-OnlineIcon/1");
                if (conn.getResponseCode() != 200) continue;
                String contentType = conn.getContentType();
                if (contentType != null && !contentType.toLowerCase(Locale.US).startsWith("image/")) {
                    continue;
                }
                in = conn.getInputStream();
                ByteArrayOutputStream bytes = new ByteArrayOutputStream();
                byte[] buffer = new byte[8192];
                int read;
                while ((read = in.read(buffer)) != -1) {
                    bytes.write(buffer, 0, read);
                }
                byte[] data = bytes.toByteArray();
                android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                Bitmap bitmap = android.graphics.BitmapFactory.decodeByteArray(data, 0, data.length, options);
                if (bitmap != null && bitmap.getWidth() >= 32 && bitmap.getHeight() >= 32) {
                    saveToDiskCache(sourceId, data);
                    return bitmap;
                }
            } catch (Throwable ignored) {
            } finally {
                if (in != null) try { in.close(); } catch (Throwable ignored) {}
                if (conn != null) try { conn.disconnect(); } catch (Throwable ignored) {}
            }
        }
        return null;
    }

    private void saveToDiskCache(String sourceId, byte[] data) {
        try {
            File dir = new File(app.getFilesDir(), "online_icon_cache_v3");
            if (!dir.exists()) dir.mkdirs();
            File target = new File(dir, sourceId + ".png");
            File tmp = new File(dir, sourceId + ".tmp");
            java.io.FileOutputStream out = new java.io.FileOutputStream(tmp);
            out.write(data);
            out.flush();
            out.close();
            tmp.renameTo(target);
        } catch (Throwable ignored) {}
    }

    private void ensureVariantsMapLoaded() {
        if (sVariantsMap != null) return;
        HashMap<String, java.util.List<String>> out = new HashMap<String, java.util.List<String>>();
        InputStream in = null;
        try {
            in = app.getAssets().open("icons/variants.json");
            ByteArrayOutputStream bytes = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int len;
            while ((len = in.read(buf)) != -1) bytes.write(buf, 0, len);
            String json = new String(bytes.toByteArray(), "UTF-8");
            JSONObject root = new JSONObject(json);
            JSONObject variants = root.optJSONObject("variants");
            if (variants != null) {
                JSONArray names = variants.names();
                if (names != null) {
                    for (int i = 0; i < names.length(); i++) {
                        String pkg = names.optString(i, null);
                        JSONArray arr = pkg == null ? null : variants.optJSONArray(pkg);
                        if (pkg == null || arr == null) continue;
                        ArrayList<String> list = new ArrayList<String>();
                        for (int j = 0; j < arr.length(); j++) {
                            String value = stripPng(arr.optString(j, null));
                            if (!TextUtils.isEmpty(value) && !list.contains(value)) list.add(value);
                        }
                        if (!list.isEmpty()) out.put(pkg, list);
                    }
                }
            }
        } catch (Throwable ignored) {
        } finally {
            if (in != null) try { in.close(); } catch (Throwable ignored) {}
        }
        sVariantsMap = out;
    }

    private static String stripPng(String value) {
        if (value == null) return null;
        String out = value.trim();
        if (out.toLowerCase(Locale.US).endsWith(".png")) {
            out = out.substring(0, out.length() - 4);
        }
        return out;
    }

    private String smartisanSystemIconAlias(String pkg, String cls) {
        return IconManager.resolveSmartisanSystemIconName(pkg, cls, null);
    }

    private static Bitmap drawableToBitmap(Drawable drawable, int size) {
        if (drawable == null || size <= 0) return null;
        Bitmap out = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(out);
        int w = Math.max(1, drawable.getIntrinsicWidth());
        int h = Math.max(1, drawable.getIntrinsicHeight());
        float scale = Math.min((float) size / w, (float) size / h);
        int dw = Math.max(1, Math.round(w * scale)); int dh = Math.max(1, Math.round(h * scale));
        int left = (size - dw) / 2; int top = (size - dh) / 2;
        drawable.setBounds(left, top, left + dw, top + dh); drawable.draw(canvas);
        return out;
    }
}
