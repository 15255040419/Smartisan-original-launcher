package com.smartisanos.launcher.theme;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.Log;

import com.smartisanos.launcher.profile.DoppelgangerCompat;

import java.util.HashSet;
import java.util.Set;
import java.util.Arrays;

/** Keeps normal static-icon cache-to-texture scaling observable and centralized. */
public final class IconRasterDiagnostics {
    private static final String TAG = "LauncherIconRaster";
    private static final Set<String> REPORTED = new HashSet<String>();
    private static final int OPTICAL_ALPHA_CUTOFF = 128;
    private static final float OPTICAL_TARGET_VISIBLE_RATIO = 0.90f;
    private static final String OPTICAL_NORMALIZATION_VERSION = "v1";
    private static final String RASTER_CACHE_VERSION = "raster:v9-optical";

    private static final class VisibleBounds {
        final int left;
        final int top;
        final int right;
        final int bottom;

        VisibleBounds(int left, int top, int right, int bottom) {
            this.left = left;
            this.top = top;
            this.right = right;
            this.bottom = bottom;
        }

        int width() { return right - left + 1; }
        int height() { return bottom - top + 1; }
        float centerX() { return (left + right + 1) * 0.5f; }
        float centerY() { return (top + bottom + 1) * 0.5f; }
    }

    /** The one physical raster contract used by every launcher icon source. */
    public static final class NormalIconRasterSpec {
        public final int logicalArtworkWidth;
        public final int logicalArtworkHeight;
        public final int logicalTextureWidth;
        public final int logicalTextureHeight;
        public final int physicalArtworkWidth;
        public final int physicalArtworkHeight;
        public final int physicalTextureWidth;
        public final int physicalTextureHeight;
        public final int artworkWidth;
        public final int textureWidth;
        public final float artworkInset;
        public final float rasterScale;
        public final String id;

        private NormalIconRasterSpec(int logicalArtworkWidth, int logicalArtworkHeight,
                int logicalTextureWidth, int logicalTextureHeight,
                int physicalArtworkWidth, int physicalArtworkHeight,
                int physicalTextureWidth, int physicalTextureHeight,
                float artworkInset, float rasterScale, String id) {
            this.logicalArtworkWidth = logicalArtworkWidth;
            this.logicalArtworkHeight = logicalArtworkHeight;
            this.logicalTextureWidth = logicalTextureWidth;
            this.logicalTextureHeight = logicalTextureHeight;
            this.physicalArtworkWidth = physicalArtworkWidth;
            this.physicalArtworkHeight = physicalArtworkHeight;
            this.physicalTextureWidth = physicalTextureWidth;
            this.physicalTextureHeight = physicalTextureHeight;
            // Compatibility aliases for the already-shipped static raster path.
            this.artworkWidth = physicalArtworkWidth;
            this.textureWidth = physicalTextureWidth;
            this.artworkInset = artworkInset;
            this.rasterScale = rasterScale;
            this.id = id;
        }
    }

    private IconRasterDiagnostics() {
    }

    /** The persisted iconRawData is a source cache; the returned bitmap is transient only. */
    public static Bitmap rasterizeStaticIcon(Bitmap source, int targetPx) {
        if (source == null || source.isRecycled() || targetPx <= 0) {
            return source;
        }
        int sourceWidth = source.getWidth();
        int sourceHeight = source.getHeight();
        reportSourceOnce(sourceWidth, sourceHeight, targetPx);
        if (sourceWidth == targetPx && sourceHeight == targetPx) {
            return source;
        }
        Bitmap textureInput = Bitmap.createBitmap(targetPx, targetPx, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(textureInput);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        canvas.drawBitmap(source, new Rect(0, 0, sourceWidth, sourceHeight),
                new Rect(0, 0, targetPx, targetPx), paint);
        return textureInput;
    }

    /**
     * Persists source artwork, never a layout-sized texture.  BitmapDrawables,
     * online PNGs, redirect images and icon-pack drawables retain their native
     * raster; framework drawables are rendered only to their intrinsic bounds.
     */
    public static Bitmap sourceBitmap(android.graphics.drawable.Drawable drawable) {
        if (drawable == null) return null;
        String drawableType = drawable.getClass().getName();
        if (drawable instanceof android.graphics.drawable.BitmapDrawable) {
            Bitmap bitmap = ((android.graphics.drawable.BitmapDrawable) drawable).getBitmap();
            if (bitmap != null && !bitmap.isRecycled()) {
                Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, false);
                if (copy != null) {
                    Log.i(TAG, "ICON_RASTER_SOURCE_SELECTED sourceType=ORIGINAL_BITMAP"
                            + " drawableType=" + drawableType
                            + " sourceWidth=" + copy.getWidth() + " sourceHeight=" + copy.getHeight()
                            + " sourceIsOriginal=true sourceIsPreview=false"
                            + " sourceIsFinalTexture=false sourceIsScaledIntermediate=false"
                            + " ownsSourceBitmap=true");
                    return copy;
                }
            }
        }
        int width = drawable.getIntrinsicWidth();
        int height = drawable.getIntrinsicHeight();
        if (width <= 0) width = 1;
        if (height <= 0) height = width;
        Bitmap source = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(source);
        Rect previous = new Rect(drawable.getBounds());
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        drawable.setBounds(previous);
        Log.i(TAG, "ICON_RASTER_SOURCE_SELECTED sourceType=RESOURCE_OR_APK_DRAWABLE"
                + " drawableType=" + drawableType
                + " sourceWidth=" + width + " sourceHeight=" + height
                + " sourceIsOriginal=true sourceIsPreview=false"
                + " sourceIsFinalTexture=false sourceIsScaledIntermediate=false"
                + " ownsSourceBitmap=true");
        return source;
    }

