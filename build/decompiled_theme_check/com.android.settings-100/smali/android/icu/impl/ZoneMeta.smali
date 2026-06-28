.class public final Landroid/icu/impl/ZoneMeta;
.super Ljava/lang/Object;
.source "ZoneMeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;,
        Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ASSERT:Z = false

.field private static CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

.field private static REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static REGION_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

.field private static ZONEIDS:[Ljava/lang/String; = null

.field private static final ZONEINFORESNAME:Ljava/lang/String; = "zoneinfo64"

.field private static final kCUSTOM_TZ_PREFIX:Ljava/lang/String; = "GMT"

.field private static final kGMT_ID:Ljava/lang/String; = "GMT"

.field private static final kMAX_CUSTOM_HOUR:I = 0x17

.field private static final kMAX_CUSTOM_MIN:I = 0x3b

.field private static final kMAX_CUSTOM_SEC:I = 0x3b

.field private static final kNAMES:Ljava/lang/String; = "Names"

.field private static final kREGIONS:Ljava/lang/String; = "Regions"

.field private static final kWorld:Ljava/lang/String; = "001"

.field private static final kZONES:Ljava/lang/String; = "Zones"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 343
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache;

    .line 344
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/impl/ZoneMeta;->REGION_CACHE:Landroid/icu/impl/ICUCache;

    .line 345
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache;

    .line 571
    new-instance v0, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;-><init>(Landroid/icu/impl/ZoneMeta$1;)V

    sput-object v0, Landroid/icu/impl/ZoneMeta;->SYSTEM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

    .line 609
    new-instance v0, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    invoke-direct {v0, v1}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;-><init>(Landroid/icu/impl/ZoneMeta$1;)V

    sput-object v0, Landroid/icu/impl/ZoneMeta;->CUSTOM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized countEquivalentIDs(Ljava/lang/String;)I
    .locals 3

    const-class v0, Landroid/icu/impl/ZoneMeta;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 225
    :try_start_0
    invoke-static {v2, p0}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    :try_start_1
    const-string v2, "links"

    .line 228
    invoke-virtual {p0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object p0

    .line 230
    array-length v1, p0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :catch_0
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "timezone"

    const/16 v1, 0x2f

    const/16 v2, 0x3a

    .line 396
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android/icu/impl/data/icudt60b"

    const-string v4, "keyTypeData"

    .line 400
    sget-object v5, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    const-string/jumbo v4, "typeMap"

    .line 402
    invoke-virtual {v3, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 403
    invoke-virtual {v4, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 405
    :try_start_1
    invoke-virtual {v4, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, p0

    :catch_0
    if-nez v2, :cond_0

    :try_start_2
    const-string/jumbo p0, "typeAlias"

    .line 413
    invoke-virtual {v3, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 414
    invoke-virtual {p0, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 415
    invoke-virtual {p0, v1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_0
    return-object v2
.end method

.method static formatCustomID(IIIZ)Ljava/lang/String;
    .locals 2

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GMT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_0

    if-eqz p1, :cond_5

    :cond_0
    if-eqz p3, :cond_1

    const/16 p3, 0x2d

    .line 808
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p3, 0x2b

    .line 810
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/16 p3, 0x30

    const/16 v1, 0xa

    if-ge p0, v1, :cond_2

    .line 814
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 816
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    .line 817
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge p1, v1, :cond_3

    .line 819
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 821
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    .line 825
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge p2, v1, :cond_4

    .line 827
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 829
    :cond_4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 832
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/TimeZone$SystemTimeZoneType;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    sget-object v0, Landroid/icu/impl/ZoneMeta$1;->$SwitchMap$android$icu$util$TimeZone$SystemTimeZoneType:[I

    invoke-virtual {p0}, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 170
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getCanonicalSystemLocationZIDs()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown SystemTimeZoneType"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 167
    :cond_1
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getCanonicalSystemZIDs()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getSystemZIDs()Ljava/util/Set;

    move-result-object p0

    :goto_0
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    return-object p0

    :cond_3
    if-eqz p1, :cond_4

    .line 182
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 186
    :cond_4
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 187
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 189
    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    .line 196
    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getSystemTimeZone(Ljava/lang/String;)Landroid/icu/impl/OlsonTimeZone;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 197
    invoke-virtual {v2}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    .line 201
    :cond_7
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :cond_8
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 207
    :cond_9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 348
    instance-of v0, p0, Landroid/icu/impl/OlsonTimeZone;

    if-eqz v0, :cond_0

    .line 349
    check-cast p0, Landroid/icu/impl/OlsonTimeZone;

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 351
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 362
    sget-object v0, Landroid/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    .line 364
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 368
    :try_start_0
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const-string v2, "android/icu/impl/data/icudt60b"

    const-string/jumbo v3, "zoneinfo64"

    .line 370
    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    const-string v3, "Zones"

    .line 372
    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 373
    invoke-virtual {v2, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 374
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 376
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/ZoneMeta;->getZoneID(I)Ljava/lang/String;

    move-result-object p0

    .line 377
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez v0, :cond_1

    move-object v0, p0

    :catch_0
    :cond_1
    if-eqz v0, :cond_2

    .line 388
    sget-object v1, Landroid/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, p0, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public static getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 455
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "001"

    .line 456
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static getCanonicalCountry(Ljava/lang/String;Landroid/icu/util/Output;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 468
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 470
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "001"

    .line 471
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 476
    :cond_0
    sget-object v2, Landroid/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v2, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 478
    sget-object v2, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {v2, v0, v1}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v1

    .line 480
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 481
    sget-object v1, Landroid/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, p0, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 484
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 485
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :try_start_0
    const-string v1, "android/icu/impl/data/icudt60b"

    const-string v2, "metaZones"

    .line 492
    invoke-static {v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string/jumbo v2, "primaryZones"

    .line 493
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 494
    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 496
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    goto :goto_1

    .line 499
    :cond_4
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 500
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 501
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p0, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return-object v0
.end method

.method private static declared-synchronized getCanonicalSystemLocationZIDs()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/icu/impl/ZoneMeta;

    monitor-enter v0

    const/4 v1, 0x0

    .line 128
    :try_start_0
    sget-object v2, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 129
    sget-object v1, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    :cond_0
    if-nez v1, :cond_4

    .line 132
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 133
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v2

    .line 134
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    const-string v6, "Etc/Unknown"

    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 140
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 141
    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "001"

    .line 142
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 143
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 148
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getCanonicalSystemZIDs()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/icu/impl/ZoneMeta;

    monitor-enter v0

    const/4 v1, 0x0

    .line 96
    :try_start_0
    sget-object v2, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 97
    sget-object v1, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    :cond_0
    if-nez v1, :cond_4

    .line 100
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 101
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v2

    .line 102
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    const-string v6, "Etc/Unknown"

    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 113
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Landroid/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getCustomID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 641
    invoke-static {p0, v0}, Landroid/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 642
    aget v1, v0, p0

    const/4 v2, 0x2

    aget v2, v0, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v0, v0, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v4

    :goto_0
    invoke-static {v1, v2, v3, p0}, Landroid/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCustomTimeZone(I)Landroid/icu/util/SimpleTimeZone;
    .locals 4

    if-gez p0, :cond_0

    const/4 v0, 0x1

    neg-int v1, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v1, p0

    .line 788
    :goto_0
    div-int/lit16 v1, v1, 0x3e8

    .line 789
    rem-int/lit8 v2, v1, 0x3c

    .line 790
    div-int/lit8 v1, v1, 0x3c

    .line 791
    rem-int/lit8 v3, v1, 0x3c

    .line 792
    div-int/lit8 v1, v1, 0x3c

    .line 795
    invoke-static {v1, v3, v2, v0}, Landroid/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v0

    .line 797
    new-instance v1, Landroid/icu/util/SimpleTimeZone;

    invoke-direct {v1, p0, v0}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public static getCustomTimeZone(Ljava/lang/String;)Landroid/icu/util/SimpleTimeZone;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 620
    invoke-static {p0, v0}, Landroid/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 625
    aget p0, v0, p0

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x2

    aget v2, v0, v2

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget v2, v0, v2

    shl-int/lit8 v2, v2, 0xb

    or-int/2addr v1, v2

    mul-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 627
    sget-object v1, Landroid/icu/impl/ZoneMeta;->CUSTOM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;

    invoke-virtual {v1, p0, v0}, Landroid/icu/impl/ZoneMeta$CustomTimeZoneCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/SimpleTimeZone;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getEquivalentID(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const-class v0, Landroid/icu/impl/ZoneMeta;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    if-ltz p1, :cond_1

    const/4 v2, 0x0

    .line 259
    invoke-static {v2, p0}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/4 v2, -0x1

    :try_start_1
    const-string v3, "links"

    .line 263
    invoke-virtual {p0, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 264
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object p0

    .line 265
    array-length v3, p0

    if-ge p1, v3, :cond_0

    .line 266
    aget p0, p0, p1
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, p0

    :catch_0
    :cond_0
    if-ltz v2, :cond_1

    .line 272
    :try_start_2
    invoke-static {v2}, Landroid/icu/impl/ZoneMeta;->getZoneID(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    .line 279
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 428
    sget-object v0, Landroid/icu/impl/ZoneMeta;->REGION_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 430
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    :try_start_0
    const-string v2, "android/icu/impl/data/icudt60b"

    const-string/jumbo v3, "zoneinfo64"

    .line 433
    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    const-string v3, "Regions"

    .line 435
    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 436
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 437
    invoke-virtual {v2, v1}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v0, :cond_1

    .line 443
    sget-object v1, Landroid/icu/impl/ZoneMeta;->REGION_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, p0, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public static getShortID(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 844
    instance-of v0, p0, Landroid/icu/impl/OlsonTimeZone;

    if-eqz v0, :cond_0

    .line 845
    check-cast p0, Landroid/icu/impl/OlsonTimeZone;

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 848
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 853
    :cond_1
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortID(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 863
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 867
    :cond_0
    invoke-static {p0}, Landroid/icu/impl/ZoneMeta;->getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    const/16 v1, 0x3a

    .line 872
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string v0, "android/icu/impl/data/icudt60b"

    const-string v1, "keyTypeData"

    .line 876
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string/jumbo v1, "typeMap"

    .line 878
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string/jumbo v1, "timezone"

    .line 879
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 880
    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSystemTimeZone(Ljava/lang/String;)Landroid/icu/impl/OlsonTimeZone;
    .locals 1

    .line 578
    sget-object v0, Landroid/icu/impl/ZoneMeta;->SYSTEM_ZONE_CACHE:Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;

    invoke-virtual {v0, p0, p0}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/OlsonTimeZone;

    return-object p0
.end method

.method private static declared-synchronized getSystemZIDs()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/icu/impl/ZoneMeta;

    monitor-enter v0

    const/4 v1, 0x0

    .line 69
    :try_start_0
    sget-object v2, Landroid/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 70
    sget-object v1, Landroid/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    :cond_0
    if-nez v1, :cond_3

    .line 73
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 74
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v2

    .line 75
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    const-string v6, "Etc/Unknown"

    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Landroid/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getZoneID(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    .line 305
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v0

    .line 306
    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 307
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static declared-synchronized getZoneIDs()[Ljava/lang/String;
    .locals 4

    const-class v0, Landroid/icu/impl/ZoneMeta;

    monitor-enter v0

    .line 288
    :try_start_0
    sget-object v1, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    const-string v1, "android/icu/impl/data/icudt60b"

    const-string/jumbo v2, "zoneinfo64"

    .line 290
    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v1, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "Names"

    .line 292
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :catch_0
    :cond_0
    :try_start_2
    sget-object v1, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 298
    sput-object v1, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    .line 300
    :cond_1
    sget-object v1, Landroid/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getZoneIndex(Ljava/lang/String;)I
    .locals 5

    .line 316
    invoke-static {}, Landroid/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v0

    .line 317
    array-length v1, v0

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 319
    array-length v2, v0

    const v3, 0x7fffffff

    :goto_0
    add-int v4, v1, v2

    .line 323
    div-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 328
    :cond_0
    aget-object v3, v0, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    if-gez v3, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v4, -0x1

    :goto_3
    return v4
.end method

.method public static openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 3

    .line 523
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "android/icu/impl/data/icudt60b"

    const-string/jumbo v1, "zoneinfo64"

    .line 527
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {p0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    :cond_0
    const-string v1, "Zones"

    .line 530
    invoke-virtual {p0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 531
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    .line 532
    invoke-virtual {p1}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 534
    invoke-virtual {p1}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method static parseCustomID(Ljava/lang/String;[I)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 660
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_10

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 661
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "GMT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 662
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 668
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    .line 670
    :cond_0
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    return v0

    :cond_1
    move v3, v5

    .line 673
    :goto_0
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 675
    invoke-static {}, Landroid/icu/text/NumberFormat;->getInstance()Landroid/icu/text/NumberFormat;

    move-result-object v4

    .line 676
    invoke-virtual {v4, v5}, Landroid/icu/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 679
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    .line 681
    invoke-virtual {v4, p0, v1}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v7

    .line 682
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-ne v8, v6, :cond_2

    return v0

    .line 685
    :cond_2
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 687
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v8, v9, :cond_a

    .line 688
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    sub-int/2addr v8, v6

    if-gt v8, v10, :cond_9

    .line 689
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x3a

    if-eq v6, v8, :cond_3

    goto :goto_3

    .line 693
    :cond_3
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 694
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    .line 695
    invoke-virtual {v4, p0, v1}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v9

    .line 696
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    sub-int/2addr v11, v6

    if-eq v11, v10, :cond_4

    return v0

    .line 700
    :cond_4
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 701
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_8

    .line 702
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v8, :cond_5

    return v0

    .line 706
    :cond_5
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v1, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 707
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    .line 708
    invoke-virtual {v4, p0, v1}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    .line 709
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v9, p0, :cond_7

    .line 710
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    sub-int/2addr p0, v8

    if-eq p0, v10, :cond_6

    goto :goto_1

    .line 713
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_2

    :cond_7
    :goto_1
    return v0

    :cond_8
    move p0, v0

    :goto_2
    move v1, p0

    move p0, v6

    goto :goto_5

    :cond_9
    :goto_3
    return v0

    .line 725
    :cond_a
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    sub-int/2addr p0, v6

    if-lez p0, :cond_10

    const/4 v1, 0x6

    if-ge v1, p0, :cond_b

    goto :goto_6

    :cond_b
    packed-switch p0, :pswitch_data_0

    goto :goto_4

    .line 742
    :pswitch_0
    rem-int/lit8 p0, v7, 0x64

    .line 743
    div-int/lit8 v1, v7, 0x64

    rem-int/lit8 v1, v1, 0x64

    .line 744
    div-int/lit16 v7, v7, 0x2710

    move v12, v1

    move v1, p0

    move p0, v12

    goto :goto_5

    .line 737
    :pswitch_1
    rem-int/lit8 p0, v7, 0x64

    .line 738
    div-int/lit8 v7, v7, 0x64

    move v1, v0

    goto :goto_5

    :goto_4
    :pswitch_2
    move p0, v0

    move v1, p0

    :goto_5
    const/16 v4, 0x17

    if-gt v7, v4, :cond_10

    const/16 v4, 0x3b

    if-gt p0, v4, :cond_10

    if-gt v1, v4, :cond_10

    if-eqz p1, :cond_f

    .line 751
    array-length v4, p1

    if-lt v4, v5, :cond_c

    .line 752
    aput v3, p1, v0

    .line 754
    :cond_c
    array-length v0, p1

    if-lt v0, v10, :cond_d

    .line 755
    aput v7, p1, v5

    .line 757
    :cond_d
    array-length v0, p1

    if-lt v0, v2, :cond_e

    .line 758
    aput p0, p1, v10

    .line 760
    :cond_e
    array-length p0, p1

    const/4 v0, 0x4

    if-lt p0, v0, :cond_f

    .line 761
    aput v1, p1, v2

    :cond_f
    return v5

    :cond_10
    :goto_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
