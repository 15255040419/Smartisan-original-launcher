package com.smartisanos.launcher.model;

import android.util.Log;

/** Sole policy gate for system-driven permanent removals. */
public final class RemovalGateway {
    private static final String TAG = "RemovalGateway";
    public Decision evaluate(RemovalRequest request) {
        if (request == null || request.key == null || !request.key.isValid()) return decision(Outcome.BLOCKED, "invalid_key", request);
        if (!"SYSTEM_REMOVAL".equals(request.eventType)) return decision(Outcome.BLOCKED, "not_system_removal", request);
        if (request.replacing) return decision(Outcome.DEFERRED, "replacing", request);
        if (request.profileState != ProfileState.AVAILABLE) return decision(Outcome.DEFERRED, "profile_" + request.profileState, request);
        if (request.packageState != PackageState.REMOVED_CONFIRMED) return decision(Outcome.BLOCKED, "package_" + request.packageState, request);
        return decision(Outcome.CONFIRMED, "removed_confirmed", request);
    }
    private Decision decision(Outcome outcome, String reason, RemovalRequest request) {
        String marker = outcome == Outcome.CONFIRMED ? "[PACKAGE][REMOVE_CONFIRMED]" : outcome == Outcome.DEFERRED ? "[PACKAGE][REMOVE_DEFERRED]" : "[PACKAGE][REMOVE_BLOCKED]";
        Log.i(TAG, marker + " key=" + (request == null ? "null" : request.key) + " source=" + (request == null ? "unknown" : request.source) + " reason=" + reason);
        return new Decision(outcome, reason);
    }
    public enum Outcome { CONFIRMED, BLOCKED, DEFERRED }
    public static final class Decision { public final Outcome outcome; public final String reason; Decision(Outcome o, String r) { outcome=o; reason=r; } }
    public static final class RemovalRequest {
        public final LauncherItemKey key; public final String source; public final String eventType; public final boolean replacing;
        public final PackageState packageState; public final ProfileState profileState; public final long itemId;
        /** Original database user id and type are carried with the immutable item removal intent. */
        public final int legacyUserId; public final int itemType;
        public RemovalRequest(LauncherItemKey key, String source, String eventType, boolean replacing, PackageState packageState,
                              ProfileState profileState, long itemId, int legacyUserId, int itemType) {
            this.key=key; this.source=source; this.eventType=eventType; this.replacing=replacing; this.packageState=packageState;
            this.profileState=profileState; this.itemId=itemId; this.legacyUserId=legacyUserId; this.itemType=itemType;
        }
    }
}