    /** Decodes the persisted source bytes without Aa.h()'s layout-size resample. */
    public static Bitmap iconRawSource(Object itemInfo) {
        if (itemInfo == null) return null;
        try {
            Object value = itemInfo.getClass().getField("iconRawData").get(itemInfo);
            if (!(value instanceof byte[])) return null;
            byte[] bytes = (byte[]) value;
            return bytes.length == 0 ? null
                    : BitmapFactory.decodeByteArray(bytes, 0, bytes.length);
        } catch (Throwable ignored) {
            return null;
        }
    }

    /**
     * Keeps a desktop icon's native artwork intact.  Both managed sources and
     * ordinary PackageManager drawables are rendered directly into the final
     * physical artwork canvas; neither may first become an
     * icon_size_origin-sized intermediate bitmap.
     */
    public static Bitmap prepareStaticSource(Object itemInfo, Bitmap cachedSource) {
        boolean highResolutionDesktop = shouldUseHighResolutionDesktopRaster(itemInfo);
        NormalIconRasterSpec spec = resolveNormalIconRasterSpec();
        int logicalArtwork = currentLayoutSize("icon_size_origin");
        int required = highResolutionDesktop && spec != null ? spec.artworkWidth : logicalArtwork;
        if (required <= 0) return cachedSource;
        Drawable drawable = loadCurrentDesktopDrawable(itemInfo);
        if (drawable != null) {
            Bitmap nativeSource = sourceBitmap(drawable);
            if (nativeSource != null) {
                reportSourceRouteOnce(itemInfo, nativeSource,
                        MaintainedLauncherSettingsHost.desktopIconSourceType(itemInfo),
                        "CURRENT_SOURCE_RESOLVER", drawable.getClass().getName());
                recycleIfOwned(cachedSource, nativeSource);
                return nativeSource;
            }
        }
        if (cachedSource != null && !cachedSource.isRecycled()) {
            reportSourceRouteOnce(itemInfo, cachedSource,
                    MaintainedLauncherSettingsHost.desktopIconSourceType(itemInfo),
                    "ICON_RAW_CACHE", "fallback");
            boolean sufficient = highResolutionDesktop
                    ? cachedSource.getWidth() >= required && cachedSource.getHeight() >= required
                    : cachedSource.getWidth() == required && cachedSource.getHeight() == required;
            if (sufficient) return cachedSource;
        }
        return rasterizeStaticIcon(cachedSource, required);
    }

    /**
     * Only ordinary desktop static application Cells use the source-to-final
     * path. Active icons, folders, black/white special rendering and off-size
     * animation textures retain their original pipeline.
     */
    public static boolean useDesktopStaticPipeline(Object activeIcon, Object itemInfo,
            boolean blackWhite, int width, int height) {
        if (itemInfo == null || blackWhite || isOriginalActiveIcon(itemInfo)) {
            return false;
        }
        if (isSpecialSettingButton(itemInfo)) return false;
        String className = itemInfo.getClass().getName();
        if (className.endsWith(".FolderInfo")
                || itemField(itemInfo, "packageName").isEmpty()) {
            return false;
        }
        int mode = currentPageMode();
        int folderMode = currentFolderMode();
        int texture = currentLayoutSize("icon_size_with_shadow");
        return mode != folderMode && texture > 0 && width == texture && height == texture;
    }

    public static boolean useManagedDesktopPipeline(Object itemInfo) {
        return shouldUseHighResolutionDesktopRaster(itemInfo)
                && MaintainedLauncherSettingsHost.hasEffectiveManagedIcon(itemInfo);
    }

    /**
     * The direct high-resolution texture path is a normal-desktop property,
     * not a managed-icon property.  Managed artwork was upgraded first, which
     * left default APK drawables on the old logical-bitmap path on 2K screens.
     */
    public static boolean shouldUseHighResolutionDesktopRaster(Object itemInfo) {
        return itemInfo != null
                && !isSpecialSettingButton(itemInfo)
                && !itemInfo.getClass().getName().endsWith(".FolderInfo")
                && !itemField(itemInfo, "packageName").isEmpty()
                && currentPageMode() != currentFolderMode()
                && !isOriginalActiveIcon(itemInfo);
    }

    /** The desktop Settings Cell is rendered by Ec.wz(), not as the launcher APK icon. */
    private static boolean isSpecialSettingButton(Object itemInfo) {
        String packageName = itemField(itemInfo, "packageName");
        String componentName = itemField(itemInfo, "componentName");
        String title = itemField(itemInfo, "title");
        return "com.smartisanos.launcher".equals(packageName)
                && (componentName.contains("Launcher") || componentName.contains("Setting")
                || title.contains("设置") || title.toLowerCase().contains("setting"));
    }

