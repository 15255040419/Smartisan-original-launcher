package com.smartisanos.launcher.quicksearch;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/** Immutable contact-only search payload.  It deliberately owns no Cursor or image data. */
public final class ContactSearchEntry {
    public final long contactId;
    public final String lookupKey;
    public final String displayName;
    public final String normalizedName;
    public final List<String> normalizedPhones;
    public final String primaryDisplayPhone;
    public final String photoUri;
    public final String stableKey;

    ContactSearchEntry(long contactId, String lookupKey, String displayName,
            List<String> normalizedPhones, String primaryDisplayPhone, String photoUri) {
        this.contactId = contactId;
        this.lookupKey = ContactSearchRepository.safe(lookupKey);
        this.displayName = ContactSearchRepository.safe(displayName);
        this.normalizedName = ContactSearchRepository.normalize(this.displayName);
        this.normalizedPhones = Collections.unmodifiableList(new ArrayList<String>(normalizedPhones));
        this.primaryDisplayPhone = ContactSearchRepository.safe(primaryDisplayPhone);
        this.photoUri = ContactSearchRepository.safe(photoUri);
        this.stableKey = "contact:" + (this.lookupKey.length() == 0 ? "id:" + contactId : this.lookupKey);
    }

    public boolean hasPhonePrefix(String rawQuery) {
        String needle = ContactSearchRepository.normalizePhone(rawQuery);
        if (needle.length() == 0) return false;
        for (String phone : normalizedPhones) if (phone.startsWith(needle)) return true;
        return false;
    }
}
