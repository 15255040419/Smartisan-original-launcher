package com.smartisanos.launcher.quicksearch;

import android.Manifest;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.ContactsContract;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/** Opt-in process-wide ContactsContract index. Provider access only occurs during rebuilds. */
public final class ContactSearchRepository {
    private static final String TAG = "QS_CONTACT";
    private static volatile ContactSearchRepository instance;
    private final Context appContext;
    private final ExecutorService executor = Executors.newSingleThreadExecutor();
    private final ContentObserver observer;
    private volatile ContactSearchSnapshot snapshot = ContactSearchSnapshot.EMPTY;
    private boolean observerRegistered;
    // EMPTY is a value object after disable(), not a durable marker for whether
    // ContactsContract has been successfully indexed under the current grant.
    private boolean indexReady;
    private boolean rebuilding;
    private boolean rebuildQueued;
    private long generation;

    public static ContactSearchRepository get(Context context) {
        if (instance == null) synchronized (ContactSearchRepository.class) {
            if (instance == null) instance = new ContactSearchRepository(context.getApplicationContext());
        }
        return instance;
    }

    private ContactSearchRepository(Context context) {
        appContext = context;
        observer = new ContentObserver(new Handler(Looper.getMainLooper())) {
            @Override public void onChange(boolean selfChange, Uri uri) { scheduleRebuild(); }
            @Override public void onChange(boolean selfChange) { scheduleRebuild(); }
        };
    }

    public boolean hasPermission() {
        return appContext.checkSelfPermission(Manifest.permission.READ_CONTACTS)
                == PackageManager.PERMISSION_GRANTED;
    }

    /** PII-free state used by the opt-in search diagnostics. */
    public synchronized boolean isObserverRegistered() {
        return observerRegistered;
    }

    public synchronized void enable() {
        if (!hasPermission()) { disable(); return; }
        if (!observerRegistered) {
            appContext.getContentResolver().registerContentObserver(
                    ContactsContract.Contacts.CONTENT_URI, true, observer);
            appContext.getContentResolver().registerContentObserver(
                    ContactsContract.CommonDataKinds.Phone.CONTENT_URI, true, observer);
            observerRegistered = true;
        }
        if (!indexReady) scheduleRebuild();
    }

    public synchronized void disable() {
        if (observerRegistered) {
            appContext.getContentResolver().unregisterContentObserver(observer);
            observerRegistered = false;
        }
        rebuildQueued = false;
        indexReady = false;
        generation++;
        snapshot = new ContactSearchSnapshot(generation, Collections.<ContactSearchEntry>emptyList());
    }

    public ContactSearchSnapshot snapshot() {
        if (!hasPermission()) { disable(); return ContactSearchSnapshot.EMPTY; }
        return snapshot;
    }

    public synchronized void scheduleRebuild() {
        if (!hasPermission()) { disable(); return; }
        if (rebuilding) { rebuildQueued = true; return; }
        rebuilding = true;
        executor.execute(new Runnable() { @Override public void run() { rebuildOnWorker(); } });
    }

    private void rebuildOnWorker() {
        final long begin = SystemClock.elapsedRealtime();
        final LinkedHashMap<Long, MutableContact> contacts = new LinkedHashMap<Long, MutableContact>();
        Log.i(TAG, "CONTACT_INDEX_BEGIN permission=" + hasPermission());
        try {
            readContacts(contacts);
            int contactRows = contacts.size();
            readPhones(contacts);
            ArrayList<ContactSearchEntry> entries = new ArrayList<ContactSearchEntry>(contacts.size());
            for (MutableContact contact : contacts.values()) {
                if (!contact.numbers.isEmpty()) entries.add(contact.freeze());
            }
            synchronized (this) {
                generation++;
                snapshot = new ContactSearchSnapshot(generation, entries);
                indexReady = true;
            }
            Log.i(TAG, "CONTACT_PROVIDER_COUNTS contacts=" + contactRows
                    + " contactsWithPhone=" + entries.size());
            Log.i(TAG, "CONTACT_INDEX_READY count=" + entries.size() + " generation="
                    + snapshot.generation + " elapsedMs=" + (SystemClock.elapsedRealtime() - begin));
        } catch (SecurityException denied) {
            Log.i(TAG, "CONTACT_SOURCE_UNAVAILABLE permission=false");
            disable();
        } finally {
            boolean again;
            synchronized (this) {
                rebuilding = false;
                again = rebuildQueued;
                rebuildQueued = false;
            }
            if (again) scheduleRebuild();
        }
    }

    private void readContacts(Map<Long, MutableContact> out) {
        Cursor cursor = null;
        try {
            cursor = appContext.getContentResolver().query(ContactsContract.Contacts.CONTENT_URI,
                    new String[]{ContactsContract.Contacts._ID, ContactsContract.Contacts.LOOKUP_KEY,
                            ContactsContract.Contacts.DISPLAY_NAME_PRIMARY,
                            ContactsContract.Contacts.PHOTO_THUMBNAIL_URI},
                    null, null, null);
            while (cursor != null && cursor.moveToNext()) {
                long id = cursor.getLong(0);
                out.put(id, new MutableContact(id, cursor.getString(1), cursor.getString(2), cursor.getString(3)));
            }
        } finally { if (cursor != null) cursor.close(); }
    }

    private void readPhones(Map<Long, MutableContact> out) {
        Cursor cursor = null;
        try {
            cursor = appContext.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI,
                    new String[]{ContactsContract.CommonDataKinds.Phone.CONTACT_ID,
                            ContactsContract.CommonDataKinds.Phone.NUMBER,
                            ContactsContract.CommonDataKinds.Phone.IS_SUPER_PRIMARY,
                            ContactsContract.CommonDataKinds.Phone.IS_PRIMARY}, null, null, null);
            while (cursor != null && cursor.moveToNext()) {
                MutableContact contact = out.get(cursor.getLong(0));
                if (contact != null) contact.addPhone(cursor.getString(1), cursor.getInt(2) != 0, cursor.getInt(3) != 0);
            }
        } finally { if (cursor != null) cursor.close(); }
    }

    private static final class MutableContact {
        final long id; final String lookupKey; final String name; final String photoUri;
        final LinkedHashSet<String> numbers = new LinkedHashSet<String>();
        String primary = "";
        MutableContact(long id, String lookupKey, String name, String photoUri) { this.id=id; this.lookupKey=safe(lookupKey); this.name=safe(name); this.photoUri=safe(photoUri); }
        void addPhone(String number, boolean superPrimary, boolean primaryNumber) {
            String safeNumber = safe(number); if (safeNumber.length() == 0) return;
            numbers.add(safeNumber);
            if (primary.length() == 0 || superPrimary || primaryNumber) primary = safeNumber;
        }
        ContactSearchEntry freeze() {
            ArrayList<String> normalized = new ArrayList<String>(numbers.size());
            for (String number : numbers) normalized.add(normalizePhone(number));
            return new ContactSearchEntry(id, lookupKey, name, normalized, primary, photoUri);
        }
    }

    static String safe(String value) { return value == null ? "" : value; }
    static String normalize(String value) { return safe(value).toLowerCase(java.util.Locale.ROOT).replaceAll("[^a-z0-9\\u4e00-\\u9fff]", ""); }
    static String normalizePhone(String value) { return safe(value).replaceAll("[^0-9]", "").replaceFirst("^86(?=1[3-9])", ""); }
}
