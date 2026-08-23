package com.smartisanos.launcher.data;

/** Final label anchor for an application inside an opened folder. */
public final class FolderCellVisualMetrics {
    /* Converts the folder text anchor to the visually verified desktop-equivalent anchor. */
    private static final float BASE_FOLDER_LABEL_CORRECTION1080 = 28.43f;

    private FolderCellVisualMetrics() {
    }

    public static float resolveLabelCenterY(Object page, Object property,
            Object label, float fallbackY) {
        if (!isOpenFolderChild(page)) {
            return DesktopLabelMetrics.resolveLabelCenterY(property, label, fallbackY);
        }
        final float artwork = DesktopLabelMetrics.positive(
                DesktopLabelMetrics.number(property, "icon_size_origin_resize"),
                DesktopLabelMetrics.number(property, "icon_size_origin"));
        final float textHeight = DesktopLabelMetrics.positive(
                DesktopLabelMetrics.number(property, "folder_text_font_size"),
                DesktopLabelMetrics.number(property, "text_font_size"));
        if (artwork <= 0.0f || textHeight <= 0.0f) {
            return fallbackY;
        }
        final float artworkBottom = artwork * 0.5f
                - DesktopLabelMetrics.number(property, "icon_offset_y");
        final float currentLabelY = -(artworkBottom + DesktopLabelMetrics.finalVisualGap()
                + textHeight * 0.5f);
        // SMEngine's verified direction: positive correction moves the folder label toward the icon.
        return currentLabelY + folderLabelCorrection();
    }

    static float folderLabelCorrection() {
        return BASE_FOLDER_LABEL_CORRECTION1080 * DesktopLabelMetrics.widthScale();
    }

    private static boolean isOpenFolderChild(Object page) {
        if (page == null) {
            return false;
        }
        try {
            Object mode = page.getClass().getMethod("getSinglePageMode").invoke(page);
            if (mode instanceof Number && ((Number) mode).intValue() == 8) {
                return true;
            }
            mode = page.getClass().getMethod("getMultiPageMode").invoke(page);
            return mode instanceof Number && ((Number) mode).intValue() == 8;
        } catch (Throwable ignored) {
            return false;
        }
    }
}
