package com.smartisanos.launcher.data;

import android.util.Log;
import android.content.res.Resources;

import java.lang.reflect.Field;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

public final class LayoutPropertyAdapter {
    private static final String TAG = "LayoutPropertyAdapter";
    private static final float BASE_WIDTH = 1080.0f;
    private static final float BASE_HEIGHT = 1920.0f;
    // Measured from the visible shelf interiors of the 246px (MODE_12) and
    // 178px (MODE_20) closed-folder textures. Both texture sets share these
    // normalized centers, so the same geometry works at every screen scale.
    private static final float FOLDER_PREVIEW_ICON_RATIO_2X2 = 0.27f;
    private static final float FOLDER_PREVIEW_ICON_RATIO_3X3 = 0.17f;
    private static final float FOLDER_PREVIEW_FIRST_COLUMN_2X2 = 0.356f;
    private static final float FOLDER_PREVIEW_COLUMN_PITCH_2X2 = 0.288f;
    private static final float FOLDER_PREVIEW_FIRST_ROW_2X2 = 0.280f;
    private static final float FOLDER_PREVIEW_ROW_PITCH_2X2 = 0.366f;
    private static final float FOLDER_PREVIEW_FIRST_COLUMN_3X3 = 0.308f;
    private static final float FOLDER_PREVIEW_COLUMN_PITCH_3X3 = 0.192f;
    private static final float FOLDER_PREVIEW_FIRST_ROW_3X3 = 0.220f;
    private static final float FOLDER_PREVIEW_ROW_PITCH_3X3 = 0.244f;
    private static final float EPSILON = 0.01f;
    private static final Map<Resources, Map<String, int[]>> PROFILES =
            new WeakHashMap<Resources, Map<String, int[]>>();

    private LayoutPropertyAdapter() {
    }

    public static void adapt(Object property, String suffix) {
        adapt(property, suffix, null, null);
    }

    /** The parser supplies its actual selected asset directory, never a screen-size guess. */
    public static void adapt(Object property, String suffix, Resources resources,
            String selectedDirectory) {
        adapt(property, suffix, resources, selectedDirectory, 0);
    }

