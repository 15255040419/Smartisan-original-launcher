package com.smartisanos.launcher.backup;

import java.util.concurrent.atomic.AtomicReference;

public final class BackupOperationLock {
    private static final AtomicReference<String> OWNER = new AtomicReference<String>();

    private BackupOperationLock() {}

    public static boolean acquire(String token) {
        return token != null && OWNER.compareAndSet(null, token);
    }

    public static boolean owns(String token) {
        return token != null && token.equals(OWNER.get());
    }

    public static void release(String token) {
        if (token != null) OWNER.compareAndSet(token, null);
    }

    public static boolean isBusy() {
        return OWNER.get() != null;
    }

    public static boolean isBusyForDifferentOwner(String token) {
        String owner = OWNER.get();
        return owner != null && (token == null || !owner.equals(token));
    }
}