    private static Drawable loadCurrentDesktopDrawable(Object itemInfo) {
        try {
            Class<?> launcher = Class.forName("com.smartisanos.launcher.ja");
            Object instance = launcher.getMethod("getInstance").invoke(null);
            Object context = launcher.getMethod("getApplication").invoke(instance);
            if (!(context instanceof android.content.Context)) return null;
            int userId = Integer.parseInt(itemField(itemInfo, "userId"));
            return MaintainedLauncherSettingsHost.loadIconForDesktopItem(
                    (android.content.Context) context,
                    itemField(itemInfo, "packageName"),
                    itemField(itemInfo, "componentName"),
                    itemField(itemInfo, "title"), userId);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void recycleIfOwned(Bitmap oldBitmap, Bitmap replacement) {
        if (oldBitmap != null && oldBitmap != replacement && !oldBitmap.isRecycled()) {
            oldBitmap.recycle();
        }
    }

    /**
     * Composes one final texture from source artwork.  The source is never
     * resized to the launcher logical size first; the only resample is directly
     * into the physical-artwork rectangle on the physical shadow texture.
     */
    public static Bitmap composeStaticIconTexture(Bitmap source) {
        return composeTexture(source, false, 0, null);
    }

    public static Bitmap composeStaticIconTexture(Bitmap source, int logicalTexturePx) {
        return composeTexture(source, false, logicalTexturePx, null);
    }

    /** Final physical composer used only by ordinary DEFAULT application Cells. */
    public static Bitmap composeDefaultOpticalIconTexture(Object itemInfo, Bitmap source) {
        return composeTexture(source, isDefaultStaticSource(itemInfo), 0, itemInfo);
    }

    /** Unique final composer for every ordinary static application source. */
    public static Bitmap composeStaticApplicationIconTexture(Object itemInfo, Bitmap source) {
        return composeTexture(source, true, 0, itemInfo);
    }

    /**
     * Applies the original fallback's optical inset directly on the final
     * physical texture.  It deliberately does not allocate the old logical
     * icon_size_origin bitmap, so a 2K texture is never enlarged from 160/192.
     */
    public static Bitmap composeNormalizedFallbackTexture(Bitmap source) {
        return composeTexture(source, true, 0, null);
    }

    /**
     * Resolves the exact physical contract already used by ordinary static icons.
     * Special sources must consume this value, never infer their own node-sized
     * target such as the retired 181px path.
     */
    public static NormalIconRasterSpec resolveNormalIconRasterSpec() {
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        int logicalArtwork = currentLayoutSize("icon_size_origin");
        int logicalTexture = currentLayoutSize("icon_size_with_shadow");
        if (logicalArtwork <= 0 || logicalTexture <= 0) {
            return null;
        }
        int logicalWidth = Math.max(1, currentConstant("window_width", metrics.widthPixels));
        int logicalHeight = Math.max(1, currentConstant("window_height", metrics.heightPixels));
        float scaleX = metrics.widthPixels / (float) logicalWidth;
        float scaleY = metrics.heightPixels / (float) logicalHeight;
        /*
         * The desktop scene is uniformly fitted into the render surface.  A
         * taller screen is not a larger icon scale: status/navigation insets
         * commonly make the physical/logical height ratio differ while the
         * horizontal grid is already exact.  Using max(scaleX, scaleY) made
         * icon textures larger than their SceneNodes on tall displays and the
         * node then clipped the right/bottom artwork.  Conversely, taking the
         * smaller axis shrinks icons when the app surface excludes system bars.
         * Launcher grid geometry is width-owned, so its physical raster scale
         * is the horizontal physical/logical ratio only. LayoutPropertyAdapter
         * has already handled any short-screen fit in the logical dimensions.
         */
        float rasterScale = scaleX;
        if (!(rasterScale > 0f) || Float.isInfinite(rasterScale)
                || Float.isNaN(rasterScale)) {
            rasterScale = 1f;
        }
        int artwork = (int) Math.ceil(logicalArtwork * rasterScale);
        int texture = (int) Math.ceil(logicalTexture * rasterScale);
        return new NormalIconRasterSpec(
                logicalArtwork, logicalArtwork, logicalTexture, logicalTexture,
                artwork, artwork, texture, texture,
                (texture - artwork) * 0.5f,
                rasterScale, "normal:v6:" + artwork + 'x' + texture + ':'
                        + metrics.widthPixels + 'x' + metrics.heightPixels + ':'
                        + currentPageMode());
    }

    private static Bitmap composeTexture(Bitmap source, boolean opticalNormalize,
            int actualLogicalTexture, Object itemInfo) {
        if (source == null || source.isRecycled()) return source;
        int logicalArtwork = currentLayoutSize("icon_size_origin");
        int logicalTexture = currentLayoutSize("icon_size_with_shadow");
        NormalIconRasterSpec spec = resolveNormalIconRasterSpec();
        if (spec == null) return source;
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        int logicalWidth = Math.max(1, currentConstant("window_width", metrics.widthPixels));
        int logicalHeight = Math.max(1, currentConstant("window_height", metrics.heightPixels));
        float scaleX = metrics.widthPixels / (float) logicalWidth;
        float scaleY = metrics.heightPixels / (float) logicalHeight;
        float rasterScale = spec.rasterScale;
        int artwork = spec.artworkWidth;
        int texture = spec.textureWidth;
        if (actualLogicalTexture > 0 && logicalTexture > 0) {
            texture = Math.max(1, (int) Math.ceil(actualLogicalTexture * rasterScale));
            artwork = Math.max(1, Math.round(texture
                    * (logicalArtwork / (float) logicalTexture)));
        }
        float contentInset = 0f;
        if (opticalNormalize) {
            int logicalResizedArtwork = currentLayoutSize("icon_size_origin_resize");
            if (logicalResizedArtwork > 0 && logicalResizedArtwork < logicalArtwork) {
                contentInset = (artwork - logicalResizedArtwork * rasterScale) * 0.5f;
            }
        }
        float contentSize = Math.max(1f, artwork - contentInset * 2f);
        VisibleBounds visibleBefore = opticalNormalize ? analyzeVisibleBounds(source) : null;
        boolean normalizationApplied = opticalNormalize && visibleBefore != null
                && visibleBefore.width() >= 2 && visibleBefore.height() >= 2;
        float sourceScale;
        float drawWidth;
        float drawHeight;
        float drawLeftInArtwork;
        float drawTopInArtwork;
        float opticalScale = 1f;
        if (normalizationApplied) {
            float baseScale = Math.min(contentSize / Math.max(1, source.getWidth()),
                    contentSize / Math.max(1, source.getHeight()));
            float visiblePhysical = Math.max(visibleBefore.width(), visibleBefore.height()) * baseScale;
            float targetVisible = contentSize * OPTICAL_TARGET_VISIBLE_RATIO;
            opticalScale = targetVisible / Math.max(1f, visiblePhysical);
            sourceScale = baseScale * opticalScale;
            if (!(sourceScale > 0f) || Float.isInfinite(sourceScale) || Float.isNaN(sourceScale)
                    || sourceScale < 0.25f || sourceScale > 4.0f) {
                normalizationApplied = false;
                opticalScale = 1f;
                sourceScale = baseScale;
            }
            drawWidth = source.getWidth() * sourceScale;
            drawHeight = source.getHeight() * sourceScale;
            drawLeftInArtwork = contentInset + contentSize * 0.5f
                    - visibleBefore.centerX() * sourceScale;
            drawTopInArtwork = contentInset + contentSize * 0.5f
                    - visibleBefore.centerY() * sourceScale;
        } else {
            sourceScale = Math.min(contentSize / Math.max(1, source.getWidth()),
                    contentSize / Math.max(1, source.getHeight()));
            drawWidth = source.getWidth() * sourceScale;
            drawHeight = source.getHeight() * sourceScale;
            drawLeftInArtwork = contentInset + (contentSize - drawWidth) * 0.5f;
            drawTopInArtwork = contentInset + (contentSize - drawHeight) * 0.5f;
        }
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
        Bitmap physicalArtwork = Bitmap.createBitmap(
                artwork, artwork, Bitmap.Config.ARGB_8888);
        Canvas artworkCanvas = new Canvas(physicalArtwork);
        artworkCanvas.drawBitmap(source, new Rect(0, 0, source.getWidth(), source.getHeight()),
                new RectF(drawLeftInArtwork, drawTopInArtwork,
                        drawLeftInArtwork + drawWidth, drawTopInArtwork + drawHeight), paint);
        Bitmap decoratedArtwork = decorateProfileIcon(itemInfo, physicalArtwork);
        if (decoratedArtwork != null && decoratedArtwork != physicalArtwork) {
            physicalArtwork.recycle();
            physicalArtwork = decoratedArtwork;
        }
        Bitmap result = LauncherSettingBridge.composeStaticIconTextureWithOriginalShadow(
                physicalArtwork, texture, rasterScale);
        float artworkLeft = (texture - artwork) * 0.5f;
        float artworkTop = (texture - artwork) * 0.25f;
        float drawLeft = artworkLeft + drawLeftInArtwork;
        float drawTop = artworkTop + drawTopInArtwork;
        if (result == null) {
            result = Bitmap.createBitmap(texture, texture, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(result);
            canvas.drawBitmap(physicalArtwork, artworkLeft, artworkTop, paint);
            Log.w(TAG, "ICON_STATIC_SHADOW_FALLBACK targetArtwork="
                    + artwork + " targetTexture=" + texture);
        }
        Log.i(TAG, "ICON_PIPELINE_SELECTED pipeline="
                + " pipeline=STATIC_APPLICATION_COMPOSER"
                + " sourceType=" + MaintainedLauncherSettingsHost.desktopIconSourceType(itemInfo)
                + " source=" + source.getWidth() + 'x' + source.getHeight()
                + " finalContentBounds=" + Math.round(drawLeft) + ',' + Math.round(drawTop)
                + ',' + Math.round(drawWidth) + 'x' + Math.round(drawHeight)
                + " targetArtwork=" + artwork + " targetTexture=" + texture);
        if (source.getWidth() < artwork || source.getHeight() < artwork) {
            Log.w(TAG, "ICON_LOW_RES_SOURCE_LIMITED sourceWidth=" + source.getWidth()
                    + " sourceHeight=" + source.getHeight() + " targetWidth=" + artwork
                    + " fallbackOriginalSource=false");
        }
        reportPhysicalOnce(source, artwork, texture, logicalArtwork, logicalTexture,
                metrics, scaleX, scaleY);
        if (opticalNormalize) {
            reportOpticalNormalizationOnce(itemInfo, source, visibleBefore, physicalArtwork,
                    normalizationApplied, opticalScale, artwork, texture);
        }
        physicalArtwork.recycle();
        return result;
    }

    private static Bitmap decorateProfileIcon(Object itemInfo, Bitmap artwork) {
        if (itemInfo == null || artwork == null || artwork.isRecycled()) return artwork;
        try {
            String packageName = itemField(itemInfo, "packageName");
            String componentName = itemField(itemInfo, "componentName");
            int userId = Integer.parseInt(itemField(itemInfo, "userId"));
            android.content.Context context = MaintainedLauncherSettingsHost.currentApplicationContext();
            boolean compatIdentity = context != null && DoppelgangerCompat.isDoppelganger(
                    context, packageName, componentName, userId);
            boolean profileIdentity = context != null && isNonManagedLauncherProfile(
                    context, packageName, componentName, userId);
            if (context == null || (!compatIdentity && !profileIdentity)) {
                Log.i(TAG, "ICON_FINAL_COMPOSED packageName=" + packageName
                        + " componentName=" + componentName + " sourceType="
                        + MaintainedLauncherSettingsHost.desktopIconSourceType(itemInfo)
                        + " userId=" + userId + " badgeApplied=false"
                        + " compatIdentity=" + compatIdentity
                        + " profileIdentity=" + profileIdentity);
                return artwork;
            }
            Bitmap badged = MaintainedLauncherSettingsHost.doppelgangerBitmap(artwork);
            Log.i(TAG, "ICON_FINAL_COMPOSED packageName=" + packageName
                    + " componentName=" + componentName + " sourceType="
                    + MaintainedLauncherSettingsHost.desktopIconSourceType(itemInfo)
                    + " userId=" + userId + " badgeApplied=" + (badged != artwork)
                    + " compatIdentity=" + compatIdentity
                    + " profileIdentity=" + profileIdentity);
            return badged == null ? artwork : badged;
        } catch (Throwable ignored) {
            return artwork;
        }
    }

    private static boolean isNonManagedLauncherProfile(android.content.Context context,
                                                       String packageName, String componentName,
                                                       int userId) {
        if (userId <= 0 || context == null) return false;
        try {
            android.content.pm.LauncherApps apps = (android.content.pm.LauncherApps)
                    context.getSystemService(android.content.Context.LAUNCHER_APPS_SERVICE);
            if (apps == null) return false;
            java.util.List<android.os.UserHandle> profiles = apps.getProfiles();
            if (profiles == null) return false;
            android.os.UserManager users = (android.os.UserManager)
                    context.getSystemService(android.content.Context.USER_SERVICE);
            for (android.os.UserHandle profile : profiles) {
                if (profile == null || DoppelgangerCompat.userId(profile) != userId) continue;
                if (users != null) {
                    try {
                        java.lang.reflect.Method managed = android.os.UserManager.class
                                .getMethod("isManagedProfile", android.os.UserHandle.class);
                        if (((Boolean) managed.invoke(users, profile)).booleanValue()) return false;
                    } catch (Throwable ignored) {
                    }
                }
                java.util.List<android.content.pm.LauncherActivityInfo> activities =
                        apps.getActivityList(packageName, profile);
                if (activities == null) return false;
                for (android.content.pm.LauncherActivityInfo activity : activities) {
                    if (activity == null || activity.getComponentName() == null) continue;
                    if (componentName == null || componentName.length() == 0
                            || componentName.equals(activity.getComponentName().flattenToString())) {
                        return true;
                    }
                }
                return false;
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static boolean isDefaultStaticSource(Object itemInfo) {
        return itemInfo != null
                && !isSpecialSettingButton(itemInfo)
                && !isOriginalActiveIcon(itemInfo)
                && !MaintainedLauncherSettingsHost.hasEffectiveManagedIcon(itemInfo);
    }

    private static VisibleBounds analyzeVisibleBounds(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()
                || bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0) {
            return null;
        }
        int left = bitmap.getWidth();
        int top = bitmap.getHeight();
        int right = -1;
        int bottom = -1;
        int[] row = new int[bitmap.getWidth()];
        try {
            for (int y = 0; y < bitmap.getHeight(); y++) {
                bitmap.getPixels(row, 0, bitmap.getWidth(), 0, y, bitmap.getWidth(), 1);
                for (int x = 0; x < bitmap.getWidth(); x++) {
                    if ((row[x] >>> 24) < OPTICAL_ALPHA_CUTOFF) continue;
                    if (x < left) left = x;
                    if (x > right) right = x;
                    if (y < top) top = y;
                    if (y > bottom) bottom = y;
                }
            }
        } catch (Throwable ignored) {
            return null;
        }
        return right < left || bottom < top
                ? null : new VisibleBounds(left, top, right, bottom);
    }

    private static void reportSourceRouteOnce(Object itemInfo, Bitmap source,
            String sourceRoute, String drawableClass, String detail) {
        if (source == null || source.isRecycled()) return;
        String key = "source-route:" + itemField(itemInfo, "packageName") + ':'
                + itemField(itemInfo, "componentName") + ':' + sourceRoute;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        Log.w(TAG, "DEFAULT_ICON_SOURCE package=" + itemField(itemInfo, "packageName")
                + " component=" + itemField(itemInfo, "componentName")
                + " sourceRoute=" + sourceRoute + " drawableClass=" + drawableClass
                + " sourceWidth=" + source.getWidth() + " sourceHeight=" + source.getHeight()
                + " detail=" + detail);
        VisibleBounds bounds = analyzeVisibleBounds(source);
        if (bounds != null) {
            float ratioX = bounds.width() / (float) source.getWidth();
            float ratioY = bounds.height() / (float) source.getHeight();
            Log.w(TAG, "DEFAULT_ICON_VISIBLE_BOUNDS package="
                    + itemField(itemInfo, "packageName")
                    + " sourceWidth=" + source.getWidth() + " sourceHeight=" + source.getHeight()
                    + " left=" + bounds.left + " top=" + bounds.top + " right=" + bounds.right
                    + " bottom=" + bounds.bottom + " visibleWidth=" + bounds.width()
                    + " visibleHeight=" + bounds.height() + " visibleRatioX=" + ratioX
                    + " visibleRatioY=" + ratioY + " maxVisibleRatio=" + Math.max(ratioX, ratioY));
        }
    }

    private static void reportOpticalNormalizationOnce(Object itemInfo, Bitmap source,
            VisibleBounds before, Bitmap normalizedArtwork, boolean applied, float opticalScale,
            int artwork, int texture) {
        String packageName = itemField(itemInfo, "packageName");
        String component = itemField(itemInfo, "componentName");
        String key = "optical:" + packageName + ':' + component;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        VisibleBounds after = analyzeVisibleBounds(normalizedArtwork);
        float beforeX = before == null ? 0f : before.width() / (float) Math.max(1, source.getWidth());
        float beforeY = before == null ? 0f : before.height() / (float) Math.max(1, source.getHeight());
        float finalX = after == null ? 0f : after.width() / (float) Math.max(1, artwork);
        float finalY = after == null ? 0f : after.height() / (float) Math.max(1, artwork);
        Log.w(TAG, "DEFAULT_ICON_COMPOSE package=" + packageName
                + " logicalArtwork=" + currentLayoutSize("icon_size_origin")
                + " physicalArtwork=" + artwork
                + " logicalTexture=" + currentLayoutSize("icon_size_with_shadow")
                + " physicalTexture=" + texture + " normalizationRequested=true"
                + " normalizationApplied=" + applied + " normalizationScale=" + opticalScale
                + " normalizationCount=" + (applied ? 1 : 0)
                + " finalVisibleWidth=" + (after == null ? 0 : after.width())
                + " finalVisibleHeight=" + (after == null ? 0 : after.height())
                + " finalVisibleRatio=" + Math.max(finalX, finalY)
                + " beforeVisibleRatio=" + Math.max(beforeX, beforeY)
                + " targetVisibleRatio=" + OPTICAL_TARGET_VISIBLE_RATIO
                + " cacheVersion=" + RASTER_CACHE_VERSION);
        Log.w(TAG, "OPTICAL_NORMALIZATION package=" + packageName
                + " component=" + component + " sourceType=DEFAULT_APK"
                + " sourceSize=" + source.getWidth() + "x" + source.getHeight()
                + " visibleRatioBefore=" + Math.max(beforeX, beforeY)
                + " targetRatio=" + OPTICAL_TARGET_VISIBLE_RATIO + " scale=" + opticalScale
                + " normalizationCount=" + (applied ? 1 : 0)
                + " sourceVisibleCenter=" + (before == null ? "0,0"
                        : before.centerX() + "," + before.centerY()));
    }

    /** True only while the original active-icon controller owns the item. */
    public static boolean isOriginalActiveIcon(Object itemInfo) {
        String packageName = itemField(itemInfo, "packageName");
        boolean active = !packageName.isEmpty()
                && LauncherSettingBridge.dynamicWeatherCalendarEnabled()
                && LauncherSettingBridge.isDynamicIconPackage(packageName);
        if (active) {
            Log.i(TAG, "ICON_PIPELINE_SELECTED packageName=" + packageName
                    + " componentName=" + itemField(itemInfo, "componentName")
                    + " sourceType=ACTIVE_DYNAMIC pipeline=ORIGINAL_ACTIVE_ICON");
        }
        return active;
    }

    public static void reportActiveIconBypass(Object itemInfo) {
        Log.i(TAG, "ICON_ACTIVE_ICON_BYPASS_STATIC packageName="
                + itemField(itemInfo, "packageName") + " componentName="
                + itemField(itemInfo, "componentName")
                + " reason=original_active_icon_controller");
    }

    /** Called while iconRawData is persisted, before an active icon can be flattened. */
    public static void reportActiveIconRawBypass(String packageName) {
        Log.i(TAG, "ICON_ACTIVE_ICON_BYPASS_STATIC packageName=" + packageName
                + " stage=iconRawData reason=original_active_layers");
    }

    /** Keeps the SMEngine in-memory texture cache separate per physical raster. */
    public static String textureCacheKey(Object itemInfo, String baseKey) {
        if (baseKey == null || baseKey.contains("#" + RASTER_CACHE_VERSION + ":")) return baseKey;
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        NormalIconRasterSpec spec = resolveNormalIconRasterSpec();
        if (spec == null) return baseKey;
        int logicalArtwork = currentLayoutSize("icon_size_origin");
        int artwork = spec.artworkWidth;
        int texture = spec.textureWidth;
        String packageName = itemField(itemInfo, "packageName");
        String componentName = itemField(itemInfo, "componentName");
        String userId = itemField(itemInfo, "userId");
        String sourceHash = itemRawHash(itemInfo);
        String sourceType = MaintainedLauncherSettingsHost.desktopIconSourceType(itemInfo);
        String sourceIdentity = MaintainedLauncherSettingsHost.desktopIconSourceIdentity(itemInfo);
        int pageMode = currentPageMode();
        String themeMode = String.valueOf(currentConstant("isTransparentTheme", 0));
        int iconPercent = Math.round(logicalArtwork * 100f / Math.max(1, baseIconSize(pageMode)));
        String pipeline = isOriginalActiveIcon(itemInfo) ? "ORIGINAL_ACTIVE_ICON"
                : "STATIC_APPLICATION_COMPOSER";
        String key = baseKey + "#" + RASTER_CACHE_VERSION + ':' + packageName + ':' + componentName + ':' + userId + ':'
                + sourceHash + ':' + sourceType + ':' + sourceIdentity + ':' + artwork + 'x' + artwork + ':' + texture + 'x' + texture
                + ':' + metrics.widthPixels + 'x' + metrics.heightPixels + ':' + metrics.densityDpi
                + ':' + iconPercent + ':' + pageMode + ':' + themeMode + ':' + pipeline
                + ":normalizationVersion=" + OPTICAL_NORMALIZATION_VERSION
                + ":alphaCutoff=" + OPTICAL_ALPHA_CUTOFF
                + ":targetVisibleRatio=" + OPTICAL_TARGET_VISIBLE_RATIO
                + ":normalizationApplied=true:badgeVersion=v1";
        Log.i(TAG, "ICON_CACHE_PIPELINE_KEY packageName=" + packageName
                + " pipeline=" + pipeline + " finalCacheKey=" + key);
        return key;
    }

    /** Returns a size-aware key only for ordinary desktop static application Cells. */
    public static String desktopTextureCacheKey(Object itemInfo, String baseKey) {
        if (baseKey == null || itemInfo == null
                || itemInfo.getClass().getName().endsWith(".FolderInfo")
                || itemField(itemInfo, "packageName").isEmpty()
                || currentPageMode() == currentFolderMode()) {
            return baseKey;
        }
        if (isOriginalActiveIcon(itemInfo)) {
            return ActiveIconRasterSpec.frameCacheKey(textureCacheKey(itemInfo, baseKey));
        }
        return textureCacheKey(itemInfo, baseKey);
    }

    public static void reportTextureCacheLookup(String key, boolean hit) {
        if (key == null) return;
        String reportKey = "lookup:" + key;
        synchronized (REPORTED) {
            if (!REPORTED.add(reportKey)) return;
        }
        Log.i(TAG, "finalCacheKey=" + key + " cacheHit=" + hit
                + " cacheSourceWasFinalTexture=false");
    }

    public static void reportFinalTexture(Bitmap texture, int physicalNodePx) {
        if (texture == null || texture.isRecycled() || physicalNodePx <= 0) {
            return;
        }
        int width = texture.getWidth();
        int height = texture.getHeight();
        String key = "final:" + width + 'x' + height + ':' + physicalNodePx;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        boolean underSized = width < physicalNodePx || height < physicalNodePx;
        Log.i(TAG, "finalTexture=" + width + 'x' + height
                + " physicalNode=" + physicalNodePx + 'x' + physicalNodePx
                + " underSized=" + underSized + " cache=transientTexture");
    }

    private static void reportSourceOnce(int sourceWidth, int sourceHeight, int targetPx) {
        String key = "source:" + sourceWidth + 'x' + sourceHeight + ':' + targetPx;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        boolean sourceUnderTarget = sourceWidth < targetPx || sourceHeight < targetPx;
        Log.i(TAG, "source=iconRawData " + sourceWidth + 'x' + sourceHeight
                + " targetTexture=" + targetPx + 'x' + targetPx
                + " display=" + metrics.widthPixels + 'x' + metrics.heightPixels
                + " densityDpi=" + metrics.densityDpi
                + " sourceUnderTarget=" + sourceUnderTarget
                + " cache=rawSource->transientTexture");
    }

    private static void reportPhysicalOnce(Bitmap source, int artwork, int texture,
            int logicalArtwork, int logicalTexture, DisplayMetrics metrics,
            float scaleX, float scaleY) {
        String key = "physical:" + source.getWidth() + 'x' + source.getHeight() + ':'
                + artwork + ':' + texture + ':' + metrics.widthPixels + 'x' + metrics.heightPixels;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        Log.i(TAG, "sourceWidth=" + source.getWidth() + " sourceHeight=" + source.getHeight()
                + " sourceWasOriginal=true targetArtworkWidth=" + artwork
                + " targetTextureWidth=" + texture + " physicalNodeWidth=" + texture
                + " textureToPhysicalRatio=" + (texture / (float) Math.max(1, texture))
                + " logicalArtwork=" + logicalArtwork + " logicalTexture=" + logicalTexture
                + " renderSurface=" + metrics.widthPixels + 'x' + metrics.heightPixels
                + " logicalSurface=" + currentConstant("window_width", metrics.widthPixels)
                + 'x' + currentConstant("window_height", metrics.heightPixels)
                + " scale=" + scaleX + 'x' + scaleY
                + " densityDpi=" + metrics.densityDpi
                + " cacheHit=false cacheSourceWasFinalTexture=false");
    }

    private static int currentLayoutSize(String fieldName) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            int mode = ((Integer) constants.getMethod("getPAGE_1_3X3_MODE").invoke(null)).intValue();
            Object property = constants.getMethod("mode", Integer.TYPE).invoke(null, mode);
            return Math.round(property.getClass().getField(fieldName).getFloat(property));
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static int currentPageMode() {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return ((Integer) constants.getMethod("getPAGE_1_3X3_MODE").invoke(null)).intValue();
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static int baseIconSize(int pageMode) {
        return Math.max(1, currentLayoutSize("icon_size_origin"));
    }

    private static String itemField(Object item, String name) {
        if (item == null) return "";
        try {
            Object value = item.getClass().getField(name).get(item);
            return value == null ? "" : String.valueOf(value);
        } catch (Throwable ignored) {
            return "";
        }
    }

    private static String itemRawHash(Object item) {
        if (item == null) return "0";
        try {
            Object value = item.getClass().getField("iconRawData").get(item);
            return value instanceof byte[] ? Integer.toHexString(Arrays.hashCode((byte[]) value)) : "0";
        } catch (Throwable ignored) {
            return "0";
        }
    }

    private static int currentConstant(String fieldName, int fallback) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return constants.getField(fieldName).getInt(null);
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static int currentFolderMode() {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return ((Integer) constants.getMethod("getPAGE_1_3X3_MODE_FOLDER")
                    .invoke(null)).intValue();
        } catch (Throwable ignored) {
            return Integer.MIN_VALUE;
        }
    }

    public static Bitmap composeSettingButtonTexture(
            Bitmap background,
            Bitmap gear,
            Bitmap innerShadow,
            boolean pressed,
            float logicalSettingButtonSize) {

        if (background == null || background.isRecycled()
                || gear == null || gear.isRecycled()
                || logicalSettingButtonSize <= 0f) {
            logFallback(pressed, logicalSettingButtonSize, background, gear, innerShadow);
            return null;
        }

        NormalIconRasterSpec spec = resolveNormalIconRasterSpec();
        if (spec == null || spec.rasterScale <= 0f) {
            logFallback(pressed, logicalSettingButtonSize, background, gear, innerShadow);
            return null;
        }

        int targetPx = Math.max(
                1,
                (int) Math.ceil(logicalSettingButtonSize * spec.rasterScale));

        Bitmap output = null;
        try {
            output = Bitmap.createBitmap(
                    targetPx,
                    targetPx,
                    Bitmap.Config.ARGB_8888);
        } catch (Throwable t) {
            Log.e(TAG, "SETTING_BUTTON_RASTER createBitmap failed", t);
            logFallback(pressed, logicalSettingButtonSize, background, gear, innerShadow);
            return null;
        }

        Canvas canvas = new Canvas(output);

        Paint paint = new Paint(
                Paint.ANTI_ALIAS_FLAG
                        | Paint.FILTER_BITMAP_FLAG
                        | Paint.DITHER_FLAG);

        RectF fullRect = new RectF(
                0f,
                0f,
                targetPx,
                targetPx);

        // background
        drawBitmapFitFull(canvas, background, fullRect, paint);

        if (pressed) {
            canvas.save();
            canvas.rotate(
                    60.0f,
                    targetPx * 0.5f,
                    targetPx * 0.5f);
            drawBitmapFitFull(canvas, gear, fullRect, paint);
            canvas.restore();

            if (innerShadow != null && !innerShadow.isRecycled()) {
                drawBitmapFitFull(
                        canvas,
                        innerShadow,
                        fullRect,
                        paint);
            }
        } else {
            drawBitmapFitFull(
                    canvas,
                    gear,
                    fullRect,
                    paint);
        }

        // Print diagnostic log
        int pageMode = currentPageMode();
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        Log.i(TAG, "SETTING_BUTTON_RASTER"
                + " mode=" + pageMode
                + " logicalSettingButton=" + Math.round(logicalSettingButtonSize)
                + " rasterScale=" + spec.rasterScale
                + " sourceBg=" + background.getWidth() + "x" + background.getHeight()
                + " sourceGear=" + gear.getWidth() + "x" + gear.getHeight()
                + " sourceShadow=" + (innerShadow != null ? innerShadow.getWidth() + "x" + innerShadow.getHeight() : "null")
                + " finalTexture=" + targetPx + "x" + targetPx
                + " surface=" + metrics.widthPixels + "x" + metrics.heightPixels
                + " pressed=" + pressed
                + " fallback=false");

        return output;
    }

    private static void drawBitmapFitFull(
            Canvas canvas,
            Bitmap bitmap,
            RectF destination,
            Paint paint) {

        if (canvas == null
                || bitmap == null
                || bitmap.isRecycled()) {
            return;
        }

        Rect source = new Rect(
                0,
                0,
                bitmap.getWidth(),
                bitmap.getHeight());

        canvas.drawBitmap(
                bitmap,
                source,
                destination,
                paint);
    }

    private static void logFallback(boolean pressed, float logicalSettingButtonSize, Bitmap background, Bitmap gear, Bitmap innerShadow) {
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        int pageMode = currentPageMode();
        Log.w(TAG, "SETTING_BUTTON_RASTER"
                + " mode=" + pageMode
                + " logicalSettingButton=" + Math.round(logicalSettingButtonSize)
                + " rasterScale=0.0"
                + " sourceBg=" + (background != null && !background.isRecycled() ? background.getWidth() + "x" + background.getHeight() : "null")
                + " sourceGear=" + (gear != null && !gear.isRecycled() ? gear.getWidth() + "x" + gear.getHeight() : "null")
                + " sourceShadow=" + (innerShadow != null && !innerShadow.isRecycled() ? innerShadow.getWidth() + "x" + innerShadow.getHeight() : "null")
                + " finalTexture=0x0"
                + " surface=" + metrics.widthPixels + "x" + metrics.heightPixels
                + " pressed=" + pressed
                + " fallback=true");
    }
}
