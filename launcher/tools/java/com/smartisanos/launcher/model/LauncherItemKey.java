package com.smartisanos.launcher.model;

import android.text.TextUtils;

/** Runtime identity; legacy database user ids are deliberately not part of this key. */
public final class LauncherItemKey {
    public final long userSerial;
    public final String packageName;
    public final String componentName;

    public LauncherItemKey(long userSerial, String packageName, String componentName) {
        this.userSerial = userSerial;
        this.packageName = packageName == null ? "" : packageName;
        this.componentName = componentName == null ? "" : componentName;
    }

    public boolean isValid() { return userSerial >= 0 && !TextUtils.isEmpty(packageName); }
    @Override public boolean equals(Object other) {
        if (!(other instanceof LauncherItemKey)) return false;
        LauncherItemKey key = (LauncherItemKey) other;
        return userSerial == key.userSerial && packageName.equals(key.packageName)
                && componentName.equals(key.componentName);
    }
    @Override public int hashCode() {
        int result = (int) (userSerial ^ (userSerial >>> 32));
        result = 31 * result + packageName.hashCode();
        return 31 * result + componentName.hashCode();
    }
    @Override public String toString() {
        return userSerial + ":" + packageName + ":" + componentName;
    }
}