    public static void adapt(Object property, String suffix, Resources resources,
            String selectedDirectory, int resourceMode) {
        if (property == null) {
            return;
        }

        int width = staticInt("com.smartisanos.launcher.data.Constants", "window_width");
        int height = staticInt("com.smartisanos.launcher.data.Constants", "window_height");
        if (width <= 0 || height <= 0) {
            return;
        }

        float resourceBaseWidth = resourceBaseWidth(property, suffix);
        // Compatibility baseline ONLY for frozen, non-migrated visual fields.
        // This is not the selected resource profile height or a placement owner.
        float frozenVisualBaseHeight = resourceBaseWidth * (BASE_HEIGHT / BASE_WIDTH);
        float scaleX = width / resourceBaseWidth;
        float scaleY = height / frozenVisualBaseHeight;
        boolean folderLayout = "_folder".equals(suffix);
        boolean desktopPortrait = !folderLayout && selectedDirectory != null
                && selectedDirectory.startsWith("layout/portrait/");
        int[] profile = desktopPortrait ? selectedProfile(resources, selectedDirectory) : null;
        float placementScaleY = profile == null ? 1.0f : height / (float) profile[1];
        float localScale = profile == null ? scaleX : width / (float) profile[0];
        boolean acceptance = desktopPortrait && acceptanceEnabled(resources);
        float nameOriginal = acceptance ? numericField(property, "name_off_set_y") : 0f;
        float iconOriginal = acceptance ? numericField(property, "icon_offset_y") : 0f;
        float iconHiddenOriginal = acceptance
                ? numericField(property, "icon_offset_y_without_app_name") : 0f;
        float dockOriginal = acceptance ? numericField(property, "dock_height") : 0f;
        // Open-folder resources are one width-owned visual scene. Scale their
        // LayoutProperty values together before any node/animation is created.
        // Ordinary pages keep their original scene geometry and adapt only the
        // icon boxes below when the surface is wider than the resource profile.
        float scale = folderLayout
                ? scaleX : Math.min(1.0f, Math.min(scaleX, scaleY));
        float iconScale = Math.min(scaleX, scaleY);
        if (!folderLayout) {
            scaleIconBoxes(property, iconScale);
        }
        if (!desktopPortrait && Math.abs(scale - 1.0f) < EPSILON
                && Math.abs(scaleX - 1.0f) < EPSILON
                && Math.abs(scaleY - 1.0f) < EPSILON) {
            return;
        }

        try {
            Field[] fields = property.getClass().getFields();
            for (Field field : fields) {
                String name = field.getName();
                Class<?> type = field.getType();
                if (type == Float.TYPE) {
                    float factor = desktopFactorFor(name, suffix, scaleX, scaleY, scale,
                            desktopPortrait, localScale, placementScaleY);
                    if (factor != 1.0f) {
                        field.setFloat(property, field.getFloat(property) * factor);
                    }
                } else if (type == Integer.TYPE && (shouldScaleInt(name)
                        || (desktopPortrait && "name_off_set_y".equals(name)))) {
                    float factor = desktopFactorFor(name, suffix, scaleX, scaleY, scale,
                            desktopPortrait, localScale, placementScaleY);
                    if (factor != 1.0f) {
                        int value = field.getInt(property);
                        field.setInt(property, Math.round(value * factor));
                    }
                }
            }
            Log.i(TAG, "adapt suffix=" + suffix
                    + ", screen=" + width + "x" + height
                    + ", frozenVisualBase=" + resourceBaseWidth + "x" + frozenVisualBaseHeight
                    + ", scaleX=" + scaleX + ", frozenVisualScaleY=" + scaleY);
            if (acceptance) {
                Log.i(TAG, "LAYOUT_PROFILE_SELECTED actualSurface=" + actualSurface()
                        + " layoutViewport=" + width + "x" + height
                        + " mode=MODE_" + resourceMode
                        + " resourceProfile=" + selectedDirectory
                        + " resourceProfileSize=" + (profile == null ? "UNRESOLVED"
                        : profile[0] + "x" + profile[1])
                        + " scaleX=" + localScale + " scaleY=" + placementScaleY);
                Log.i(TAG, "CELL_LOCAL_GEOMETRY mode=MODE_" + resourceMode + " suffix=" + suffix
                        + " nameOffsetOriginal=" + nameOriginal
                        + " nameOffsetFinal=" + numericField(property, "name_off_set_y")
                        + " iconOffsetOriginal=" + iconOriginal
                        + " iconOffsetFinal=" + numericField(property, "icon_offset_y")
                        + " iconHiddenOffsetOriginal=" + iconHiddenOriginal
                        + " iconHiddenOffsetFinal=" + numericField(property, "icon_offset_y_without_app_name")
                        + " owner=CELL_LOCAL_VISUAL");
                Log.i(TAG, "PAGE_PLACEMENT_GEOMETRY mode=MODE_" + resourceMode + " suffix=" + suffix
                        + " dockHeightOriginal=" + dockOriginal
                        + " dockHeightFinal=" + numericField(property, "dock_height")
                        + " pageHeight=" + numericField(property, "page_height")
                        + " marginTop=" + numericField(property, "page_view_margin_top")
                        + " marginBottom=" + numericField(property, "page_view_margin_bottom")
                        + " scaleY=" + placementScaleY + " owner=SCENE_PLACEMENT");
            }
        } catch (Throwable t) {
            Log.w(TAG, "layout adaptation skipped", t);
        }
    }

