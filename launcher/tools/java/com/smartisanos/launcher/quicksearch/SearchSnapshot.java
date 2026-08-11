package com.smartisanos.launcher.quicksearch;

import android.os.SystemClock;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** Atomically published immutable view of the process-local search index. */
public final class SearchSnapshot {
    public static final SearchSnapshot EMPTY = new SearchSnapshot(
            Collections.<SearchEntry>emptyList(), 0L, 0L);

    public final List<SearchEntry> entries;
    public final long generation;
    public final long createdUptime;

    public SearchSnapshot(List<SearchEntry> entries, long generation) {
        this(entries, generation, SystemClock.uptimeMillis());
    }

    private SearchSnapshot(List<SearchEntry> entries, long generation, long createdUptime) {
        List<SearchEntry> copy = entries == null
                ? Collections.<SearchEntry>emptyList()
                : new ArrayList<SearchEntry>(entries);
        this.entries = Collections.unmodifiableList(copy);
        this.generation = generation;
        this.createdUptime = createdUptime;
    }
}
