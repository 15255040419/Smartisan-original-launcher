package com.smartisanos.launcher.model;

import android.content.Context;
import android.content.Intent;
import android.os.UserHandle;
import android.util.Log;

/** Canonicalizes Android event adapters; it makes no direct DB, Scene, or package decision. */
public final class PackageEventGateway {
    private static final String TAG = "PackageEventGateway";
    public enum Type { ADDED, REMOVED, CHANGED, REPLACED, AVAILABLE, UNAVAILABLE, PROFILE_AVAILABLE, PROFILE_UNAVAILABLE, PROFILE_LOCKED, PROFILE_UNLOCKED, PROFILE_QUIET_CHANGED }
    public interface Consumer { void onPackageEvent(Context context, PackageEvent event); }
    private final ProfileRepository profiles; private final Consumer consumer;
    public PackageEventGateway(Context context, Consumer target) { profiles = new ProfileRepository(context); consumer = target; }
    public void acceptBroadcast(Context context, Intent intent, String source) {
        if (intent == null || intent.getData() == null) return;
        String pkg = intent.getData().getSchemeSpecificPart();
        int id = intent.getIntExtra("android.intent.extra.user_handle", 0);
        UserHandle user = profiles.userForLegacyId(id);
        accept(context, new PackageEvent(type(intent.getAction()), pkg, user, profiles.serialFor(user), null,
                intent.getBooleanExtra(Intent.EXTRA_REPLACING, false), source));
    }
    public void accept(Context context, PackageEvent event) {
        if (event == null || event.type == null || event.packageName == null || event.packageName.length() == 0) return;
        Log.i(TAG, "[PACKAGE][EVENT] type=" + event.type + " pkg=" + event.packageName + " component=" + event.componentName + " userId=" + profiles.userId(event.user) + " userSerial=" + event.userSerial + " source=" + event.source);
        if (consumer != null) consumer.onPackageEvent(context, event);
    }
    private static Type type(String action) {
        if (Intent.ACTION_PACKAGE_REMOVED.equals(action)) return Type.REMOVED;
        if (Intent.ACTION_PACKAGE_REPLACED.equals(action)) return Type.REPLACED;
        if (Intent.ACTION_PACKAGE_CHANGED.equals(action)) return Type.CHANGED;
        if (Intent.ACTION_EXTERNAL_APPLICATIONS_AVAILABLE.equals(action)) return Type.AVAILABLE;
        if (Intent.ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE.equals(action)) return Type.UNAVAILABLE;
        return Type.ADDED;
    }
    public static final class PackageEvent {
        public final Type type; public final String packageName; public final UserHandle user; public final long userSerial; public final String componentName; public final boolean replacing; public final String source;
        public PackageEvent(Type type, String pkg, UserHandle user, long serial, String component, boolean replacing, String source) { this.type=type; packageName=pkg; this.user=user; userSerial=serial; componentName=component; this.replacing=replacing; this.source=source == null ? "unknown" : source; }
    }
}
