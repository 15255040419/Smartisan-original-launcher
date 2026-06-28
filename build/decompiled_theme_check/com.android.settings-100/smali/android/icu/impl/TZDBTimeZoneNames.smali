.class public Landroid/icu/impl/TZDBTimeZoneNames;
.super Landroid/icu/text/TimeZoneNames;
.source "TZDBTimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;,
        Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;,
        Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    }
.end annotation


# static fields
.field private static final TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZONESTRINGS:Landroid/icu/impl/ICUResourceBundle;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _locale:Landroid/icu/util/ULocale;

.field private volatile transient _region:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 48
    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    const-string v0, "android/icu/impl/data/icudt60b/zone"

    const-string/jumbo v1, "tzdbNames"

    .line 53
    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string/jumbo v1, "zoneStrings"

    .line 54
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames;->ZONESTRINGS:Landroid/icu/impl/ICUResourceBundle;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/icu/text/TimeZoneNames;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_locale:Landroid/icu/util/ULocale;

    return-void
.end method

.method private static getMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;
    .locals 3

    .line 342
    sget-object v0, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    if-nez v0, :cond_1

    .line 344
    sget-object v0, Landroid/icu/impl/TZDBTimeZoneNames;->ZONESTRINGS:Landroid/icu/impl/ICUResourceBundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meta:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getInstance(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    move-result-object v0

    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 346
    sget-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getTargetRegion()Ljava/lang/String;
    .locals 2

    .line 398
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 401
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "001"

    .line 407
    :cond_0
    iput-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    .line 409
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/TZDBTimeZoneNames;->_region:Ljava/lang/String;

    return-object p0
.end method

.method private static prepareFind()V
    .locals 11

    .line 353
    sget-object v0, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v0, :cond_6

    .line 354
    const-class v0, Landroid/icu/impl/TZDBTimeZoneNames;

    monitor-enter v0

    .line 355
    :try_start_0
    sget-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v1, :cond_5

    .line 357
    new-instance v1, Landroid/icu/impl/TextTrieMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    .line 358
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs()Ljava/util/Set;

    move-result-object v3

    .line 359
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 360
    invoke-static {v4}, Landroid/icu/impl/TZDBTimeZoneNames;->getMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    move-result-object v5

    .line 361
    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v5, v6}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v6

    .line 362
    sget-object v7, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v5, v7}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_1

    if-nez v7, :cond_1

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {v5}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getParseRegions()[Ljava/lang/String;

    move-result-object v5

    .line 367
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 374
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-eqz v6, :cond_3

    .line 377
    new-instance v9, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    sget-object v10, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-direct {v9, v4, v10, v8, v5}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;-><init>(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;Z[Ljava/lang/String;)V

    .line 381
    invoke-virtual {v1, v6, v9}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    :cond_3
    if-eqz v7, :cond_0

    .line 384
    new-instance v6, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    sget-object v9, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-direct {v6, v4, v9, v8, v5}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;-><init>(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;Z[Ljava/lang/String;)V

    .line 388
    invoke-virtual {v1, v7, v6}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    goto :goto_0

    .line 391
    :cond_4
    sput-object v1, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    .line 393
    :cond_5
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 1
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

    if-eqz p1, :cond_0

    .line 131
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 135
    invoke-static {}, Landroid/icu/impl/TZDBTimeZoneNames;->prepareFind()V

    .line 136
    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;

    invoke-direct {p0}, Landroid/icu/impl/TZDBTimeZoneNames;->getTargetRegion()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p3, p0}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;-><init>(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 137
    sget-object p0, Landroid/icu/impl/TZDBTimeZoneNames;->TZDB_NAMES_TRIE:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    .line 138
    invoke-virtual {v0}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->getMatches()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 132
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad input text or range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 69
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

    .line 77
    invoke-static {p1}, Landroid/icu/impl/TimeZoneNamesImpl;->_getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    if-eq p2, p0, :cond_0

    sget-object p0, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    if-eq p2, p0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/TZDBTimeZoneNames;->getMetaZoneNames(Ljava/lang/String;)Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNames;->getName(Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    .line 85
    invoke-static {p1, p2, p3}, Landroid/icu/impl/TimeZoneNamesImpl;->_getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 93
    invoke-static {p1, p2}, Landroid/icu/impl/TimeZoneNamesImpl;->_getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