    private static float desktopFactorFor(String name, String suffix, float scaleX,
            float legacyY, float legacyUniform, boolean desktopPortrait,
            float localScale, float placementScaleY) {
        if (desktopPortrait) {
            if ("name_off_set_y".equals(name) || "icon_offset_y".equals(name)
                    || "icon_offset_y_without_app_name".equals(name)) return localScale;
            // Only fields with differing pristine height-profile values are migrated.
            // Normal cell/page heights are derived later by Constants, not guessed here.
            if ("dock_height".equals(name) || "cell_height_dock".equals(name)
                    || ("_trans".equals(suffix) && ("cell_height".equals(name)
                    || "page_height".equals(name) || "page_view_margin_top".equals(name)
                    || "page_view_margin_bottom".equals(name)))) return placementScaleY;
        }
        // Frozen visual subsystems retain their pre-issue-11 values. In particular,
        // changing profile metadata must not rescale raster/shadow/Folder/active icons.
        return factorFor(name, suffix, scaleX, legacyY, legacyUniform);
    }

    private static synchronized int[] selectedProfile(Resources resources, String directory) {
        if (resources == null || directory == null) return null;
        Map<String, int[]> profiles = PROFILES.get(resources);
        if (profiles == null) {
            profiles = new HashMap<String, int[]>();
            PROFILES.put(resources, profiles);
        }
        if (profiles.containsKey(directory)) return profiles.get(directory);
        int[] result = null;
        try {
            Class<?> parser = Class.forName("com.smartisanos.launcher.data.P");
            Map<?, ?> global = (Map<?, ?>) parser.getMethod("b", Resources.class, String.class)
                    .invoke(null, resources, directory + "/global.xml");
            Number width = (Number) global.get("window_width");
            Number height = (Number) global.get("window_height");
            if (width != null && height != null && width.intValue() > 0 && height.intValue() > 0) {
                result = new int[] {width.intValue(), height.intValue()};
            }
        } catch (ReflectiveOperationException | ClassCastException error) {
            Log.w(TAG, "Unable to read selected layout profile " + directory, error);
        }
        if (result == null) Log.w(TAG, "LAYOUT_PROFILE_UNRESOLVED directory=" + directory);
        profiles.put(directory, result);
        return result;
    }

    private static boolean acceptanceEnabled(Resources resources) {
        if (resources == null) return false;
        try (InputStream marker = resources.getAssets().open("issue11-layout-acceptance.txt")) {
            return true;
        } catch (java.io.IOException absent) {
            return false;
        }
    }

    private static String actualSurface() {
        try {
            Class<?> launcher = Class.forName("com.smartisanos.launcher.J");
            Object instance = launcher.getMethod("getInstance").invoke(null);
            Object surface = instance == null ? null : launcher.getMethod("Oa").invoke(instance);
            if (surface instanceof android.view.View) {
                android.view.View view = (android.view.View) surface;
                if (view.getWidth() > 0 && view.getHeight() > 0) {
                    return view.getWidth() + "x" + view.getHeight()
                            + " actualSurfaceResolved=true surfaceOwner=LAUNCHER_GL_SURFACE";
                }
            }
        } catch (ReflectiveOperationException error) {
            // The first layout load can precede creation of the GL View.
        }
        return "UNRESOLVED actualSurfaceResolved=false surfaceOwner=NOT_YET_LAID_OUT";
    }

    /**
     * Icon boxes follow the existing LayoutProperty surface scale even when
     * the surrounding scene must keep its original animation geometry.
     */
    private static void scaleIconBoxes(Object property, float factor) {
        if (property == null || factor <= 1.0f + EPSILON) {
            return;
        }
        String[] fields = {
                "icon_size_origin",
                "icon_size_origin_resize",
                "icon_size_with_shadow",
                "icon_size_with_shadow_folder"
        };
        for (String field : fields) {
            try {
                scaleNumericField(property, field, factor);
            } catch (Throwable ignored) {
            }
        }
        scaleFolderPreviewForIconSize(property, factor);
    }

    public static void scaleFolderPreviewForIconSize(Object property, float factor) {
        if (property == null || factor <= 0f) {
            return;
        }
        String[] dimensions = {"_2_2", "_3_3"};
        String[] names = {
                "folder_preview_left_margin",
                "folder_preview_top_margin",
                "folder_preview_icon_side_length",
                "folder_preview_icon_horizontal_space",
                "folder_preview_icon_vertical_space"
        };
        for (String dimension : dimensions) {
            for (String name : names) {
                try {
                    scaleNumericField(property, name + dimension, factor);
                } catch (Throwable ignored) {
                }
            }
        }
        centerFolderPreview(property, 2, "_2_2");
        centerFolderPreview(property, 3, "_3_3");
    }

