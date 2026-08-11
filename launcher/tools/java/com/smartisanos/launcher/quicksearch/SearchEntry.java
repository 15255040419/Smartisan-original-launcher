package com.smartisanos.launcher.quicksearch;

/** Immutable, bitmap-free identity and label record for the future search backend. */
public final class SearchEntry {
    public final String entryKey;
    public final String label;
    public final String normalizedLabel;
    public final String packageName;
    public final String className;
    public final int userId;
    public final long profileSerial;
    public final String shortcutId;
    public final String iconKey;

    public SearchEntry(String label, String normalizedLabel, String packageName,
            String className, int userId, long profileSerial, String shortcutId,
            String iconKey) {
        this.label = safe(label);
        this.normalizedLabel = safe(normalizedLabel);
        this.packageName = safe(packageName);
        this.className = safe(className);
        this.userId = userId;
        this.profileSerial = profileSerial;
        this.shortcutId = shortcutId;
        this.iconKey = safe(iconKey);
        this.entryKey = buildEntryKey(this.packageName, this.className, userId,
                profileSerial, shortcutId);
    }

    public static String buildEntryKey(String packageName, String className, int userId,
            long profileSerial, String shortcutId) {
        long profileIdentity = profileSerial >= 0L ? profileSerial : userId;
        String target = shortcutId == null || shortcutId.length() == 0
                ? safe(className) : "shortcut:" + shortcutId;
        return safe(packageName) + '\t' + target + '\t' + profileIdentity;
    }

    private static String safe(String value) {
        return value == null ? "" : value;
    }
}
