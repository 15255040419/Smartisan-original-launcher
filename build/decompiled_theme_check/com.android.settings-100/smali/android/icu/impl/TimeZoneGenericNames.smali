.class public Landroid/icu/impl/TimeZoneGenericNames;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/TimeZoneGenericNames$Cache;,
        Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;,
        Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;,
        Landroid/icu/impl/TimeZoneGenericNames$NameInfo;,
        Landroid/icu/impl/TimeZoneGenericNames$Pattern;,
        Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/impl/TimeZoneGenericNames;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DST_CHECK_RANGE:J = 0x3b3922000L

.field private static GENERIC_NAMES_CACHE:Landroid/icu/impl/TimeZoneGenericNames$Cache; = null

.field private static final GENERIC_NON_LOCATION_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

.field private static final serialVersionUID:J = 0x25e296fe0f5baf81L


# instance fields
.field private volatile transient _frozen:Z

.field private transient _genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient _genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient _gnamesTrie:Landroid/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/impl/TimeZoneGenericNames$NameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private transient _gnamesTrieFullyLoaded:Z

.field private final _locale:Landroid/icu/util/ULocale;

.field private transient _localeDisplayNamesRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/icu/text/LocaleDisplayNames;",
            ">;"
        }
    .end annotation
.end field

.field private transient _patternFormatters:[Ljava/text/MessageFormat;

.field private transient _region:Ljava/lang/String;

.field private _tznames:Landroid/icu/text/TimeZoneNames;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 124
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/TimeZoneGenericNames$Cache;-><init>(Landroid/icu/impl/TimeZoneGenericNames$1;)V

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NAMES_CACHE:Landroid/icu/impl/TimeZoneGenericNames$Cache;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v1, 0x0

    .line 129
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NON_LOCATION_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    return-void
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/impl/TimeZoneGenericNames$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    .line 141
    iput-object p2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    .line 142
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->init()V

    return-void
.end method

.method private createGenericMatchInfo(Landroid/icu/text/TimeZoneNames$MatchInfo;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .locals 8

    .line 798
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 799
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 812
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    goto :goto_0

    .line 815
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected MatchInfo name type - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 808
    :cond_1
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 809
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    goto :goto_0

    .line 805
    :cond_2
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    goto :goto_0

    .line 801
    :cond_3
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    .line 802
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    :goto_0
    move-object v6, v0

    move-object v3, v1

    .line 818
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 820
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v0

    .line 822
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    goto :goto_1

    :cond_4
    move-object v4, v0

    .line 826
    :goto_1
    new-instance p0, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v5

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/text/TimeZoneFormat$TimeType;Landroid/icu/impl/TimeZoneGenericNames$1;)V

    return-object p0
.end method

.method private declared-synchronized findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 872
    :try_start_0
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;

    invoke-direct {v0, p3}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;-><init>(Ljava/util/EnumSet;)V

    .line 873
    iget-object p3, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p3, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    .line 874
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMaxMatchLen()I

    move-result p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    if-eq p3, v1, :cond_2

    iget-boolean p3, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    if-eqz p3, :cond_0

    goto :goto_1

    .line 882
    :cond_0
    sget-object p3, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    const/4 v1, 0x0

    invoke-static {p3, v1, v1}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object p3

    .line 883
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 884
    invoke-direct {p0, v1}, Landroid/icu/impl/TimeZoneGenericNames;->loadStrings(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    .line 886
    iput-boolean p3, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    .line 889
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->resetResults()V

    .line 890
    iget-object p3, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p3, p1, p2, v0}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    .line 891
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMatches()Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 876
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->getMatches()Ljava/util/Collection;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 844
    const-class v0, Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 845
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {p3, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 847
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 849
    :cond_0
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {p3, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 850
    sget-object p3, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 851
    sget-object p3, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0, p3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 854
    :cond_1
    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 856
    iget-object p0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private formatGenericNonLocationName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    .line 328
    invoke-static/range {p1 .. p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 335
    :cond_0
    sget-object v6, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-object/from16 v7, p2

    if-ne v7, v6, :cond_1

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    :cond_1
    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    .line 336
    :goto_0
    iget-object v7, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v7, v4, v6}, Landroid/icu/text/TimeZoneNames;->getTimeZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    return-object v7

    .line 343
    :cond_2
    iget-object v8, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v8, v4, v2, v3}, Landroid/icu/text/TimeZoneNames;->getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 346
    fill-array-data v10, :array_0

    const/4 v11, 0x0

    .line 347
    invoke-virtual {v1, v2, v3, v11, v10}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    const/4 v12, 0x1

    .line 349
    aget v13, v10, v12

    if-nez v13, :cond_8

    .line 352
    instance-of v13, v1, Landroid/icu/util/BasicTimeZone;

    const-wide v14, 0x3b3922000L

    if-eqz v13, :cond_5

    .line 353
    check-cast v1, Landroid/icu/util/BasicTimeZone;

    .line 354
    invoke-virtual {v1, v2, v3, v12}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 356
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v16

    sub-long v16, v2, v16

    cmp-long v16, v16, v14

    if-gez v16, :cond_3

    .line 357
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    if-eqz v13, :cond_3

    :goto_1
    move v1, v11

    goto :goto_2

    .line 360
    :cond_3
    invoke-virtual {v1, v2, v3, v11}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 362
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v16

    sub-long v16, v16, v2

    cmp-long v13, v16, v14

    if-gez v13, :cond_4

    .line 363
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v12

    :goto_2
    move-object/from16 v16, v10

    goto :goto_5

    :cond_5
    new-array v13, v9, [I

    move-object/from16 v16, v10

    sub-long v9, v2, v14

    .line 371
    invoke-virtual {v1, v9, v10, v11, v13}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 372
    aget v9, v13, v12

    if-eqz v9, :cond_6

    :goto_3
    goto :goto_4

    :cond_6
    add-long v9, v2, v14

    .line 375
    invoke-virtual {v1, v9, v10, v11, v13}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 376
    aget v1, v13, v12

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v12

    goto :goto_5

    :cond_8
    move-object/from16 v16, v10

    :goto_4
    move v1, v11

    :goto_5
    if-eqz v1, :cond_b

    .line 383
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    if-ne v6, v1, :cond_9

    .line 384
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_6

    :cond_9
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .line 385
    :goto_6
    iget-object v9, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v9, v4, v1, v2, v3}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 394
    iget-object v7, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v7, v8, v6}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v7

    .line 395
    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    move-object v7, v5

    goto :goto_7

    :cond_a
    move-object v7, v1

    :cond_b
    :goto_7
    if-nez v7, :cond_f

    .line 403
    iget-object v1, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v1, v8, v6}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 408
    iget-object v5, v0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 409
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 410
    invoke-static {v5}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v5

    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 411
    fill-array-data v7, :array_1

    .line 417
    aget v9, v16, v11

    int-to-long v9, v9

    add-long/2addr v2, v9

    aget v9, v16, v12

    int-to-long v9, v9

    add-long/2addr v2, v9

    invoke-virtual {v5, v2, v3, v12, v7}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 419
    aget v2, v16, v11

    aget v3, v7, v11

    if-ne v2, v3, :cond_c

    aget v2, v16, v12

    aget v3, v7, v12

    if-eq v2, v3, :cond_e

    .line 421
    :cond_c
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    if-ne v6, v2, :cond_d

    move v11, v12

    :cond_d
    invoke-direct {v0, v4, v8, v11, v1}, Landroid/icu/impl/TimeZoneGenericNames;->getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_8

    :cond_e
    move-object v7, v1

    :cond_f
    :goto_8
    return-object v7

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private varargs declared-synchronized formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 444
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    if-nez v0, :cond_0

    .line 445
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/text/MessageFormat;

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    .line 448
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->ordinal()I

    move-result v0

    .line 449
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "android/icu/impl/data/icudt60b/zone"

    .line 452
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zoneStrings/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 456
    :catch_0
    :try_start_2
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->defaultValue()Ljava/lang/String;

    move-result-object p1

    .line 459
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    new-instance v2, Ljava/text/MessageFormat;

    invoke-direct {v2, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 461
    :cond_1
    iget-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;
    .locals 2

    .line 183
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    .line 184
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NAMES_CACHE:Landroid/icu/impl/TimeZoneGenericNames$Cache;

    invoke-virtual {v1, v0, p0}, Landroid/icu/impl/TimeZoneGenericNames$Cache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/TimeZoneGenericNames;

    return-object p0
.end method

.method private declared-synchronized getLocaleDisplayNames()Landroid/icu/text/LocaleDisplayNames;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 474
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 475
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/LocaleDisplayNames;

    :cond_0
    if-nez v0, :cond_1

    .line 478
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 479
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_localeDisplayNamesRef:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p3, :cond_0

    const-string v0, "L"

    goto :goto_0

    :cond_0
    const-string v0, "S"

    .line 545
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 551
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 554
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v2, p2, v1}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 555
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 557
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getLocaleDisplayNames()Landroid/icu/text/LocaleDisplayNames;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 560
    :cond_2
    iget-object p2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {p2, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 563
    :cond_3
    iget-object p2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {p2, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    move-object p2, p1

    .line 571
    :cond_4
    :goto_1
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->FALLBACK_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p4, v2, p2

    invoke-direct {p0, v1, v2}, Landroid/icu/impl/TimeZoneGenericNames;->formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 572
    monitor-enter p0

    .line 573
    :try_start_0
    iget-object p4, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-nez p4, :cond_6

    .line 575
    new-instance p4, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_5

    .line 576
    sget-object p3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    goto :goto_2

    :cond_5
    sget-object p3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    :goto_2
    invoke-direct {p4, p1, p3}, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;-><init>(Ljava/lang/String;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;)V

    .line 577
    iget-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p1, p2, p4}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    goto :goto_3

    :cond_6
    move-object p2, p4

    .line 581
    :goto_3
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized getTargetRegion()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 519
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 520
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    .line 521
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 522
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 523
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    .line 524
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "001"

    .line 525
    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;

    .line 529
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_region:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init()V
    .locals 2

    .line 150
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    .line 153
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 154
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 156
    new-instance v0, Landroid/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    .line 160
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0, v0}, Landroid/icu/impl/TimeZoneGenericNames;->loadStrings(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized loadStrings(Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 485
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 489
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    .line 492
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v0, p1}, Landroid/icu/text/TimeZoneNames;->getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 493
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 497
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getTargetRegion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 498
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 499
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames;->GENERIC_NON_LOCATION_TYPES:[Landroid/icu/text/TimeZoneNames$NameType;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 500
    iget-object v7, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v7, v1, v6}, Landroid/icu/text/TimeZoneNames;->getMetaZoneDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 503
    sget-object v8, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    invoke-direct {p0, p1, v1, v6, v7}, Landroid/icu/impl/TimeZoneGenericNames;->getPartialLocationName(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 508
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 486
    :cond_5
    :goto_2
    monitor-exit p0

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 914
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 915
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->init()V

    return-void
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/impl/TimeZoneGenericNames;
    .locals 1

    const/4 v0, 0x0

    .line 942
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/TimeZoneGenericNames;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 943
    :try_start_1
    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_frozen:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-object p0, v0

    :catchall_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->cloneAsThawed()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object p0

    return-object p0
.end method

.method public find(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 771
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 775
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v0

    .line 778
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 781
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/text/TimeZoneNames$MatchInfo;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 785
    :cond_0
    invoke-direct {p0, p2}, Landroid/icu/impl/TimeZoneGenericNames;->createGenericMatchInfo(Landroid/icu/text/TimeZoneNames$MatchInfo;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 772
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad input text or range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 705
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    if-ltz p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_7

    .line 711
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findTimeZoneNames(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 714
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/TimeZoneNames$MatchInfo;

    if-eqz v2, :cond_1

    .line 715
    invoke-virtual {v3}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v5

    if-le v4, v5, :cond_0

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 720
    invoke-direct {p0, v2}, Landroid/icu/impl/TimeZoneGenericNames;->createGenericMatchInfo(Landroid/icu/text/TimeZoneNames$MatchInfo;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v1

    .line 721
    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p2

    if-ne v0, v2, :cond_3

    .line 739
    iget-object v0, v1, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType:Landroid/icu/text/TimeZoneFormat$TimeType;

    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-eq v0, v2, :cond_3

    return-object v1

    .line 747
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/TimeZoneGenericNames;->findLocal(Ljava/lang/String;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 749
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    if-eqz v1, :cond_5

    .line 753
    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result p2

    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result p3

    if-lt p2, p3, :cond_4

    :cond_5
    move-object v1, p1

    goto :goto_1

    :cond_6
    return-object v1

    .line 706
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad input text or range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public freeze()Landroid/icu/impl/TimeZoneGenericNames;
    .locals 1

    const/4 v0, 0x1

    .line 931
    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->freeze()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;
    .locals 2

    .line 200
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$android$icu$impl$TimeZoneGenericNames$GenericNameType:[I

    invoke-virtual {p2}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/TimeZoneGenericNames;->formatGenericNonLocationName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 211
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 213
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 202
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 204
    invoke-virtual {p0, p1}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    :cond_3
    :goto_1
    return-object p2
.end method

.method public getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 231
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object v1

    .line 240
    :cond_2
    new-instance v0, Landroid/icu/util/Output;

    invoke-direct {v0}, Landroid/icu/util/Output;-><init>()V

    .line 241
    invoke-static {p1, v0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCountry(Ljava/lang/String;Landroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 243
    iget-object v0, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 245
    invoke-direct {p0}, Landroid/icu/impl/TimeZoneGenericNames;->getLocaleDisplayNames()Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-direct {p0, v2, v3}, Landroid/icu/impl/TimeZoneGenericNames;->formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 253
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v0, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->REGION_FORMAT:Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-direct {p0, v2, v3}, Landroid/icu/impl/TimeZoneGenericNames;->formatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    .line 259
    iget-object p0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 261
    :cond_5
    monitor-enter p0

    .line 262
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 263
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    .line 266
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;

    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-direct {v0, p1, v2}, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;-><init>(Ljava/lang/String;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;)V

    .line 267
    iget-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p1, v1, v0}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    goto :goto_1

    :cond_6
    move-object v1, v0

    .line 271
    :goto_1
    monitor-exit p0

    :goto_2
    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    :goto_3
    return-object v0
.end method

.method public isFrozen()Z
    .locals 0

    .line 923
    iget-boolean p0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_frozen:Z

    return p0
.end method

.method public setFormatPattern(Landroid/icu/impl/TimeZoneGenericNames$Pattern;Ljava/lang/String;)Landroid/icu/impl/TimeZoneGenericNames;
    .locals 2

    .line 284
    invoke-virtual {p0}, Landroid/icu/impl/TimeZoneGenericNames;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 292
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_genericPartialLocationNamesMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_1
    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrie:Landroid/icu/impl/TextTrieMap;

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_gnamesTrieFullyLoaded:Z

    .line 298
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    if-nez v0, :cond_2

    .line 299
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->values()[Landroid/icu/impl/TimeZoneGenericNames$Pattern;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/text/MessageFormat;

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    .line 301
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames;->_patternFormatters:[Ljava/text/MessageFormat;

    invoke-virtual {p1}, Landroid/icu/impl/TimeZoneGenericNames$Pattern;->ordinal()I

    move-result p1

    new-instance v1, Ljava/text/MessageFormat;

    invoke-direct {v1, p2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    return-object p0

    .line 285
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify frozen object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
