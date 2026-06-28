.class public Landroid/icu/text/DateTimePatternGenerator;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"

# interfaces
.implements Landroid/icu/util/Freezable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;,
        Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;,
        Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;,
        Landroid/icu/text/DateTimePatternGenerator$DTPGflags;,
        Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;,
        Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;,
        Landroid/icu/text/DateTimePatternGenerator$FormatParser;,
        Landroid/icu/text/DateTimePatternGenerator$VariableField;,
        Landroid/icu/text/DateTimePatternGenerator$PatternInfo;,
        Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;,
        Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;,
        Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;,
        Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/DateTimePatternGenerator;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CANONICAL_ITEMS:[Ljava/lang/String;

.field private static final CANONICAL_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLDR_FIELD_APPEND:[Ljava/lang/String;

.field private static final CLDR_FIELD_NAME:[Ljava/lang/String;

.field private static final DATE_MASK:I = 0x3ff

.field public static final DAY:I = 0x7

.field public static final DAYPERIOD:I = 0xa

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x9

.field public static final DAY_OF_YEAR:I = 0x8

.field private static final DEBUG:Z = false

.field private static final DELTA:I = 0x10

.field private static DTPNG_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateTimePatternGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERA:I = 0x0

.field private static final EXTRA_FIELD:I = 0x10000

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FRACTIONAL_MASK:I = 0x4000

.field public static final FRACTIONAL_SECOND:I = 0xe

.field public static final HOUR:I = 0xb

.field private static final LAST_RESORT_ALLOWED_HOUR_FORMAT:[Ljava/lang/String;

.field static final LOCALE_TO_ALLOWED_HOUR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG:I = -0x104

.field public static final MATCH_ALL_FIELDS_LENGTH:I = 0xffff

.field public static final MATCH_HOUR_FIELD_LENGTH:I = 0x800

.field public static final MATCH_MINUTE_FIELD_LENGTH:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_NO_OPTIONS:I = 0x0

.field public static final MATCH_SECOND_FIELD_LENGTH:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE:I = 0xc

.field private static final MISSING_FIELD:I = 0x1000

.field public static final MONTH:I = 0x3

.field private static final NARROW:I = -0x101

.field private static final NONE:I = 0x0

.field private static final NUMERIC:I = 0x100

.field public static final QUARTER:I = 0x2

.field public static final SECOND:I = 0xd

.field private static final SECOND_AND_FRACTIONAL_MASK:I = 0x6000

.field private static final SHORT:I = -0x103

.field private static final SHORTER:I = -0x102

.field private static final TIME_MASK:I = 0xfc00

.field public static final TYPE_LIMIT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKDAY:I = 0x6

.field public static final WEEK_OF_MONTH:I = 0x5

.field public static final WEEK_OF_YEAR:I = 0x4

.field public static final YEAR:I = 0x1

.field public static final ZONE:I = 0xf

.field private static final types:[[I


# instance fields
.field private transient _distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

.field private allowedHourFormats:[Ljava/lang/String;

.field private appendItemFormats:[Ljava/lang/String;

.field private appendItemNames:[Ljava/lang/String;

.field private basePattern_pattern:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;",
            ">;"
        }
    .end annotation
.end field

.field private cldrAvailableFormatKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

.field private dateTimeFormat:Ljava/lang/String;

.field private decimal:Ljava/lang/String;

.field private defaultHourFormatChar:C

.field private transient fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

.field private volatile frozen:Z

.field private skeleton2pattern:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "H"

    .line 313
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->LAST_RESORT_ALLOWED_HOUR_FORMAT:[Ljava/lang/String;

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 376
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v2, "android/icu/impl/data/icudt60b"

    const-string/jumbo v3, "supplementalData"

    invoke-static {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 381
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/icu/text/DateTimePatternGenerator$DayPeriodAllowedHoursSink;-><init>(Ljava/util/HashMap;Landroid/icu/text/DateTimePatternGenerator$1;)V

    const-string/jumbo v3, "timeData"

    .line 382
    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 384
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->LOCALE_TO_ALLOWED_HOUR:Ljava/util/Map;

    .line 1789
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Landroid/icu/impl/ICUCache;

    const-string v1, "Era"

    const-string v2, "Year"

    const-string v3, "Quarter"

    const-string v4, "Month"

    const-string v5, "Week"

    const-string v6, "*"

    const-string v7, "Day-Of-Week"

    const-string v8, "Day"

    const-string v9, "*"

    const-string v10, "*"

    const-string v11, "*"

    const-string v12, "Hour"

    const-string v13, "Minute"

    const-string v14, "Second"

    const-string v15, "*"

    const-string v16, "Timezone"

    .line 2044
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    const-string v1, "era"

    const-string/jumbo v2, "year"

    const-string/jumbo v3, "quarter"

    const-string v4, "month"

    const-string/jumbo v5, "week"

    const-string/jumbo v6, "weekOfMonth"

    const-string/jumbo v7, "weekday"

    const-string v8, "day"

    const-string v9, "dayOfYear"

    const-string/jumbo v10, "weekdayOfMonth"

    const-string v11, "dayperiod"

    const-string v12, "hour"

    const-string v13, "minute"

    const-string/jumbo v14, "second"

    const-string v15, "*"

    const-string/jumbo v16, "zone"

    .line 2050
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    const-string v1, "Era"

    const-string v2, "Year"

    const-string v3, "Quarter"

    const-string v4, "Month"

    const-string v5, "Week_in_Year"

    const-string v6, "Week_in_Month"

    const-string v7, "Weekday"

    const-string v8, "Day"

    const-string v9, "Day_Of_Year"

    const-string v10, "Day_of_Week_in_Month"

    const-string v11, "Dayperiod"

    const-string v12, "Hour"

    const-string v13, "Minute"

    const-string v14, "Second"

    const-string v15, "Fractional_Second"

    const-string v16, "Zone"

    .line 2056
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    const-string v1, "G"

    const-string/jumbo v2, "y"

    const-string v3, "Q"

    const-string v4, "M"

    const-string/jumbo v5, "w"

    const-string v6, "W"

    const-string v7, "E"

    const-string v8, "d"

    const-string v9, "D"

    const-string v10, "F"

    const-string v11, "a"

    const-string v12, "H"

    const-string v13, "m"

    const-string/jumbo v14, "s"

    const-string v15, "S"

    const-string/jumbo v16, "v"

    .line 2063
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    .line 2089
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    const/16 v0, 0x53

    new-array v0, v0, [[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    .line 2168
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_4

    aput-object v3, v0, v2

    new-array v3, v1, [I

    fill-array-data v3, :array_5

    aput-object v3, v0, v1

    new-array v3, v1, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_16

    const/16 v4, 0x16

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v4, 0x17

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v4, 0x18

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v4, 0x19

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_1a

    const/16 v4, 0x1a

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_1b

    const/16 v4, 0x1b

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v4, 0x1c

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_1d

    const/16 v4, 0x1d

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1e

    const/16 v4, 0x1e

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1f

    const/16 v4, 0x1f

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    const/16 v4, 0x20

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_21

    const/16 v4, 0x21

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    const/16 v4, 0x22

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    const/16 v4, 0x23

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    const/16 v4, 0x24

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_25

    const/16 v4, 0x25

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_26

    const/16 v4, 0x26

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_27

    const/16 v4, 0x27

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_28

    const/16 v4, 0x28

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_29

    const/16 v4, 0x29

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2a

    const/16 v4, 0x2a

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_2b

    const/16 v4, 0x2b

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_2c

    const/16 v4, 0x2c

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_2d

    const/16 v4, 0x2d

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2e

    const/16 v4, 0x2e

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_2f

    const/16 v4, 0x2f

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_30

    const/16 v4, 0x30

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_31

    const/16 v4, 0x31

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_32

    const/16 v4, 0x32

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_33

    const/16 v4, 0x33

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_34

    const/16 v4, 0x34

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_35

    const/16 v4, 0x35

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_36

    const/16 v4, 0x36

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_37

    const/16 v4, 0x37

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_38

    const/16 v4, 0x38

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_39

    const/16 v4, 0x39

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_3a

    const/16 v4, 0x3a

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_3b

    const/16 v4, 0x3b

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_3c

    const/16 v4, 0x3c

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_3d

    const/16 v4, 0x3d

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_3e

    const/16 v4, 0x3e

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_3f

    const/16 v4, 0x3f

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_40

    const/16 v4, 0x40

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_41

    const/16 v4, 0x41

    aput-object v3, v0, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_42

    const/16 v4, 0x42

    aput-object v3, v0, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_43

    const/16 v4, 0x43

    aput-object v3, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_44

    const/16 v3, 0x44

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_45

    const/16 v3, 0x45

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_46

    const/16 v3, 0x46

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_47

    const/16 v3, 0x47

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_48

    const/16 v3, 0x48

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_49

    const/16 v3, 0x49

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_4a

    const/16 v3, 0x4a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_4b

    const/16 v3, 0x4b

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_4c

    const/16 v3, 0x4c

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_4d

    const/16 v3, 0x4d

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_4e

    const/16 v3, 0x4e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_4f

    const/16 v3, 0x4f

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_50

    const/16 v3, 0x50

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_51

    const/16 v3, 0x51

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_52

    const/16 v2, 0x52

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    return-void

    :array_0
    .array-data 4
        0x47
        0x0
        -0x103
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x47
        0x0
        -0x104
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x47
        0x0
        -0x101
        0x5
    .end array-data

    :array_3
    .array-data 4
        0x79
        0x1
        0x100
        0x1
        0x14
    .end array-data

    :array_4
    .array-data 4
        0x59
        0x1
        0x110
        0x1
        0x14
    .end array-data

    :array_5
    .array-data 4
        0x75
        0x1
        0x120
        0x1
        0x14
    .end array-data

    :array_6
    .array-data 4
        0x72
        0x1
        0x130
        0x1
        0x14
    .end array-data

    :array_7
    .array-data 4
        0x55
        0x1
        -0x103
        0x1
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x55
        0x1
        -0x104
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x55
        0x1
        -0x101
        0x5
    .end array-data

    :array_a
    .array-data 4
        0x51
        0x2
        0x100
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x51
        0x2
        -0x103
        0x3
    .end array-data

    :array_c
    .array-data 4
        0x51
        0x2
        -0x104
        0x4
    .end array-data

    :array_d
    .array-data 4
        0x51
        0x2
        -0x101
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x71
        0x2
        0x110
        0x1
        0x2
    .end array-data

    :array_f
    .array-data 4
        0x71
        0x2
        -0x113
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x71
        0x2
        -0x114
        0x4
    .end array-data

    :array_11
    .array-data 4
        0x71
        0x2
        -0x111
        0x5
    .end array-data

    :array_12
    .array-data 4
        0x4d
        0x3
        0x100
        0x1
        0x2
    .end array-data

    :array_13
    .array-data 4
        0x4d
        0x3
        -0x103
        0x3
    .end array-data

    :array_14
    .array-data 4
        0x4d
        0x3
        -0x104
        0x4
    .end array-data

    :array_15
    .array-data 4
        0x4d
        0x3
        -0x101
        0x5
    .end array-data

    :array_16
    .array-data 4
        0x4c
        0x3
        0x110
        0x1
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x4c
        0x3
        -0x113
        0x3
    .end array-data

    :array_18
    .array-data 4
        0x4c
        0x3
        -0x114
        0x4
    .end array-data

    :array_19
    .array-data 4
        0x4c
        0x3
        -0x111
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x6c
        0x3
        0x110
        0x1
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x77
        0x4
        0x100
        0x1
        0x2
    .end array-data

    :array_1c
    .array-data 4
        0x57
        0x5
        0x100
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0x45
        0x6
        -0x103
        0x1
        0x3
    .end array-data

    :array_1e
    .array-data 4
        0x45
        0x6
        -0x104
        0x4
    .end array-data

    :array_1f
    .array-data 4
        0x45
        0x6
        -0x101
        0x5
    .end array-data

    :array_20
    .array-data 4
        0x45
        0x6
        -0x102
        0x6
    .end array-data

    :array_21
    .array-data 4
        0x63
        0x6
        0x120
        0x1
        0x2
    .end array-data

    :array_22
    .array-data 4
        0x63
        0x6
        -0x123
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x63
        0x6
        -0x124
        0x4
    .end array-data

    :array_24
    .array-data 4
        0x63
        0x6
        -0x121
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x63
        0x6
        -0x122
        0x6
    .end array-data

    :array_26
    .array-data 4
        0x65
        0x6
        0x110
        0x1
        0x2
    .end array-data

    :array_27
    .array-data 4
        0x65
        0x6
        -0x113
        0x3
    .end array-data

    :array_28
    .array-data 4
        0x65
        0x6
        -0x114
        0x4
    .end array-data

    :array_29
    .array-data 4
        0x65
        0x6
        -0x111
        0x5
    .end array-data

    :array_2a
    .array-data 4
        0x65
        0x6
        -0x112
        0x6
    .end array-data

    :array_2b
    .array-data 4
        0x64
        0x7
        0x100
        0x1
        0x2
    .end array-data

    :array_2c
    .array-data 4
        0x67
        0x7
        0x110
        0x1
        0x14
    .end array-data

    :array_2d
    .array-data 4
        0x44
        0x8
        0x100
        0x1
        0x3
    .end array-data

    :array_2e
    .array-data 4
        0x46
        0x9
        0x100
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x61
        0xa
        -0x103
        0x1
        0x3
    .end array-data

    :array_30
    .array-data 4
        0x61
        0xa
        -0x104
        0x4
    .end array-data

    :array_31
    .array-data 4
        0x61
        0xa
        -0x101
        0x5
    .end array-data

    :array_32
    .array-data 4
        0x62
        0xa
        -0x113
        0x1
        0x3
    .end array-data

    :array_33
    .array-data 4
        0x62
        0xa
        -0x114
        0x4
    .end array-data

    :array_34
    .array-data 4
        0x62
        0xa
        -0x111
        0x5
    .end array-data

    :array_35
    .array-data 4
        0x42
        0xa
        -0x133
        0x1
        0x3
    .end array-data

    :array_36
    .array-data 4
        0x42
        0xa
        -0x134
        0x4
    .end array-data

    :array_37
    .array-data 4
        0x42
        0xa
        -0x131
        0x5
    .end array-data

    :array_38
    .array-data 4
        0x48
        0xb
        0x1a0
        0x1
        0x2
    .end array-data

    :array_39
    .array-data 4
        0x6b
        0xb
        0x1b0
        0x1
        0x2
    .end array-data

    :array_3a
    .array-data 4
        0x68
        0xb
        0x100
        0x1
        0x2
    .end array-data

    :array_3b
    .array-data 4
        0x4b
        0xb
        0x110
        0x1
        0x2
    .end array-data

    :array_3c
    .array-data 4
        0x6d
        0xc
        0x100
        0x1
        0x2
    .end array-data

    :array_3d
    .array-data 4
        0x73
        0xd
        0x100
        0x1
        0x2
    .end array-data

    :array_3e
    .array-data 4
        0x41
        0xd
        0x110
        0x1
        0x3e8
    .end array-data

    :array_3f
    .array-data 4
        0x53
        0xe
        0x100
        0x1
        0x3e8
    .end array-data

    :array_40
    .array-data 4
        0x76
        0xf
        -0x123
        0x1
    .end array-data

    :array_41
    .array-data 4
        0x76
        0xf
        -0x124
        0x4
    .end array-data

    :array_42
    .array-data 4
        0x7a
        0xf
        -0x103
        0x1
        0x3
    .end array-data

    :array_43
    .array-data 4
        0x7a
        0xf
        -0x104
        0x4
    .end array-data

    :array_44
    .array-data 4
        0x5a
        0xf
        -0x111
        0x1
        0x3
    .end array-data

    :array_45
    .array-data 4
        0x5a
        0xf
        -0x114
        0x4
    .end array-data

    :array_46
    .array-data 4
        0x5a
        0xf
        -0x113
        0x5
    .end array-data

    :array_47
    .array-data 4
        0x4f
        0xf
        -0x113
        0x1
    .end array-data

    :array_48
    .array-data 4
        0x4f
        0xf
        -0x114
        0x4
    .end array-data

    :array_49
    .array-data 4
        0x56
        0xf
        -0x113
        0x1
    .end array-data

    :array_4a
    .array-data 4
        0x56
        0xf
        -0x114
        0x2
    .end array-data

    :array_4b
    .array-data 4
        0x56
        0xf
        -0x115
        0x3
    .end array-data

    :array_4c
    .array-data 4
        0x56
        0xf
        -0x116
        0x4
    .end array-data

    :array_4d
    .array-data 4
        0x58
        0xf
        -0x111
        0x1
    .end array-data

    :array_4e
    .array-data 4
        0x58
        0xf
        -0x113
        0x2
    .end array-data

    :array_4f
    .array-data 4
        0x58
        0xf
        -0x114
        0x4
    .end array-data

    :array_50
    .array-data 4
        0x78
        0xf
        -0x111
        0x1
    .end array-data

    :array_51
    .array-data 4
        0x78
        0xf
        -0x113
        0x2
    .end array-data

    :array_52
    .array-data 4
        0x78
        0xf
        -0x114
        0x4
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    .line 1769
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    const-string v0, "?"

    .line 1770
    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    const-string/jumbo v0, "{1} {0}"

    .line 1771
    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v1, v0, [Ljava/lang/String;

    .line 1772
    iput-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 1773
    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    const/16 v0, 0x48

    .line 1774
    iput-char v0, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    const/4 v0, 0x0

    .line 1777
    iput-boolean v0, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    .line 1779
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator$1;)V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 1780
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    .line 1781
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Landroid/icu/text/DateTimePatternGenerator$1;)V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    .line 2090
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Landroid/icu/impl/UResource$Key;)I
    .locals 0

    .line 56
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getCLDRFieldNumber(Landroid/icu/impl/UResource$Key;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/icu/text/DateTimePatternGenerator;Ljava/lang/String;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->isAvailableFormatSet(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000()[[I
    .locals 1

    .line 56
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    return-object v0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(IC)C
    .locals 0

    .line 56
    invoke-static {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalChar(IC)C

    move-result p0

    return p0
.end method

.method static synthetic access$1700(I)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->showMask(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/icu/text/DateTimePatternGenerator;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->setAvailableFormat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;Z)I
    .locals 0

    .line 56
    invoke-static {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method private addCLDRData(Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Landroid/icu/util/ULocale;)V
    .locals 6

    const-string v0, "calendar/"

    const-string v1, "android/icu/impl/data/icudt60b"

    .line 264
    invoke-static {v1, p2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 265
    invoke-direct {p0, p2}, Landroid/icu/text/DateTimePatternGenerator;->getCalendarTypeToUse(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p2

    .line 275
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/icu/text/DateTimePatternGenerator$AppendItemFormatsSink;-><init>(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator$1;)V

    .line 277
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/appendItems"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :catch_0
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;

    invoke-direct {v2, p0, v3}, Landroid/icu/text/DateTimePatternGenerator$AppendItemNamesSink;-><init>(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator$1;)V

    :try_start_1
    const-string v3, "fields"

    .line 286
    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :catch_1
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;

    invoke-direct {v2, p0, p1}, Landroid/icu/text/DateTimePatternGenerator$AvailableFormatsSink;-><init>(Landroid/icu/text/DateTimePatternGenerator;Landroid/icu/text/DateTimePatternGenerator$PatternInfo;)V

    .line 295
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/availableFormats"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method private addCanonicalItems()V
    .locals 5

    .line 1862
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1864
    :goto_0
    sget-object v3, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_ITEMS:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 1865
    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v0}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addICUPatterns(Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Landroid/icu/util/ULocale;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 149
    invoke-static {v1, p2}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    check-cast v3, Landroid/icu/text/SimpleDateFormat;

    .line 150
    invoke-virtual {v3}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    .line 151
    invoke-static {v1, p2}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    check-cast v3, Landroid/icu/text/SimpleDateFormat;

    .line 152
    invoke-virtual {v3}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    if-ne v1, v2, :cond_0

    .line 155
    invoke-virtual {v3}, Landroid/icu/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Landroid/icu/text/DateTimePatternGenerator;->consumeShortTimePattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$PatternInfo;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    .line 1914
    iget-object v4, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    iget-object v5, v1, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    .line 1915
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1916
    iget-object v5, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v5}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1917
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1918
    iget-object v7, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1920
    :cond_0
    check-cast v6, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    .line 1922
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1928
    invoke-virtual {v6}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    move-result v8

    .line 1932
    sget-object v9, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {v2, v9}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/16 v10, 0xd

    if-eqz v9, :cond_1

    if-ne v8, v10, :cond_1

    .line 1933
    iget-object v6, v0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1934
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$1200(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-result-object v6

    const/16 v8, 0xe

    invoke-virtual {v6, v8, v7}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->appendFieldTo(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1935
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$1300(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[I

    move-result-object v9

    aget v9, v9, v8

    if-eqz v9, :cond_d

    .line 1960
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$1200(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldChar(I)C

    move-result v9

    .line 1961
    invoke-static/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$1200(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldLength(I)I

    move-result v11

    const/16 v12, 0x45

    const/4 v13, 0x3

    if-ne v9, v12, :cond_2

    if-ge v11, v13, :cond_2

    move v11, v13

    .line 1966
    :cond_2
    iget-object v12, v1, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/16 v14, 0xb

    if-ne v8, v14, :cond_3

    and-int/lit16 v15, v3, 0x800

    if-eqz v15, :cond_5

    :cond_3
    const/16 v15, 0xc

    if-ne v8, v15, :cond_4

    and-int/lit16 v15, v3, 0x1000

    if-eqz v15, :cond_5

    :cond_4
    if-ne v8, v10, :cond_6

    and-int/lit16 v10, v3, 0x2000

    if-nez v10, :cond_6

    .line 1970
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    goto :goto_1

    :cond_6
    if-eqz v12, :cond_9

    .line 1972
    invoke-static {v12}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->access$1200(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldLength(I)I

    move-result v10

    .line 1973
    invoke-virtual {v6}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->isNumeric()Z

    move-result v6

    .line 1974
    invoke-virtual {v12, v8}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->fieldIsNumeric(I)Z

    move-result v12

    if-eq v10, v11, :cond_8

    if-eqz v6, :cond_7

    if-eqz v12, :cond_8

    :cond_7
    if-eqz v12, :cond_9

    if-nez v6, :cond_9

    .line 1979
    :cond_8
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    :cond_9
    :goto_1
    if-eq v8, v14, :cond_a

    if-eq v8, v13, :cond_a

    const/4 v6, 0x6

    if-eq v8, v6, :cond_a

    const/4 v6, 0x1

    if-ne v8, v6, :cond_b

    const/16 v6, 0x59

    if-ne v9, v6, :cond_a

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    .line 1987
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    :cond_b
    :goto_2
    if-ne v8, v14, :cond_c

    .line 1988
    sget-object v6, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {v2, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1989
    iget-char v9, v0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    .line 1991
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    if-lez v11, :cond_d

    .line 1992
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 1994
    :cond_d
    :goto_4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1998
    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkFrozen()V
    .locals 1

    .line 1792
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->isFrozen()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1793
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify frozen object"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private consumeShortTimePattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$PatternInfo;)V
    .locals 6

    .line 179
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    .line 180
    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    .line 181
    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 182
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 183
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 184
    instance-of v4, v3, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    if-eqz v4, :cond_0

    .line 185
    check-cast v3, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    .line 186
    invoke-virtual {v3}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->getType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_0

    .line 187
    invoke-virtual {v3}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_1
    :goto_1
    invoke-direct {p0, p2, p1}, Landroid/icu/text/DateTimePatternGenerator;->hackTimes(Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Ljava/lang/String;)V

    return-void
.end method

.method private fillInMissing()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 232
    invoke-virtual {p0, v0}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemFormat(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "{0} \u251c{2}: {1}\u2524"

    .line 233
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->setAppendItemFormat(ILjava/lang/String;)V

    .line 235
    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/text/DateTimePatternGenerator;->getAppendItemName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->setAppendItemName(ILjava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAllowedHourFormats(Landroid/icu/util/ULocale;)V
    .locals 2

    .line 334
    invoke-static {p1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p1

    .line 335
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "001"

    .line 339
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 340
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->LOCALE_TO_ALLOWED_HOUR:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-nez p1, :cond_1

    .line 342
    sget-object p1, Landroid/icu/text/DateTimePatternGenerator;->LOCALE_TO_ALLOWED_HOUR:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-nez p1, :cond_1

    .line 344
    sget-object p1, Landroid/icu/text/DateTimePatternGenerator;->LAST_RESORT_ALLOWED_HOUR_FORMAT:[Ljava/lang/String;

    .line 347
    :cond_1
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->allowedHourFormats:[Ljava/lang/String;

    return-void
.end method

.method private getAppendFormat(I)Ljava/lang/String;
    .locals 0

    .line 1837
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public static getAppendFormatNumber(Landroid/icu/impl/UResource$Key;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 484
    :goto_0
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 485
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getAppendFormatNumber(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 499
    :goto_0
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_APPEND:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 500
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getAppendName(I)Ljava/lang/String;
    .locals 2

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBestAppending(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "I",
            "Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;",
            "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1804
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/DateTimePatternGenerator;->getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    move-result-object v0

    .line 1805
    invoke-direct {p0, v0, p1, p5, p6}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v1

    .line 1807
    :goto_0
    iget v2, p3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    if-eqz v2, :cond_2

    .line 1811
    iget v2, p3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    const/16 v3, 0x6000

    and-int/2addr v2, v3

    const/16 v4, 0x4000

    if-ne v2, v4, :cond_0

    and-int/lit16 v2, p2, 0x6000

    if-ne v2, v3, :cond_0

    .line 1813
    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    .line 1814
    invoke-static {p5}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p5

    .line 1815
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {p5, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 1816
    invoke-direct {p0, v0, p1, p5, p6}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v1

    .line 1817
    iget v2, p3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    and-int/lit16 v2, v2, -0x4001

    iput v2, p3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    goto :goto_0

    .line 1821
    :cond_0
    iget v2, p3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    .line 1822
    iget v3, p3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    invoke-direct {p0, p1, v3, p3, p4}, Landroid/icu/text/DateTimePatternGenerator;->getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    move-result-object v3

    .line 1823
    invoke-direct {p0, v3, p1, p5, p6}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v3

    .line 1824
    iget v4, p3, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    not-int v4, v4

    and-int/2addr v2, v4

    .line 1825
    invoke-direct {p0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getTopBitNumber(I)I

    move-result v2

    .line 1827
    invoke-direct {p0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getAppendFormat(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v3, v6, v1

    invoke-direct {p0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getAppendName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v6, v2

    .line 1826
    invoke-static {v4, v2, v5, v6}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method private getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;
    .locals 10

    .line 547
    const-class v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 549
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DateTimePatternGenerator;->mapSkeletonMetacharacters(Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/String;

    move-result-object p1

    .line 551
    monitor-enter p0

    .line 552
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v8, 0x0

    invoke-virtual {v1, p1, v2, v8}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 553
    iget-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {p0, p1, v1, v2, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    move-result-object p1

    .line 554
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    iget v1, v1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    iget v1, v1, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    if-nez v1, :cond_0

    .line 556
    iget-object p2, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 558
    :cond_0
    iget-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getFieldMask()I

    move-result p1

    .line 561
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    and-int/lit16 v3, p1, 0x3ff

    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    move-object v1, p0

    move-object v5, p2

    move-object v6, v0

    move v7, p3

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/DateTimePatternGenerator;->getBestAppending(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object v9

    .line 562
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const v1, 0xfc00

    and-int v3, p1, v1

    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    move-object v1, p0

    move-object v5, p2

    move-object v6, v0

    move v7, p3

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/DateTimePatternGenerator;->getBestAppending(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object p1

    .line 563
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_2

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1

    :cond_2
    if-nez p1, :cond_3

    return-object v9

    .line 568
    :cond_3
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->getDateTimeFormat()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x2

    new-array p3, p2, [Ljava/lang/CharSequence;

    aput-object p1, p3, v8

    const/4 p1, 0x1

    aput-object v9, p3, p1

    .line 567
    invoke-static {p0, p2, p2, p3}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 563
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getBestRaw(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;
    .locals 8

    .line 1873
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    .line 1874
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {v2, v1}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Landroid/icu/text/DateTimePatternGenerator$1;)V

    .line 1875
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const v4, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 1876
    invoke-virtual {v5, p4}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 1879
    :cond_1
    invoke-virtual {p1, v5, p2, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getDistance(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;)I

    move-result v6

    if-ge v6, v4, :cond_0

    .line 1884
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    .line 1885
    iget-object v7, v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    iput-object v7, v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->pattern:Ljava/lang/String;

    .line 1888
    iget-boolean v4, v4, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    if-eqz v4, :cond_2

    .line 1889
    iput-object v5, v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    goto :goto_1

    .line 1891
    :cond_2
    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;->matcherWithSkeleton:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 1893
    :goto_1
    invoke-virtual {p3, v2}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->setTo(Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;)V

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method

.method private static getCLDRFieldNumber(Landroid/icu/impl/UResource$Key;)I
    .locals 3

    const/4 v0, 0x0

    .line 508
    :goto_0
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->CLDR_FIELD_NAME:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 509
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getCalendarTypeToUse(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    const-string p0, "calendar"

    .line 163
    invoke-virtual {p1, p0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 165
    invoke-static {p0, p1, v0}, Landroid/icu/util/Calendar;->getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 166
    aget-object v0, p0, p1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "gregorian"

    :cond_1
    return-object v0
.end method

.method private static getCanonicalChar(IC)C
    .locals 3

    const/16 v0, 0x68

    if-eq p1, v0, :cond_3

    const/16 v1, 0x4b

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    .line 2159
    :goto_0
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2160
    aget-object v1, v1, v0

    const/4 v2, 0x1

    .line 2161
    aget v2, v1, v2

    if-ne v2, p0, :cond_1

    .line 2162
    aget p0, v1, p1

    int-to-char p0, p0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2165
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return v0
.end method

.method private static getCanonicalIndex(Ljava/lang/String;Z)I
    .locals 8

    .line 2126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    .line 2130
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    .line 2133
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v1

    move p0, v2

    .line 2138
    :goto_1
    sget-object v6, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    array-length v7, v6

    if-ge p0, v7, :cond_6

    .line 2139
    aget-object v6, v6, p0

    .line 2140
    aget v7, v6, v2

    if-eq v7, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x3

    .line 2142
    aget v5, v6, v5

    if-le v5, v0, :cond_4

    goto :goto_2

    .line 2143
    :cond_4
    array-length v5, v6

    sub-int/2addr v5, v4

    aget v5, v6, v5

    if-ge v5, v0, :cond_5

    :goto_2
    move v5, p0

    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    return p0

    :cond_6
    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    move v1, v5

    :goto_4
    return v1
.end method

.method public static getEmptyInstance()Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    .line 67
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator;-><init>()V

    .line 68
    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator;->addCanonicalItems()V

    .line 69
    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator;->fillInMissing()V

    return-object v0
.end method

.method private static getFilteredPattern(Landroid/icu/text/DateTimePatternGenerator$FormatParser;Ljava/util/BitSet;)Ljava/lang/String;
    .locals 4

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 459
    :goto_0
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->access$600(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 460
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 461
    :cond_0
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->access$600(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 462
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 463
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 465
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFrozenInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateTimePatternGenerator;

    if-eqz v1, :cond_0

    return-object v1

    .line 122
    :cond_0
    new-instance v1, Landroid/icu/text/DateTimePatternGenerator;

    invoke-direct {v1}, Landroid/icu/text/DateTimePatternGenerator;-><init>()V

    .line 123
    invoke-direct {v1, p0}, Landroid/icu/text/DateTimePatternGenerator;->initData(Landroid/icu/util/ULocale;)V

    .line 126
    invoke-virtual {v1}, Landroid/icu/text/DateTimePatternGenerator;->freeze()Landroid/icu/text/DateTimePatternGenerator;

    .line 127
    sget-object p0, Landroid/icu/text/DateTimePatternGenerator;->DTPNG_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {p0, v0, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getInstance()Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    .line 84
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 0

    .line 92
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getFrozenInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->cloneAsThawed()Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 0

    .line 100
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    return-object p0
.end method

.method private static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 2109
    invoke-static {p0, v0}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result p0

    .line 2110
    sget-object v1, Landroid/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object v3, v2, p0

    aget v0, v3, v0

    aget-object v0, v1, v0

    .line 2111
    aget-object p0, v2, p0

    const/4 v1, 0x2

    aget p0, p0, v1

    if-gez p0, :cond_0

    .line 2112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":S"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2115
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":N"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSet(Ljava/lang/String;)Ljava/util/TreeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1732
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object p0

    .line 1733
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    .line 1734
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1735
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "G"

    .line 1736
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1739
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private getTopBitNumber(I)I
    .locals 0

    const/4 p0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    ushr-int/lit8 p1, p1, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private hackTimes(Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Ljava/lang/String;)V
    .locals 7

    .line 408
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v0, p2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    .line 409
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 412
    :goto_0
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v3}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->access$600(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x73

    if-ge v1, v3, :cond_5

    .line 413
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v3}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->access$600(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 414
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_4

    .line 416
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 419
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_1

    .line 422
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    if-ne v5, v4, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    .line 427
    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    goto :goto_2

    :cond_3
    if-nez v2, :cond_5

    const/16 v3, 0x7a

    if-eq v5, v3, :cond_5

    const/16 v3, 0x5a

    if-eq v5, v3, :cond_5

    const/16 v3, 0x76

    if-eq v5, v3, :cond_5

    const/16 v3, 0x56

    if-ne v5, v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_5
    :goto_2
    new-instance p2, Ljava/util/BitSet;

    invoke-direct {p2}, Ljava/util/BitSet;-><init>()V

    .line 438
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    move v2, v0

    .line 439
    :goto_3
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v3}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->access$600(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 440
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {v3}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->access$600(Landroid/icu/text/DateTimePatternGenerator$FormatParser;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 441
    instance-of v5, v3, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    if-eqz v5, :cond_8

    .line 442
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->set(I)V

    .line 443
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_6

    const/16 v5, 0x53

    if-ne v3, v5, :cond_8

    .line 445
    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v2, -0x1

    :goto_4
    if-ltz v3, :cond_8

    .line 447
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    .line 448
    :cond_7
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 453
    :cond_9
    iget-object p2, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-static {p2, v1}, Landroid/icu/text/DateTimePatternGenerator;->getFilteredPattern(Landroid/icu/text/DateTimePatternGenerator$FormatParser;Ljava/util/BitSet;)Ljava/lang/String;

    move-result-object p2

    .line 454
    invoke-virtual {p0, p2, v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    return-void
.end method

.method private initData(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 135
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;

    invoke-direct {v0}, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;-><init>()V

    .line 137
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->addCanonicalItems()V

    .line 138
    invoke-direct {p0, v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->addICUPatterns(Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Landroid/icu/util/ULocale;)V

    .line 139
    invoke-direct {p0, v0, p1}, Landroid/icu/text/DateTimePatternGenerator;->addCLDRData(Landroid/icu/text/DateTimePatternGenerator$PatternInfo;Landroid/icu/util/ULocale;)V

    .line 140
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->setDateTimeFromCalendar(Landroid/icu/util/ULocale;)V

    .line 141
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->setDecimalSymbols(Landroid/icu/util/ULocale;)V

    .line 142
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getAllowedHourFormats(Landroid/icu/util/ULocale;)V

    .line 143
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->fillInMissing()V

    return-void
.end method

.method private isAvailableFormatSet(Ljava/lang/String;)Z
    .locals 0

    .line 1212
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSingleField(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1184
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    move v3, v2

    .line 1185
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1186
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private mapSkeletonMetacharacters(Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 581
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_d

    .line 582
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    xor-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_0
    if-nez v3, :cond_c

    const/16 v5, 0x48

    const/16 v7, 0x6a

    if-eq v4, v7, :cond_3

    const/16 v8, 0x43

    if-ne v4, v8, :cond_1

    goto :goto_1

    :cond_1
    const/16 v7, 0x4a

    if-ne v4, v7, :cond_2

    .line 625
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 626
    sget-object v4, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {p2, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 628
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_3
    :goto_1
    move v8, v1

    :goto_2
    add-int/lit8 v9, v2, 0x1

    .line 594
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_4

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v4, :cond_4

    add-int/lit8 v8, v8, 0x1

    move v2, v9

    goto :goto_2

    :cond_4
    and-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v6

    const/4 v10, 0x2

    if-ge v8, v10, :cond_5

    move v8, v6

    goto :goto_3

    :cond_5
    shr-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x3

    :goto_3
    const/16 v10, 0x61

    if-ne v4, v7, :cond_6

    .line 603
    iget-char v4, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    move v7, v4

    goto :goto_4

    .line 605
    :cond_6
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator;->allowedHourFormats:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 606
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 608
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v6

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x62

    if-eq v4, v11, :cond_7

    const/16 v11, 0x42

    if-ne v4, v11, :cond_8

    :cond_7
    move v10, v4

    :cond_8
    :goto_4
    if-eq v7, v5, :cond_9

    const/16 v4, 0x6b

    if-ne v7, v4, :cond_a

    :cond_9
    move v8, v1

    :cond_a
    :goto_5
    add-int/lit8 v4, v8, -0x1

    if-lez v8, :cond_b

    .line 617
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v4

    goto :goto_5

    :cond_b
    :goto_6
    add-int/lit8 v4, v9, -0x1

    if-lez v9, :cond_c

    .line 620
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v4

    goto :goto_6

    :cond_c
    :goto_7
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 632
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setAvailableFormat(Ljava/lang/String;)V
    .locals 0

    .line 1197
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1198
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->cldrAvailableFormatKeys:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setDateTimeFromCalendar(Landroid/icu/util/ULocale;)V
    .locals 2

    .line 303
    invoke-static {p1}, Landroid/icu/util/Calendar;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Landroid/icu/util/Calendar;->getDateTimePattern(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->setDateTimeFormat(Ljava/lang/String;)V

    return-void
.end method

.method private setDecimalSymbols(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 309
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 310
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->setDecimal(Ljava/lang/String;)V

    return-void
.end method

.method private static showMask(I)Ljava/lang/String;
    .locals 3

    .line 2032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p0

    if-nez v2, :cond_0

    goto :goto_1

    .line 2036
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, " | "

    .line 2037
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    :cond_1
    sget-object v2, Landroid/icu/text/DateTimePatternGenerator;->FIELD_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 2039
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2041
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addPattern(Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    const/4 v0, 0x0

    .line 683
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/text/DateTimePatternGenerator;->addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    return-object p0
.end method

.method public addPatternWithSkeleton(Ljava/lang/String;Ljava/lang/String;ZLandroid/icu/text/DateTimePatternGenerator$PatternInfo;)Landroid/icu/text/DateTimePatternGenerator;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 703
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 706
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-direct {v2, v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator$1;)V

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v2, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-result-object v0

    goto :goto_0

    .line 708
    :cond_0
    new-instance v2, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-direct {v2, v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator$1;)V

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v2, p2, v0, v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-result-object v0

    .line 710
    :goto_0
    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getBasePattern()Ljava/lang/String;

    move-result-object v2

    .line 718
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 719
    iget-boolean v5, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    if-eqz v5, :cond_1

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 720
    :cond_1
    iput v4, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    .line 721
    iget-object v3, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    iput-object v3, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    if-nez p3, :cond_2

    return-object p0

    .line 730
    :cond_2
    iget-object v3, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    if-eqz v3, :cond_4

    const/4 v5, 0x2

    .line 732
    iput v5, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    .line 733
    iget-object v5, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    iput-object v5, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    if-eqz p3, :cond_3

    if-eqz p2, :cond_4

    .line 734
    iget-boolean p3, v3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->skeletonWasSpecified:Z

    if-eqz p3, :cond_4

    :cond_3
    return-object p0

    .line 736
    :cond_4
    iput v1, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->status:I

    const-string p3, ""

    .line 737
    iput-object p3, p4, Landroid/icu/text/DateTimePatternGenerator$PatternInfo;->conflictingPattern:Ljava/lang/String;

    .line 738
    new-instance p3, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    if-eqz p2, :cond_5

    move v1, v4

    :cond_5
    invoke-direct {p3, p1, v1}, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;-><init>(Ljava/lang/String;Z)V

    .line 742
    iget-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {p1, v0, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {p1, v2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1250
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateTimePatternGenerator;

    .line 1251
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    .line 1252
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    .line 1253
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    .line 1254
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iput-object p0, v0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    .line 1255
    new-instance p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>(Landroid/icu/text/DateTimePatternGenerator$1;)V

    iput-object p0, v0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 1256
    new-instance p0, Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;-><init>()V

    iput-object p0, v0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    .line 1257
    new-instance p0, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    invoke-direct {p0, v1}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>(Landroid/icu/text/DateTimePatternGenerator$1;)V

    iput-object p0, v0, Landroid/icu/text/DateTimePatternGenerator;->_distanceInfo:Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;

    const/4 p0, 0x0

    .line 1259
    iput-boolean p0, v0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1263
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string v1, "Internal Error"

    invoke-direct {v0, v1, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public cloneAsThawed()Landroid/icu/text/DateTimePatternGenerator;
    .locals 2

    .line 1237
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateTimePatternGenerator;

    const/4 v1, 0x0

    .line 1238
    iput-boolean v1, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->cloneAsThawed()Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    return-object p0
.end method

.method public freeze()Landroid/icu/text/DateTimePatternGenerator;
    .locals 1

    const/4 v0, 0x1

    .line 1228
    iput-boolean v0, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0}, Landroid/icu/text/DateTimePatternGenerator;->freeze()Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    return-object p0
.end method

.method public getAppendItemFormat(I)Ljava/lang/String;
    .locals 0

    .line 1144
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getAppendItemName(I)Ljava/lang/String;
    .locals 0

    .line 1170
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getBaseSkeleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 807
    monitor-enter p0

    .line 808
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 809
    iget-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->getBasePattern()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 810
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBaseSkeletons(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 847
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 849
    :cond_0
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->basePattern_pattern:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public getBestPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 525
    invoke-direct {p0, p1, v0, v1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBestPattern(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 540
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCanonicalSkeletonAllowingDuplicates(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 790
    monitor-enter p0

    .line 791
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 792
    iget-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toCanonicalString()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 793
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDateTimeFormat()Ljava/lang/String;
    .locals 0

    .line 917
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getDecimal()Ljava/lang/String;
    .locals 0

    .line 940
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultHourFormatChar()C
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    iget-char p0, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    return p0
.end method

.method public getFields(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2019
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v0, p1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    .line 2020
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2021
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual {v0}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2022
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2023
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->quoteLiteral(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2025
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/text/DateTimePatternGenerator;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2028
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRedundants(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 958
    monitor-enter p0

    if-nez p1, :cond_0

    .line 960
    :try_start_0
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 962
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 963
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    .line 964
    iget-object v2, v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    .line 965
    sget-object v3, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 968
    :cond_2
    invoke-virtual {v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)Ljava/lang/String;

    move-result-object v1

    .line 969
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 970
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 994
    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 995
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSkeleton(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 755
    monitor-enter p0

    .line 756
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 757
    iget-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 758
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSkeletonAllowingDuplicates(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 772
    monitor-enter p0

    .line 773
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 774
    iget-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 775
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSkeletons(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 829
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 831
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    .line 832
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator;->skeleton2pattern:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;

    .line 833
    iget-object v2, v2, Landroid/icu/text/DateTimePatternGenerator$PatternWithSkeletonFlag;->pattern:Ljava/lang/String;

    .line 834
    sget-object v3, Landroid/icu/text/DateTimePatternGenerator;->CANONICAL_SET:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 837
    :cond_1
    invoke-virtual {v1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public isFrozen()Z
    .locals 0

    .line 1220
    iget-boolean p0, p0, Landroid/icu/text/DateTimePatternGenerator;->frozen:Z

    return p0
.end method

.method public replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 865
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/DateTimePatternGenerator;->replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replaceFieldTypes(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 883
    monitor-enter p0

    .line 884
    :try_start_0
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V

    .line 885
    iget-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->current:Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator;->fp:Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    move-result-object p1

    const-class p2, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/icu/text/DateTimePatternGenerator;->adjustFieldTypes(Landroid/icu/text/DateTimePatternGenerator$PatternWithMatcher;Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;Ljava/util/EnumSet;I)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 886
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAppendItemFormat(ILjava/lang/String;)V
    .locals 0

    .line 1132
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1133
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemFormats:[Ljava/lang/String;

    aput-object p2, p0, p1

    return-void
.end method

.method public setAppendItemName(ILjava/lang/String;)V
    .locals 0

    .line 1158
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 1159
    iget-object p0, p0, Landroid/icu/text/DateTimePatternGenerator;->appendItemNames:[Ljava/lang/String;

    aput-object p2, p0, p1

    return-void
.end method

.method public setDateTimeFormat(Ljava/lang/String;)V
    .locals 0

    .line 907
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 908
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->dateTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public setDecimal(Ljava/lang/String;)V
    .locals 0

    .line 931
    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator;->checkFrozen()V

    .line 932
    iput-object p1, p0, Landroid/icu/text/DateTimePatternGenerator;->decimal:Ljava/lang/String;

    return-void
.end method

.method public setDefaultHourFormatChar(C)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    iput-char p1, p0, Landroid/icu/text/DateTimePatternGenerator;->defaultHourFormatChar:C

    return-void
.end method

.method public skeletonsAreSimilar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1710
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1714
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getSet(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object p1

    .line 1715
    invoke-direct {p0, p2}, Landroid/icu/text/DateTimePatternGenerator;->getSet(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object p0

    .line 1716
    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result p2

    invoke-virtual {p0}, Ljava/util/TreeSet;->size()I

    move-result v0

    const/4 v2, 0x0

    if-eq p2, v0, :cond_1

    return v2

    .line 1719
    :cond_1
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1720
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1721
    invoke-static {p2, v2}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result p2

    .line 1722
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1723
    invoke-static {v0, v2}, Landroid/icu/text/DateTimePatternGenerator;->getCanonicalIndex(Ljava/lang/String;Z)I

    move-result v0

    .line 1724
    sget-object v3, Landroid/icu/text/DateTimePatternGenerator;->types:[[I

    aget-object p2, v3, p2

    aget p2, p2, v1

    aget-object v0, v3, v0

    aget v0, v0, v1

    if-eq p2, v0, :cond_2

    return v2

    :cond_3
    return v1
.end method
