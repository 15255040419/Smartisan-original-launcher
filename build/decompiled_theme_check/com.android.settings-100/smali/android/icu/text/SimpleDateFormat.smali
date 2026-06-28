.class public Landroid/icu/text/SimpleDateFormat;
.super Landroid/icu/text/DateFormat;
.source "SimpleDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SimpleDateFormat$PatternItem;,
        Landroid/icu/text/SimpleDateFormat$ContextValue;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CALENDAR_FIELD_TO_LEVEL:[I

.field static final DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

.field private static final DECIMAL_BUF_SIZE:I = 0xa

.field static DelayedHebrewMonthCheck:Z = false

.field private static final FALLBACKPATTERN:Ljava/lang/String; = "yy/MM/dd HH:mm"

.field private static final HEBREW_CAL_CUR_MILLENIUM_END_YEAR:I = 0x1770

.field private static final HEBREW_CAL_CUR_MILLENIUM_START_YEAR:I = 0x1388

.field private static final ISOSpecialEra:I = -0x7d00

.field private static final NUMERIC_FORMAT_CHARS:Ljava/lang/String; = "ADdFgHhKkmrSsuWwYy"

.field private static final NUMERIC_FORMAT_CHARS2:Ljava/lang/String; = "ceLMQq"

.field private static PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATTERN_CHAR_IS_SYNTAX:[Z

.field private static final PATTERN_CHAR_TO_INDEX:[I

.field private static final PATTERN_CHAR_TO_LEVEL:[I

.field private static final PATTERN_INDEX_TO_CALENDAR_FIELD:[I

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

.field private static final PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

.field private static final SUPPRESS_NEGATIVE_PREFIX:Ljava/lang/String; = "\uab00"

.field private static cachedDefaultLocale:Landroid/icu/util/ULocale; = null

.field private static cachedDefaultPattern:Ljava/lang/String; = null

.field static final currentSerialVersion:I = 0x2

.field private static final millisPerHour:I = 0x36ee80

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient capitalizationBrkIter:Landroid/icu/text/BreakIterator;

.field private transient decDigits:[C

.field private transient decimalBuf:[C

.field private transient defaultCenturyBase:J

.field private defaultCenturyStart:Ljava/util/Date;

.field private transient defaultCenturyStartYear:I

.field private formatData:Landroid/icu/text/DateFormatSymbols;

.field private transient hasMinute:Z

.field private transient hasSecond:Z

.field private transient locale:Landroid/icu/util/ULocale;

.field private numberFormatters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private override:Ljava/lang/String;

.field private overrideMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;

.field private transient patternItems:[Ljava/lang/Object;

.field private serialVersionOnStream:I

.field private volatile tzFormat:Landroid/icu/text/TimeZoneFormat;

.field private transient useFastFormat:Z

.field private transient useLocalZeroPaddingNumberFormat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x18

    new-array v1, v0, [I

    .line 744
    fill-array-data v1, :array_0

    sput-object v1, Landroid/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I

    const/16 v1, 0x80

    new-array v2, v1, [I

    .line 763
    fill-array-data v2, :array_1

    sput-object v2, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    new-array v2, v1, [Z

    .line 789
    fill-array-data v2, :array_2

    sput-object v2, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    const/4 v2, 0x0

    .line 1189
    sput-object v2, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    .line 1190
    sput-object v2, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    new-array v1, v1, [I

    .line 1394
    fill-array-data v1, :array_3

    sput-object v1, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    const/16 v1, 0x25

    new-array v2, v1, [I

    .line 1418
    fill-array-data v2, :array_4

    sput-object v2, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    const/16 v2, 0x26

    new-array v3, v2, [I

    .line 1442
    fill-array-data v3, :array_5

    sput-object v3, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    new-array v2, v2, [Landroid/icu/text/DateFormat$Field;

    const/4 v3, 0x0

    .line 1465
    sget-object v4, Landroid/icu/text/DateFormat$Field;->ERA:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Landroid/icu/text/DateFormat$Field;->DAY_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY1:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Landroid/icu/text/DateFormat$Field;->HOUR_OF_DAY0:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Landroid/icu/text/DateFormat$Field;->MILLISECOND:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Landroid/icu/text/DateFormat$Field;->DAY_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Landroid/icu/text/DateFormat$Field;->WEEK_OF_YEAR:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Landroid/icu/text/DateFormat$Field;->WEEK_OF_MONTH:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Landroid/icu/text/DateFormat$Field;->AM_PM:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Landroid/icu/text/DateFormat$Field;->HOUR1:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Landroid/icu/text/DateFormat$Field;->HOUR0:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Landroid/icu/text/DateFormat$Field;->YEAR_WOY:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Landroid/icu/text/DateFormat$Field;->DOW_LOCAL:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x14

    sget-object v4, Landroid/icu/text/DateFormat$Field;->EXTENDED_YEAR:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Landroid/icu/text/DateFormat$Field;->JULIAN_DAY:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x16

    sget-object v4, Landroid/icu/text/DateFormat$Field;->MILLISECONDS_IN_DAY:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    const/16 v3, 0x17

    sget-object v4, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v4, v2, v3

    sget-object v3, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x19

    sget-object v3, Landroid/icu/text/DateFormat$Field;->DAY_OF_WEEK:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1a

    sget-object v3, Landroid/icu/text/DateFormat$Field;->MONTH:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1b

    sget-object v3, Landroid/icu/text/DateFormat$Field;->QUARTER:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1c

    sget-object v3, Landroid/icu/text/DateFormat$Field;->QUARTER:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1d

    sget-object v3, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1e

    sget-object v3, Landroid/icu/text/DateFormat$Field;->YEAR:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x1f

    sget-object v3, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x20

    sget-object v3, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x21

    sget-object v3, Landroid/icu/text/DateFormat$Field;->TIME_ZONE:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x22

    sget-object v3, Landroid/icu/text/DateFormat$Field;->RELATED_YEAR:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x23

    sget-object v3, Landroid/icu/text/DateFormat$Field;->AM_PM_MIDNIGHT_NOON:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    const/16 v0, 0x24

    sget-object v3, Landroid/icu/text/DateFormat$Field;->FLEXIBLE_DAY_PERIOD:Landroid/icu/text/DateFormat$Field;

    aput-object v3, v2, v0

    sget-object v0, Landroid/icu/text/DateFormat$Field;->TIME_SEPARATOR:Landroid/icu/text/DateFormat$Field;

    aput-object v0, v2, v1

    sput-object v2, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

    .line 2103
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    .line 2851
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[GyYuUQqMLlwWd]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

    return-void

    :array_0
    .array-data 4
        0x0
        0xa
        0x14
        0x14
        0x1e
        0x1e
        0x14
        0x1e
        0x1e
        0x28
        0x32
        0x32
        0x3c
        0x46
        0x50
        0x0
        0x0
        0xa
        0x1e
        0xa
        0x0
        0x28
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        0x14
        0x1e
        0x1e
        0x0
        0x32
        -0x1
        -0x1
        0x32
        0x14
        0x14
        -0x1
        0x0
        -0x1
        0x14
        -0x1
        0x50
        -0x1
        0xa
        0x0
        0x1e
        0x0
        0xa
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        0x1e
        0x1e
        0x1e
        -0x1
        0x0
        0x32
        -0x1
        -0x1
        0x32
        -0x1
        0x3c
        -0x1
        -0x1
        -0x1
        0x14
        0xa
        0x46
        -0x1
        0xa
        0x0
        0x14
        0x0
        0xa
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        0x24
        -0x1
        0xa
        0x9
        0xb
        0x0
        0x5
        -0x1
        -0x1
        0x10
        0x1a
        0x2
        -0x1
        0x1f
        -0x1
        0x1b
        -0x1
        0x8
        -0x1
        0x1e
        0x1d
        0xd
        0x20
        0x12
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xe
        0x23
        0x19
        0x3
        0x13
        -0x1
        0x15
        0xf
        -0x1
        -0x1
        0x4
        -0x1
        0x6
        -0x1
        -0x1
        -0x1
        0x1c
        0x22
        0x7
        -0x1
        0x14
        0x18
        0xc
        0x21
        0x1
        0x11
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x5
        0xb
        0xb
        0xc
        0xd
        0xe
        0x7
        0x6
        0x8
        0x3
        0x4
        0x9
        0xa
        0xa
        0xf
        0x11
        0x12
        0x13
        0x14
        0x15
        0xf
        0xf
        0x12
        0x2
        0x2
        0x2
        0xf
        0x1
        0xf
        0xf
        0xf
        0x13
        -0x1
        -0x2
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    .line 977
    invoke-static {}, Landroid/icu/text/SimpleDateFormat;->getDefaultPattern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 988
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;)V
    .locals 8

    .line 1035
    invoke-virtual {p2}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/icu/text/DateFormatSymbols;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V
    .locals 1

    .line 1064
    invoke-direct {p0}, Landroid/icu/text/DateFormat;-><init>()V

    const/4 v0, 0x2

    .line 852
    iput v0, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 929
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 1065
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1066
    iput-object p2, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    .line 1067
    iput-object p3, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 1068
    iput-object p4, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 1069
    iput-object p5, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    .line 1070
    iput-boolean p6, p0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    .line 1071
    iput-object p7, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    .line 1072
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initialize()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;ZLjava/lang/String;)V
    .locals 8

    .line 1057
    invoke-virtual {p2}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {p3}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/icu/util/Calendar;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/ULocale;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1046
    invoke-virtual {p2}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/icu/text/DateFormatSymbols;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 1008
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v7, p2

    .line 1025
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 8

    .line 998
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(CI)Z
    .locals 0

    .line 722
    invoke-static {p0, p1}, Landroid/icu/text/SimpleDateFormat;->isNumeric(CI)Z

    move-result p0

    return p0
.end method

.method private allowNumericFallback(I)Z
    .locals 0

    const/16 p0, 0x1a

    if-eq p1, p0, :cond_1

    const/16 p0, 0x13

    if-eq p1, p0, :cond_1

    const/16 p0, 0x19

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1c

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static countDigits(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 3805
    invoke-virtual {p0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 3806
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3809
    :cond_0
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->charCount(I)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private diffCalFieldValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;[Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4341
    aget-object v0, p3, p4

    instance-of v0, v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4344
    :cond_0
    aget-object p3, p3, p4

    check-cast p3, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 4345
    iget-char p3, p3, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 4346
    invoke-static {p3}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2

    .line 4353
    sget-object p0, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget p0, p0, p4

    if-ltz p0, :cond_1

    .line 4355
    invoke-virtual {p1, p0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    .line 4356
    invoke-virtual {p2, p0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p0

    if-eq p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    .line 4348
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal pattern character \'"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, "\' in \""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V
    .locals 4

    .line 2281
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    array-length v1, v0

    if-ge v1, p4, :cond_0

    array-length p4, v0

    :cond_0
    add-int/lit8 v0, p4, -0x1

    .line 2284
    :goto_0
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    rem-int/lit8 v3, p2, 0xa

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 2285
    div-int/lit8 p2, p2, 0xa

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    sub-int p2, p4, v0

    sub-int/2addr p3, p2

    :goto_2
    const/4 p2, 0x0

    if-lez p3, :cond_3

    if-lez v0, :cond_3

    .line 2293
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    aget-char p2, v2, p2

    aput-char p2, v1, v0

    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-lez p3, :cond_4

    .line 2299
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    aget-char v1, v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    .line 2302
    :cond_4
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    sub-int/2addr p4, v0

    invoke-virtual {p1, p0, v0, p4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method private format(Landroid/icu/util/Calendar;Landroid/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/text/DisplayContext;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    const/4 v13, 0x0

    .line 1350
    invoke-virtual {v11, v13}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1351
    invoke-virtual {v11, v13}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1357
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v14

    move v15, v13

    .line 1358
    :goto_0
    array-length v0, v14

    if-ge v15, v0, :cond_4

    .line 1359
    aget-object v0, v14, v15

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1360
    aget-object v0, v14, v15

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3

    .line 1362
    :cond_0
    aget-object v0, v14, v15

    move-object v8, v0

    check-cast v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v12, :cond_1

    .line 1366
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, v13

    .line 1368
    :goto_1
    iget-boolean v0, v9, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v0, :cond_2

    .line 1369
    iget-char v2, v8, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v3, v8, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v5, v15

    move-object/from16 v6, p2

    move v13, v7

    move-object/from16 v7, p4

    move-object v11, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    goto :goto_2

    :cond_2
    move v13, v7

    move-object v11, v8

    .line 1372
    iget-char v1, v11, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v2, v11, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move-object/from16 v0, p0

    move v4, v15

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    if-eqz v12, :cond_3

    .line 1377
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int v1, v0, v13

    if-lez v1, :cond_3

    .line 1380
    iget-char v1, v11, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    invoke-virtual {v9, v1}, Landroid/icu/text/SimpleDateFormat;->patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;

    move-result-object v1

    .line 1381
    new-instance v2, Ljava/text/FieldPosition;

    invoke-direct {v2, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 1382
    invoke-virtual {v2, v13}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1383
    invoke-virtual {v2, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1384
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, p4

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    return-object v10
.end method

.method private getDefaultCenturyStart()Ljava/util/Date;
    .locals 2

    .line 1258
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1260
    iget-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    .line 1262
    :cond_0
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    return-object p0
.end method

.method private getDefaultCenturyStartYear()I
    .locals 2

    .line 1267
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 1269
    iget-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    .line 1271
    :cond_0
    iget p0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return p0
.end method

.method private static declared-synchronized getDefaultPattern()Ljava/lang/String;
    .locals 7

    const-class v0, Landroid/icu/text/SimpleDateFormat;

    monitor-enter v0

    .line 1198
    :try_start_0
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 1199
    sget-object v2, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v2}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1200
    sput-object v1, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    .line 1201
    sget-object v1, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "android/icu/impl/data/icudt60b"

    .line 1205
    sget-object v3, Landroid/icu/text/SimpleDateFormat;->cachedDefaultLocale:Landroid/icu/util/ULocale;

    invoke-static {v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    .line 1207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calendar/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DateTimePatterns"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1208
    invoke-virtual {v2, v1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "calendar/gregorian/DateTimePatterns"

    .line 1211
    invoke-virtual {v2, v1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_3

    .line 1213
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 1217
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    const/16 v4, 0xd

    if-lt v3, v4, :cond_2

    const/16 v2, 0xc

    .line 1220
    :cond_2
    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x3

    .line 1224
    invoke-virtual {v1, v6}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 1222
    invoke-static {v2, v3, v3, v4}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    const-string/jumbo v1, "yy/MM/dd HH:mm"

    .line 1214
    sput-object v1, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string/jumbo v1, "yy/MM/dd HH:mm"

    .line 1227
    sput-object v1, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;

    .line 1230
    :cond_4
    :goto_1
    sget-object v1, Landroid/icu/text/SimpleDateFormat;->cachedDefaultPattern:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getIndexFromChar(C)I
    .locals 2

    .line 1414
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_INDEX:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    and-int/lit16 p0, p0, 0xff

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getInstance(Landroid/icu/util/Calendar$FormatConfiguration;)Landroid/icu/text/SimpleDateFormat;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1086
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    .line 1089
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getPatternString()Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;

    move-result-object v3

    .line 1091
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getCalendar()Landroid/icu/util/Calendar;

    move-result-object v4

    const/4 v5, 0x0

    .line 1093
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v6

    .line 1095
    invoke-virtual {p0}, Landroid/icu/util/Calendar$FormatConfiguration;->getOverrideString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;Landroid/icu/text/NumberFormat;Landroid/icu/util/ULocale;ZLjava/lang/String;)V

    return-object v0
.end method

.method private static getLevelFromChar(C)I
    .locals 2

    .line 786
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_TO_LEVEL:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    and-int/lit16 p0, p0, 0xff

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getPatternItems()[Ljava/lang/Object;
    .locals 12

    .line 2112
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 2116
    :cond_0
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 2117
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    return-object v0

    .line 2123
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v6, v2

    move v4, v3

    move v5, v4

    move v7, v5

    move v8, v7

    .line 2129
    :goto_0
    iget-object v9, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_b

    .line 2130
    iget-object v9, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x27

    if-ne v9, v10, :cond_4

    if-eqz v8, :cond_2

    .line 2133
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v5

    move v5, v3

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 2138
    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v6}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v2

    move v8, v3

    goto :goto_1

    :cond_3
    move v8, v5

    move v5, v2

    :goto_1
    xor-int/lit8 v7, v7, 0x1

    move v11, v8

    move v8, v5

    move v5, v11

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    .line 2146
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    move v8, v3

    goto :goto_4

    .line 2148
    :cond_5
    invoke-static {v9}, Landroid/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v8

    if-eqz v8, :cond_9

    if-ne v9, v5, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    if-nez v5, :cond_7

    .line 2154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 2155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_3

    .line 2159
    :cond_7
    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v6}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    move v6, v2

    move v8, v3

    move v5, v9

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_a

    .line 2167
    new-instance v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v8, v5, v6}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v3

    .line 2170
    :cond_a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    if-nez v5, :cond_c

    .line 2177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 2178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2179
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_5

    .line 2182
    :cond_c
    new-instance v0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    invoke-direct {v0, v5, v6}, Landroid/icu/text/SimpleDateFormat$PatternItem;-><init>(CI)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2185
    :cond_d
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    .line 2187
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PARSED_PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2189
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    return-object p0
.end method

.method private initLocalZeroPaddingNumberFormat()V
    .locals 7

    .line 2239
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/text/DecimalFormat;

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2240
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 2241
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v0

    .line 2242
    iput-boolean v3, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    new-array v4, v1, [C

    .line 2243
    iput-object v4, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_3

    .line 2245
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_0

    .line 2246
    iput-boolean v2, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_1

    .line 2249
    :cond_0
    iget-object v5, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    aget-object v6, v0, v4

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2251
    :cond_1
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/impl/DateNumberFormat;

    if-eqz v0, :cond_2

    .line 2252
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/impl/DateNumberFormat;

    invoke-virtual {v0}, Landroid/icu/impl/DateNumberFormat;->getDigits()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decDigits:[C

    .line 2253
    iput-boolean v3, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    goto :goto_1

    .line 2255
    :cond_2
    iput-boolean v2, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    .line 2258
    :cond_3
    :goto_1
    iget-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    if-eqz v0, :cond_4

    new-array v0, v1, [C

    .line 2259
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    :cond_4
    return-void
.end method

.method private initNumberFormatters(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 4458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 4459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    .line 4460
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/icu/text/SimpleDateFormat;->processOverrideString(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method private initialize()V
    .locals 4

    .line 1102
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    if-nez v0, :cond_0

    .line 1103
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    .line 1105
    :cond_0
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    if-nez v0, :cond_1

    .line 1106
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    .line 1108
    :cond_1
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    if-nez v0, :cond_2

    .line 1109
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 1111
    :cond_2
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    if-nez v0, :cond_5

    .line 1112
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    .line 1113
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 1115
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 1118
    :cond_3
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1120
    new-instance v2, Landroid/icu/impl/DateNumberFormat;

    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v2, v3, v1, v0}, Landroid/icu/impl/DateNumberFormat;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    goto :goto_1

    .line 1116
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 1123
    :cond_5
    :goto_1
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_6

    .line 1124
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->fixNumberFormatForDates(Landroid/icu/text/NumberFormat;)V

    .line 1129
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    .line 1131
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    sget-object v1, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    sget-object v2, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v1, v2}, Landroid/icu/util/Calendar;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 1132
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    .line 1134
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1135
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initNumberFormatters(Landroid/icu/util/ULocale;)V

    .line 1138
    :cond_7
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->parsePattern()V

    return-void
.end method

.method private initializeDefaultCenturyStart(J)V
    .locals 1

    .line 1246
    iput-wide p1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    .line 1249
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 1250
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x1

    const/16 p2, -0x50

    .line 1251
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/Calendar;->add(II)V

    .line 1252
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1253
    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return-void
.end method

.method private declared-synchronized initializeTimeZoneFormat(Z)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1148
    :try_start_0
    iget-object p1, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    if-nez p1, :cond_5

    .line 1149
    :cond_0
    iget-object p1, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/text/TimeZoneFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    const/4 p1, 0x0

    .line 1152
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_2

    .line 1153
    iget-object p1, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast p1, Landroid/icu/text/DecimalFormat;

    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p1

    .line 1154
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object p1

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1158
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1161
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1162
    :cond_2
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v0, v0, Landroid/icu/impl/DateNumberFormat;

    if-eqz v0, :cond_3

    .line 1163
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    check-cast v0, Landroid/icu/impl/DateNumberFormat;

    invoke-virtual {v0}, Landroid/icu/impl/DateNumberFormat;->getDigits()[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 1167
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1168
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1169
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v0}, Landroid/icu/text/TimeZoneFormat;->cloneAsThawed()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    .line 1171
    :cond_4
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/TimeZoneFormat;->setGMTOffsetDigits(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static isFieldUnitIgnored(Ljava/lang/String;I)Z
    .locals 9

    .line 4119
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->CALENDAR_FIELD_TO_LEVEL:[I

    aget p1, v0, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 4126
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v1, v5, :cond_5

    .line 4127
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_1

    if-lez v2, :cond_1

    .line 4129
    invoke-static {v3}, Landroid/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    move-result v2

    if-gt p1, v2, :cond_0

    return v0

    :cond_0
    move v2, v0

    :cond_1
    const/16 v7, 0x27

    if-ne v5, v7, :cond_3

    add-int/lit8 v5, v1, 0x1

    .line 4136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    xor-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    .line 4141
    invoke-static {v5}, Landroid/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    :cond_4
    :goto_1
    add-int/2addr v1, v6

    goto :goto_0

    :cond_5
    if-lez v2, :cond_6

    .line 4148
    invoke-static {v3}, Landroid/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    move-result p0

    if-gt p1, p0, :cond_6

    return v0

    :cond_6
    return v6
.end method

.method private static final isNumeric(CI)Z
    .locals 1

    const-string v0, "ADdFgHhKkmrSsuWwYy"

    .line 2331
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const-string p1, "ceLMQq"

    .line 2332
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isSyntaxChar(C)Z
    .locals 2

    .line 829
    sget-object v0, Landroid/icu/text/SimpleDateFormat;->PATTERN_CHAR_IS_SYNTAX:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_0

    and-int/lit16 p0, p0, 0xff

    aget-boolean p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private lowerLevel([Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4381
    aget-object v0, p1, p2

    instance-of v0, v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4384
    :cond_0
    aget-object p1, p1, p2

    check-cast p1, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 4385
    iget-char p1, p1, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 4386
    invoke-static {p1}, Landroid/icu/text/SimpleDateFormat;->getLevelFromChar(C)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    if-lt p2, p3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    .line 4388
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal pattern character \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' in \""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x22

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "I",
            "Landroid/icu/util/Output<",
            "Landroid/icu/impl/DayPeriodRules$DayPeriod;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v0

    :goto_0
    if-ge v0, p4, :cond_1

    .line 3022
    aget-object v3, p3, v0

    if-eqz v3, :cond_0

    .line 3023
    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 3024
    aget-object v4, p3, v0

    .line 3025
    invoke-direct {p0, p1, p2, v4, v3}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    move v1, v0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    .line 3033
    sget-object p0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->VALUES:[Landroid/icu/impl/DayPeriodRules$DayPeriod;

    aget-object p0, p0, v1

    iput-object p0, p5, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    add-int/2addr p2, v2

    return p2

    :cond_2
    neg-int p0, p2

    return p0
.end method

.method private matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I
    .locals 10

    .line 2781
    aget-object v0, p3, p4

    check-cast v0, Ljava/lang/String;

    .line 2782
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2783
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v5, p2

    move v4, v3

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v1, :cond_6

    if-ge v5, v2, :cond_6

    .line 2786
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 2787
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2788
    invoke-static {v7}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2789
    invoke-static {v8}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v9

    if-eqz v9, :cond_1

    :goto_1
    add-int/lit8 v7, v4, 0x1

    if-ge v7, v1, :cond_0

    .line 2793
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    :goto_2
    add-int/lit8 v7, v5, 0x1

    if-ge v7, v2, :cond_5

    .line 2797
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v8

    if-eqz v8, :cond_5

    move v5, v7

    goto :goto_2

    :cond_1
    if-eq v7, v8, :cond_5

    const/16 v9, 0x2e

    if-ne v8, v9, :cond_2

    if-ne v5, p2, :cond_2

    if-lez p4, :cond_2

    .line 2801
    sget-object v8, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v8}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v7, p4, -0x1

    .line 2802
    aget-object v7, p3, v7

    .line 2803
    instance-of v8, v7, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v8, :cond_6

    .line 2804
    check-cast v7, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v7, v7, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-nez v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/16 v8, 0x20

    if-eq v7, v8, :cond_3

    if-ne v7, v9, :cond_4

    .line 2810
    :cond_3
    sget-object v7, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v7}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eq v5, p2, :cond_6

    .line 2813
    sget-object v7, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v7}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_5
    add-int/2addr v4, v6

    add-int/2addr v5, v6

    goto :goto_0

    :cond_6
    if-ne v4, v1, :cond_7

    move v0, v6

    goto :goto_4

    :cond_7
    move v0, v3

    .line 2822
    :goto_4
    aput-boolean v0, p5, v3

    .line 2823
    aget-boolean v0, p5, v3

    if-nez v0, :cond_a

    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result p0

    if-eqz p0, :cond_a

    if-lez p4, :cond_a

    array-length p0, p3

    sub-int/2addr p0, v6

    if-ge p4, p0, :cond_a

    if-ge p2, v2, :cond_a

    add-int/lit8 p0, p4, -0x1

    .line 2828
    aget-object p0, p3, p0

    add-int/2addr p4, v6

    .line 2829
    aget-object p3, p3, p4

    .line 2830
    instance-of p4, p0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz p4, :cond_a

    instance-of p4, p3, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz p4, :cond_a

    .line 2831
    check-cast p0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-char p0, p0, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 2832
    check-cast p3, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-char p3, p3, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 2833
    sget-object p4, Landroid/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p4, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    sget-object p4, Landroid/icu/text/SimpleDateFormat;->DATE_PATTERN_TYPE:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p4, p3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p3

    if-eq p0, p3, :cond_a

    move v5, p2

    .line 2836
    :goto_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 2837
    invoke-static {p0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result p0

    if-nez p0, :cond_9

    if-le v5, p2, :cond_8

    goto :goto_6

    :cond_8
    move v6, v3

    .line 2842
    :goto_6
    aput-boolean v6, p5, v3

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    :goto_7
    return v5
.end method

.method private matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2899
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne p3, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, -0x1

    move v5, v1

    move v6, v5

    :goto_1
    if-ge v3, v0, :cond_3

    .line 2913
    aget-object v7, p4, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 2916
    aget-object v8, p4, v3

    .line 2917
    invoke-direct {p0, p1, p2, v8, v7}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_1

    move v6, v1

    move v4, v3

    move v5, v7

    :cond_1
    if-eqz p5, :cond_2

    new-array v7, v2, [Ljava/lang/CharSequence;

    .line 2924
    aget-object v8, p4, v3

    aput-object v8, v7, v1

    invoke-static {p5, v2, v2, v7}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 2926
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v5, :cond_2

    .line 2928
    invoke-direct {p0, p1, p2, v7, v8}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v7

    if-ltz v7, :cond_2

    move v6, v2

    move v4, v3

    move v5, v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-ltz v4, :cond_6

    if-ltz p3, :cond_5

    if-ne p3, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 2942
    :cond_4
    invoke-virtual {p6, p3, v4}, Landroid/icu/util/Calendar;->set(II)V

    if-eqz p5, :cond_5

    const/16 p0, 0x16

    .line 2944
    invoke-virtual {p6, p0, v6}, Landroid/icu/util/Calendar;->set(II)V

    :cond_5
    add-int/2addr p2, v5

    return p2

    :cond_6
    not-int p0, p2

    return p0
.end method

.method private parseAmbiguousDatesAsAfter(Ljava/util/Date;)V
    .locals 1

    .line 1237
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1238
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1239
    iget-object p1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStartYear:I

    return-void
.end method

.method private parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;
    .locals 4

    .line 3754
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    if-eqz p4, :cond_0

    .line 3756
    invoke-virtual {p5, p1, p3}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    goto :goto_0

    .line 3759
    :cond_0
    instance-of p4, p5, Landroid/icu/text/DecimalFormat;

    if-eqz p4, :cond_1

    .line 3760
    move-object p4, p5

    check-cast p4, Landroid/icu/text/DecimalFormat;

    invoke-virtual {p4}, Landroid/icu/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\uab00"

    .line 3761
    invoke-virtual {p4, v1}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {p5, p1, p3}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    .line 3763
    invoke-virtual {p4, v0}, Landroid/icu/text/DecimalFormat;->setNegativePrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 3765
    :cond_1
    instance-of p4, p5, Landroid/icu/impl/DateNumberFormat;

    if-eqz p4, :cond_2

    .line 3767
    move-object v0, p5

    check-cast v0, Landroid/icu/impl/DateNumberFormat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    .line 3769
    :cond_2
    invoke-virtual {p5, p1, p3}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    if-eqz p4, :cond_3

    .line 3771
    check-cast p5, Landroid/icu/impl/DateNumberFormat;

    const/4 p4, 0x0

    invoke-virtual {p5, p4}, Landroid/icu/impl/DateNumberFormat;->setParsePositiveOnly(Z)V

    :cond_3
    :goto_0
    if-lez p2, :cond_5

    .line 3778
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p4

    sub-int/2addr p4, p0

    if-le p4, p2, :cond_5

    .line 3780
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sub-int/2addr p4, p2

    :goto_1
    if-lez p4, :cond_4

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_4
    add-int/2addr p0, p2

    .line 3786
    invoke-virtual {p3, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    double-to-int p0, v0

    .line 3787
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method private parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;
    .locals 6

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 3742
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method private parsePattern()V
    .locals 5

    const/4 v0, 0x0

    .line 4518
    iput-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->hasMinute:Z

    .line 4519
    iput-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->hasSecond:Z

    move v1, v0

    .line 4522
    :goto_0
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 4523
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    xor-int/lit8 v1, v1, 0x1

    :cond_0
    if-nez v1, :cond_2

    const/16 v3, 0x6d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 4529
    iput-boolean v4, p0, Landroid/icu/text/SimpleDateFormat;->hasMinute:Z

    :cond_1
    const/16 v3, 0x73

    if-ne v2, v3, :cond_2

    .line 4532
    iput-boolean v4, p0, Landroid/icu/text/SimpleDateFormat;->hasSecond:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private processOverrideString(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 9

    if-eqz p2, :cond_5

    .line 4466
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    if-eqz v2, :cond_5

    const-string v4, ";"

    .line 4477
    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 4480
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v2

    move v2, v4

    .line 4485
    :goto_1
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    .line 4486
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 4491
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 4492
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 4493
    iget-object v5, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    move v3, v1

    .line 4497
    :goto_2
    new-instance v5, Landroid/icu/util/ULocale;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "@numbers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 4498
    invoke-static {v5, v1}, Landroid/icu/text/NumberFormat;->createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v5

    .line 4499
    invoke-virtual {v5, v1}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    if-eqz v3, :cond_3

    .line 4502
    invoke-virtual {p0, v5}, Landroid/icu/text/SimpleDateFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)V

    goto :goto_3

    .line 4506
    :cond_3
    iput-boolean v1, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    :goto_3
    if-nez v3, :cond_4

    .line 4509
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4510
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v2, v6

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4002
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4003
    iget v0, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 4006
    :goto_0
    iget v0, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    if-ge v0, v1, :cond_1

    .line 4008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    goto :goto_1

    .line 4013
    :cond_1
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    :goto_1
    const/4 v0, 0x2

    .line 4015
    iput v0, p0, Landroid/icu/text/SimpleDateFormat;->serialVersionOnStream:I

    .line 4016
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    .line 4017
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    if-nez v0, :cond_2

    .line 4021
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    .line 4024
    :cond_2
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    .line 4026
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    .line 4028
    invoke-static {}, Landroid/icu/text/DisplayContext;->values()[Landroid/icu/text/DisplayContext;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 4029
    invoke-virtual {v4}, Landroid/icu/text/DisplayContext;->value()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 4030
    invoke-virtual {p0, v4}, Landroid/icu/text/SimpleDateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4037
    :cond_4
    :goto_3
    sget-object p1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, p1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 4038
    sget-object p1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/SimpleDateFormat;->setBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;Z)Landroid/icu/text/DateFormat;

    .line 4041
    :cond_5
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->parsePattern()V

    return-void
.end method

.method private regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    .line 2953
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_0

    return p4

    .line 2957
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p3, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_1

    const/4 v2, 0x1

    const/4 v5, 0x0

    add-int/lit8 p0, p4, -0x1

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v6, p0

    .line 2958
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 2072
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 2073
    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method private static safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    .line 2078
    array-length v0, p0

    if-ge p1, v0, :cond_1

    if-nez p3, :cond_0

    .line 2080
    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 2082
    aget-object p0, p0, p1

    aput-object p0, v1, v2

    invoke-static {p3, v0, v0, v1}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2083
    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method private subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ICIZZ[Z",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/text/MessageFormat;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;)I"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 3073
    invoke-direct/range {v0 .. v11}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;Landroid/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method private subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;Landroid/icu/util/Output;)I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ICIZZ[Z",
            "Landroid/icu/util/Calendar;",
            "Landroid/icu/text/MessageFormat;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/text/TimeZoneFormat$TimeType;",
            ">;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/impl/DayPeriodRules$DayPeriod;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 3112
    new-instance v7, Ljava/text/ParsePosition;

    const/4 v15, 0x0

    invoke-direct {v7, v15}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3114
    invoke-static/range {p3 .. p3}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v11

    const/4 v0, -0x1

    if-ne v11, v0, :cond_0

    move/from16 v0, p2

    not-int v0, v0

    return v0

    :cond_0
    move/from16 v0, p2

    move/from16 v1, p3

    .line 3119
    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getNumberFormat(C)Landroid/icu/text/NumberFormat;

    move-result-object v5

    .line 3121
    sget-object v1, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v4, v1, v11

    if-eqz v9, :cond_1

    .line 3124
    invoke-virtual {v9, v15, v5}, Landroid/icu/text/MessageFormat;->setFormatByArgumentIndex(ILjava/text/Format;)V

    .line 3126
    :cond_1
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chinese"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dangi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v16, v15

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v16, v3

    :goto_1
    move v2, v0

    .line 3131
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v2, v0, :cond_4

    not-int v0, v2

    return v0

    .line 3134
    :cond_4
    invoke-static {v13, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 3135
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 3138
    :cond_5
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_2

    .line 3140
    :cond_6
    :goto_3
    invoke-virtual {v7, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    const/16 v0, 0x1a

    const/16 v17, 0x0

    const/4 v1, 0x4

    const/4 v15, 0x2

    if-eq v11, v1, :cond_a

    const/16 v1, 0xf

    if-eq v11, v1, :cond_a

    if-ne v11, v15, :cond_7

    if-le v14, v15, :cond_a

    :cond_7
    if-eq v11, v0, :cond_a

    const/16 v1, 0x13

    if-eq v11, v1, :cond_a

    const/16 v1, 0x19

    if-eq v11, v1, :cond_a

    if-eq v11, v3, :cond_a

    const/16 v1, 0x12

    if-eq v11, v1, :cond_a

    const/16 v1, 0x1e

    if-eq v11, v1, :cond_a

    if-nez v11, :cond_8

    if-nez v16, :cond_a

    :cond_8
    const/16 v1, 0x1b

    if-eq v11, v1, :cond_a

    const/16 v1, 0x1c

    if-eq v11, v1, :cond_a

    const/16 v1, 0x8

    if-ne v11, v1, :cond_9

    goto :goto_4

    :cond_9
    move v15, v2

    move v9, v3

    move/from16 v19, v4

    move-object/from16 v20, v17

    goto/16 :goto_8

    :cond_a
    :goto_4
    if-eqz v9, :cond_e

    if-eq v11, v15, :cond_b

    if-ne v11, v0, :cond_e

    .line 3165
    :cond_b
    invoke-virtual {v9, v13, v7}, Landroid/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3166
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    if-le v15, v2, :cond_d

    const/4 v15, 0x0

    aget-object v1, v0, v15

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_c

    .line 3168
    aget-object v0, v0, v15

    check-cast v0, Ljava/lang/Number;

    const/16 v1, 0x16

    .line 3169
    invoke-virtual {v8, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    move-object v1, v0

    move v0, v3

    goto :goto_6

    :cond_c
    const/16 v1, 0x16

    goto :goto_5

    :cond_d
    const/16 v1, 0x16

    const/4 v15, 0x0

    .line 3171
    :goto_5
    invoke-virtual {v7, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 3172
    invoke-virtual {v8, v1, v15}, Landroid/icu/util/Calendar;->set(II)V

    :cond_e
    move-object/from16 v1, v17

    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_11

    if-eqz p5, :cond_10

    add-int v0, v2, v14

    .line 3178
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_f

    not-int v0, v2

    return v0

    :cond_f
    move-object/from16 v0, p0

    const/4 v15, 0x4

    move-object/from16 v1, p1

    move v15, v2

    move/from16 v2, p4

    move v9, v3

    move-object v3, v7

    move/from16 v19, v4

    move/from16 v4, p6

    move-object/from16 v20, v5

    .line 3181
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_7

    :cond_10
    move v15, v2

    move v9, v3

    move/from16 v19, v4

    .line 3183
    invoke-direct {v12, v13, v7, v6, v5}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    :goto_7
    if-nez v0, :cond_12

    .line 3185
    invoke-direct {v12, v11}, Landroid/icu/text/SimpleDateFormat;->allowNumericFallback(I)Z

    move-result v1

    if-nez v1, :cond_12

    not-int v0, v15

    return v0

    :cond_11
    move v15, v2

    move v9, v3

    move/from16 v19, v4

    move-object v0, v1

    :cond_12
    if-eqz v0, :cond_13

    .line 3192
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object/from16 v20, v0

    move v4, v1

    goto :goto_9

    :cond_13
    move-object/from16 v20, v0

    :goto_8
    const/4 v4, 0x0

    :goto_9
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x3

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    move/from16 v4, v19

    if-eqz p5, :cond_88

    add-int v2, v15, v14

    .line 3701
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_87

    neg-int v0, v15

    return v0

    .line 3607
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3608
    iget-object v1, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3611
    iget-object v1, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3612
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3616
    :cond_14
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_PARTIAL_LITERAL_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    .line 3617
    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "."

    .line 3618
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    const/4 v1, -0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 3621
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move/from16 p5, v1

    move-object/from16 p6, v0

    move-object/from16 p7, p8

    invoke-virtual/range {p2 .. p7}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    return v0

    .line 3659
    :pswitch_2
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_17

    if-ne v14, v1, :cond_16

    goto :goto_a

    :cond_16
    const/4 v0, 0x0

    goto :goto_b

    .line 3660
    :cond_17
    :goto_a
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v1, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    array-length v1, v1

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move/from16 p7, v15

    move-object/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p10, p11

    invoke-direct/range {p5 .. p10}, Landroid/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_18

    return v0

    .line 3666
    :cond_18
    :goto_b
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x4

    if-ne v14, v1, :cond_1a

    .line 3667
    :cond_19
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iget-object v1, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    array-length v1, v1

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move/from16 p7, v15

    move-object/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p10, p11

    invoke-direct/range {p5 .. p10}, Landroid/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_1a

    return v0

    .line 3673
    :cond_1a
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x4

    if-ne v14, v1, :cond_1c

    .line 3674
    :cond_1b
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iget-object v1, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    array-length v1, v1

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move-object/from16 p5, v0

    move/from16 p6, v1

    move-object/from16 p7, p11

    invoke-direct/range {p2 .. p7}, Landroid/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_1c

    :cond_1c
    return v0

    :pswitch_3
    const/16 v3, 0x61

    move-object/from16 v0, p0

    move v11, v1

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move v13, v11

    move-object/from16 v11, p11

    .line 3626
    invoke-direct/range {v0 .. v11}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;Landroid/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_1d

    return v0

    .line 3633
    :cond_1d
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-ne v14, v13, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    goto :goto_d

    .line 3634
    :cond_1f
    :goto_c
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    const/4 v1, 0x2

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move/from16 p7, v15

    move-object/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p10, p11

    invoke-direct/range {p5 .. p10}, Landroid/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_20

    return v0

    .line 3639
    :cond_20
    :goto_d
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, 0x4

    if-ne v14, v1, :cond_22

    .line 3640
    :cond_21
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    const/4 v1, 0x2

    move-object/from16 p5, p0

    move-object/from16 p6, p1

    move/from16 p7, v15

    move-object/from16 p8, v0

    move/from16 p9, v1

    move-object/from16 p10, p11

    invoke-direct/range {p5 .. p10}, Landroid/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_22

    return v0

    .line 3645
    :cond_22
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x4

    if-ne v14, v1, :cond_24

    .line 3646
    :cond_23
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    const/4 v1, 0x2

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move-object/from16 p5, v0

    move/from16 p6, v1

    move-object/from16 p7, p11

    invoke-direct/range {p2 .. p7}, Landroid/icu/text/SimpleDateFormat;->matchDayPeriodString(Ljava/lang/String;I[Ljava/lang/String;ILandroid/icu/util/Output;)I

    move-result v0

    if-lez v0, :cond_24

    :cond_24
    return v0

    :pswitch_4
    move v13, v1

    if-eq v14, v9, :cond_28

    const/4 v0, 0x2

    if-eq v14, v0, :cond_27

    if-eq v14, v13, :cond_26

    const/4 v0, 0x4

    if-eq v14, v0, :cond_25

    .line 3541
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_e

    .line 3538
    :cond_25
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_e

    .line 3535
    :cond_26
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_e

    .line 3532
    :cond_27
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_e

    .line 3529
    :cond_28
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3544
    :goto_e
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    move-object/from16 v13, p1

    invoke-virtual {v1, v0, v13, v7, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 3546
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3547
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_29
    not-int v0, v15

    return v0

    :pswitch_5
    move v11, v1

    if-eq v14, v9, :cond_2d

    const/4 v0, 0x2

    if-eq v14, v0, :cond_2c

    if-eq v14, v11, :cond_2b

    const/4 v0, 0x4

    if-eq v14, v0, :cond_2a

    .line 3514
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_f

    .line 3511
    :cond_2a
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_f

    .line 3508
    :cond_2b
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_f

    .line 3505
    :cond_2c
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_f

    .line 3502
    :cond_2d
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3517
    :goto_f
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 3519
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3520
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_2e
    not-int v0, v15

    return v0

    :pswitch_6
    const/4 v0, 0x4

    if-ge v14, v0, :cond_2f

    .line 3489
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_10

    :cond_2f
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3490
    :goto_10
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 3492
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3493
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_30
    not-int v0, v15

    return v0

    .line 3259
    :pswitch_7
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v0, :cond_31

    const/4 v3, 0x1

    .line 3260
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v10, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_32

    return v0

    :cond_31
    move v10, v4

    :cond_32
    if-eqz v20, :cond_34

    .line 3265
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    array-length v0, v0

    if-le v10, v0, :cond_34

    .line 3266
    :cond_33
    invoke-virtual {v8, v9, v10}, Landroid/icu/util/Calendar;->set(II)V

    .line 3267
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_34
    not-int v0, v15

    return v0

    :pswitch_8
    move v11, v1

    if-eq v14, v9, :cond_37

    const/4 v0, 0x2

    if-eq v14, v0, :cond_36

    if-eq v14, v11, :cond_35

    .line 3477
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_11

    .line 3474
    :cond_35
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_11

    .line 3471
    :cond_36
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_11

    .line 3468
    :cond_37
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3480
    :goto_11
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 3482
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3483
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_38
    not-int v0, v15

    return v0

    :pswitch_9
    move v11, v1

    move v10, v4

    const/4 v0, 0x2

    if-le v14, v0, :cond_3f

    if-eqz v20, :cond_39

    .line 3578
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_15

    .line 3590
    :cond_39
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x4

    if-ne v14, v0, :cond_3a

    goto :goto_12

    :cond_3a
    const/4 v0, 0x0

    goto :goto_13

    :cond_3b
    :goto_12
    const/4 v3, 0x2

    .line 3591
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_3c

    return v0

    .line 3596
    :cond_3c
    :goto_13
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_3e

    if-ne v14, v11, :cond_3d

    goto :goto_14

    :cond_3d
    return v0

    :cond_3e
    :goto_14
    const/4 v0, 0x2

    .line 3597
    iget-object v1, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p7, p8

    invoke-virtual/range {p2 .. p7}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    return v0

    :cond_3f
    :goto_15
    add-int/lit8 v4, v10, -0x1

    mul-int/2addr v4, v11

    const/4 v0, 0x2

    .line 3583
    invoke-virtual {v8, v0, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 3584
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_a
    move v11, v1

    move v10, v4

    const/4 v0, 0x2

    if-le v14, v0, :cond_46

    if-eqz v20, :cond_40

    .line 3552
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_19

    .line 3564
    :cond_40
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x4

    if-ne v14, v0, :cond_41

    goto :goto_16

    :cond_41
    const/4 v0, 0x0

    goto :goto_17

    :cond_42
    :goto_16
    const/4 v3, 0x2

    .line 3565
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_43

    return v0

    .line 3570
    :cond_43
    :goto_17
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_45

    if-ne v14, v11, :cond_44

    goto :goto_18

    :cond_44
    return v0

    :cond_45
    :goto_18
    const/4 v0, 0x2

    .line 3571
    iget-object v1, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v15

    move/from16 p5, v0

    move-object/from16 p6, v1

    move-object/from16 p7, p8

    invoke-virtual/range {p2 .. p7}, Landroid/icu/text/SimpleDateFormat;->matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    return v0

    :cond_46
    :goto_19
    add-int/lit8 v4, v10, -0x1

    mul-int/2addr v4, v11

    const/4 v0, 0x2

    .line 3557
    invoke-virtual {v8, v0, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 3558
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_b
    move v11, v1

    move v10, v4

    if-eq v14, v9, :cond_4f

    if-eqz v20, :cond_47

    .line 3381
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto/16 :goto_1c

    .line 3388
    :cond_47
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_49

    const/4 v0, 0x4

    if-ne v14, v0, :cond_48

    goto :goto_1a

    :cond_48
    move v9, v3

    const/4 v0, 0x0

    goto :goto_1b

    :cond_49
    :goto_1a
    const/4 v4, 0x7

    .line 3389
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v9, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_4a

    return v0

    .line 3393
    :cond_4a
    :goto_1b
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_4b

    if-ne v14, v11, :cond_4c

    :cond_4b
    const/4 v3, 0x7

    .line 3394
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_4c

    return v0

    .line 3398
    :cond_4c
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_4d

    if-ne v14, v9, :cond_4e

    .line 3399
    :cond_4d
    iget-object v1, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_4e

    const/4 v3, 0x7

    .line 3400
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    :cond_4e
    return v0

    :cond_4f
    :goto_1c
    move/from16 v4, v19

    .line 3383
    invoke-virtual {v8, v4, v10}, Landroid/icu/util/Calendar;->set(II)V

    .line 3384
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_c
    const/4 v0, 0x4

    if-ge v14, v0, :cond_50

    .line 3455
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_1d

    :cond_50
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3456
    :goto_1d
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 3458
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3459
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_51
    not-int v0, v15

    return v0

    :pswitch_d
    const/4 v0, 0x4

    if-ge v14, v0, :cond_52

    .line 3444
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_1e

    :cond_52
    if-ne v14, v2, :cond_53

    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_1e

    :cond_53
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3445
    :goto_1e
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 3447
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3448
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_54
    not-int v0, v15

    return v0

    :pswitch_e
    move v11, v1

    move v9, v3

    move v10, v4

    move/from16 v4, v19

    const/4 v0, 0x2

    if-le v14, v0, :cond_56

    if-eqz v20, :cond_55

    .line 3344
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_1f

    :cond_55
    move v7, v2

    goto/16 :goto_23

    .line 3346
    :cond_56
    :goto_1f
    invoke-virtual {v8, v4, v10}, Landroid/icu/util/Calendar;->set(II)V

    .line 3347
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_f
    const/4 v0, 0x4

    if-ge v14, v0, :cond_57

    .line 3434
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    goto :goto_20

    :cond_57
    sget-object v0, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    .line 3435
    :goto_20
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    invoke-virtual {v1, v0, v13, v7, v10}, Landroid/icu/text/TimeZoneFormat;->parse(Landroid/icu/text/TimeZoneFormat$Style;Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/util/Output;)Landroid/icu/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 3437
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 3438
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_58
    not-int v0, v15

    return v0

    :pswitch_10
    move v10, v4

    const/16 v0, 0xa

    .line 3427
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v1

    add-int/2addr v1, v9

    if-ne v10, v1, :cond_59

    const/4 v10, 0x0

    .line 3430
    :cond_59
    invoke-virtual {v8, v0, v10}, Landroid/icu/util/Calendar;->set(II)V

    .line 3431
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    .line 3411
    :pswitch_11
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-eqz v0, :cond_5b

    if-lt v14, v2, :cond_5b

    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_21

    :cond_5a
    move v7, v2

    goto :goto_22

    :cond_5b
    :goto_21
    const/16 v3, 0x9

    .line 3412
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v7, v2

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_5c

    return v0

    .line 3417
    :cond_5c
    :goto_22
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-eqz v0, :cond_5e

    if-ge v14, v7, :cond_5d

    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_5d
    const/16 v3, 0x9

    .line 3418
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_5e

    return v0

    :cond_5e
    not-int v0, v15

    return v0

    :pswitch_12
    move v11, v1

    move v7, v2

    move v9, v3

    .line 3354
    :goto_23
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_60

    const/4 v0, 0x4

    if-ne v14, v0, :cond_5f

    goto :goto_24

    :cond_5f
    const/4 v0, 0x0

    goto :goto_25

    :cond_60
    :goto_24
    const/4 v3, 0x7

    .line 3355
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_61

    return v0

    .line 3359
    :cond_61
    :goto_25
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_62

    if-ne v14, v11, :cond_63

    :cond_62
    const/4 v3, 0x7

    .line 3360
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_63

    return v0

    .line 3364
    :cond_63
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_64

    if-ne v14, v9, :cond_65

    .line 3365
    :cond_64
    iget-object v1, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_65

    const/4 v3, 0x7

    .line 3366
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_65

    return v0

    .line 3371
    :cond_65
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_66

    if-ne v14, v7, :cond_67

    .line 3372
    :cond_66
    iget-object v1, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_67

    const/4 v3, 0x7

    .line 3373
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_67

    :cond_67
    return v0

    :pswitch_13
    move v11, v1

    move v10, v4

    .line 3327
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-static {v13, v15, v0}, Landroid/icu/text/SimpleDateFormat;->countDigits(Ljava/lang/String;II)I

    move-result v0

    if-ge v0, v11, :cond_68

    :goto_26
    if-ge v0, v11, :cond_6a

    mul-int/lit8 v10, v10, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_68
    :goto_27
    if-le v0, v11, :cond_69

    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 3339
    :cond_69
    div-int/2addr v10, v9

    :cond_6a
    const/16 v0, 0xe

    .line 3341
    invoke-virtual {v8, v0, v10}, Landroid/icu/util/Calendar;->set(II)V

    .line 3342
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_14
    move v10, v4

    const/16 v0, 0xb

    .line 3320
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    add-int/2addr v1, v9

    if-ne v10, v1, :cond_6b

    const/4 v10, 0x0

    .line 3323
    :cond_6b
    invoke-virtual {v8, v0, v10}, Landroid/icu/util/Calendar;->set(II)V

    .line 3324
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_15
    move v6, v1

    move v0, v3

    move v10, v4

    const/4 v1, 0x2

    if-le v14, v1, :cond_79

    if-eqz v20, :cond_6c

    .line 3272
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_NUMERIC:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-eqz v1, :cond_6c

    goto/16 :goto_32

    .line 3295
    :cond_6c
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_6d

    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_6d

    move v7, v9

    goto :goto_28

    :cond_6d
    const/4 v7, 0x0

    .line 3298
    :goto_28
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-nez v0, :cond_6f

    const/4 v0, 0x4

    if-ne v14, v0, :cond_6e

    goto :goto_29

    :cond_6e
    move v10, v6

    const/4 v0, 0x0

    goto :goto_2d

    :cond_6f
    :goto_29
    const/4 v0, 0x2

    if-ne v11, v0, :cond_71

    const/4 v3, 0x2

    .line 3300
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    if-eqz v7, :cond_70

    .line 3301
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v5, v0

    goto :goto_2a

    :cond_70
    move-object/from16 v5, v17

    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v10, v6

    move-object/from16 v6, p8

    .line 3300
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    goto :goto_2c

    :cond_71
    move v10, v6

    const/4 v3, 0x2

    .line 3302
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    if-eqz v7, :cond_72

    .line 3303
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v0, v0, v10

    move-object v5, v0

    goto :goto_2b

    :cond_72
    move-object/from16 v5, v17

    :goto_2b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    .line 3302
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    :goto_2c
    if-lez v0, :cond_73

    return v0

    .line 3309
    :cond_73
    :goto_2d
    sget-object v1, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_MULTIPLE_PATTERNS_FOR_MATCH:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v1}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v1

    if-nez v1, :cond_75

    if-ne v14, v10, :cond_74

    goto :goto_2e

    :cond_74
    return v0

    :cond_75
    :goto_2e
    const/4 v0, 0x2

    if-ne v11, v0, :cond_77

    const/4 v3, 0x2

    .line 3311
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    if-eqz v7, :cond_76

    .line 3312
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v0, v0, v9

    move-object v5, v0

    goto :goto_2f

    :cond_76
    move-object/from16 v5, v17

    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    .line 3311
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    goto :goto_31

    :cond_77
    const/4 v3, 0x2

    .line 3313
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    if-eqz v7, :cond_78

    .line 3314
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    move-object v5, v0

    goto :goto_30

    :cond_78
    move-object/from16 v5, v17

    :goto_30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    .line 3313
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    :goto_31
    return v0

    :cond_79
    :goto_32
    add-int/lit8 v4, v10, -0x1

    const/4 v1, 0x2

    .line 3277
    invoke-virtual {v8, v1, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 3282
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hebrew"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    if-lt v10, v0, :cond_7b

    .line 3283
    invoke-virtual {v8, v9}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 3284
    invoke-virtual {v8, v9}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 3285
    invoke-virtual {v8, v1, v10}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_33

    .line 3288
    :cond_7a
    sput-boolean v9, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    .line 3291
    :cond_7b
    :goto_33
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_16
    move v10, v4

    move/from16 v4, v19

    .line 3232
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v0, :cond_7d

    const-string v1, "hebr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7c

    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string/jumbo v1, "y=hebr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7d

    :cond_7c
    const/16 v0, 0x3e8

    if-ge v10, v0, :cond_7d

    add-int/lit16 v0, v10, 0x1388

    goto :goto_36

    :cond_7d
    const/4 v0, 0x2

    if-ne v14, v0, :cond_80

    .line 3234
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-static {v13, v15, v1}, Landroid/icu/text/SimpleDateFormat;->countDigits(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_80

    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->haveDefaultCentury()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 3243
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v0

    const/16 v15, 0x64

    rem-int/2addr v0, v15

    if-ne v10, v0, :cond_7e

    move/from16 v18, v9

    const/4 v1, 0x0

    goto :goto_34

    :cond_7e
    const/4 v1, 0x0

    const/16 v18, 0x0

    .line 3244
    :goto_34
    aput-boolean v18, p7, v1

    .line 3245
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v1

    div-int/2addr v1, v15

    mul-int/2addr v1, v15

    if-ge v10, v0, :cond_7f

    goto :goto_35

    :cond_7f
    const/4 v15, 0x0

    :goto_35
    add-int/2addr v1, v15

    add-int v0, v10, v1

    goto :goto_36

    :cond_80
    move v0, v10

    .line 3248
    :goto_36
    invoke-virtual {v8, v4, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 3251
    sget-boolean v1, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    if-eqz v1, :cond_82

    .line 3252
    invoke-static {v0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_81

    const/4 v0, 0x2

    .line 3253
    invoke-virtual {v8, v0, v9}, Landroid/icu/util/Calendar;->add(II)V

    :cond_81
    const/4 v0, 0x0

    .line 3255
    sput-boolean v0, Landroid/icu/text/SimpleDateFormat;->DelayedHebrewMonthCheck:Z

    .line 3257
    :cond_82
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :pswitch_17
    move v1, v2

    move v10, v4

    const/4 v0, 0x0

    if-eqz v16, :cond_83

    .line 3202
    invoke-virtual {v8, v0, v10}, Landroid/icu/util/Calendar;->set(II)V

    .line 3203
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_83
    if-ne v14, v1, :cond_84

    const/4 v3, 0x0

    .line 3207
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    goto :goto_37

    :cond_84
    const/4 v0, 0x4

    if-ne v14, v0, :cond_85

    const/4 v3, 0x0

    .line 3209
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    goto :goto_37

    :cond_85
    const/4 v3, 0x0

    .line 3211
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v4, v0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result v0

    :goto_37
    not-int v1, v15

    if-ne v0, v1, :cond_86

    const/16 v0, -0x7d00

    :cond_86
    return v0

    :cond_87
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object v3, v7

    move v9, v4

    move/from16 v4, p6

    .line 3702
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;ILjava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_38

    :cond_88
    move v9, v4

    .line 3704
    invoke-direct {v12, v13, v7, v6, v5}, Landroid/icu/text/SimpleDateFormat;->parseInt(Ljava/lang/String;Ljava/text/ParsePosition;ZLandroid/icu/text/NumberFormat;)Ljava/lang/Number;

    move-result-object v0

    :goto_38
    if-eqz v0, :cond_8a

    const/16 v1, 0x22

    if-eq v11, v1, :cond_89

    .line 3708
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v8, v9, v0}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_39

    .line 3710
    :cond_89
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->setRelatedYear(I)V

    .line 3712
    :goto_39
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    return v0

    :cond_8a
    not-int v0, v15

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_16
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 3819
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3821
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 3822
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-eqz v2, :cond_0

    if-ne v3, v4, :cond_2

    move v2, v0

    goto :goto_1

    :cond_0
    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 3829
    :cond_1
    invoke-static {v3}, Landroid/icu/text/SimpleDateFormat;->isSyntaxChar(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3830
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 3832
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3838
    :cond_2
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 3843
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3841
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unfinished quote in pattern"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private tzFormat()Landroid/icu/text/TimeZoneFormat;
    .locals 1

    .line 1182
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1183
    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 1185
    :cond_0
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3986
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 3989
    iget-wide v0, p0, Landroid/icu/text/SimpleDateFormat;->defaultCenturyBase:J

    invoke-direct {p0, v0, v1}, Landroid/icu/text/SimpleDateFormat;->initializeDefaultCenturyStart(J)V

    :cond_0
    const/4 v0, 0x0

    .line 3991
    invoke-direct {p0, v0}, Landroid/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 3992
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3993
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/DisplayContext;->value()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 2

    .line 3885
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    const-string v1, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3888
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/SimpleDateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 0

    .line 3873
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 3874
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->parsePattern()V

    const/4 p1, 0x0

    .line 3876
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/SimpleDateFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 3878
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->patternItems:[Ljava/lang/Object;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 3948
    invoke-super {p0}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/SimpleDateFormat;

    .line 3949
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormatSymbols;

    iput-object v1, v0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    .line 3952
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    new-array p0, p0, [C

    .line 3953
    iput-object p0, v0, Landroid/icu/text/SimpleDateFormat;->decimalBuf:[C

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 3975
    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3976
    :cond_0
    check-cast p1, Landroid/icu/text/SimpleDateFormat;

    .line 3977
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object p1, p1, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    .line 3978
    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    .line 1328
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1332
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1333
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 1334
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 1335
    iget-object p1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, p1

    .line 1337
    sget-object p1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, p1}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 1340
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_1
    return-object p1
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 10

    .line 4053
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    .line 4054
    instance-of v1, p1, Landroid/icu/util/Calendar;

    if-eqz v1, :cond_0

    .line 4055
    move-object v0, p1

    check-cast v0, Landroid/icu/util/Calendar;

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 4056
    :cond_0
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 4057
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v1, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 4058
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 4059
    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    .line 4063
    :goto_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4064
    new-instance v8, Ljava/text/FieldPosition;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Ljava/text/FieldPosition;-><init>(I)V

    .line 4065
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4066
    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {p0, v2}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v6

    move-object v4, p0

    move-object v7, p1

    move-object v9, v1

    invoke-direct/range {v4 .. v9}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/text/DisplayContext;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 4068
    new-instance p0, Ljava/text/AttributedString;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 4071
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 4072
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/FieldPosition;

    .line 4073
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    .line 4074
    invoke-virtual {p1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p1

    invoke-virtual {p0, v2, v2, v3, p1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4077
    :cond_2
    invoke-virtual {p0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0

    .line 4061
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot format given Object as a Date"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 0

    .line 1291
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getDateFormatSymbols()Landroid/icu/text/DateFormatSymbols;
    .locals 0

    .line 3898
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DateFormatSymbols;

    return-object p0
.end method

.method getLocale()Landroid/icu/util/ULocale;
    .locals 0

    .line 4088
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public getNumberFormat(C)Landroid/icu/text/NumberFormat;
    .locals 1

    .line 4446
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    .line 4447
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4448
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4449
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/NumberFormat;

    return-object p0

    .line 4452
    :cond_0
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    return-object p0
.end method

.method protected getSymbols()Landroid/icu/text/DateFormatSymbols;
    .locals 0

    .line 3914
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    return-object p0
.end method

.method public getTimeZoneFormat()Landroid/icu/text/TimeZoneFormat;
    .locals 0

    .line 3925
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 3965
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final intervalFormatByAlgorithm(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    .line 4184
    invoke-virtual/range {p1 .. p2}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4188
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v14

    const/4 v1, 0x0

    move v2, v1

    .line 4195
    :goto_0
    :try_start_0
    array-length v3, v14

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    .line 4196
    invoke-direct {v0, v10, v11, v14, v2}, Landroid/icu/text/SimpleDateFormat;->diffCalFieldValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;[Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_1
    if-ne v2, v4, :cond_2

    .line 4204
    invoke-virtual {v0, v10, v12, v13}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    .line 4208
    :cond_2
    array-length v3, v14

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-lt v3, v2, :cond_4

    .line 4209
    invoke-direct {v0, v10, v11, v14, v3}, Landroid/icu/text/SimpleDateFormat;->diffCalFieldValue(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;[Ljava/lang/Object;I)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_3
    const-string v15, " \u2013 "

    if-nez v2, :cond_5

    .line 4219
    array-length v5, v14

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_5

    .line 4220
    invoke-virtual {v0, v10, v12, v13}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 4221
    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4222
    invoke-virtual {v0, v11, v12, v13}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    return-object v12

    :cond_5
    const/16 v5, 0x3e8

    move v6, v5

    move v5, v2

    :goto_4
    if-gt v5, v3, :cond_9

    .line 4230
    aget-object v7, v14, v5

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_6

    goto :goto_5

    .line 4233
    :cond_6
    aget-object v7, v14, v5

    check-cast v7, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 4234
    iget-char v7, v7, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    .line 4235
    invoke-static {v7}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v8

    if-eq v8, v4, :cond_8

    if-ge v8, v6, :cond_7

    move v6, v8

    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 4237
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move v4, v1

    :goto_6
    if-ge v4, v2, :cond_b

    .line 4252
    :try_start_1
    invoke-direct {v0, v14, v4, v6}, Landroid/icu/text/SimpleDateFormat;->lowerLevel([Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_a

    move/from16 v16, v4

    goto :goto_7

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    move/from16 v16, v2

    .line 4259
    :goto_7
    array-length v2, v14

    add-int/lit8 v2, v2, -0x1

    :goto_8
    if-le v2, v3, :cond_d

    .line 4260
    invoke-direct {v0, v14, v2, v6}, Landroid/icu/text/SimpleDateFormat;->lowerLevel([Ljava/lang/Object;II)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v4, :cond_c

    move v9, v2

    goto :goto_9

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_d
    move v9, v3

    :goto_9
    if-nez v16, :cond_e

    .line 4271
    array-length v2, v14

    add-int/lit8 v2, v2, -0x1

    if-ne v9, v2, :cond_e

    .line 4272
    invoke-virtual {v0, v10, v12, v13}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 4273
    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4274
    invoke-virtual {v0, v11, v12, v13}, Landroid/icu/text/SimpleDateFormat;->format(Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    return-object v12

    .line 4281
    :cond_e
    invoke-virtual {v13, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 4282
    invoke-virtual {v13, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 4283
    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {v0, v2}, Landroid/icu/text/SimpleDateFormat;->getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;

    move-result-object v17

    move v8, v1

    :goto_a
    if-gt v8, v9, :cond_11

    .line 4287
    aget-object v1, v14, v8

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 4288
    aget-object v1, v14, v8

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v18, v8

    move/from16 v19, v9

    goto :goto_b

    .line 4290
    :cond_f
    aget-object v1, v14, v8

    check-cast v1, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 4291
    iget-boolean v2, v0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v2, :cond_10

    .line 4292
    iget-char v3, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v4, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v6, v8

    move-object/from16 v7, v17

    move/from16 v18, v8

    move-object/from16 v8, p4

    move/from16 v19, v9

    move-object/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    goto :goto_b

    :cond_10
    move/from16 v18, v8

    move/from16 v19, v9

    .line 4295
    iget-char v2, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v3, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v1, p0

    move/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_b
    add-int/lit8 v8, v18, 0x1

    move/from16 v9, v19

    goto :goto_a

    .line 4301
    :cond_11
    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v10, v16

    .line 4304
    :goto_c
    array-length v1, v14

    if-ge v10, v1, :cond_14

    .line 4305
    aget-object v1, v14, v10

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 4306
    aget-object v1, v14, v10

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 4308
    :cond_12
    aget-object v1, v14, v10

    check-cast v1, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 4309
    iget-boolean v2, v0, Landroid/icu/text/SimpleDateFormat;->useFastFormat:Z

    if-eqz v2, :cond_13

    .line 4310
    iget-char v3, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v4, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move v6, v10

    move-object/from16 v7, v17

    move-object/from16 v8, p4

    move-object/from16 v9, p2

    invoke-virtual/range {v1 .. v9}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    goto :goto_d

    .line 4313
    :cond_13
    iget-char v2, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v3, v1, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move-object/from16 v1, p0

    move v5, v10

    move-object/from16 v6, v17

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_14
    return-object v12

    :catch_0
    move-exception v0

    .line 4266
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 4215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4185
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not format on two different calendars"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isFieldUnitIgnored(I)Z
    .locals 0

    .line 4104
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/icu/text/SimpleDateFormat;->isFieldUnitIgnored(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method protected matchQuarterString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .locals 6

    .line 2984
    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2993
    aget-object v4, p4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 2996
    aget-object v5, p4, v1

    .line 2997
    invoke-direct {p0, p1, p2, v5, v4}, Landroid/icu/text/SimpleDateFormat;->regionMatchesWithOptionalDot(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_0

    move v2, v1

    move v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz v2, :cond_2

    mul-int/lit8 v2, v2, 0x3

    .line 3005
    invoke-virtual {p5, p3, v2}, Landroid/icu/util/Calendar;->set(II)V

    add-int/2addr p2, v3

    return p2

    :cond_2
    neg-int p0, p2

    return p0
.end method

.method protected matchString(Ljava/lang/String;II[Ljava/lang/String;Landroid/icu/util/Calendar;)I
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 2872
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/SimpleDateFormat;->matchString(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Calendar;)I

    move-result p0

    return p0
.end method

.method public parse(Ljava/lang/String;Landroid/icu/util/Calendar;Ljava/text/ParsePosition;)V
    .locals 30

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    .line 2344
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    const/4 v14, 0x0

    move-object/from16 v1, p2

    if-eq v1, v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v12, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2348
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 2349
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 2350
    iget-object v2, v12, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 2352
    iget-object v2, v12, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    move-object v11, v0

    move-object v10, v1

    move-object v15, v2

    goto :goto_0

    :cond_0
    move-object v15, v1

    move-object v10, v14

    move-object v11, v10

    .line 2355
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    const/4 v8, 0x0

    if-gez v9, :cond_1

    .line 2357
    invoke-virtual {v13, v8}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 2365
    :cond_1
    new-instance v7, Landroid/icu/util/Output;

    invoke-direct {v7, v14}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 2367
    new-instance v6, Landroid/icu/util/Output;

    sget-object v0, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    invoke-direct {v6, v0}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x1

    new-array v4, v5, [Z

    aput-boolean v8, v4, v8

    .line 2378
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    .line 2379
    new-instance v0, Landroid/icu/text/MessageFormat;

    iget-object v1, v12, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v2, v12, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    move-object/from16 v16, v0

    goto :goto_1

    :cond_2
    move-object/from16 v16, v14

    .line 2382
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getPatternItems()[Ljava/lang/Object;

    move-result-object v3

    const/4 v2, -0x1

    move v5, v2

    move v1, v8

    move/from16 v17, v1

    move/from16 v18, v17

    move v0, v9

    .line 2384
    :goto_2
    array-length v8, v3

    if-ge v1, v8, :cond_15

    .line 2385
    aget-object v8, v3, v1

    instance-of v8, v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v8, :cond_12

    .line 2387
    aget-object v8, v3, v1

    check-cast v8, Landroid/icu/text/SimpleDateFormat$PatternItem;

    .line 2388
    iget-boolean v14, v8, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-eqz v14, :cond_3

    if-ne v5, v2, :cond_3

    add-int/lit8 v14, v1, 0x1

    .line 2398
    array-length v2, v3

    if-ge v14, v2, :cond_3

    aget-object v2, v3, v14

    instance-of v2, v2, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v2, :cond_3

    aget-object v2, v3, v14

    check-cast v2, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v2, v2, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-eqz v2, :cond_3

    .line 2403
    iget v2, v8, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    move/from16 v18, v0

    move v14, v1

    move/from16 v17, v2

    goto :goto_3

    :cond_3
    move v14, v5

    :goto_3
    const/4 v2, -0x1

    if-eq v14, v2, :cond_8

    .line 2410
    iget v5, v8, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    if-ne v14, v1, :cond_4

    move/from16 v5, v17

    .line 2416
    :cond_4
    iget-char v8, v8, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v24, v1

    move-object/from16 v1, p1

    move/from16 v25, v2

    move/from16 v2, v23

    move-object/from16 v26, v3

    move v3, v8

    move-object/from16 v27, v4

    move v4, v5

    const/4 v8, 0x1

    move/from16 v5, v21

    move-object/from16 p2, v6

    move/from16 v6, v22

    move-object/from16 v21, v7

    move-object/from16 v7, v27

    move-object v8, v15

    move/from16 v28, v9

    move-object/from16 v9, v16

    move/from16 v19, v14

    move-object v14, v10

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I

    move-result v0

    if-gez v0, :cond_7

    add-int/lit8 v17, v17, -0x1

    if-nez v17, :cond_6

    move/from16 v10, v28

    .line 2426
    invoke-virtual {v13, v10}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2427
    invoke-virtual {v13, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v11, :cond_5

    .line 2429
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_5
    return-void

    :cond_6
    move-object/from16 v6, p2

    move-object v10, v14

    move/from16 v0, v18

    move/from16 v1, v19

    move v5, v1

    move-object/from16 v7, v21

    move/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    move/from16 v9, v28

    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_7
    move-object/from16 v22, v14

    move/from16 v1, v24

    move-object/from16 v6, v26

    move/from16 v7, v28

    move-object v14, v11

    goto/16 :goto_7

    :cond_8
    move/from16 v23, v0

    move/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 p2, v6

    move-object/from16 v21, v7

    move/from16 v19, v14

    move-object v14, v10

    move v10, v9

    .line 2438
    iget-char v0, v8, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_11

    .line 2443
    iget-char v3, v8, Landroid/icu/text/SimpleDateFormat$PatternItem;->type:C

    iget v4, v8, Landroid/icu/text/SimpleDateFormat$PatternItem;->length:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move-object/from16 v7, v27

    move-object v8, v15

    move-object/from16 v9, v16

    move/from16 v29, v10

    move-object/from16 v10, p2

    move-object/from16 v22, v14

    move-object v14, v11

    move-object/from16 v11, v21

    invoke-direct/range {v0 .. v11}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;Landroid/icu/util/Output;)I

    move-result v0

    if-gez v0, :cond_10

    const/16 v1, -0x7d00

    if-ne v0, v1, :cond_e

    add-int/lit8 v1, v24, 0x1

    move-object/from16 v6, v26

    .line 2451
    array-length v0, v6

    if-ge v1, v0, :cond_d

    .line 2456
    :try_start_0
    aget-object v0, v6, v1

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_9

    .line 2468
    aget-object v0, v6, v1

    check-cast v0, Ljava/lang/String;

    .line 2469
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_a

    .line 2476
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2477
    invoke-static {v4}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v4

    if-eqz v4, :cond_a

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    if-ne v3, v2, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v1, v24

    :goto_5
    move/from16 v0, v23

    move/from16 v19, v25

    move/from16 v7, v29

    goto :goto_7

    :catch_0
    move/from16 v7, v29

    .line 2458
    invoke-virtual {v13, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    move/from16 v9, v23

    .line 2459
    invoke-virtual {v13, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v14, :cond_c

    .line 2461
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v14}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_c
    return-void

    :cond_d
    move/from16 v9, v23

    move/from16 v7, v29

    move v0, v9

    goto :goto_6

    :cond_e
    move/from16 v9, v23

    move/from16 v7, v29

    .line 2490
    invoke-virtual {v13, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2491
    invoke-virtual {v13, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v14, :cond_f

    .line 2493
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v14}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_f
    return-void

    :cond_10
    move-object/from16 v6, v26

    move/from16 v7, v29

    :goto_6
    move/from16 v1, v24

    move/from16 v19, v25

    goto :goto_7

    :cond_11
    move v7, v10

    move-object/from16 v22, v14

    move/from16 v9, v23

    move-object/from16 v6, v26

    move-object v14, v11

    move v0, v9

    move/from16 v1, v24

    :goto_7
    move/from16 v24, v1

    move/from16 v5, v19

    const/4 v1, 0x0

    const/4 v8, 0x1

    goto :goto_8

    :cond_12
    move/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v27, v4

    move-object/from16 p2, v6

    move-object/from16 v21, v7

    move v7, v9

    move-object/from16 v22, v10

    move-object v14, v11

    const/4 v8, 0x1

    move v9, v0

    move-object v6, v3

    new-array v10, v8, [Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move/from16 v4, v24

    move-object v5, v10

    .line 2504
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->matchLiteral(Ljava/lang/String;I[Ljava/lang/Object;I[Z)I

    move-result v0

    const/4 v1, 0x0

    .line 2505
    aget-boolean v2, v10, v1

    if-nez v2, :cond_14

    .line 2507
    invoke-virtual {v13, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2508
    invoke-virtual {v13, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    if-eqz v14, :cond_13

    .line 2510
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v14}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_13
    return-void

    :cond_14
    move/from16 v5, v25

    :goto_8
    add-int/lit8 v2, v24, 0x1

    move v1, v2

    move-object v3, v6

    move v9, v7

    move-object v11, v14

    move-object/from16 v7, v21

    move-object/from16 v10, v22

    move/from16 v2, v25

    move-object/from16 v4, v27

    const/4 v14, 0x0

    move-object/from16 v6, p2

    goto/16 :goto_2

    :cond_15
    move-object/from16 v27, v4

    move-object/from16 p2, v6

    move-object/from16 v21, v7

    move v7, v9

    move-object/from16 v22, v10

    move-object v14, v11

    const/4 v1, 0x0

    const/4 v8, 0x1

    move v9, v0

    move-object v6, v3

    .line 2519
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v9, v0, :cond_16

    move-object/from16 v0, p1

    .line 2520
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_16

    .line 2521
    sget-object v0, Landroid/icu/text/DateFormat$BooleanAttribute;->PARSE_ALLOW_WHITESPACE:Landroid/icu/text/DateFormat$BooleanAttribute;

    invoke-virtual {v12, v0}, Landroid/icu/text/SimpleDateFormat;->getBooleanAttribute(Landroid/icu/text/DateFormat$BooleanAttribute;)Z

    move-result v0

    if-eqz v0, :cond_16

    array-length v0, v6

    if-eqz v0, :cond_16

    .line 2523
    array-length v0, v6

    sub-int/2addr v0, v8

    aget-object v0, v6, v0

    .line 2524
    instance-of v2, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    if-eqz v2, :cond_16

    check-cast v0, Landroid/icu/text/SimpleDateFormat$PatternItem;

    iget-boolean v0, v0, Landroid/icu/text/SimpleDateFormat$PatternItem;->isNumeric:Z

    if-nez v0, :cond_16

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    :cond_16
    move-object/from16 v0, v21

    .line 2531
    iget-object v2, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1f

    .line 2532
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/DayPeriodRules;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/DayPeriodRules;

    move-result-object v2

    const/16 v3, 0xa

    .line 2534
    invoke-virtual {v15, v3}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v4

    const/16 v5, 0xc

    const/16 v6, 0xb

    if-nez v4, :cond_18

    invoke-virtual {v15, v6}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v4

    if-nez v4, :cond_18

    .line 2537
    iget-object v0, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    invoke-virtual {v2, v0}, Landroid/icu/impl/DayPeriodRules;->getMidPointForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v10, v0

    sub-double/2addr v2, v10

    const-wide/16 v10, 0x0

    cmpl-double v2, v2, v10

    if-lez v2, :cond_17

    const/16 v2, 0x1e

    goto :goto_9

    :cond_17
    move v2, v1

    .line 2545
    :goto_9
    invoke-virtual {v15, v6, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 2546
    invoke-virtual {v15, v5, v2}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_c

    .line 2550
    :cond_18
    invoke-virtual {v15, v6}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 2551
    invoke-virtual {v15, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    goto :goto_a

    .line 2553
    :cond_19
    invoke-virtual {v15, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_1a

    move v3, v5

    :cond_1a
    :goto_a
    if-eqz v3, :cond_1e

    const/16 v4, 0xd

    if-gt v4, v3, :cond_1b

    const/16 v4, 0x17

    if-gt v3, v4, :cond_1b

    goto :goto_b

    :cond_1b
    if-ne v3, v5, :cond_1c

    move v3, v1

    :cond_1c
    int-to-double v3, v3

    .line 2578
    invoke-virtual {v15, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double/2addr v5, v10

    add-double/2addr v3, v5

    .line 2579
    iget-object v0, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;

    invoke-virtual {v2, v0}, Landroid/icu/impl/DayPeriodRules;->getMidPointForDayPeriod(Landroid/icu/impl/DayPeriodRules$DayPeriod;)D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide/high16 v5, -0x3fe8000000000000L    # -6.0

    cmpg-double v0, v5, v3

    const/16 v2, 0x9

    if-gtz v0, :cond_1d

    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1d

    .line 2586
    invoke-virtual {v15, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_c

    .line 2588
    :cond_1d
    invoke-virtual {v15, v2, v8}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_c

    .line 2564
    :cond_1e
    :goto_b
    invoke-virtual {v15, v6, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 2598
    :cond_1f
    :goto_c
    invoke-virtual {v13, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p2

    .line 2623
    :try_start_1
    iget-object v0, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Landroid/icu/text/TimeZoneFormat$TimeType;

    .line 2624
    aget-boolean v2, v27, v1

    if-nez v2, :cond_20

    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-eq v0, v2, :cond_34

    .line 2630
    :cond_20
    aget-boolean v2, v27, v1

    if-eqz v2, :cond_21

    .line 2631
    invoke-virtual {v15}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Calendar;

    .line 2632
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 2633
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStart()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2635
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getDefaultCenturyStartYear()I

    move-result v2

    add-int/lit8 v2, v2, 0x64

    invoke-virtual {v15, v8, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 2638
    :cond_21
    sget-object v2, Landroid/icu/text/TimeZoneFormat$TimeType;->UNKNOWN:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-eq v0, v2, :cond_34

    .line 2639
    invoke-virtual {v15}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Calendar;

    .line 2640
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v3

    .line 2642
    instance-of v4, v3, Landroid/icu/util/BasicTimeZone;

    if-eqz v4, :cond_22

    .line 2643
    move-object v4, v3

    check-cast v4, Landroid/icu/util/BasicTimeZone;

    goto :goto_d

    :cond_22
    const/4 v4, 0x0

    :goto_d
    const/16 v5, 0xf

    .line 2647
    invoke-virtual {v2, v5, v1}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v6, 0x10

    .line 2648
    invoke-virtual {v2, v6, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 2649
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    const/4 v2, 0x2

    new-array v2, v2, [I

    if-eqz v4, :cond_24

    .line 2655
    sget-object v6, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v6, :cond_23

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v16, v4

    move-wide/from16 v17, v10

    move-object/from16 v21, v2

    .line 2656
    invoke-virtual/range {v16 .. v21}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    goto :goto_e

    :cond_23
    const/16 v19, 0x3

    const/16 v20, 0x3

    move-object/from16 v16, v4

    move-wide/from16 v17, v10

    move-object/from16 v21, v2

    .line 2659
    invoke-virtual/range {v16 .. v21}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    goto :goto_e

    .line 2665
    :cond_24
    invoke-virtual {v3, v10, v11, v8, v2}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 2667
    sget-object v6, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v6, :cond_25

    aget v6, v2, v8

    if-nez v6, :cond_26

    :cond_25
    sget-object v6, Landroid/icu/text/TimeZoneFormat$TimeType;->DAYLIGHT:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v6, :cond_27

    aget v6, v2, v8

    if-nez v6, :cond_27

    :cond_26
    const-wide/32 v16, 0x5265c00

    sub-long v5, v10, v16

    .line 2674
    invoke-virtual {v3, v5, v6, v8, v2}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 2680
    :cond_27
    :goto_e
    aget v5, v2, v8

    .line 2681
    sget-object v6, Landroid/icu/text/TimeZoneFormat$TimeType;->STANDARD:Landroid/icu/text/TimeZoneFormat$TimeType;

    if-ne v0, v6, :cond_28

    .line 2682
    aget v0, v2, v8

    if-eqz v0, :cond_32

    move v8, v1

    goto/16 :goto_14

    .line 2687
    :cond_28
    aget v0, v2, v8

    if-nez v0, :cond_32

    if-eqz v4, :cond_30

    .line 2689
    aget v0, v2, v1

    int-to-long v5, v0

    add-long/2addr v10, v5

    move v0, v1

    move-wide v5, v10

    .line 2697
    :cond_29
    invoke-virtual {v4, v5, v6, v8}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v3

    if-nez v3, :cond_2a

    :goto_f
    move v8, v1

    move-wide/from16 v16, v5

    move-wide v5, v10

    goto :goto_10

    .line 2701
    :cond_2a
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    const-wide/16 v16, 0x1

    sub-long v5, v5, v16

    .line 2702
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_f

    .line 2710
    :cond_2b
    :goto_10
    invoke-virtual {v4, v5, v6, v1}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v18

    if-nez v18, :cond_2c

    goto :goto_11

    .line 2714
    :cond_2c
    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    .line 2715
    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v8

    if-eqz v8, :cond_2b

    :goto_11
    if-eqz v3, :cond_2d

    if-eqz v18, :cond_2d

    sub-long v3, v10, v16

    sub-long/2addr v5, v10

    cmp-long v3, v3, v5

    if-lez v3, :cond_31

    goto :goto_12

    :cond_2d
    if-eqz v3, :cond_2e

    if-eqz v0, :cond_2e

    goto :goto_13

    :cond_2e
    if-eqz v18, :cond_2f

    if-eqz v8, :cond_2f

    :goto_12
    move v0, v8

    goto :goto_13

    .line 2732
    :cond_2f
    invoke-virtual {v4}, Landroid/icu/util/BasicTimeZone;->getDSTSavings()I

    move-result v0

    goto :goto_13

    .line 2735
    :cond_30
    invoke-virtual {v3}, Landroid/icu/util/TimeZone;->getDSTSavings()I

    move-result v0

    :cond_31
    :goto_13
    move v8, v0

    if-nez v8, :cond_33

    const v8, 0x36ee80

    goto :goto_14

    :cond_32
    move v8, v5

    .line 2743
    :cond_33
    :goto_14
    aget v0, v2, v1

    const/16 v1, 0xf

    invoke-virtual {v15, v1, v0}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v0, 0x10

    .line 2744
    invoke-virtual {v15, v0, v8}, Landroid/icu/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_34
    if-eqz v22, :cond_35

    .line 2761
    invoke-virtual {v15}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-virtual {v1, v0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 2762
    invoke-virtual {v15}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    :cond_35
    if-eqz v14, :cond_36

    .line 2766
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v14}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_36
    return-void

    .line 2751
    :catch_1
    invoke-virtual {v13, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2752
    invoke-virtual {v13, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz v14, :cond_37

    .line 2754
    iget-object v0, v12, Landroid/icu/text/SimpleDateFormat;->calendar:Landroid/icu/util/Calendar;

    invoke-virtual {v0, v14}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    :cond_37
    return-void
.end method

.method protected patternCharToDateFormatField(C)Landroid/icu/text/DateFormat$Field;
    .locals 0

    .line 1495
    invoke-static {p1}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    .line 1497
    sget-object p1, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 0

    .line 1281
    invoke-direct {p0, p1}, Landroid/icu/text/SimpleDateFormat;->parseAmbiguousDatesAsAfter(Ljava/util/Date;)V

    return-void
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 1

    .line 1304
    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->setContext(Landroid/icu/text/DisplayContext;)V

    .line 1305
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_1

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    if-ne p1, v0, :cond_1

    .line 1308
    :cond_0
    iget-object p1, p0, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    :cond_1
    return-void
.end method

.method public setDateFormatSymbols(Landroid/icu/text/DateFormatSymbols;)V
    .locals 0

    .line 3907
    invoke-virtual {p1}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/DateFormatSymbols;

    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    return-void
.end method

.method public setNumberFormat(Landroid/icu/text/NumberFormat;)V
    .locals 1

    .line 2222
    invoke-super {p0, p1}, Landroid/icu/text/DateFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)V

    .line 2223
    invoke-direct {p0}, Landroid/icu/text/SimpleDateFormat;->initLocalZeroPaddingNumberFormat()V

    const/4 p1, 0x1

    .line 2224
    invoke-direct {p0, p1}, Landroid/icu/text/SimpleDateFormat;->initializeTimeZoneFormat(Z)V

    .line 2226
    iget-object p1, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2227
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 2229
    :cond_0
    iget-object p1, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 2230
    iput-object v0, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public setNumberFormat(Ljava/lang/String;Landroid/icu/text/NumberFormat;)V
    .locals 6

    const/4 v0, 0x0

    .line 4412
    invoke-virtual {p2, v0}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    .line 4413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4416
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 4417
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    .line 4419
    :cond_0
    iget-object v2, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 4420
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    :cond_1
    move v2, v0

    .line 4424
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 4425
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    .line 4426
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 4429
    iget-object v4, p0, Landroid/icu/text/SimpleDateFormat;->overrideMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4430
    iget-object v3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormatters:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4427
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal field character \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\' in setNumberFormat."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4435
    :cond_3
    iput-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    return-void
.end method

.method public setTimeZoneFormat(Landroid/icu/text/TimeZoneFormat;)V
    .locals 1

    .line 3934
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3936
    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    goto :goto_0

    .line 3939
    :cond_0
    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat;->cloneAsThawed()Landroid/icu/text/TimeZoneFormat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/text/TimeZoneFormat;->freeze()Landroid/icu/text/TimeZoneFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/SimpleDateFormat;->tzFormat:Landroid/icu/text/TimeZoneFormat;

    :goto_0
    return-void
.end method

.method protected subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1536
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v0, p0

    move-object v1, v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 1537
    invoke-virtual/range {v0 .. v8}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    .line 1538
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected subFormat(CIILjava/text/FieldPosition;Landroid/icu/text/DateFormatSymbols;Landroid/icu/util/Calendar;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1519
    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/SimpleDateFormat;->subFormat(CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v0, p2

    move/from16 v4, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v8, p8

    .line 1563
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    .line 1564
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 1565
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1568
    invoke-static/range {p2 .. p2}, Landroid/icu/text/SimpleDateFormat;->getIndexFromChar(C)I

    move-result v15

    const/16 v5, 0x22

    const/4 v6, -0x1

    if-ne v15, v6, :cond_1

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_0

    return-void

    .line 1573
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' in \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1579
    :cond_1
    sget-object v7, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_CALENDAR_FIELD:[I

    aget v7, v7, v15

    move-wide/from16 v16, v2

    if-ltz v7, :cond_3

    if-eq v15, v5, :cond_2

    .line 1583
    invoke-virtual {v8, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getRelatedYear()I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 1586
    :goto_0
    invoke-virtual {v9, v0}, Landroid/icu/text/SimpleDateFormat;->getNumberFormat(C)Landroid/icu/text/NumberFormat;

    move-result-object v5

    .line 1587
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->OTHER:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const/16 v0, 0xd

    const/16 v6, 0xc

    const/16 v19, 0x0

    const/4 v7, 0x4

    const/4 v2, 0x3

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    const/4 v6, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 2025
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_24

    .line 2009
    :pswitch_1
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DateFormatSymbols;->getTimeSeparatorString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const/4 v6, 0x1

    const/4 v11, 0x2

    :cond_4
    :goto_2
    const/4 v12, 0x0

    goto/16 :goto_24

    .line 1929
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/DayPeriodRules;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/impl/DayPeriodRules;

    move-result-object v1

    if-nez v1, :cond_5

    const/16 v3, 0x61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v11, v2

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    move v2, v3

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1933
    invoke-virtual/range {v0 .. v8}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    goto :goto_1

    :cond_5
    move v11, v2

    const/16 v2, 0xb

    .line 1938
    invoke-virtual {v8, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 1941
    iget-boolean v3, v9, Landroid/icu/text/SimpleDateFormat;->hasMinute:Z

    if-eqz v3, :cond_6

    invoke-virtual {v8, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    .line 1942
    :goto_3
    iget-boolean v5, v9, Landroid/icu/text/SimpleDateFormat;->hasSecond:Z

    if-eqz v5, :cond_7

    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-nez v2, :cond_8

    if-nez v3, :cond_8

    if-nez v0, :cond_8

    .line 1946
    invoke-virtual {v1}, Landroid/icu/impl/DayPeriodRules;->hasMidnight()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1947
    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_5

    :cond_8
    if-ne v2, v6, :cond_9

    if-nez v3, :cond_9

    if-nez v0, :cond_9

    .line 1948
    invoke-virtual {v1}, Landroid/icu/impl/DayPeriodRules;->hasNoon()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1949
    sget-object v0, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    goto :goto_5

    .line 1951
    :cond_9
    invoke-virtual {v1, v2}, Landroid/icu/impl/DayPeriodRules;->getDayPeriodForHour(I)Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v0

    .line 1963
    :goto_5
    sget-object v3, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v3, :cond_d

    sget-object v3, Landroid/icu/impl/DayPeriodRules$DayPeriod;->PM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v3, :cond_d

    sget-object v3, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v3, :cond_d

    .line 1965
    invoke-virtual {v0}, Landroid/icu/impl/DayPeriodRules$DayPeriod;->ordinal()I

    move-result v3

    if-gt v4, v11, :cond_a

    .line 1967
    iget-object v5, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v19, v5, v3

    goto :goto_7

    :cond_a
    if-eq v4, v7, :cond_c

    const/4 v5, 0x5

    if-le v4, v5, :cond_b

    goto :goto_6

    .line 1971
    :cond_b
    iget-object v5, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v19, v5, v3

    goto :goto_7

    .line 1969
    :cond_c
    :goto_6
    iget-object v5, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v5, v5, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v19, v5, v3

    :cond_d
    :goto_7
    if-nez v19, :cond_12

    .line 1980
    sget-object v3, Landroid/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v3, :cond_e

    sget-object v3, Landroid/icu/impl/DayPeriodRules$DayPeriod;->NOON:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-ne v0, v3, :cond_12

    .line 1983
    :cond_e
    invoke-virtual {v1, v2}, Landroid/icu/impl/DayPeriodRules;->getDayPeriodForHour(I)Landroid/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v0

    .line 1984
    invoke-virtual {v0}, Landroid/icu/impl/DayPeriodRules$DayPeriod;->ordinal()I

    move-result v1

    if-gt v4, v11, :cond_f

    .line 1987
    iget-object v2, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v19, v2, v1

    goto :goto_9

    :cond_f
    if-eq v4, v7, :cond_11

    const/4 v2, 0x5

    if-le v4, v2, :cond_10

    goto :goto_8

    .line 1991
    :cond_10
    iget-object v2, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v19, v2, v1

    goto :goto_9

    .line 1989
    :cond_11
    :goto_8
    iget-object v2, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v19, v2, v1

    :cond_12
    :goto_9
    move-object/from16 v1, v19

    .line 1996
    sget-object v2, Landroid/icu/impl/DayPeriodRules$DayPeriod;->AM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v2, :cond_14

    sget-object v2, Landroid/icu/impl/DayPeriodRules$DayPeriod;->PM:Landroid/icu/impl/DayPeriodRules$DayPeriod;

    if-eq v0, v2, :cond_14

    if-nez v1, :cond_13

    goto :goto_a

    .line 2002
    :cond_13
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_14
    :goto_a
    const/16 v2, 0x61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1999
    invoke-virtual/range {v0 .. v8}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    goto/16 :goto_1

    :pswitch_3
    move v11, v2

    const/16 v1, 0xb

    .line 1892
    invoke-virtual {v8, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v6, :cond_1a

    .line 1898
    iget-boolean v1, v9, Landroid/icu/text/SimpleDateFormat;->hasMinute:Z

    if-eqz v1, :cond_15

    .line 1899
    invoke-virtual {v8, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_1a

    :cond_15
    iget-boolean v1, v9, Landroid/icu/text/SimpleDateFormat;->hasSecond:Z

    if-eqz v1, :cond_16

    .line 1900
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1a

    :cond_16
    const/16 v0, 0x9

    .line 1904
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-gt v4, v11, :cond_17

    .line 1907
    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    aget-object v19, v1, v0

    goto :goto_c

    :cond_17
    if-eq v4, v7, :cond_19

    const/4 v1, 0x5

    if-le v4, v1, :cond_18

    goto :goto_b

    .line 1911
    :cond_18
    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    aget-object v19, v1, v0

    goto :goto_c

    .line 1909
    :cond_19
    :goto_b
    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    aget-object v19, v1, v0

    :cond_1a
    :goto_c
    move-object/from16 v0, v19

    if-nez v0, :cond_1b

    const/16 v2, 0x61

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 1918
    invoke-virtual/range {v0 .. v8}, Landroid/icu/text/SimpleDateFormat;->subFormat(Ljava/lang/StringBuffer;CIIILandroid/icu/text/DisplayContext;Ljava/text/FieldPosition;Landroid/icu/util/Calendar;)V

    goto/16 :goto_1

    .line 1920
    :cond_1b
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :pswitch_4
    move v11, v2

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1c

    .line 1830
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    move-wide/from16 v3, v16

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    const/4 v8, 0x2

    goto :goto_e

    :cond_1c
    move-wide/from16 v2, v16

    const/4 v8, 0x2

    if-ne v4, v8, :cond_1e

    .line 1833
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    :cond_1d
    :goto_d
    move-object/from16 v0, v19

    goto :goto_e

    :cond_1e
    if-ne v4, v11, :cond_1f

    .line 1836
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_d

    :cond_1f
    if-ne v4, v7, :cond_20

    .line 1839
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_d

    :cond_20
    const/4 v0, 0x5

    if-ne v4, v0, :cond_1d

    .line 1842
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_d

    .line 1844
    :goto_e
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_14

    :pswitch_5
    move v11, v2

    move-wide/from16 v2, v16

    const/4 v6, 0x1

    const/4 v8, 0x2

    if-ne v4, v6, :cond_22

    .line 1811
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    :cond_21
    :goto_f
    move-object/from16 v0, v19

    goto :goto_10

    :cond_22
    if-ne v4, v8, :cond_23

    .line 1814
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_f

    :cond_23
    if-ne v4, v11, :cond_24

    .line 1817
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_f

    :cond_24
    if-ne v4, v7, :cond_25

    .line 1820
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_f

    :cond_25
    const/4 v0, 0x5

    if-ne v4, v0, :cond_21

    .line 1823
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_f

    .line 1825
    :goto_10
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_14

    :pswitch_6
    move v11, v2

    move-wide/from16 v2, v16

    const/4 v6, 0x1

    const/4 v8, 0x2

    if-ne v4, v6, :cond_26

    .line 1801
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_11

    :cond_26
    if-ne v4, v7, :cond_27

    .line 1804
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    :cond_27
    :goto_11
    move-object/from16 v0, v19

    .line 1806
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_14

    :pswitch_7
    move v11, v2

    const/4 v6, 0x1

    const/4 v8, 0x2

    .line 1608
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    array-length v0, v0

    if-gt v3, v0, :cond_28

    .line 1609
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    sub-int/2addr v3, v6

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_14

    :cond_28
    move v11, v8

    goto/16 :goto_22

    :pswitch_8
    move-wide/from16 v11, v16

    const/4 v6, 0x1

    const/4 v8, 0x2

    if-ne v4, v6, :cond_2a

    .line 1784
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v11, v12}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    :cond_29
    :goto_12
    move-object/from16 v0, v19

    goto :goto_13

    :cond_2a
    if-ne v4, v8, :cond_2b

    .line 1787
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v11, v12}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_12

    :cond_2b
    const/4 v0, 0x3

    if-ne v4, v0, :cond_2c

    .line 1790
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v11, v12}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    goto :goto_12

    :cond_2c
    if-ne v4, v7, :cond_29

    .line 1793
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v2, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v2, v1, v11, v12}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    .line 1794
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_12

    .line 1796
    :goto_13
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v11, v8

    goto/16 :goto_1c

    :pswitch_9
    const/4 v6, 0x1

    const/4 v8, 0x2

    if-lt v4, v7, :cond_2d

    .line 1880
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    const/4 v1, 0x3

    div-int/2addr v3, v1

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto :goto_14

    :cond_2d
    const/4 v1, 0x3

    if-ne v4, v1, :cond_2e

    .line 1882
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    div-int/2addr v3, v1

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto :goto_14

    .line 1884
    :cond_2e
    div-int/2addr v3, v1

    add-int/2addr v3, v6

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto :goto_14

    :pswitch_a
    const/4 v6, 0x1

    const/4 v8, 0x2

    if-lt v4, v7, :cond_2f

    .line 1871
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    const/4 v11, 0x3

    div-int/2addr v3, v11

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    :goto_14
    move v11, v8

    goto/16 :goto_2

    :cond_2f
    const/4 v11, 0x3

    if-ne v4, v11, :cond_30

    .line 1873
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    div-int/2addr v3, v11

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto :goto_14

    .line 1875
    :cond_30
    div-int/2addr v3, v11

    add-int/2addr v3, v6

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto :goto_14

    :pswitch_b
    move v11, v2

    const/4 v6, 0x1

    const/4 v12, 0x2

    if-ge v4, v11, :cond_31

    const/4 v4, 0x1

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move v5, v7

    .line 1849
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    move v11, v12

    goto/16 :goto_2

    :cond_31
    const/4 v0, 0x7

    .line 1854
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v4, v1, :cond_32

    .line 1856
    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    invoke-static {v1, v0, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1857
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :goto_15
    move v11, v12

    goto/16 :goto_1c

    :cond_32
    if-ne v4, v7, :cond_33

    .line 1859
    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    invoke-static {v1, v0, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1860
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_15

    :cond_33
    const/4 v1, 0x6

    if-ne v4, v1, :cond_34

    .line 1861
    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 1862
    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    invoke-static {v1, v0, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1863
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_15

    .line 1865
    :cond_34
    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    invoke-static {v1, v0, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1866
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_15

    :pswitch_c
    move-wide/from16 v11, v16

    const/4 v2, 0x2

    const/4 v6, 0x1

    if-ne v4, v6, :cond_35

    .line 1772
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    .line 1773
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_16

    :cond_35
    if-ne v4, v7, :cond_36

    .line 1776
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v19

    .line 1777
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :cond_36
    :goto_16
    move-object/from16 v0, v19

    .line 1779
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_19

    :pswitch_d
    move-wide/from16 v11, v16

    const/4 v2, 0x2

    const/4 v6, 0x1

    if-ge v4, v7, :cond_37

    .line 1759
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_37
    const/4 v0, 0x5

    if-ne v4, v0, :cond_38

    .line 1762
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 1765
    :cond_38
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 1767
    :goto_17
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v11, v2

    goto/16 :goto_2

    :pswitch_e
    move v0, v2

    const/4 v2, 0x2

    const/4 v6, 0x1

    if-ge v4, v0, :cond_39

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move v11, v2

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 1705
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    :cond_39
    move v11, v2

    const/4 v0, 0x7

    .line 1710
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    goto/16 :goto_1b

    :pswitch_f
    move-wide/from16 v11, v16

    const/4 v2, 0x2

    const/4 v6, 0x1

    if-ge v4, v7, :cond_3a

    .line 1748
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 1749
    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_18

    .line 1751
    :cond_3a
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SimpleDateFormat;->tzFormat()Landroid/icu/text/TimeZoneFormat;

    move-result-object v0

    sget-object v3, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v0, v3, v1, v11, v12}, Landroid/icu/text/TimeZoneFormat;->format(Landroid/icu/text/TimeZoneFormat$Style;Landroid/icu/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 1752
    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :goto_18
    move-object/from16 v18, v1

    .line 1754
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_19
    move v11, v2

    goto :goto_1c

    :pswitch_10
    const/4 v2, 0x2

    const/4 v6, 0x1

    if-nez v3, :cond_3b

    const/16 v0, 0xa

    .line 1738
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move v11, v2

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 1737
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    :cond_3b
    move v11, v2

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 1741
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    :pswitch_11
    const/4 v0, 0x5

    const/4 v6, 0x1

    const/4 v11, 0x2

    if-lt v4, v0, :cond_3d

    .line 1729
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    if-nez v0, :cond_3c

    goto :goto_1a

    .line 1732
    :cond_3c
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    .line 1730
    :cond_3d
    :goto_1a
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    goto/16 :goto_2

    :pswitch_12
    const/4 v6, 0x1

    const/4 v11, 0x2

    :goto_1b
    const/4 v0, 0x5

    if-ne v4, v0, :cond_3e

    .line 1714
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1715
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    :goto_1c
    move-object/from16 v0, v18

    const/4 v12, 0x0

    goto/16 :goto_25

    :cond_3e
    if-ne v4, v7, :cond_3f

    .line 1717
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1718
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_1c

    :cond_3f
    const/4 v0, 0x6

    if-ne v4, v0, :cond_40

    .line 1719
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 1720
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1721
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_1c

    .line 1723
    :cond_40
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1724
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_1c

    :pswitch_13
    const/4 v6, 0x1

    const/4 v11, 0x2

    .line 1688
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const/4 v1, 0x3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1689
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    if-ne v4, v6, :cond_41

    .line 1691
    div-int/lit8 v3, v3, 0x64

    goto :goto_1d

    :cond_41
    if-ne v4, v11, :cond_42

    .line 1693
    div-int/lit8 v3, v3, 0xa

    .line 1695
    :cond_42
    :goto_1d
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1696
    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3, v10, v0}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    const/4 v1, 0x3

    if-le v4, v1, :cond_4

    .line 1698
    iget-object v2, v9, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    add-int/lit8 v3, v4, -0x3

    invoke-virtual {v2, v3}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 1699
    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v10, v0}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :pswitch_14
    const/4 v6, 0x1

    const/4 v11, 0x2

    if-nez v3, :cond_43

    const/16 v0, 0xb

    .line 1679
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 1678
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    :cond_43
    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 1682
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto/16 :goto_2

    :pswitch_15
    const/4 v6, 0x1

    const/4 v11, 0x2

    .line 1633
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hebrew"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1634
    invoke-virtual {v8, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v12, 0x3

    if-eqz v1, :cond_44

    if-ne v3, v2, :cond_44

    if-lt v4, v12, :cond_44

    move v3, v0

    :cond_44
    if-nez v1, :cond_45

    if-lt v3, v2, :cond_45

    if-ge v4, v12, :cond_45

    add-int/lit8 v3, v3, -0x1

    .line 1642
    :cond_45
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_46

    const/16 v0, 0x16

    .line 1643
    invoke-virtual {v8, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    move v8, v2

    const/4 v0, 0x5

    goto :goto_1e

    :cond_46
    const/4 v0, 0x5

    const/4 v8, 0x0

    :goto_1e
    if-ne v4, v0, :cond_4a

    if-ne v15, v11, :cond_48

    .line 1647
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    if-eqz v8, :cond_47

    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v19, v1, v11

    :cond_47
    move-object/from16 v1, v19

    invoke-static {v0, v3, v10, v1}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1f

    .line 1649
    :cond_48
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    if-eqz v8, :cond_49

    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v19, v1, v2

    :cond_49
    move-object/from16 v1, v19

    invoke-static {v0, v3, v10, v1}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1651
    :goto_1f
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_1c

    :cond_4a
    if-ne v4, v7, :cond_4e

    if-ne v15, v11, :cond_4c

    .line 1654
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    if-eqz v8, :cond_4b

    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v19, v1, v12

    goto :goto_20

    :cond_4b
    const/4 v12, 0x0

    :goto_20
    move-object/from16 v1, v19

    invoke-static {v0, v3, v10, v1}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1655
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_24

    :cond_4c
    const/4 v12, 0x0

    .line 1657
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    if-eqz v8, :cond_4d

    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v19, v1, v2

    goto :goto_21

    :cond_4d
    const/4 v2, 0x3

    :goto_21
    move-object/from16 v1, v19

    invoke-static {v0, v3, v10, v1}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1658
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_24

    :cond_4e
    const/4 v2, 0x3

    const/4 v12, 0x0

    if-ne v4, v2, :cond_52

    if-ne v15, v11, :cond_50

    .line 1662
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    if-eqz v8, :cond_4f

    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v19, v1, v6

    :cond_4f
    move-object/from16 v1, v19

    invoke-static {v0, v3, v10, v1}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1663
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_24

    .line 1665
    :cond_50
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    if-eqz v8, :cond_51

    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v19, v1, v7

    :cond_51
    move-object/from16 v1, v19

    invoke-static {v0, v3, v10, v1}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1666
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto/16 :goto_24

    .line 1669
    :cond_52
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    add-int/2addr v3, v6

    const v17, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move/from16 v4, p3

    move/from16 v5, v17

    .line 1670
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    new-array v0, v6, [Ljava/lang/String;

    .line 1672
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    if-eqz v8, :cond_53

    .line 1673
    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v19, v1, v2

    :cond_53
    move-object/from16 v1, v19

    invoke-static {v0, v12, v10, v1}, Landroid/icu/text/SimpleDateFormat;->safeAppendWithMonthPattern([Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/lang/String;)V

    goto/16 :goto_24

    :pswitch_16
    const/4 v6, 0x1

    const/4 v11, 0x2

    :goto_22
    const/4 v12, 0x0

    .line 1615
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    if-eqz v0, :cond_55

    const-string v1, "hebr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->override:Ljava/lang/String;

    const-string/jumbo v1, "y=hebr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_55

    :cond_54
    const/16 v0, 0x1388

    if-le v3, v0, :cond_55

    const/16 v0, 0x1770

    if-ge v3, v0, :cond_55

    add-int/lit16 v3, v3, -0x1388

    :cond_55
    if-ne v4, v11, :cond_56

    const/4 v4, 0x2

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move v5, v7

    .line 1626
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto :goto_24

    :cond_56
    const v7, 0x7fffffff

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move/from16 v4, p3

    move v5, v7

    .line 1628
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    goto :goto_24

    :pswitch_17
    const/4 v6, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    .line 1591
    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chinese"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual/range {p8 .. p8}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dangi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    goto :goto_23

    :cond_57
    const/4 v0, 0x5

    if-ne v4, v0, :cond_58

    .line 1596
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1597
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_24

    :cond_58
    if-ne v4, v7, :cond_59

    .line 1599
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1600
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_24

    .line 1602
    :cond_59
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v0, v3, v10}, Landroid/icu/text/SimpleDateFormat;->safeAppend([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 1603
    sget-object v18, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    goto :goto_24

    :cond_5a
    :goto_23
    const/4 v4, 0x1

    const/16 v7, 0x9

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    move v5, v7

    .line 1593
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/SimpleDateFormat;->zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V

    :goto_24
    move-object/from16 v0, v18

    :goto_25
    if-nez p5, :cond_60

    move-object/from16 v1, p6

    if-eqz v1, :cond_60

    .line 2029
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 2031
    sget-object v2, Landroid/icu/text/SimpleDateFormat$1;->$SwitchMap$android$icu$text$DisplayContext:[I

    invoke-virtual/range {p6 .. p6}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v6, :cond_5d

    if-eq v2, v11, :cond_5b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5b

    goto :goto_27

    .line 2037
    :cond_5b
    iget-object v2, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    if-eqz v2, :cond_5e

    .line 2038
    iget-object v2, v9, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v2, v2, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 2039
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    if-ne v1, v2, :cond_5c

    .line 2040
    aget-boolean v0, v0, v12

    goto :goto_26

    :cond_5c
    aget-boolean v0, v0, v6

    :goto_26
    move v2, v0

    move v12, v2

    goto :goto_27

    :cond_5d
    move v12, v6

    :cond_5e
    :goto_27
    if-eqz v12, :cond_60

    .line 2047
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    if-nez v0, :cond_5f

    .line 2049
    iget-object v0, v9, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, v9, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    .line 2051
    :cond_5f
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2052
    iget-object v1, v9, Landroid/icu/text/SimpleDateFormat;->locale:Landroid/icu/util/ULocale;

    iget-object v2, v9, Landroid/icu/text/SimpleDateFormat;->capitalizationBrkIter:Landroid/icu/text/BreakIterator;

    const/16 v3, 0x300

    invoke-static {v1, v0, v2, v3}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object v0

    .line 2054
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v10, v14, v1, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2059
    :cond_60
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v0

    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    if-ne v0, v1, :cond_62

    .line 2060
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getField()I

    move-result v0

    sget-object v1, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_FIELD:[I

    aget v1, v1, v15

    if-ne v0, v1, :cond_61

    move/from16 v0, p4

    .line 2061
    invoke-virtual {v13, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2062
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v14

    invoke-virtual {v13, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_28

    :cond_61
    move/from16 v0, p4

    .line 2063
    invoke-virtual/range {p7 .. p7}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    sget-object v2, Landroid/icu/text/SimpleDateFormat;->PATTERN_INDEX_TO_DATE_FORMAT_ATTRIBUTE:[Landroid/icu/text/DateFormat$Field;

    aget-object v2, v2, v15

    if-ne v1, v2, :cond_62

    .line 2065
    invoke-virtual {v13, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2066
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v14

    invoke-virtual {v13, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_62
    :goto_28
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_16
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;)I
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 3063
    invoke-direct/range {v0 .. v10}, Landroid/icu/text/SimpleDateFormat;->subParse(Ljava/lang/String;ICIZZ[ZLandroid/icu/util/Calendar;Landroid/icu/text/MessageFormat;Landroid/icu/util/Output;)I

    move-result v0

    return v0
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 3

    .line 3863
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/SimpleDateFormat;->formatData:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, v1, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    const-string v2, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    invoke-direct {p0, v0, v2, v1}, Landroid/icu/text/SimpleDateFormat;->translatePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 0

    .line 3850
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method protected zeroPaddingNumber(JII)Ljava/lang/String;
    .locals 1

    .line 2310
    iget-object v0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p3}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 2311
    iget-object p3, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {p3, p4}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 2312
    iget-object p0, p0, Landroid/icu/text/SimpleDateFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected zeroPaddingNumber(Landroid/icu/text/NumberFormat;Ljava/lang/StringBuffer;III)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2205
    iget-boolean v0, p0, Landroid/icu/text/SimpleDateFormat;->useLocalZeroPaddingNumberFormat:Z

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    .line 2206
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/icu/text/SimpleDateFormat;->fastZeroPaddingNumber(Ljava/lang/StringBuffer;III)V

    goto :goto_0

    .line 2208
    :cond_0
    invoke-virtual {p1, p4}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 2209
    invoke-virtual {p1, p5}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    int-to-long p3, p3

    .line 2210
    new-instance p0, Ljava/text/FieldPosition;

    const/4 p5, -0x1

    invoke-direct {p0, p5}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p1, p3, p4, p2, p0}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method