    private static void centerFolderPreview(Object property, int gridSize, String suffix) {
        try {
            float container = numericField(property, "icon_size_with_shadow");
            if (container <= 0f) {
                return;
            }
            float sideRatio = gridSize == 2
                    ? FOLDER_PREVIEW_ICON_RATIO_2X2 : FOLDER_PREVIEW_ICON_RATIO_3X3;
            float side = container * sideRatio;
            float firstColumn = container * (gridSize == 2
                    ? FOLDER_PREVIEW_FIRST_COLUMN_2X2 : FOLDER_PREVIEW_FIRST_COLUMN_3X3);
            float columnPitch = container * (gridSize == 2
                    ? FOLDER_PREVIEW_COLUMN_PITCH_2X2 : FOLDER_PREVIEW_COLUMN_PITCH_3X3);
            float firstRow = container * (gridSize == 2
                    ? FOLDER_PREVIEW_FIRST_ROW_2X2 : FOLDER_PREVIEW_FIRST_ROW_3X3);
            float rowPitch = container * (gridSize == 2
                    ? FOLDER_PREVIEW_ROW_PITCH_2X2 : FOLDER_PREVIEW_ROW_PITCH_3X3);
            setNumericField(property, "folder_preview_icon_side_length" + suffix, side);
            setNumericField(property, "folder_preview_icon_horizontal_space" + suffix,
                    Math.max(0f, columnPitch - side));
            setNumericField(property, "folder_preview_icon_vertical_space" + suffix,
                    Math.max(0f, rowPitch - side));
            setNumericField(property, "folder_preview_left_margin" + suffix,
                    Math.max(0f, firstColumn - side * 0.5f));
            setNumericField(property, "folder_preview_top_margin" + suffix,
                    Math.max(0f, firstRow - side * 0.5f));
            // Drop animations are centered around the folder node, while the PNG's
            // visible shelves are slightly above its geometric center. Match the
            // animation target to the final viewport centers so release does not
            // land low and then jump upward when the preview texture is rebuilt.
            float visibleCenter = gridSize == 2
                    ? (FOLDER_PREVIEW_FIRST_ROW_2X2
                    + FOLDER_PREVIEW_FIRST_ROW_2X2
                    + FOLDER_PREVIEW_ROW_PITCH_2X2) * 0.5f
                    : FOLDER_PREVIEW_FIRST_ROW_3X3 + FOLDER_PREVIEW_ROW_PITCH_3X3;
            setNumericField(property, "folder_icon_center_offset" + suffix,
                    container * (0.5f - visibleCenter));
        } catch (Throwable ignored) {
        }
    }

    private static float numericField(Object property, String fieldName) {
        try {
            Field field = property.getClass().getField(fieldName);
            if (field.getType() == Float.TYPE) {
                return field.getFloat(property);
            }
            if (field.getType() == Integer.TYPE) {
                return field.getInt(property);
            }
        } catch (Throwable ignored) {
        }
        return 0f;
    }

    private static void setNumericField(Object property, String fieldName, float value)
            throws ReflectiveOperationException {
        Field field = property.getClass().getField(fieldName);
        if (field.getType() == Float.TYPE) {
            field.setFloat(property, value);
        } else if (field.getType() == Integer.TYPE) {
            field.setInt(property, Math.round(value));
        }
    }

    private static void scaleNumericField(Object property, String fieldName, float factor)
            throws ReflectiveOperationException {
        setNumericField(property, fieldName, numericField(property, fieldName) * factor);
    }

