package com.smartisanos.launcher.quicksearch;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** Immutable, atomically published ContactsContract index generation. */
public final class ContactSearchSnapshot {
    public static final ContactSearchSnapshot EMPTY = new ContactSearchSnapshot(0L,
            Collections.<ContactSearchEntry>emptyList());
    public final long generation;
    public final List<ContactSearchEntry> entries;

    ContactSearchSnapshot(long generation, List<ContactSearchEntry> entries) {
        this.generation = generation;
        this.entries = Collections.unmodifiableList(new ArrayList<ContactSearchEntry>(entries));
    }
}
