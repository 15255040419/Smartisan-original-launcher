.class public Landroid/icu/text/TimeZoneFormat;
.super Landroid/icu/text/UFormat;
.source "TimeZoneFormat.java"

# interfaces
.implements Landroid/icu/util/Freezable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;,
        Landroid/icu/text/TimeZoneFormat$GMTOffsetField;,
        Landroid/icu/text/TimeZoneFormat$OffsetFields;,
        Landroid/icu/text/TimeZoneFormat$ParseOption;,
        Landroid/icu/text/TimeZoneFormat$TimeType;,
        Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;,
        Landroid/icu/text/TimeZoneFormat$Style;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/text/UFormat;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/TimeZoneFormat;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALT_GMT_STRINGS:[Ljava/lang/String;

.field private static final ASCII_DIGITS:Ljava/lang/String; = "0123456789"

.field private static final DEFAULT_GMT_DIGITS:[Ljava/lang/String;

.field private static final DEFAULT_GMT_OFFSET_SEP:C = ':'

.field private static final DEFAULT_GMT_PATTERN:Ljava/lang/String; = "GMT{0}"

.field private static final DEFAULT_GMT_ZERO:Ljava/lang/String; = "GMT"

.field private static final ISO8601_UTC:Ljava/lang/String; = "Z"

.field private static final ISO_LOCAL_STYLE_FLAG:I = 0x100

.field private static final ISO_Z_STYLE_FLAG:I = 0x80

.field private static final MAX_OFFSET:I = 0x5265c00

.field private static final MAX_OFFSET_HOUR:I = 0x17

.field private static final MAX_OFFSET_MINUTE:I = 0x3b

.field private static final MAX_OFFSET_SECOND:I = 0x3b

.field private static final MILLIS_PER_HOUR:I = 0x36ee80

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final MILLIS_PER_SECOND:I = 0x3e8

.field private static final PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field private static volatile SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TZID_GMT:Ljava/lang/String; = "Etc/GMT"

.field private static final UNKNOWN_LOCATION:Ljava/lang/String; = "Unknown"

.field private static final UNKNOWN_OFFSET:I = 0x7fffffff

.field private static final UNKNOWN_SHORT_ZONE_ID:Ljava/lang/String; = "unk"

.field private static final UNKNOWN_ZONE_ID:Ljava/lang/String; = "Etc/Unknown"

.field private static volatile ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static _tzfCache:Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x1fa89ded0bc7456eL


# instance fields
.field private transient _abuttingOffsetHoursAndMinutes:Z

.field private volatile transient _frozen:Z

.field private _gmtOffsetDigits:[Ljava/lang/String;

.field private transient _gmtOffsetPatternItems:[[Ljava/lang/Object;

.field private _gmtOffsetPatterns:[Ljava/lang/String;

.field private _gmtPattern:Ljava/lang/String;

.field private transient _gmtPatternPrefix:Ljava/lang/String;

.field private transient _gmtPatternSuffix:Ljava/lang/String;

.field private _gmtZeroFormat:Ljava/lang/String;

.field private volatile transient _gnames:Landroid/icu/impl/TimeZoneGenericNames;

.field private _locale:Landroid/icu/util/ULocale;

.field private _parseAllStyles:Z

.field private _parseTZDBNames:Z

.field private transient _region:Ljava/lang/String;

.field private volatile transient _tzdbNames:Landroid/icu/text/TimeZoneNames;

.field private _tznames:Landroid/icu/text/TimeZoneNames;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "GMT"

    const-string v1, "UTC"

    const-string v2, "UT"

    .line 326
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    const-string v7, "6"

    const-string v8, "7"

    const-string v9, "8"

    const-string v10, "9"

    .line 330
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v1, v0, [Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 341
    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Landroid/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 361
    new-instance v1, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;-><init>(Landroid/icu/text/TimeZoneFormat$1;)V

    sput-object v1, Landroid/icu/text/TimeZoneFormat;->_tzfCache:Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    .line 364
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v9, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v10, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v11, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v1, v2, v9, v10, v11}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Landroid/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    .line 371
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v9, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v1, v2, v9}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Landroid/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/io/ObjectStreamField;

    .line 3084
    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v9, Landroid/icu/util/ULocale;

    const-string v10, "_locale"

    invoke-direct {v2, v10, v9}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, Landroid/icu/text/TimeZoneNames;

    const-string v9, "_tznames"

    invoke-direct {v2, v9, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, Ljava/lang/String;

    const-string v4, "_gmtPattern"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, [Ljava/lang/String;

    const-string v4, "_gmtOffsetPatterns"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, [Ljava/lang/String;

    const-string v4, "_gmtOffsetDigits"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-class v3, Ljava/lang/String;

    const-string v4, "_gmtZeroFormat"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v8

    new-instance v2, Ljava/io/ObjectStreamField;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "_parseAllStyles"

    invoke-direct {v2, v4, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v1, v0

    sput-object v1, Landroid/icu/text/TimeZoneFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 6

    .line 382
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 383
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    .line 384
    invoke-static {p1}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    const-string v0, "GMT"

    .line 389
    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android/icu/impl/data/icudt60b/zone"

    .line 392
    invoke-static {v1, p1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string/jumbo v2, "zoneStrings/gmtFormat"

    .line 395
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v0

    :goto_0
    :try_start_2
    const-string/jumbo v3, "zoneStrings/hourFormat"

    .line 400
    invoke-virtual {v1, v3}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :try_start_3
    const-string/jumbo v3, "zoneStrings/gmtZeroFormat"

    .line 405
    invoke-virtual {v1, v3}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :catch_3
    move-object v1, v0

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "GMT{0}"

    .line 416
    :cond_0
    invoke-direct {p0, v0}, Landroid/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    const-string v4, ";"

    .line 420
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 421
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v4, v1, v2

    invoke-static {v4}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 422
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v4, v1, v2

    aput-object v4, v0, v3

    .line 423
    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 424
    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 425
    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aget-object v4, v1, v3

    aput-object v4, v0, v2

    .line 426
    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/icu/text/TimeZoneFormat;->expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_3

    .line 428
    :cond_1
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v1

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 429
    invoke-virtual {v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    invoke-static {v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$100(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 432
    :cond_2
    :goto_3
    invoke-direct {p0, v0}, Landroid/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    .line 434
    sget-object v0, Landroid/icu/text/TimeZoneFormat;->DEFAULT_GMT_DIGITS:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    .line 435
    invoke-static {p1}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object p1

    .line 436
    invoke-virtual {p1}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v0

    if-nez v0, :cond_3

    .line 438
    invoke-virtual {p1}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private appendOffsetDigits(Ljava/lang/StringBuilder;II)V
    .locals 6

    const/4 v0, 0x2

    const/16 v1, 0xa

    if-lt p2, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    sub-int v5, p3, v2

    if-ge v4, v5, :cond_1

    .line 2098
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-ne v2, v0, :cond_2

    .line 2101
    iget-object p3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    div-int/lit8 v0, p2, 0xa

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    :cond_2
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    rem-int/2addr p2, v1

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private checkAbuttingHoursAndMinutes()V
    .locals 11

    const/4 v0, 0x0

    .line 1892
    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    .line 1893
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 1895
    array-length v5, v4

    move v6, v0

    move v7, v6

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v8, v4, v6

    .line 1896
    instance-of v9, v8, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    if-eqz v9, :cond_1

    .line 1897
    check-cast v8, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    .line 1899
    iput-boolean v9, p0, Landroid/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    goto :goto_2

    .line 1900
    :cond_0
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v8

    const/16 v10, 0x48

    if-ne v8, v10, :cond_2

    move v7, v9

    goto :goto_2

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static expandOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "mm"

    .line 2050
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 2055
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 2057
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ":"

    .line 2059
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ss"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2052
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Bad time zone hour pattern data"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private formatExemplarLocation(Landroid/icu/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .line 1734
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1737
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object p0

    const-string p1, "Etc/Unknown"

    invoke-virtual {p0, p1}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown"

    :cond_0
    return-object p1
.end method

.method private formatOffsetISO8601(IZZZZ)Ljava/lang/String;
    .locals 5

    if-gez p1, :cond_0

    neg-int p0, p1

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    const/16 v0, 0x3e8

    const v1, 0xea60

    if-eqz p3, :cond_2

    if-lt p0, v0, :cond_1

    if-eqz p5, :cond_2

    if-ge p0, v1, :cond_2

    :cond_1
    const-string p0, "Z"

    return-object p0

    :cond_2
    if-eqz p4, :cond_3

    .line 1646
    sget-object p3, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    goto :goto_1

    :cond_3
    sget-object p3, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    :goto_1
    if-eqz p5, :cond_4

    .line 1647
    sget-object p4, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    goto :goto_2

    :cond_4
    sget-object p4, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    :goto_2
    if-eqz p2, :cond_5

    const/4 p2, 0x0

    goto :goto_3

    :cond_5
    const/16 p2, 0x3a

    .line 1648
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    :goto_3
    const p5, 0x5265c00

    if-ge p0, p5, :cond_d

    const/4 p5, 0x3

    new-array p5, p5, [I

    const v2, 0x36ee80

    .line 1658
    div-int v3, p0, v2

    const/4 v4, 0x0

    aput v3, p5, v4

    .line 1659
    rem-int/2addr p0, v2

    .line 1660
    div-int v2, p0, v1

    const/4 v3, 0x1

    aput v2, p5, v3

    .line 1661
    rem-int/2addr p0, v1

    const/4 v1, 0x2

    .line 1662
    div-int/2addr p0, v0

    aput p0, p5, v1

    .line 1668
    invoke-virtual {p4}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p0

    .line 1669
    :goto_4
    invoke-virtual {p3}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p4

    if-le p0, p4, :cond_7

    .line 1670
    aget p4, p5, p0

    if-eqz p4, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 p0, p0, -0x1

    goto :goto_4

    .line 1676
    :cond_7
    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x2b

    if-gez p1, :cond_9

    move p1, v4

    :goto_6
    if-gt p1, p0, :cond_9

    .line 1681
    aget v0, p5, p1

    if-eqz v0, :cond_8

    const/16 p4, 0x2d

    goto :goto_7

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 1687
    :cond_9
    :goto_7
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    if-gt v4, p0, :cond_c

    if-eqz p2, :cond_a

    if-eqz v4, :cond_a

    .line 1691
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1693
    :cond_a
    aget p1, p5, v4

    const/16 p4, 0xa

    if-ge p1, p4, :cond_b

    const/16 p1, 0x30

    .line 1694
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1696
    :cond_b
    aget p1, p5, v4

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1698
    :cond_c
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1654
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Offset out of range :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private formatOffsetLocalizedGMT(IZ)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    .line 1568
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    return-object p0

    .line 1571
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p1, :cond_1

    neg-int p1, p1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const v4, 0x36ee80

    .line 1578
    div-int v5, p1, v4

    .line 1579
    rem-int/2addr p1, v4

    const v4, 0xea60

    .line 1580
    div-int v6, p1, v4

    .line 1581
    rem-int/2addr p1, v4

    .line 1582
    div-int/lit16 v4, p1, 0x3e8

    const/16 v7, 0x17

    if-gt v5, v7, :cond_10

    const/16 v7, 0x3b

    if-gt v6, v7, :cond_10

    if-gt v4, v7, :cond_10

    if-eqz v3, :cond_5

    if-eqz v4, :cond_2

    .line 1591
    iget-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    :cond_2
    if-nez v6, :cond_4

    if-nez p2, :cond_3

    goto :goto_1

    .line 1595
    :cond_3
    iget-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    .line 1593
    :cond_4
    :goto_1
    iget-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    .line 1599
    iget-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    :cond_6
    if-nez v6, :cond_8

    if-nez p2, :cond_7

    goto :goto_2

    .line 1603
    :cond_7
    iget-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    goto :goto_3

    .line 1601
    :cond_8
    :goto_2
    iget-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    sget-object v3, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    .line 1608
    :goto_3
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    array-length v3, p1

    :goto_4
    if-ge v1, v3, :cond_f

    aget-object v7, p1, v1

    .line 1611
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_9

    .line 1613
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1614
    :cond_9
    instance-of v8, v7, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    if-eqz v8, :cond_e

    .line 1616
    check-cast v7, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    .line 1617
    invoke-virtual {v7}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v7

    const/16 v8, 0x48

    const/4 v9, 0x2

    if-eq v7, v8, :cond_c

    const/16 v8, 0x6d

    if-eq v7, v8, :cond_b

    const/16 v8, 0x73

    if-eq v7, v8, :cond_a

    goto :goto_5

    .line 1625
    :cond_a
    invoke-direct {p0, v0, v4, v9}, Landroid/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_5

    .line 1622
    :cond_b
    invoke-direct {p0, v0, v6, v9}, Landroid/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    goto :goto_5

    :cond_c
    if-eqz p2, :cond_d

    move v9, v2

    .line 1619
    :cond_d
    invoke-direct {p0, v0, v5, v9}, Landroid/icu/text/TimeZoneFormat;->appendOffsetDigits(Ljava/lang/StringBuilder;II)V

    :cond_e
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1630
    :cond_f
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1585
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Offset out of range :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private formatSpecific(Landroid/icu/util/TimeZone;Landroid/icu/text/TimeZoneNames$NameType;Landroid/icu/text/TimeZoneNames$NameType;JLandroid/icu/util/Output;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/TimeZone;",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            "J",
            "Landroid/icu/util/Output<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1715
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p4, p5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v0}, Landroid/icu/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1717
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object p0

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1718
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object p0

    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p4, p5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p6, :cond_2

    if-eqz v0, :cond_1

    .line 1721
    sget-object p1, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    goto :goto_1

    :cond_1
    sget-object p1, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    :goto_1
    iput-object p1, p6, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_2
    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;
    .locals 1

    if-eqz p0, :cond_0

    .line 455
    sget-object v0, Landroid/icu/text/TimeZoneFormat;->_tzfCache:Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;

    invoke-virtual {v0, p0, p0}, Landroid/icu/text/TimeZoneFormat$TimeZoneFormatCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/TimeZoneFormat;

    return-object p0

    .line 453
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "locale is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;
    .locals 0

    .line 469
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object p0

    return-object p0
.end method

.method private getTZDBTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .locals 2

    .line 509
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    if-nez v0, :cond_1

    .line 510
    monitor-enter p0

    .line 511
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Landroid/icu/impl/TZDBTimeZoneNames;

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/impl/TZDBTimeZoneNames;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    .line 514
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 516
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat;->_tzdbNames:Landroid/icu/text/TimeZoneNames;

    return-object p0
.end method

.method private declared-synchronized getTargetRegion()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1780
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1781
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1782
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1783
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 1784
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1785
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "001"

    .line 1786
    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;

    .line 1790
    :cond_0
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_region:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;
    .locals 0

    .line 1799
    sget-object p0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    .line 1809
    sget-object p0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object p0

    .line 1806
    :cond_0
    sget-object p0, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object p0

    .line 1802
    :cond_1
    sget-object p0, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    return-object p0
.end method

.method private getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "Etc/GMT"

    .line 2114
    invoke-static {p0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0

    .line 2116
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/ZoneMeta;->getCustomTimeZone(I)Landroid/icu/util/SimpleTimeZone;

    move-result-object p0

    return-object p0
.end method

.method private getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;
    .locals 1

    .line 492
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    if-nez v0, :cond_1

    .line 493
    monitor-enter p0

    .line 494
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    if-nez v0, :cond_0

    .line 495
    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/impl/TimeZoneGenericNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    .line 497
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 499
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    return-object p0
.end method

.method private getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_1

    .line 1763
    iget-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTargetRegion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/icu/text/TimeZoneNames;->getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1765
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid mzID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private initGMTOffsetPatterns([Ljava/lang/String;)V
    .locals 9

    .line 1872
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v0

    array-length v0, v0

    .line 1873
    array-length v1, p1

    if-lt v1, v0, :cond_1

    .line 1876
    new-array v1, v0, [[Ljava/lang/Object;

    .line 1877
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->values()[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 1878
    invoke-virtual {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v7

    .line 1881
    aget-object v8, p1, v7

    invoke-static {v6}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$200(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/icu/text/TimeZoneFormat;->parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    .line 1882
    aput-object v6, v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1885
    :cond_0
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    .line 1886
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-static {p1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1887
    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    .line 1888
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->checkAbuttingHoursAndMinutes()V

    return-void

    .line 1874
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Insufficient number of elements in gmtOffsetPatterns"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initGMTPattern(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "{0}"

    .line 1823
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1827
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1828
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x3

    .line 1829
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    return-void

    .line 1825
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad localized GMT pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;Z)I
    .locals 10

    .line 2768
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 2770
    invoke-virtual {p2}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p2

    const/4 v1, 0x1

    add-int/2addr p2, v1

    const/4 v2, 0x2

    mul-int/2addr p2, v2

    xor-int/lit8 v3, p4, 0x1

    sub-int/2addr p2, v3

    .line 2771
    invoke-virtual {p3}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p3

    add-int/2addr p3, v1

    mul-int/2addr p3, v2

    .line 2773
    new-array p3, p3, [I

    const/4 v3, 0x0

    move v5, v0

    move v4, v3

    .line 2776
    :goto_0
    array-length v6, p3

    if-ge v4, v6, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 2777
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const-string v7, "0123456789"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    goto :goto_1

    .line 2781
    :cond_0
    aput v6, p3, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    and-int/lit8 p0, v4, 0x1

    if-eqz p0, :cond_2

    add-int/lit8 v4, v4, -0x1

    :cond_2
    if-ge v4, p2, :cond_3

    .line 2792
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v3

    :cond_3
    :goto_2
    if-lt v4, p2, :cond_6

    const/4 p0, 0x4

    const/4 v5, 0x3

    packed-switch v4, :pswitch_data_0

    move p0, v3

    move v5, p0

    :goto_3
    move v6, v5

    goto :goto_7

    .line 2820
    :pswitch_0
    aget v6, p3, v3

    mul-int/lit8 v6, v6, 0xa

    aget v7, p3, v1

    add-int/2addr v6, v7

    .line 2821
    aget v7, p3, v2

    mul-int/lit8 v7, v7, 0xa

    aget v5, p3, v5

    add-int/2addr v5, v7

    .line 2822
    aget p0, p3, p0

    mul-int/lit8 p0, p0, 0xa

    const/4 v7, 0x5

    aget v7, p3, v7

    add-int/2addr p0, v7

    goto :goto_4

    .line 2815
    :pswitch_1
    aget v6, p3, v3

    .line 2816
    aget v7, p3, v1

    mul-int/lit8 v7, v7, 0xa

    aget v8, p3, v2

    add-int/2addr v7, v8

    .line 2817
    aget v5, p3, v5

    mul-int/lit8 v5, v5, 0xa

    aget p0, p3, p0

    add-int/2addr p0, v5

    move v5, v7

    :goto_4
    move v9, v6

    move v6, p0

    move p0, v9

    goto :goto_7

    .line 2811
    :pswitch_2
    aget p0, p3, v3

    mul-int/lit8 p0, p0, 0xa

    aget v6, p3, v1

    add-int/2addr p0, v6

    .line 2812
    aget v6, p3, v2

    mul-int/lit8 v6, v6, 0xa

    aget v5, p3, v5

    add-int/2addr v5, v6

    goto :goto_5

    .line 2807
    :pswitch_3
    aget p0, p3, v3

    .line 2808
    aget v5, p3, v1

    mul-int/lit8 v5, v5, 0xa

    aget v6, p3, v2

    add-int/2addr v5, v6

    :goto_5
    move v6, v3

    goto :goto_7

    .line 2804
    :pswitch_4
    aget p0, p3, v3

    mul-int/lit8 p0, p0, 0xa

    aget v5, p3, v1

    add-int/2addr p0, v5

    goto :goto_6

    .line 2801
    :pswitch_5
    aget p0, p3, v3

    :goto_6
    move v5, v3

    goto :goto_3

    :goto_7
    const/16 v7, 0x17

    if-gt p0, v7, :cond_4

    const/16 v7, 0x3b

    if-gt v5, v7, :cond_4

    if-gt v6, v7, :cond_4

    goto :goto_9

    :cond_4
    if-eqz p4, :cond_5

    move p0, v2

    goto :goto_8

    :cond_5
    move p0, v1

    :goto_8
    sub-int/2addr v4, p0

    goto :goto_2

    :cond_6
    move p0, v3

    move v1, p0

    move v5, v1

    move v6, v5

    :goto_9
    if-nez v1, :cond_7

    .line 2838
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v3

    :cond_7
    add-int/2addr v0, v4

    .line 2841
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, v5

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, v6

    mul-int/lit16 p0, p0, 0x3e8

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseAbuttingOffsetFields(Ljava/lang/String;I[I)I
    .locals 10

    const/4 v0, 0x6

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v5, v4, v5

    move v7, p2

    move v6, v5

    move v8, v6

    :goto_0
    if-ge v6, v0, :cond_1

    .line 2522
    invoke-direct {p0, p1, v7, v4}, Landroid/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    move-result v9

    aput v9, v1, v6

    .line 2523
    aget v9, v1, v6

    if-gez v9, :cond_0

    goto :goto_1

    .line 2526
    :cond_0
    aget v9, v4, v5

    add-int/2addr v7, v9

    sub-int v9, v7, p2

    .line 2527
    aput v9, v2, v6

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v8, :cond_2

    .line 2532
    aput v5, p3, v5

    return v5

    :cond_2
    :goto_2
    if-lez v8, :cond_4

    const/4 p0, 0x4

    const/4 p1, 0x3

    const/4 p2, 0x2

    packed-switch v8, :pswitch_data_0

    move p0, v5

    move p1, p0

    :goto_3
    move p2, p1

    goto :goto_7

    .line 2564
    :pswitch_0
    aget v0, v1, v5

    mul-int/lit8 v0, v0, 0xa

    aget v4, v1, v3

    add-int/2addr v0, v4

    .line 2565
    aget p2, v1, p2

    mul-int/lit8 p2, p2, 0xa

    aget p1, v1, p1

    add-int/2addr p1, p2

    .line 2566
    aget p0, v1, p0

    mul-int/lit8 p0, p0, 0xa

    const/4 p2, 0x5

    aget p2, v1, p2

    add-int/2addr p0, p2

    goto :goto_4

    .line 2559
    :pswitch_1
    aget v0, v1, v5

    .line 2560
    aget v4, v1, v3

    mul-int/lit8 v4, v4, 0xa

    aget p2, v1, p2

    add-int/2addr p2, v4

    .line 2561
    aget p1, v1, p1

    mul-int/lit8 p1, p1, 0xa

    aget p0, v1, p0

    add-int/2addr p0, p1

    move p1, p2

    :goto_4
    move p2, p0

    move p0, v0

    goto :goto_7

    .line 2555
    :pswitch_2
    aget p0, v1, v5

    mul-int/lit8 p0, p0, 0xa

    aget v0, v1, v3

    add-int/2addr p0, v0

    .line 2556
    aget p2, v1, p2

    mul-int/lit8 p2, p2, 0xa

    aget p1, v1, p1

    add-int/2addr p1, p2

    goto :goto_5

    .line 2551
    :pswitch_3
    aget p0, v1, v5

    .line 2552
    aget p1, v1, v3

    mul-int/lit8 p1, p1, 0xa

    aget p2, v1, p2

    add-int/2addr p1, p2

    :goto_5
    move p2, v5

    goto :goto_7

    .line 2548
    :pswitch_4
    aget p0, v1, v5

    mul-int/lit8 p0, p0, 0xa

    aget p1, v1, v3

    add-int/2addr p0, p1

    goto :goto_6

    .line 2545
    :pswitch_5
    aget p0, v1, v5

    :goto_6
    move p1, v5

    goto :goto_3

    :goto_7
    const/16 v0, 0x17

    if-gt p0, v0, :cond_3

    const/16 v0, 0x3b

    if-gt p1, v0, :cond_3

    if-gt p2, v0, :cond_3

    const v0, 0x36ee80

    mul-int/2addr p0, v0

    const v0, 0xea60

    mul-int/2addr p1, v0

    add-int/2addr p0, p1

    mul-int/lit16 p2, p2, 0x3e8

    add-int/2addr p0, p2

    sub-int/2addr v8, v3

    .line 2572
    aget p1, v2, v8

    aput p1, p3, v5

    goto :goto_8

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_4
    move p0, v5

    :goto_8
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLandroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;)I
    .locals 11

    .line 2860
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 2861
    fill-array-data v2, :array_0

    new-array v1, v1, [I

    .line 2862
    fill-array-data v1, :array_1

    const/4 v3, 0x0

    move v4, v0

    move v5, v3

    .line 2863
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v6, :cond_7

    invoke-virtual {p4}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result v6

    if-gt v5, v6, :cond_7

    .line 2864
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v9, -0x1

    if-ne v6, p2, :cond_3

    if-nez v5, :cond_1

    .line 2867
    aget v6, v1, v3

    if-nez v6, :cond_0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2874
    :cond_1
    aget v6, v1, v5

    if-eq v6, v9, :cond_2

    goto :goto_3

    .line 2878
    :cond_2
    aput v3, v1, v5

    goto :goto_2

    .line 2881
    :cond_3
    aget v10, v1, v5

    if-ne v10, v9, :cond_4

    goto :goto_3

    :cond_4
    const-string v9, "0123456789"

    .line 2885
    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_5

    goto :goto_3

    .line 2890
    :cond_5
    aget v9, v2, v5

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v6

    aput v9, v2, v5

    .line 2891
    aget v6, v1, v5

    add-int/2addr v6, v8

    aput v6, v1, v5

    .line 2892
    aget v6, v1, v5

    if-lt v6, v7, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    const/4 p0, 0x0

    .line 2903
    aget p2, v1, v3

    if-nez p2, :cond_8

    move-object p4, p0

    move p0, v3

    move p2, p0

    goto :goto_4

    .line 2906
    :cond_8
    aget p0, v2, v3

    const/16 p2, 0x17

    const p4, 0x36ee80

    if-le p0, p2, :cond_9

    .line 2907
    aget p0, v2, v3

    div-int/lit8 p0, p0, 0xa

    mul-int/2addr p0, p4

    .line 2908
    sget-object p2, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    move-object p4, p2

    move p2, v8

    goto :goto_4

    .line 2912
    :cond_9
    aget p0, v2, v3

    mul-int/2addr p0, p4

    .line 2913
    aget p2, v1, v3

    .line 2914
    sget-object p4, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    .line 2917
    aget v4, v1, v8

    if-ne v4, v7, :cond_c

    aget v4, v2, v8

    const/16 v5, 0x3b

    if-le v4, v5, :cond_a

    goto :goto_4

    .line 2920
    :cond_a
    aget p4, v2, v8

    const v4, 0xea60

    mul-int/2addr p4, v4

    add-int/2addr p0, p4

    .line 2921
    aget p4, v1, v8

    add-int/2addr p4, v8

    add-int/2addr p2, p4

    .line 2922
    sget-object p4, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    .line 2925
    aget v4, v1, v7

    if-ne v4, v7, :cond_c

    aget v4, v2, v7

    if-le v4, v5, :cond_b

    goto :goto_4

    .line 2928
    :cond_b
    aget p4, v2, v7

    mul-int/lit16 p4, p4, 0x3e8

    add-int/2addr p0, p4

    .line 2929
    aget p4, v1, v7

    add-int/2addr p4, v8

    add-int/2addr p2, p4

    .line 2930
    sget-object p4, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    :cond_c
    :goto_4
    if-eqz p4, :cond_e

    .line 2933
    invoke-virtual {p4}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p4

    invoke-virtual {p3}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->ordinal()I

    move-result p3

    if-ge p4, p3, :cond_d

    goto :goto_5

    :cond_d
    add-int/2addr v0, p2

    .line 2938
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return p0

    .line 2934
    :cond_e
    :goto_5
    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v3

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method private parseDefaultOffsetFields(Ljava/lang/String;IC[I)I
    .locals 18

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    .line 2467
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    new-array v13, v12, [I

    const/4 v14, 0x0

    aput v14, v13, v14

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v7, v13

    .line 2473
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v15

    .line 2474
    aget v0, v13, v14

    if-nez v0, :cond_0

    move v8, v9

    move v0, v14

    move/from16 v17, v0

    goto/16 :goto_1

    .line 2477
    :cond_0
    aget v0, v13, v14

    add-int v7, v9, v0

    add-int/lit8 v2, v7, 0x1

    if-ge v2, v11, :cond_4

    .line 2479
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v16, v7

    move-object v7, v13

    .line 2480
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v17

    .line 2481
    aget v0, v13, v14

    if-nez v0, :cond_1

    move v0, v14

    goto :goto_0

    .line 2484
    :cond_1
    aget v0, v13, v14

    add-int/2addr v0, v12

    add-int v7, v16, v0

    add-int/lit8 v2, v7, 0x1

    if-ge v2, v11, :cond_3

    .line 2486
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x3b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v8, v7

    move-object v7, v13

    .line 2487
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v0

    .line 2488
    aget v1, v13, v14

    if-nez v1, :cond_2

    goto :goto_1

    .line 2491
    :cond_2
    aget v1, v13, v14

    add-int/2addr v1, v12

    add-int/2addr v1, v8

    move v8, v1

    goto :goto_1

    :cond_3
    move v8, v7

    move v0, v14

    goto :goto_1

    :cond_4
    move/from16 v16, v7

    move v0, v14

    move/from16 v17, v0

    :goto_0
    move/from16 v8, v16

    :goto_1
    if-ne v8, v9, :cond_5

    .line 2497
    aput v14, p4, v14

    return v14

    :cond_5
    sub-int/2addr v8, v9

    .line 2501
    aput v8, p4, v14

    const v1, 0x36ee80

    mul-int/2addr v15, v1

    const v1, 0xea60

    mul-int v17, v17, v1

    add-int v15, v15, v17

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v15, v0

    return v15
.end method

.method private parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 6

    .line 3026
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 3030
    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 3031
    iget-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v2, p1, v0, v1}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 3034
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, -0x1

    move v3, v2

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 3035
    invoke-virtual {v4}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v5

    add-int/2addr v5, v0

    if-le v5, v3, :cond_0

    .line 3037
    invoke-virtual {v4}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v2

    add-int/2addr v2, v0

    move v3, v2

    move-object v2, v4

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 3041
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3042
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_2
    if-nez v1, :cond_3

    .line 3046
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_3
    return-object v1
.end method

.method private parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I
    .locals 11

    .line 2401
    sget-object v0, Landroid/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v7, v0, v3

    .line 2402
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v4, p1

    move v6, p2

    move v9, v10

    .line 2403
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v10, v2

    :goto_1
    if-nez v10, :cond_2

    goto :goto_5

    :cond_2
    add-int/2addr v10, p2

    add-int/lit8 v0, v10, 0x1

    .line 2414
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    goto :goto_5

    .line 2420
    :cond_3
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-ne v1, v3, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    const/16 v3, 0x2d

    if-ne v1, v3, :cond_7

    const/4 v1, -0x1

    :goto_2
    new-array v3, v4, [I

    aput v2, v3, v2

    const/16 v5, 0x3a

    .line 2433
    invoke-direct {p0, p1, v0, v5, v3}, Landroid/icu/text/TimeZoneFormat;->parseDefaultOffsetFields(Ljava/lang/String;IC[I)I

    move-result v5

    .line 2434
    aget v6, v3, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v0

    if-ne v6, v7, :cond_5

    mul-int/2addr v5, v1

    .line 2437
    aget p0, v3, v2

    :goto_3
    add-int/2addr v0, p0

    goto :goto_4

    :cond_5
    new-array v4, v4, [I

    aput v2, v4, v2

    .line 2441
    invoke-direct {p0, p1, v0, v4}, Landroid/icu/text/TimeZoneFormat;->parseAbuttingOffsetFields(Ljava/lang/String;I[I)I

    move-result p0

    .line 2443
    aget p1, v3, v2

    aget v6, v4, v2

    if-le p1, v6, :cond_6

    mul-int/2addr v5, v1

    .line 2445
    aget p0, v3, v2

    goto :goto_3

    :cond_6
    mul-int/2addr p0, v1

    .line 2448
    aget p1, v4, v2

    add-int/2addr v0, p1

    move v5, p0

    :goto_4
    sub-int p0, v0, p2

    goto :goto_6

    :cond_7
    :goto_5
    move p0, v2

    move v5, p0

    .line 2454
    :goto_6
    aput p0, p3, v2

    return v5
.end method

.method private parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I
    .locals 7

    const/4 v0, 0x0

    .line 2597
    aput v0, p7, v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    move v2, p2

    move v3, v0

    move v4, v3

    .line 2603
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    if-ge v3, p4, :cond_2

    .line 2604
    invoke-direct {p0, p1, v2, v1}, Landroid/icu/text/TimeZoneFormat;->parseSingleLocalizedDigit(Ljava/lang/String;I[I)I

    move-result v5

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v6, v4, 0xa

    add-int/2addr v5, v6

    if-le v5, p6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 2614
    aget v4, v1, v0

    add-int/2addr v2, v4

    move v4, v5

    goto :goto_0

    :cond_2
    :goto_1
    if-lt v3, p3, :cond_4

    if-ge v4, p5, :cond_3

    goto :goto_2

    :cond_3
    sub-int/2addr v2, p2

    .line 2622
    aput v2, p7, v0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, -0x1

    :goto_3
    return v4
.end method

.method private parseOffsetFields(Ljava/lang/String;IZ[I)I
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    .line 2248
    array-length v0, v7

    if-lt v0, v8, :cond_0

    .line 2249
    aput v9, v7, v9

    :cond_0
    const/4 v0, 0x3

    new-array v10, v0, [I

    .line 2255
    fill-array-data v10, :array_0

    .line 2256
    sget-object v11, Landroid/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    array-length v12, v11

    move v0, v9

    move v13, v0

    :goto_0
    const/4 v14, 0x2

    const/4 v15, -0x1

    if-ge v13, v12, :cond_3

    aget-object v16, v11, v13

    .line 2257
    iget-object v0, v6, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v1

    aget-object v3, v0, v1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v5, v10

    .line 2260
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    move-result v0

    if-lez v0, :cond_2

    .line 2262
    invoke-static/range {v16 .. v16}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$300(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v8

    goto :goto_1

    :cond_1
    move v1, v15

    .line 2263
    :goto_1
    aget v2, v10, v9

    .line 2264
    aget v3, v10, v8

    .line 2265
    aget v4, v10, v14

    move v11, v0

    move v12, v1

    move v13, v2

    move/from16 v16, v3

    move/from16 v17, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move v11, v0

    move v12, v8

    move v13, v9

    move/from16 v16, v13

    move/from16 v17, v16

    :goto_2
    if-lez v11, :cond_7

    .line 2269
    iget-boolean v0, v6, Landroid/icu/text/TimeZoneFormat;->_abuttingOffsetHoursAndMinutes:Z

    if-eqz v0, :cond_7

    .line 2276
    sget-object v5, Landroid/icu/text/TimeZoneFormat;->PARSE_GMT_OFFSET_TYPES:[Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    array-length v4, v5

    move v0, v9

    move v3, v0

    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v18, v5, v3

    .line 2277
    iget-object v0, v6, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v1

    aget-object v19, v0, v1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v21, v3

    move-object/from16 v3, v19

    move/from16 v19, v4

    move/from16 v4, v20

    move-object/from16 v20, v5

    move-object v5, v10

    .line 2281
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I

    move-result v0

    if-lez v0, :cond_4

    .line 2283
    invoke-static/range {v18 .. v18}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$300(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v21, 0x1

    move/from16 v4, v19

    move-object/from16 v5, v20

    goto :goto_3

    :cond_5
    :goto_4
    move v15, v8

    :cond_6
    if-le v0, v11, :cond_7

    .line 2291
    aget v13, v10, v9

    .line 2292
    aget v16, v10, v8

    .line 2293
    aget v17, v10, v14

    move v11, v0

    move v12, v15

    :cond_7
    if-eqz v7, :cond_8

    .line 2297
    array-length v0, v7

    if-lt v0, v8, :cond_8

    .line 2298
    aput v11, v7, v9

    :cond_8
    if-lez v11, :cond_9

    mul-int/lit8 v13, v13, 0x3c

    add-int v13, v13, v16

    mul-int/lit8 v13, v13, 0x3c

    add-int v13, v13, v17

    mul-int/lit16 v13, v13, 0x3e8

    mul-int v9, v13, v12

    :cond_9
    return v9

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private parseOffsetFieldsWithPattern(Ljava/lang/String;I[Ljava/lang/Object;Z[I)I
    .locals 18

    move-object/from16 v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2320
    aput v2, p5, v1

    const/4 v3, 0x1

    aput v2, p5, v3

    aput v2, p5, v2

    new-array v12, v3, [I

    aput v2, v12, v2

    move/from16 v14, p2

    move v13, v2

    move v15, v13

    move/from16 v16, v15

    move/from16 v17, v16

    .line 2327
    :goto_0
    array-length v4, v0

    if-ge v13, v4, :cond_a

    .line 2328
    aget-object v4, v0, v13

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 2329
    aget-object v4, v0, v13

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    .line 2330
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v13, :cond_1

    .line 2337
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v14, v5, :cond_1

    move-object/from16 v11, p1

    invoke-virtual {v11, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v2

    :goto_1
    if-lez v4, :cond_0

    .line 2339
    invoke-virtual {v7, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 2340
    invoke-static {v6}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2341
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v4, v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_0
    move v10, v4

    move v8, v5

    goto :goto_2

    :cond_1
    move-object/from16 v11, p1

    :cond_2
    move v8, v2

    move v10, v4

    :goto_2
    const/4 v5, 0x1

    move-object/from16 v4, p1

    move v6, v14

    move v9, v10

    .line 2350
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_3
    move v0, v3

    goto/16 :goto_7

    :cond_3
    add-int/2addr v14, v10

    goto :goto_6

    :cond_4
    move-object/from16 v11, p1

    .line 2357
    aget-object v4, v0, v13

    check-cast v4, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    .line 2358
    invoke-virtual {v4}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->getType()C

    move-result v4

    const/16 v5, 0x48

    if-ne v4, v5, :cond_6

    if-eqz p4, :cond_5

    move v8, v3

    goto :goto_4

    :cond_5
    move v8, v1

    :goto_4
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x17

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v14

    move-object v11, v12

    .line 2361
    invoke-direct/range {v4 .. v11}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v15

    goto :goto_5

    :cond_6
    const/16 v5, 0x6d

    if-ne v4, v5, :cond_7

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x3b

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v14

    move-object v11, v12

    .line 2363
    invoke-direct/range {v4 .. v11}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v16

    goto :goto_5

    :cond_7
    const/16 v5, 0x73

    if-ne v4, v5, :cond_8

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/16 v10, 0x3b

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move v6, v14

    move-object v11, v12

    .line 2365
    invoke-direct/range {v4 .. v11}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFieldWithLocalizedDigits(Ljava/lang/String;IIIII[I)I

    move-result v17

    .line 2368
    :cond_8
    :goto_5
    aget v4, v12, v2

    if-nez v4, :cond_9

    goto :goto_3

    .line 2372
    :cond_9
    aget v4, v12, v2

    add-int/2addr v14, v4

    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    :goto_7
    if-eqz v0, :cond_b

    return v2

    .line 2380
    :cond_b
    aput v15, p5, v2

    .line 2381
    aput v16, p5, v3

    .line 2382
    aput v17, p5, v1

    sub-int v14, v14, p2

    return v14
.end method

.method private static parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2702
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2704
    :cond_0
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 2705
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 2706
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v0

    .line 2710
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2711
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const-string v4, "Z"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    add-int/2addr v1, v5

    .line 2713
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    return v0

    :cond_2
    const/16 v3, 0x2b

    const/4 v4, -0x1

    if-ne v2, v3, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_7

    move v2, v4

    .line 2727
    :goto_0
    new-instance v3, Ljava/text/ParsePosition;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v3, v6}, Ljava/text/ParsePosition;-><init>(I)V

    const/16 v7, 0x3a

    .line 2728
    sget-object v8, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v9, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {p0, v3, v7, v8, v9}, Landroid/icu/text/TimeZoneFormat;->parseAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;CLandroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;)I

    move-result v7

    .line 2729
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v8

    if-ne v8, v4, :cond_4

    if-nez p2, :cond_4

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    sub-int/2addr p2, v1

    const/4 v8, 0x3

    if-gt p2, v8, :cond_4

    .line 2733
    new-instance p2, Ljava/text/ParsePosition;

    invoke-direct {p2, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2734
    sget-object v6, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v8, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {p0, p2, v6, v8, v0}, Landroid/icu/text/TimeZoneFormat;->parseAbuttingAsciiOffsetFields(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/TimeZoneFormat$OffsetFields;Landroid/icu/text/TimeZoneFormat$OffsetFields;Z)I

    move-result p0

    .line 2735
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v6

    if-ne v6, v4, :cond_4

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-le v6, v8, :cond_4

    .line 2737
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_1

    :cond_4
    move p0, v7

    .line 2741
    :goto_1
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result p2

    if-eq p2, v4, :cond_5

    .line 2742
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v0

    .line 2746
    :cond_5
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz p3, :cond_6

    .line 2748
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_6
    mul-int/2addr v2, p0

    return v2

    .line 2724
    :cond_7
    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v0
.end method

.method private parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Z",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 2133
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    const/4 v0, 0x1

    .line 2135
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v0, v0, [I

    const/4 v7, 0x0

    aput v7, v0, v7

    if-eqz p4, :cond_0

    .line 2138
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2141
    :cond_0
    invoke-direct {p0, p1, v6, p3, v0}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I

    move-result p3

    .line 2151
    aget v2, v0, v7

    if-lez v2, :cond_2

    if-eqz p4, :cond_1

    .line 2153
    iput-object v1, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2155
    :cond_1
    aget p0, v0, v7

    add-int/2addr v6, p0

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return p3

    .line 2160
    :cond_2
    invoke-direct {p0, p1, v6, v0}, Landroid/icu/text/TimeZoneFormat;->parseOffsetDefaultLocalizedGMT(Ljava/lang/String;I[I)I

    move-result p3

    .line 2161
    aget v2, v0, v7

    if-lez v2, :cond_4

    if-eqz p4, :cond_3

    .line 2163
    iput-object v1, p4, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 2165
    :cond_3
    aget p0, v0, v7

    add-int/2addr v6, p0

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return p3

    :cond_4
    const/4 v1, 0x1

    .line 2170
    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 2171
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v6, p0

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return v7

    .line 2176
    :cond_5
    sget-object p0, Landroid/icu/text/TimeZoneFormat;->ALT_GMT_STRINGS:[Ljava/lang/String;

    array-length p3, p0

    move p4, v7

    :goto_0
    if-ge p4, p3, :cond_7

    aget-object v8, p0, p4

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2177
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, v6

    move-object v3, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2178
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v6, p0

    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    return v7

    :cond_6
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 2184
    :cond_7
    invoke-virtual {p2, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v7
.end method

.method private parseOffsetLocalizedGMTPattern(Ljava/lang/String;IZ[I)I
    .locals 16

    move-object/from16 v0, p0

    .line 2204
    iget-object v1, v0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v7, :cond_0

    const/4 v2, 0x1

    .line 2205
    iget-object v4, v0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternPrefix:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    move/from16 v1, p2

    move v4, v9

    move v8, v4

    goto :goto_1

    :cond_0
    add-int v1, p2, v7

    new-array v2, v8, [I

    move-object/from16 v3, p1

    .line 2213
    invoke-direct {v0, v3, v1, v9, v2}, Landroid/icu/text/TimeZoneFormat;->parseOffsetFields(Ljava/lang/String;IZ[I)I

    move-result v4

    .line 2214
    aget v5, v2, v9

    if-nez v5, :cond_1

    :goto_0
    move v8, v9

    goto :goto_1

    .line 2218
    :cond_1
    aget v2, v2, v9

    add-int/2addr v1, v2

    .line 2221
    iget-object v2, v0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v11, 0x1

    .line 2222
    iget-object v13, v0, Landroid/icu/text/TimeZoneFormat;->_gmtPatternSuffix:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move v12, v1

    move v15, v2

    invoke-virtual/range {v10 .. v15}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    add-int v0, v1, v2

    move v1, v0

    :goto_1
    if-eqz v8, :cond_3

    sub-int v0, v1, p2

    goto :goto_2

    :cond_3
    move v0, v9

    .line 2230
    :goto_2
    aput v0, p4, v9

    return v4
.end method

.method private static parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 12

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1953
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1954
    new-instance v2, Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v9, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    .line 1956
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 1957
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x27

    if-ne v10, v11, :cond_3

    if-eqz v7, :cond_0

    .line 1960
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v7, v4

    goto :goto_1

    :cond_0
    if-eqz v8, :cond_2

    .line 1965
    invoke-static {v8, v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1966
    new-instance v7, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v7, v8, v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v3

    move v8, v4

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_5

    :cond_2
    move v7, v3

    :goto_1
    xor-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    if-eqz v6, :cond_4

    .line 1978
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    move v7, v4

    goto :goto_4

    .line 1980
    :cond_4
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_8

    if-ne v10, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    if-nez v8, :cond_6

    .line 1987
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 1988
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1989
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 1992
    :cond_6
    invoke-static {v8, v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1993
    new-instance v11, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v11, v8, v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2001
    :cond_7
    :goto_3
    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    move v9, v3

    move v7, v4

    move v8, v10

    goto :goto_4

    :cond_8
    if-eqz v8, :cond_9

    .line 2006
    invoke-static {v8, v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2007
    new-instance v7, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v7, v8, v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v4

    .line 2014
    :cond_9
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    move v5, v4

    :goto_5
    if-nez v5, :cond_c

    if-nez v8, :cond_b

    .line 2022
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 2023
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2024
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_6

    .line 2027
    :cond_b
    invoke-static {v8, v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->isValid(CI)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2028
    new-instance v0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;

    invoke-direct {v0, v8, v9}, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;-><init>(CI)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_6
    move v3, v5

    :cond_d
    if-nez v3, :cond_e

    .line 2035
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v0, p1, :cond_e

    .line 2039
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-interface {v1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2036
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad localized GMT offset pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 7

    .line 2988
    sget-object v0, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 2989
    const-class v0, Landroid/icu/text/TimeZoneFormat;

    monitor-enter v0

    .line 2990
    :try_start_0
    sget-object v3, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v3, :cond_2

    .line 2992
    new-instance v3, Landroid/icu/impl/TextTrieMap;

    invoke-direct {v3, v1}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    .line 2993
    sget-object v4, Landroid/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {v4, v2, v2}, Landroid/icu/util/TimeZone;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v4

    .line 2994
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2995
    invoke-static {v5}, Landroid/icu/impl/ZoneMeta;->getShortID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2997
    invoke-virtual {v3, v6, v5}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "unk"

    const-string v5, "Etc/Unknown"

    .line 3001
    invoke-virtual {v3, v4, v5}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    .line 3002
    sput-object v3, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    .line 3004
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    new-array v0, v1, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 3008
    sget-object v3, Landroid/icu/text/TimeZoneFormat;->SHORT_ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v3, p0, v4, v0}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 3010
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 3011
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    aget v0, v0, v1

    add-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_2

    .line 3013
    :cond_4
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :goto_2
    return-object v2
.end method

.method private parseSingleLocalizedDigit(Ljava/lang/String;I[I)I
    .locals 4

    const/4 v0, 0x0

    .line 2640
    aput v0, p3, v0

    .line 2641
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ge p2, v1, :cond_3

    .line 2642
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    move p2, v0

    .line 2645
    :goto_0
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v3, v1

    if-ge p2, v3, :cond_1

    .line 2646
    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_1
    if-gez p2, :cond_2

    .line 2653
    invoke-static {p1}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result p0

    move v2, p0

    goto :goto_2

    :cond_2
    move v2, p2

    :goto_2
    if-ltz v2, :cond_3

    .line 2657
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    aput p0, p3, v0

    :cond_3
    return v2
.end method

.method private static parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 8

    .line 2950
    sget-object v0, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2951
    const-class v0, Landroid/icu/text/TimeZoneFormat;

    monitor-enter v0

    .line 2952
    :try_start_0
    sget-object v3, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    if-nez v3, :cond_1

    .line 2954
    new-instance v3, Landroid/icu/impl/TextTrieMap;

    invoke-direct {v3, v1}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    .line 2955
    invoke-static {}, Landroid/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v4

    .line 2956
    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 2957
    invoke-virtual {v3, v7, v7}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2959
    :cond_0
    sput-object v3, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    .line 2961
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    new-array v0, v1, [I

    aput v2, v0, v2

    .line 2965
    sget-object v1, Landroid/icu/text/TimeZoneFormat;->ZONE_ID_TRIE:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {v1, p0, v3, v0}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;I[I)Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2967
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2968
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    aget v0, v0, v2

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_2

    .line 2975
    :cond_3
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3120
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "_locale"

    .line 3122
    invoke-virtual {p1, v1, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    .line 3123
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    if-eqz v1, :cond_b

    const-string v1, "_tznames"

    .line 3127
    invoke-virtual {p1, v1, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/TimeZoneNames;

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    .line 3128
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    if-eqz v1, :cond_a

    const-string v1, "_gmtPattern"

    .line 3132
    invoke-virtual {p1, v1, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    .line 3133
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, "_gmtOffsetPatterns"

    .line 3137
    invoke-virtual {p1, v1, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 3140
    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    .line 3143
    iput-object v2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    .line 3144
    array-length v2, v1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    move v2, v4

    :goto_0
    if-ge v2, v3, :cond_0

    .line 3146
    iget-object v5, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    aget-object v6, v1, v2

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3148
    :cond_0
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v5, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v5}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    aget-object v3, v3, v5

    invoke-static {v3}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3149
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v2, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    iget-object v3, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    sget-object v5, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v5}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v5

    aget-object v3, v3, v5

    invoke-static {v3}, Landroid/icu/text/TimeZoneFormat;->truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_1

    .line 3151
    :cond_1
    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    :goto_1
    const-string v1, "_gmtOffsetDigits"

    .line 3154
    invoke-virtual {p1, v1, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    .line 3155
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 3157
    array-length v1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_5

    const-string v1, "_gmtZeroFormat"

    .line 3161
    invoke-virtual {p1, v1, v0}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    .line 3162
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "_parseAllStyles"

    .line 3166
    invoke-virtual {p1, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    .line 3167
    invoke-virtual {p1, v1}, Ljava/io/ObjectInputStream$GetField;->defaulted(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3186
    iget-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    instance-of v1, p1, Landroid/icu/impl/TimeZoneNamesImpl;

    if-eqz v1, :cond_2

    .line 3187
    iget-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    .line 3188
    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    goto :goto_2

    .line 3192
    :cond_2
    new-instance v0, Landroid/icu/impl/TimeZoneGenericNames;

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1, p1}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V

    iput-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    .line 3196
    :goto_2
    iget-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    .line 3197
    iget-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/icu/text/TimeZoneFormat;->initGMTOffsetPatterns([Ljava/lang/String;)V

    return-void

    .line 3168
    :cond_3
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Missing field: parseAllStyles"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3163
    :cond_4
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Missing field: gmtZeroFormat"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3158
    :cond_5
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Incompatible field: gmtOffsetDigits"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3156
    :cond_6
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Missing field: gmtOffsetDigits"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3141
    :cond_7
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Incompatible field: gmtOffsetPatterns"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3139
    :cond_8
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Missing field: gmtOffsetPatterns"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3134
    :cond_9
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Missing field: gmtPattern"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3129
    :cond_a
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Missing field: tznames"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3124
    :cond_b
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Missing field: locale"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toCodePoints(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 2672
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    .line 2673
    new-array v2, v0, [Ljava/lang/String;

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2676
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 2677
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 2678
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static truncateOffsetPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "mm"

    .line 2070
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Bad time zone hour pattern data"

    if-ltz v0, :cond_2

    const/4 v2, 0x0

    .line 2074
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v3, v3, 0x2

    .line 2076
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2078
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "H"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 2080
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2082
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2072
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x27

    .line 1839
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    return-object p0

    .line 1844
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1845
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1846
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v0, :cond_2

    if-eqz v4, :cond_1

    .line 1849
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    .line 1857
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v4, v2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1860
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3100
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 3102
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    const-string v2, "_locale"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3103
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    const-string v2, "_tznames"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3104
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    const-string v2, "_gmtPattern"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3105
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    const-string v2, "_gmtOffsetPatterns"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3106
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    const-string v2, "_gmtOffsetDigits"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3107
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    const-string v2, "_gmtZeroFormat"

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3108
    iget-boolean p0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    const-string v1, "_parseAllStyles"

    invoke-virtual {v0, v1, p0}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 3110
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/text/TimeZoneFormat;
    .locals 1

    .line 3227
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/TimeZoneFormat;

    const/4 v0, 0x0

    .line 3228
    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_frozen:Z

    return-object p0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->cloneAsThawed()Landroid/icu/text/TimeZoneFormat;

    move-result-object p0

    return-object p0
.end method

.method public final format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 805
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;JLandroid/icu/util/Output;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/TimeZoneFormat$Style;",
            "Landroid/icu/util/TimeZone;",
            "J",
            "Landroid/icu/util/Output<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 828
    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    iput-object v0, p5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 833
    :cond_0
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    move v3, v2

    goto :goto_2

    .line 862
    :pswitch_0
    invoke-direct {p0, p2}, Landroid/icu/text/TimeZoneFormat;->formatExemplarLocation(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 855
    :pswitch_1
    invoke-static {p2}, Landroid/icu/impl/ZoneMeta;->getShortID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "unk"

    goto :goto_1

    .line 851
    :pswitch_2
    invoke-virtual {p2}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    move v3, v1

    goto :goto_2

    .line 847
    :pswitch_3
    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    move-object v3, p0

    move-object v4, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/TimeZoneFormat;->formatSpecific(Landroid/icu/util/TimeZone;Landroid/icu/text/TimeZoneNames$NameType;Landroid/icu/text/TimeZoneNames$NameType;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 844
    :pswitch_4
    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    move-object v3, p0

    move-object v4, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Landroid/icu/text/TimeZoneFormat;->formatSpecific(Landroid/icu/util/TimeZone;Landroid/icu/text/TimeZoneNames$NameType;Landroid/icu/text/TimeZoneNames$NameType;JLandroid/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 841
    :pswitch_5
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    sget-object v3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v0, p2, v3, p3, p4}, Landroid/icu/impl/TimeZoneGenericNames;->getDisplayName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 838
    :pswitch_6
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    sget-object v3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v0, p2, v3, p3, p4}, Landroid/icu/impl/TimeZoneGenericNames;->getDisplayName(Landroid/icu/util/TimeZone;Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 835
    :pswitch_7
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    invoke-static {p2}, Landroid/icu/impl/ZoneMeta;->getCanonicalCLDRID(Landroid/icu/util/TimeZone;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/icu/impl/TimeZoneGenericNames;->getGenericLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 872
    fill-array-data v3, :array_0

    .line 873
    invoke-virtual {p2, p3, p4, v2, v3}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 874
    aget p2, v3, v2

    aget p3, v3, v1

    add-int/2addr p2, p3

    .line 876
    sget-object p3, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_1

    :pswitch_8
    goto :goto_3

    .line 927
    :pswitch_9
    invoke-virtual {p0, p2, v2, v2, v2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 923
    :pswitch_a
    invoke-virtual {p0, p2, v1, v2, v2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 919
    :pswitch_b
    invoke-virtual {p0, p2, v2, v2, v1}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 915
    :pswitch_c
    invoke-virtual {p0, p2, v1, v2, v1}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 911
    :pswitch_d
    invoke-virtual {p0, p2, v2, v2, v2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 907
    :pswitch_e
    invoke-virtual {p0, p2, v1, v2, v2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 903
    :pswitch_f
    invoke-virtual {p0, p2, v2, v2, v1}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 899
    :pswitch_10
    invoke-virtual {p0, p2, v1, v2, v1}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 895
    :pswitch_11
    invoke-virtual {p0, p2, v2, v1, v1}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 891
    :pswitch_12
    invoke-virtual {p0, p2, v1, v1, v1}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 887
    :pswitch_13
    invoke-virtual {p0, p2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetShortLocalizedGMT(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 881
    :pswitch_14
    invoke-virtual {p0, p2}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz p5, :cond_3

    .line 938
    aget p0, v3, v1

    if-eqz p0, :cond_2

    sget-object p0, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    goto :goto_4

    :cond_2
    sget-object p0, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    :goto_4
    iput-object p0, p5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_13
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .line 1513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1515
    instance-of v2, p1, Landroid/icu/util/TimeZone;

    if-eqz v2, :cond_0

    .line 1516
    check-cast p1, Landroid/icu/util/TimeZone;

    goto :goto_0

    .line 1517
    :cond_0
    instance-of v0, p1, Landroid/icu/util/Calendar;

    if-eqz v0, :cond_3

    .line 1518
    check-cast p1, Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 1519
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    move-object p1, v0

    move-wide v0, v1

    .line 1525
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(I)Ljava/lang/String;

    move-result-object p0

    .line 1526
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1528
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object p1

    sget-object v0, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    if-eq p1, v0, :cond_1

    .line 1529
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result p1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 1530
    invoke-virtual {p3, p1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1531
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2
    return-object p2

    .line 1521
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot format given Object ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1522
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") as a time zone"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final formatOffsetISO8601Basic(IZZZ)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 720
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final formatOffsetISO8601Extended(IZZZ)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 738
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->formatOffsetISO8601(IZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatOffsetLocalizedGMT(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 760
    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatOffsetShortLocalizedGMT(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 782
    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeZoneFormat;->formatOffsetLocalizedGMT(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 3

    .line 1541
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1542
    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1543
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/TimeZoneFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 1546
    new-instance p1, Ljava/text/AttributedString;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 1547
    sget-object p0, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    sget-object v0, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    invoke-virtual {p1, p0, v0}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    .line 1549
    invoke-virtual {p1}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method public freeze()Landroid/icu/text/TimeZoneFormat;
    .locals 1

    const/4 v0, 0x1

    .line 3218
    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultParseOptions()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneFormat$ParseOption;",
            ">;"
        }
    .end annotation

    .line 695
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    if-eqz v0, :cond_0

    .line 696
    sget-object p0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {p0, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    .line 697
    :cond_0
    iget-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    if-eqz v0, :cond_1

    .line 698
    sget-object p0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    .line 699
    :cond_1
    iget-boolean p0, p0, Landroid/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    if-eqz p0, :cond_2

    .line 700
    sget-object p0, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    .line 702
    :cond_2
    const-class p0, Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public getGMTOffsetDigits()Ljava/lang/String;
    .locals 4

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 611
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 612
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 614
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .locals 0

    .line 572
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getGMTPattern()Ljava/lang/String;
    .locals 0

    .line 544
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getGMTZeroFormat()Ljava/lang/String;
    .locals 0

    .line 648
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZoneNames()Landroid/icu/text/TimeZoneNames;
    .locals 0

    .line 479
    iget-object p0, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    return-object p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 3210
    iget-boolean p0, p0, Landroid/icu/text/TimeZoneFormat;->_frozen:Z

    return p0
.end method

.method public parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Landroid/icu/util/TimeZone;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1469
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/TimeZoneFormat$Style;",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneFormat$ParseOption;",
            ">;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)",
            "Landroid/icu/util/TimeZone;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    if-nez v5, :cond_0

    .line 1013
    new-instance v5, Landroid/icu/util/Output;

    sget-object v6, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v5, v6}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 1015
    :cond_0
    sget-object v6, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    iput-object v6, v5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 1018
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    .line 1019
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    .line 1023
    sget-object v8, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    const/4 v10, 0x0

    if-eq v1, v8, :cond_2

    sget-object v8, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    if-eq v1, v8, :cond_2

    sget-object v8, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    if-ne v1, v8, :cond_1

    goto :goto_1

    :cond_1
    move v8, v10

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    .line 1025
    :goto_2
    sget-object v11, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    if-eq v1, v11, :cond_4

    sget-object v11, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    if-ne v1, v11, :cond_3

    goto :goto_3

    :cond_3
    move v11, v10

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v11, 0x1

    .line 1029
    :goto_4
    new-instance v12, Ljava/text/ParsePosition;

    invoke-direct {v12, v6}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v14, -0x1

    if-nez v8, :cond_6

    if-eqz v11, :cond_5

    goto :goto_5

    :cond_5
    move v13, v10

    move v8, v14

    const v11, 0x7fffffff

    goto :goto_8

    .line 1036
    :cond_6
    :goto_5
    new-instance v8, Landroid/icu/util/Output;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v8, v15}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1037
    invoke-direct {v0, v2, v12, v11, v8}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v11

    .line 1038
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v15

    if-ne v15, v14, :cond_9

    .line 1043
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    if-eq v15, v7, :cond_8

    iget-object v8, v8, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_6

    .line 1048
    :cond_7
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    goto :goto_7

    .line 1044
    :cond_8
    :goto_6
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1045
    invoke-direct {v0, v11}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    :cond_9
    move v8, v14

    const v11, 0x7fffffff

    .line 1053
    :goto_7
    sget-object v15, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v15, v15, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    sget-object v13, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v13, v13, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v13, v15

    or-int/2addr v13, v10

    :goto_8
    if-nez v4, :cond_a

    .line 1057
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    move-result-object v15

    sget-object v9, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v15, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_9

    .line 1058
    :cond_a
    sget-object v9, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v4, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 1061
    :goto_9
    sget-object v15, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v17

    aget v15, v15, v17

    const/16 v17, 0x0

    packed-switch v15, :pswitch_data_0

    goto/16 :goto_f

    .line 1116
    :pswitch_0
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1117
    invoke-virtual {v12, v14}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1120
    new-instance v15, Landroid/icu/util/Output;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v15, v14}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1121
    invoke-static {v2, v12, v10, v15}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v14

    .line 1122
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v10

    const/4 v4, -0x1

    if-ne v10, v4, :cond_18

    iget-object v4, v15, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1123
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1124
    invoke-direct {v0, v14}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 1099
    :pswitch_1
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v4, -0x1

    .line 1100
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1102
    invoke-virtual {v0, v2, v12}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v10

    .line 1103
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_18

    .line 1104
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1105
    invoke-direct {v0, v10}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    :pswitch_2
    move v4, v14

    .line 1079
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1080
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1082
    invoke-virtual {v0, v2, v12}, Landroid/icu/text/TimeZoneFormat;->parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v10

    .line 1083
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_b

    .line 1084
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1085
    invoke-direct {v0, v10}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 1089
    :cond_b
    sget-object v10, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v10, v10, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    goto :goto_a

    :pswitch_3
    move v4, v14

    .line 1064
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1065
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1067
    invoke-virtual {v0, v2, v12}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v10

    .line 1068
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_c

    .line 1069
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1070
    invoke-direct {v0, v10}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 1074
    :cond_c
    sget-object v10, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v10, v10, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    :goto_a
    or-int/2addr v13, v10

    goto/16 :goto_f

    :pswitch_4
    move v4, v14

    .line 1233
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1234
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1236
    invoke-direct {v0, v2, v12}, Landroid/icu/text/TimeZoneFormat;->parseExemplarLocation(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 1237
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_18

    .line 1238
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1239
    invoke-static {v10}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    :pswitch_5
    move v4, v14

    .line 1221
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1222
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1224
    invoke-static {v2, v12}, Landroid/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 1225
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_18

    .line 1226
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1227
    invoke-static {v10}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    :pswitch_6
    move v4, v14

    .line 1209
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1210
    invoke-virtual {v12, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1212
    invoke-static {v2, v12}, Landroid/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 1213
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v4, :cond_18

    .line 1214
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1215
    invoke-static {v10}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 1134
    :pswitch_7
    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    if-ne v1, v4, :cond_d

    .line 1135
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v10, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    goto :goto_b

    .line 1138
    :cond_d
    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v10, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 1140
    :goto_b
    iget-object v10, v0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-virtual {v10, v2, v6, v4}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 1143
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v14, v8

    move-object/from16 v8, v17

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 1144
    invoke-virtual {v15}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v18

    move-object/from16 v19, v10

    add-int v10, v6, v18

    if-le v10, v14, :cond_e

    .line 1146
    invoke-virtual {v15}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    add-int/2addr v8, v6

    move v14, v8

    move-object v8, v15

    :cond_e
    move-object/from16 v10, v19

    goto :goto_c

    :cond_f
    if-eqz v8, :cond_10

    .line 1150
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v1

    iput-object v1, v5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 1151
    invoke-virtual {v3, v14}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1152
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    :cond_10
    move v8, v14

    :cond_11
    if-eqz v9, :cond_18

    .line 1156
    sget-object v10, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    if-ne v1, v10, :cond_18

    .line 1161
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v10

    invoke-virtual {v10, v2, v6, v4}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1164
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v10, v8

    move-object/from16 v8, v17

    :cond_12
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 1165
    invoke-virtual {v14}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v15

    add-int/2addr v15, v6

    if-le v15, v10, :cond_12

    .line 1167
    invoke-virtual {v14}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v8

    add-int/2addr v8, v6

    move v10, v8

    move-object v8, v14

    goto :goto_d

    :cond_13
    if-eqz v8, :cond_14

    .line 1171
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v1

    iput-object v1, v5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 1172
    invoke-virtual {v3, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1173
    invoke-virtual {v8}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    :cond_14
    move v8, v10

    goto :goto_f

    .line 1184
    :pswitch_8
    sget-object v4, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v10

    aget v4, v4, v10

    const/4 v10, 0x1

    if-eq v4, v10, :cond_17

    const/4 v10, 0x2

    if-eq v4, v10, :cond_16

    const/4 v10, 0x3

    if-eq v4, v10, :cond_15

    move-object/from16 v4, v17

    goto :goto_e

    .line 1192
    :cond_15
    sget-object v4, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v10, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    goto :goto_e

    .line 1189
    :cond_16
    sget-object v4, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    sget-object v10, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v4, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    goto :goto_e

    .line 1186
    :cond_17
    sget-object v4, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    .line 1199
    :goto_e
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v10

    invoke-virtual {v10, v2, v6, v4}, Landroid/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 1200
    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v10

    add-int/2addr v10, v6

    if-le v10, v8, :cond_18

    .line 1201
    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v0

    iput-object v0, v5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 1202
    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v0

    add-int/2addr v6, v0

    invoke-virtual {v3, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1203
    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 1244
    :cond_18
    :goto_f
    iget v1, v1, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    or-int/2addr v1, v13

    if-le v8, v6, :cond_19

    .line 1254
    invoke-virtual {v3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1255
    invoke-direct {v0, v11}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 1262
    :cond_19
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-ge v8, v7, :cond_1d

    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_1a

    and-int/lit16 v10, v1, 0x100

    if-nez v10, :cond_1d

    .line 1269
    :cond_1a
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v10, -0x1

    .line 1270
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1272
    new-instance v13, Landroid/icu/util/Output;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v13, v15}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1273
    invoke-static {v2, v12, v14, v13}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v15

    .line 1274
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v10, :cond_1d

    .line 1275
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-eq v10, v7, :cond_1c

    iget-object v10, v13, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_10

    .line 1282
    :cond_1b
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ge v8, v10, :cond_1d

    .line 1285
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 1286
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move v11, v15

    goto :goto_11

    .line 1276
    :cond_1c
    :goto_10
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1277
    invoke-direct {v0, v15}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    :cond_1d
    :goto_11
    if-ge v8, v7, :cond_20

    .line 1294
    sget-object v10, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v10, v10, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v10, v1

    if-nez v10, :cond_20

    .line 1296
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v10, -0x1

    .line 1297
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1299
    new-instance v13, Landroid/icu/util/Output;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-direct {v13, v15}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 1300
    invoke-direct {v0, v2, v12, v14, v13}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v15

    .line 1301
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v14

    if-ne v14, v10, :cond_20

    .line 1302
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-eq v10, v7, :cond_1f

    iget-object v10, v13, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1e

    goto :goto_12

    .line 1307
    :cond_1e
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ge v8, v10, :cond_20

    .line 1310
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 1311
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move v11, v15

    goto :goto_13

    .line 1303
    :cond_1f
    :goto_12
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1304
    invoke-direct {v0, v15}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    :cond_20
    :goto_13
    if-ge v8, v7, :cond_23

    .line 1316
    sget-object v10, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v10, v10, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v10, v1

    if-nez v10, :cond_23

    .line 1318
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v10, -0x1

    .line 1319
    invoke-virtual {v12, v10}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1321
    new-instance v13, Landroid/icu/util/Output;

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x1

    .line 1322
    invoke-direct {v0, v2, v12, v14, v13}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result v14

    .line 1323
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v15

    if-ne v15, v10, :cond_23

    .line 1324
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-eq v10, v7, :cond_22

    iget-object v10, v13, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_21

    goto :goto_14

    .line 1329
    :cond_21
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ge v8, v10, :cond_23

    .line 1332
    sget-object v4, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 1333
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move-object v10, v4

    move v13, v14

    goto :goto_15

    .line 1325
    :cond_22
    :goto_14
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1326
    invoke-direct {v0, v14}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0

    :cond_23
    move-object v10, v4

    move v13, v11

    :goto_15
    move-object/from16 v4, p4

    if-nez v4, :cond_24

    .line 1348
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getDefaultParseOptions()Ljava/util/EnumSet;

    move-result-object v4

    sget-object v11, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v4, v11}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_16

    .line 1349
    :cond_24
    sget-object v11, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {v4, v11}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_16
    if-eqz v4, :cond_30

    if-ge v8, v7, :cond_28

    .line 1354
    iget-object v4, v0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    sget-object v11, Landroid/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v4, v2, v6, v11}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 1358
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v11, v17

    const/4 v14, -0x1

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 1359
    invoke-virtual {v15}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v16

    move-object/from16 p1, v4

    add-int v4, v6, v16

    if-le v4, v14, :cond_25

    .line 1361
    invoke-virtual {v15}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    add-int v14, v6, v4

    move-object v11, v15

    :cond_25
    move-object/from16 v4, p1

    goto :goto_17

    :cond_26
    move-object/from16 v11, v17

    const/4 v14, -0x1

    :cond_27
    if-ge v8, v14, :cond_28

    .line 1367
    invoke-virtual {v11}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v4, v8}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1368
    invoke-virtual {v11}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v10

    const v13, 0x7fffffff

    goto :goto_18

    :cond_28
    move v14, v8

    move-object/from16 v4, v17

    :goto_18
    if-eqz v9, :cond_2b

    if-ge v14, v7, :cond_2b

    .line 1372
    sget-object v8, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v8, v8, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v8, v1

    if-nez v8, :cond_2b

    .line 1374
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getTZDBTimeZoneNames()Landroid/icu/text/TimeZoneNames;

    move-result-object v8

    sget-object v9, Landroid/icu/text/TimeZoneFormat;->ALL_SIMPLE_NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v8, v2, v6, v9}, Landroid/icu/text/TimeZoneNames;->find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;

    move-result-object v8

    if-eqz v8, :cond_2b

    .line 1378
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v11, v17

    const/4 v9, -0x1

    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/icu/text/TimeZoneNames$MatchInfo;

    .line 1379
    invoke-virtual {v15}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v16

    move-object/from16 p1, v4

    add-int v4, v6, v16

    if-le v4, v9, :cond_29

    .line 1381
    invoke-virtual {v15}, Landroid/icu/text/TimeZoneNames$MatchInfo;->matchLength()I

    move-result v4

    add-int/2addr v4, v6

    move v9, v4

    move-object v11, v15

    :cond_29
    move-object/from16 v4, p1

    goto :goto_19

    :cond_2a
    move-object/from16 p1, v4

    if-ge v14, v9, :cond_2c

    .line 1386
    invoke-virtual {v11}, Landroid/icu/text/TimeZoneNames$MatchInfo;->tzID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Landroid/icu/text/TimeZoneNames$MatchInfo;->mzID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v4, v8}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1387
    invoke-virtual {v11}, Landroid/icu/text/TimeZoneNames$MatchInfo;->nameType()Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/icu/text/TimeZoneFormat;->getTimeType(Landroid/icu/text/TimeZoneNames$NameType;)Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v10

    move v14, v9

    const v13, 0x7fffffff

    goto :goto_1a

    :cond_2b
    move-object/from16 p1, v4

    :cond_2c
    move-object/from16 v4, p1

    :goto_1a
    if-ge v14, v7, :cond_2d

    .line 1395
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneGenericNames()Landroid/icu/impl/TimeZoneGenericNames;

    move-result-object v8

    sget-object v9, Landroid/icu/text/TimeZoneFormat;->ALL_GENERIC_NAME_TYPES:Ljava/util/EnumSet;

    invoke-virtual {v8, v2, v6, v9}, Landroid/icu/impl/TimeZoneGenericNames;->findBestMatch(Ljava/lang/String;ILjava/util/EnumSet;)Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    move-result-object v8

    if-eqz v8, :cond_2d

    .line 1396
    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v9

    add-int/2addr v9, v6

    if-ge v14, v9, :cond_2d

    .line 1397
    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength()I

    move-result v4

    add-int v14, v6, v4

    .line 1398
    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID()Ljava/lang/String;

    move-result-object v4

    .line 1399
    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->timeType()Landroid/icu/text/TimeZoneFormat$TimeType;

    move-result-object v10

    const v13, 0x7fffffff

    :cond_2d
    if-ge v14, v7, :cond_2e

    .line 1405
    sget-object v8, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    iget v8, v8, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v8, v1

    if-nez v8, :cond_2e

    .line 1406
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v8, -0x1

    .line 1407
    invoke-virtual {v12, v8}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1409
    invoke-static {v2, v12}, Landroid/icu/text/TimeZoneFormat;->parseZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v9

    .line 1410
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v11

    if-ne v11, v8, :cond_2e

    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    if-ge v14, v8, :cond_2e

    .line 1411
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 1413
    sget-object v8, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    move-object v10, v8

    const v13, 0x7fffffff

    move v8, v4

    move-object v4, v9

    goto :goto_1b

    :cond_2e
    move v8, v14

    :goto_1b
    if-ge v8, v7, :cond_2f

    .line 1418
    sget-object v7, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    iget v7, v7, Landroid/icu/text/TimeZoneFormat$Style;->flag:I

    and-int/2addr v1, v7

    if-nez v1, :cond_2f

    .line 1419
    invoke-virtual {v12, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v1, -0x1

    .line 1420
    invoke-virtual {v12, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1422
    invoke-static {v2, v12}, Landroid/icu/text/TimeZoneFormat;->parseShortZoneID(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v2

    .line 1423
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v7

    if-ne v7, v1, :cond_2f

    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-ge v8, v1, :cond_2f

    .line 1424
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    .line 1426
    sget-object v10, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    const v13, 0x7fffffff

    goto :goto_1c

    :cond_2f
    move-object v2, v4

    goto :goto_1c

    :cond_30
    move-object/from16 v2, v17

    :goto_1c
    if-le v8, v6, :cond_32

    if-eqz v2, :cond_31

    .line 1436
    invoke-static {v2}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    goto :goto_1d

    .line 1439
    :cond_31
    invoke-direct {v0, v13}, Landroid/icu/text/TimeZoneFormat;->getTimeZoneForOffset(I)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 1441
    :goto_1d
    iput-object v10, v5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 1442
    invoke-virtual {v3, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v0

    .line 1446
    :cond_32
    invoke-virtual {v3, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v17

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parse(Ljava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1498
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1499
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/TimeZoneFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeZone;

    move-result-object p0

    .line 1500
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    .line 1501
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unparseable time zone: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final parse(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeZone;
    .locals 6

    .line 1485
    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Ljava/util/EnumSet;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 1557
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeZoneFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public final parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 962
    invoke-static {p1, p2, p0, v0}, Landroid/icu/text/TimeZoneFormat;->parseOffsetISO8601(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result p0

    return p0
.end method

.method public parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 978
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result p0

    return p0
.end method

.method public parseOffsetShortLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 994
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/TimeZoneFormat;->parseOffsetLocalizedGMT(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/util/Output;)I

    move-result p0

    return p0
.end method

.method public setDefaultParseOptions(Ljava/util/EnumSet;)Landroid/icu/text/TimeZoneFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneFormat$ParseOption;",
            ">;)",
            "Landroid/icu/text/TimeZoneFormat;"
        }
    .end annotation

    .line 684
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->ALL_STYLES:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/TimeZoneFormat;->_parseAllStyles:Z

    .line 685
    sget-object v0, Landroid/icu/text/TimeZoneFormat$ParseOption;->TZ_DATABASE_ABBREVIATIONS:Landroid/icu/text/TimeZoneFormat$ParseOption;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/icu/text/TimeZoneFormat;->_parseTZDBNames:Z

    return-object p0
.end method

.method public setGMTOffsetDigits(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .locals 2

    .line 627
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 633
    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat;->toCodePoints(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 634
    array-length v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 637
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetDigits:[Ljava/lang/String;

    return-object p0

    .line 635
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of digits must be 10"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 631
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null GMT offset digits"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 628
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify frozen object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .locals 3

    .line 586
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 593
    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->access$200(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/icu/text/TimeZoneFormat;->parseOffsetPattern(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 595
    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatterns:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result v2

    aput-object p2, v1, v2

    .line 596
    iget-object p2, p0, Landroid/icu/text/TimeZoneFormat;->_gmtOffsetPatternItems:[[Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->ordinal()I

    move-result p1

    aput-object v0, p2, p1

    .line 597
    invoke-direct {p0}, Landroid/icu/text/TimeZoneFormat;->checkAbuttingHoursAndMinutes()V

    return-object p0

    .line 590
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null GMT offset pattern"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 587
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify frozen object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGMTPattern(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .locals 1

    .line 558
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    invoke-direct {p0, p1}, Landroid/icu/text/TimeZoneFormat;->initGMTPattern(Ljava/lang/String;)V

    return-object p0

    .line 559
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify frozen object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGMTZeroFormat(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    .locals 1

    .line 660
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 666
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gmtZeroFormat:Ljava/lang/String;

    return-object p0

    .line 667
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty GMT zero format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 664
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null GMT zero format"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 661
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify frozen object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTimeZoneNames(Landroid/icu/text/TimeZoneNames;)Landroid/icu/text/TimeZoneFormat;
    .locals 2

    .line 528
    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    .line 533
    new-instance p1, Landroid/icu/impl/TimeZoneGenericNames;

    iget-object v0, p0, Landroid/icu/text/TimeZoneFormat;->_locale:Landroid/icu/util/ULocale;

    iget-object v1, p0, Landroid/icu/text/TimeZoneFormat;->_tznames:Landroid/icu/text/TimeZoneNames;

    invoke-direct {p1, v0, v1}, Landroid/icu/impl/TimeZoneGenericNames;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/TimeZoneNames;)V

    iput-object p1, p0, Landroid/icu/text/TimeZoneFormat;->_gnames:Landroid/icu/impl/TimeZoneGenericNames;

    return-object p0

    .line 529
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify frozen object"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