    private static float resourceBaseWidth(Object property, String suffix) {
        // Open-folder resources use the bookcase/page coordinate system.  In the
        // xhdpi bundle that system is still 1080 wide even though dock_width is
        // 720, so using the dock as the base stretches all row positions by 1.5x.
        if ("_folder".equals(suffix)) {
            float folderWidth = numericField(property, "folder_bookcase_width");
            if (folderWidth > 0f) {
                return folderWidth;
            }
        }
        int width = intField(property, "dock_width");
        if (width <= 0) {
            width = intField(property, "page_title_width");
        }
        if (width <= 0) {
            width = intField(property, "page_title_shadow_width");
        }
        if (width <= 0) {
            return BASE_WIDTH;
        }
        return width;
    }

    private static int intField(Object property, String fieldName) {
        try {
            Field field = property.getClass().getField(fieldName);
            if (field.getType() == Integer.TYPE) {
                return field.getInt(property);
            }
        } catch (Throwable ignored) {
        }
        return 0;
    }

    private static int staticInt(String className, String fieldName) {
        try {
            Class<?> clazz = Class.forName(className);
            return clazz.getField(fieldName).getInt(null);
        } catch (Throwable t) {
            Log.w(TAG, "can't read " + className + "." + fieldName, t);
            return 0;
        }
    }

    private static boolean shouldScaleInt(String name) {
        if (name == null) {
            return false;
        }
        if ("page_cell_row_num".equals(name)
                || "page_cell_col_num".equals(name)
                || "dock_app_count".equals(name)) {
            return false;
        }
        return containsAny(name,
                "offset", "margin", "spacing", "location",
                "height", "width", "size", "length", "font", "space");
    }

    private static float factorFor(String name, String suffix, float scaleX, float scaleY, float scale) {
        if (name == null || name.length() == 0) {
            return 1.0f;
        }
        if (containsAny(name, "scale", "factor", "modulus", "angle")) {
            return 1.0f;
        }
        // DotView turns these two layout values into the width and height of
        // one SMEngine mask texture. They therefore form one visual unit:
        // scaling width with scaleX and height with scaleY stretches the
        // original circular page indicator on displays whose aspect ratio
        // differs from the resource baseline.
        if ("dot_width".equals(name) || "dot_height".equals(name)) {
            return scale;
        }
        // The opened folder is one fixed-aspect scene designed from the screen width.
        // Its frame, grid, icon offsets and labels must all use the same scale or the
        // cells drift away from the shelves on tall displays.
        if ("_folder".equals(suffix)) {
            return scaleX;
        }
        if (name.startsWith("folder_preview_")) {
            return scale;
        }
        // Active icons are fixed-aspect artwork. Keep their background, digits,
        // weather glyphs and offsets in one uniform coordinate system instead
        // of stretching Y independently on tall displays.
        if (name.startsWith("weather_") || name.startsWith("calendar_")) {
            return name.contains("angle") || name.contains("angenle") ? 1.0f : scale;
        }
        if ("name_off_set_y".equals(name)
                || "icon_offset_y".equals(name)
                || "icon_offset_y_without_app_name".equals(name)) {
            return scaleY;
        }
        if ("max_app_name_length".equals(name)
                || "max_title_name_length".equals(name)) {
            return scaleX;
        }
        if (containsAny(name, "font", "textsize", "icon_size", "radius", "blur")) {
            return scale;
        }
        if (containsAny(name, "_offsety", "offset_y", "margin_top", "margin_bottom",
                "spacing_top", "spacing_bottom", "height", "_h", "location_y",
                "paddingtop", "paddingbottom", "padding_top", "padding_bottom",
                "distance", "translate_y")) {
            return scaleY;
        }
        if (containsAny(name, "_offsetx", "offset_x", "margin_left", "margin_right",
                "spacing_left", "spacing_right", "width", "_w", "location_x",
                "paddingleft", "paddingright", "padding_left", "padding_right")) {
            return scaleX;
        }
        if (containsAny(name, "cell_", "dock_", "folder_", "page_", "trash_",
                "calendar_", "clock_", "weather_", "edit_", "eye_", "lock_",
                "dot_", "setting_button", "shortcut_mask", "sort_icon")) {
            return scale;
        }
        return 1.0f;
    }

    private static boolean containsAny(String value, String... needles) {
        for (String needle : needles) {
            if (value.contains(needle)) {
                return true;
            }
        }
        return false;
    }
}
