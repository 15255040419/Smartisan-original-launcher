package com.smartisanos.launcher.data.redirectIcon;

import java.io.Serializable;

public class RedirectIconInfo implements Serializable, Comparable<RedirectIconInfo> {
    public String packageName;
    public String componentName;
    public String drawableName;
    public byte[] iconData;
    public boolean useImprovedAppIcon = true;
    public long installTime;
    public long ownerId;
    public String md5;
    public String lastUpdateTime;

    public String getPrimaryId() {
        return String.valueOf(packageName) + ";" + String.valueOf(componentName);
    }

    public int compareTo(RedirectIconInfo another) {
        if (another == null) {
            return -1;
        }
        long delta = another.installTime - installTime;
        return delta == 0 ? 0 : (delta > 0 ? 1 : -1);
    }

    public String toString() {
        return "pkg [" + packageName + "], cmp [" + componentName + "], use [" + useImprovedAppIcon + "]";
    }
}
