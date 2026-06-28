.class public Landroid/icu/impl/TimeZoneNamesImpl;
.super Landroid/icu/text/TimeZoneNames;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;,
        Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;,
        Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZNames;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;,
        Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;,
        Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;,
        Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;
    }
.end annotation


# static fields
.field private static final LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

.field private static volatile METAZONE_IDS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MZ_PREFIX:Ljava/lang/String; = "meta:"

.field private static final MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

.field private static final TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

.field private static final ZONE_STRINGS_BUNDLE:Ljava/lang/String; = "zoneStrings"

.field private static final serialVersionUID:J = -0x1e40420e38b84b80L


# instance fields
.field private transient _mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient _namesFullyLoaded:Z

.field private transient _namesTrie:Landroid/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient _namesTrieFullyLoaded:Z

.field private transient _tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TimeZoneNamesImpl$ZNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient _zoneStrings:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$1;)V

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    .line 51
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$1;)V

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    const-string v0, "Etc/.*|SystemV/.*|.*/Riyadh8[7-9]"

    .line 988
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames;-><init>()V

    .line 67
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method static _getAvailableMetaZoneIDs()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 80
    const-class v0, Landroid/icu/impl/TimeZoneNamesImpl;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    if-nez v1, :cond_0

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string v2, "metaZones"

    .line 82
    invoke-static {v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "mapTimezones"

    .line 83
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 85
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    .line 87
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 89
    :cond_1
    :goto_0
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->METAZONE_IDS:Ljava/util/Set;

    return-object v0
.end method

.method static _getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    invoke-virtual {v0, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 105
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 108
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 109
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    .line 110
    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->mzID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 102
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static _getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl;->TZ_TO_MZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;

    invoke-virtual {v1, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 130
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    .line 131
    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->from()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->to()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 132
    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneNamesImpl$MZMapEntry;->mzID()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method static _getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl;->MZ_TO_TZS_CACHE:Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;

    invoke-virtual {v1, p0, p0}, Landroid/icu/impl/TimeZoneNamesImpl$MZ2TZsCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 153
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p1, "001"

    .line 156
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic access$300(Landroid/icu/impl/TimeZoneNamesImpl;)Landroid/icu/impl/ICUResourceBundle;
    .locals 0

    .line 42
    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    return-object p0
.end method

.method static synthetic access$500(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 42
    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$700(Landroid/icu/impl/TimeZoneNamesImpl;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 42
    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private addAllNamesIntoTrie()V
    .locals 4

    .line 297
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v2, v1, v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addAsTimeZoneIntoTrie(Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v2, v1, v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->addAsMetaZoneIntoTrie(Ljava/lang/String;Landroid/icu/impl/TextTrieMap;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private doFind(Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;Ljava/lang/CharSequence;I)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/Collection<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->resetResults()V

    .line 249
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v0, p2, p3, p1}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    .line 250
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMaxMatchLen()I

    move-result v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    sub-int/2addr p2, p3

    if-eq v0, p2, :cond_1

    iget-boolean p0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 251
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->getMatches()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 997
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl;->LOC_EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2f

    .line 1002
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 1003
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1004
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private initialize(Landroid/icu/util/ULocale;)V
    .locals 2

    const-string v0, "android/icu/impl/data/icudt60b/zone"

    .line 421
    invoke-static {v0, p1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v0, "zoneStrings"

    .line 423
    invoke-virtual {p1, v0}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    .line 426
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 427
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x0

    .line 428
    iput-boolean p1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesFullyLoaded:Z

    .line 430
    new-instance v0, Landroid/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrie:Landroid/icu/impl/TextTrieMap;

    .line 431
    iput-boolean p1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    .line 434
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object p1

    .line 435
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 437
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadStrings(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private internalLoadAllDisplayNames()V
    .locals 2

    .line 289
    iget-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesFullyLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesFullyLoaded:Z

    .line 291
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl;Landroid/icu/impl/TimeZoneNamesImpl$1;)V

    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZoneStringsLoader;->load()V

    :cond_0
    return-void
.end method

.method private declared-synchronized loadMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 2

    monitor-enter p0

    .line 484
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$1;)V

    .line 487
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->loadMetaZone(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_mzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->access$600(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->createMetaZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized loadStrings(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 448
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 451
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 453
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 454
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    invoke-direct {p0, v0}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 457
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 449
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;
    .locals 2

    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;-><init>(Landroid/icu/impl/TimeZoneNamesImpl$1;)V

    .line 503
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->loadTimeZone(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;->access$600(Landroid/icu/impl/TimeZoneNamesImpl$ZNamesLoader;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->createTimeZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 473
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/ULocale;

    .line 474
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->initialize(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    iget-object p0, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_zoneStrings:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object p0

    .line 465
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 203
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p2, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 206
    new-instance v0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;

    invoke-direct {v0, p3}, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;-><init>(Ljava/util/EnumSet;)V

    .line 210
    invoke-direct {p0, v0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->doFind(Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;Ljava/lang/CharSequence;I)Ljava/util/Collection;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    .line 212
    monitor-exit p0

    return-object p3

    .line 219
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->addAllNamesIntoTrie()V

    .line 222
    invoke-direct {p0, v0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->doFind(Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;Ljava/lang/CharSequence;I)Ljava/util/Collection;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    .line 224
    monitor-exit p0

    return-object p3

    .line 229
    :cond_1
    :try_start_2
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->internalLoadAllDisplayNames()V

    .line 234
    sget-object p3, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {p3, v1, v1}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p3

    .line 235
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 237
    iget-object v3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_tzNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v1, v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->createTimeZoneAndPutInCache(Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    goto :goto_0

    .line 240
    :cond_3
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->addAllNamesIntoTrie()V

    const/4 p3, 0x1

    .line 241
    iput-boolean p3, p0, Landroid/icu/impl/TimeZoneNamesImpl;->_namesTrieFullyLoaded:Z

    .line 244
    invoke-direct {p0, v0, p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->doFind(Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;Ljava/lang/CharSequence;I)Ljava/util/Collection;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 204
    :cond_4
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad input text or range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAvailableMetaZoneIDs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V
    .locals 5

    if-eqz p1, :cond_5

    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 267
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 269
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_5

    .line 270
    aget-object v3, p2, v2

    .line 271
    invoke-virtual {v0, v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    if-nez v1, :cond_3

    .line 274
    invoke-virtual {p0, p1, p3, p4}, Landroid/icu/impl/TimeZoneNamesImpl;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 275
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 278
    :cond_1
    invoke-direct {p0, v1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object v1

    goto :goto_2

    .line 276
    :cond_2
    :goto_1
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->EMPTY_ZNAMES:Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    .line 281
    :cond_3
    :goto_2
    invoke-virtual {v1, v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    add-int v3, p6, v2

    .line 283
    aput-object v4, p5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object p0

    sget-object p1, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    .line 121
    invoke-static {p1, p2, p3}, Landroid/icu/impl/TimeZoneNamesImpl;->_getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 144
    invoke-static {p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->_getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneNamesImpl;->loadTimeZoneNames(Ljava/lang/String;)Landroid/icu/impl/TimeZoneNamesImpl$ZNames;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized loadAllDisplayNames()V
    .locals 1

    monitor-enter p0

    .line 258
    :try_start_0
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneNamesImpl;->internalLoadAllDisplayNames()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
