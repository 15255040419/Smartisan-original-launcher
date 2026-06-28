.class public abstract Landroid/icu/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/Calendar$WeekDataCache;,
        Landroid/icu/util/Calendar$WeekData;,
        Landroid/icu/util/Calendar$FormatConfiguration;,
        Landroid/icu/util/Calendar$PatternData;,
        Landroid/icu/util/Calendar$CalType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x9

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field protected static final BASE_FIELD_COUNT:I = 0x17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DATE:I = 0x5

.field static final DATE_PRECEDENCE:[[[I

.field public static final DAY_OF_MONTH:I = 0x5

.field public static final DAY_OF_WEEK:I = 0x7

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8

.field public static final DAY_OF_YEAR:I = 0x6

.field public static final DECEMBER:I = 0xb

.field private static final DEFAULT_PATTERNS:[Ljava/lang/String;

.field public static final DOW_LOCAL:I = 0x12

.field static final DOW_PRECEDENCE:[[[I

.field public static final DST_OFFSET:I = 0x10

.field protected static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final ERA:I = 0x0

.field public static final EXTENDED_YEAR:I = 0x13

.field public static final FEBRUARY:I = 0x1

.field private static final FIELD_DIFF_MAX_INT:I = 0x7fffffff

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FIND_ZONE_TRANSITION_TIME_UNITS:[I

.field public static final FRIDAY:I = 0x6

.field protected static final GREATEST_MINIMUM:I = 0x1

.field private static final GREGORIAN_MONTH_COUNT:[[I

.field public static final HOUR:I = 0xa

.field public static final HOUR_OF_DAY:I = 0xb

.field protected static final INTERNALLY_SET:I = 0x1

.field public static final IS_LEAP_MONTH:I = 0x16

.field public static final JANUARY:I = 0x0

.field protected static final JAN_1_1_JULIAN_DAY:I = 0x1a4452

.field public static final JULIAN_DAY:I = 0x14

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field protected static final LEAST_MAXIMUM:I = 0x2

.field private static final LIMITS:[[I

.field public static final MARCH:I = 0x2

.field protected static final MAXIMUM:I = 0x3

.field protected static final MAX_DATE:Ljava/util/Date;

.field protected static final MAX_FIELD_COUNT:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_HOURS:I = 0x224

.field protected static final MAX_JULIAN:I = 0x7f000000

.field protected static final MAX_MILLIS:J = 0x28d47dbbf19b000L

.field public static final MAY:I = 0x4

.field public static final MILLISECOND:I = 0xe

.field public static final MILLISECONDS_IN_DAY:I = 0x15

.field protected static final MINIMUM:I = 0x0

.field protected static final MINIMUM_USER_STAMP:I = 0x2

.field public static final MINUTE:I = 0xc

.field protected static final MIN_DATE:Ljava/util/Date;

.field protected static final MIN_JULIAN:I = -0x7f000000

.field protected static final MIN_MILLIS:J = -0x28ec76c40e65000L

.field public static final MONDAY:I = 0x2

.field public static final MONTH:I = 0x2

.field public static final NOVEMBER:I = 0xa

.field public static final OCTOBER:I = 0x9

.field protected static final ONE_DAY:J = 0x5265c00L

.field protected static final ONE_HOUR:I = 0x36ee80

.field protected static final ONE_MINUTE:I = 0xea60

.field protected static final ONE_SECOND:I = 0x3e8

.field protected static final ONE_WEEK:J = 0x240c8400L

.field private static final PATTERN_CACHE:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Calendar$PatternData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PM:I = 0x1

.field private static final QUOTE:C = '\''

.field protected static final RESOLVE_REMAP:I = 0x20

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0xd

.field public static final SEPTEMBER:I = 0x8

.field private static STAMP_MAX:I = 0x0

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final UNDECIMBER:I = 0xc

.field protected static final UNSET:I = 0x0

.field public static final WALLTIME_FIRST:I = 0x1

.field public static final WALLTIME_LAST:I = 0x0

.field public static final WALLTIME_NEXT_VALID:I = 0x2

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEKDAY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKEND:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKEND_CEASE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKEND_ONSET:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

.field public static final WEEK_OF_MONTH:I = 0x4

.field public static final WEEK_OF_YEAR:I = 0x3

.field public static final YEAR:I = 0x1

.field public static final YEAR_WOY:I = 0x11

.field public static final ZONE_OFFSET:I = 0xf

.field private static final serialVersionUID:J = 0x565b47a9d4dd4fcdL


# instance fields
.field private actualLocale:Landroid/icu/util/ULocale;

.field private transient areAllFieldsSet:Z

.field private transient areFieldsSet:Z

.field private transient areFieldsVirtuallySet:Z

.field private transient fields:[I

.field private firstDayOfWeek:I

.field private transient gregorianDayOfMonth:I

.field private transient gregorianDayOfYear:I

.field private transient gregorianMonth:I

.field private transient gregorianYear:I

.field private transient internalSetMask:I

.field private transient isTimeSet:Z

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field private transient nextStamp:I

.field private repeatedWallTime:I

.field private skippedWallTime:I

.field private transient stamp:[I

.field private time:J

.field private validLocale:Landroid/icu/util/ULocale;

.field private weekendCease:I

.field private weekendCeaseMillis:I

.field private weekendOnset:I

.field private weekendOnsetMillis:I

.field private zone:Landroid/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1225
    new-instance v0, Ljava/util/Date;

    const-wide v1, -0x28ec76c40e65000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/icu/util/Calendar;->MIN_DATE:Ljava/util/Date;

    .line 1244
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x28d47dbbf19b000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/icu/util/Calendar;->MAX_DATE:Ljava/util/Date;

    const/16 v0, 0x2710

    .line 1425
    sput v0, Landroid/icu/util/Calendar;->STAMP_MAX:I

    .line 3421
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/util/Calendar;->PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    const-string v1, "HH:mm:ss z"

    const-string v2, "HH:mm:ss z"

    const-string v3, "HH:mm:ss"

    const-string v4, "HH:mm"

    const-string v5, "EEEE, yyyy MMMM dd"

    const-string/jumbo v6, "yyyy MMMM d"

    const-string/jumbo v7, "yyyy MMM d"

    const-string/jumbo v8, "yy/MM/dd"

    const-string/jumbo v9, "{1} {0}"

    const-string/jumbo v10, "{1} {0}"

    const-string/jumbo v11, "{1} {0}"

    const-string/jumbo v12, "{1} {0}"

    const-string/jumbo v13, "{1} {0}"

    .line 3424
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v1, [I

    aput-object v2, v0, v1

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    const/4 v4, 0x2

    aput-object v2, v0, v4

    new-array v2, v1, [I

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [I

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [I

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v6, [I

    .line 4242
    fill-array-data v2, :array_0

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [I

    const/16 v10, 0x8

    aput-object v2, v0, v10

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    const/16 v11, 0x9

    aput-object v2, v0, v11

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    const/16 v12, 0xa

    aput-object v2, v0, v12

    new-array v2, v6, [I

    fill-array-data v2, :array_3

    const/16 v13, 0xb

    aput-object v2, v0, v13

    new-array v2, v6, [I

    fill-array-data v2, :array_4

    const/16 v14, 0xc

    aput-object v2, v0, v14

    const/16 v2, 0xd

    new-array v15, v6, [I

    fill-array-data v15, :array_5

    aput-object v15, v0, v2

    const/16 v2, 0xe

    new-array v15, v6, [I

    fill-array-data v15, :array_6

    aput-object v15, v0, v2

    const/16 v2, 0xf

    new-array v15, v6, [I

    fill-array-data v15, :array_7

    aput-object v15, v0, v2

    const/16 v2, 0x10

    new-array v15, v6, [I

    fill-array-data v15, :array_8

    aput-object v15, v0, v2

    const/16 v2, 0x11

    new-array v15, v1, [I

    aput-object v15, v0, v2

    new-array v2, v6, [I

    fill-array-data v2, :array_9

    const/16 v15, 0x12

    aput-object v2, v0, v15

    const/16 v2, 0x13

    new-array v13, v1, [I

    aput-object v13, v0, v2

    const/16 v2, 0x14

    new-array v13, v6, [I

    fill-array-data v13, :array_a

    aput-object v13, v0, v2

    const/16 v2, 0x15

    new-array v13, v6, [I

    fill-array-data v13, :array_b

    aput-object v13, v0, v2

    const/16 v2, 0x16

    new-array v13, v6, [I

    fill-array-data v13, :array_c

    aput-object v13, v0, v2

    sput-object v0, Landroid/icu/util/Calendar;->LIMITS:[[I

    .line 4783
    new-instance v0, Landroid/icu/util/Calendar$WeekDataCache;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/icu/util/Calendar$WeekDataCache;-><init>(Landroid/icu/util/Calendar$1;)V

    sput-object v0, Landroid/icu/util/Calendar;->WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

    new-array v0, v4, [[[I

    new-array v2, v12, [[I

    new-array v13, v3, [I

    aput v7, v13, v1

    aput-object v13, v2, v1

    new-array v13, v4, [I

    .line 5081
    fill-array-data v13, :array_d

    aput-object v13, v2, v3

    new-array v13, v4, [I

    fill-array-data v13, :array_e

    aput-object v13, v2, v4

    new-array v13, v4, [I

    fill-array-data v13, :array_f

    aput-object v13, v2, v5

    new-array v13, v4, [I

    fill-array-data v13, :array_10

    aput-object v13, v2, v6

    new-array v13, v4, [I

    fill-array-data v13, :array_11

    aput-object v13, v2, v7

    new-array v13, v4, [I

    fill-array-data v13, :array_12

    aput-object v13, v2, v8

    new-array v13, v3, [I

    aput v8, v13, v1

    aput-object v13, v2, v9

    new-array v13, v4, [I

    fill-array-data v13, :array_13

    aput-object v13, v2, v10

    new-array v13, v4, [I

    fill-array-data v13, :array_14

    aput-object v13, v2, v11

    aput-object v2, v0, v1

    new-array v2, v7, [[I

    new-array v13, v3, [I

    aput v5, v13, v1

    aput-object v13, v2, v1

    new-array v13, v3, [I

    aput v6, v13, v1

    aput-object v13, v2, v3

    new-array v13, v3, [I

    aput v10, v13, v1

    aput-object v13, v2, v4

    new-array v13, v4, [I

    fill-array-data v13, :array_15

    aput-object v13, v2, v5

    new-array v13, v4, [I

    fill-array-data v13, :array_16

    aput-object v13, v2, v6

    aput-object v2, v0, v3

    sput-object v0, Landroid/icu/util/Calendar;->DATE_PRECEDENCE:[[[I

    new-array v0, v3, [[[I

    new-array v2, v4, [[I

    new-array v13, v3, [I

    aput v9, v13, v1

    aput-object v13, v2, v1

    new-array v13, v3, [I

    aput v15, v13, v1

    aput-object v13, v2, v3

    aput-object v2, v0, v1

    .line 5103
    sput-object v0, Landroid/icu/util/Calendar;->DOW_PRECEDENCE:[[[I

    new-array v0, v6, [I

    .line 5428
    fill-array-data v0, :array_17

    sput-object v0, Landroid/icu/util/Calendar;->FIND_ZONE_TRANSITION_TIME_UNITS:[I

    new-array v0, v14, [[I

    new-array v2, v6, [I

    .line 6092
    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v4

    new-array v1, v6, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v5

    new-array v1, v6, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v6

    new-array v1, v6, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v7

    new-array v1, v6, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v8

    new-array v1, v6, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v9

    new-array v1, v6, [I

    fill-array-data v1, :array_20

    aput-object v1, v0, v10

    new-array v1, v6, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v11

    new-array v1, v6, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v12

    new-array v1, v6, [I

    fill-array-data v1, :array_23

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    const-string v3, "ERA"

    const-string v4, "YEAR"

    const-string v5, "MONTH"

    const-string v6, "WEEK_OF_YEAR"

    const-string v7, "WEEK_OF_MONTH"

    const-string v8, "DAY_OF_MONTH"

    const-string v9, "DAY_OF_YEAR"

    const-string v10, "DAY_OF_WEEK"

    const-string v11, "DAY_OF_WEEK_IN_MONTH"

    const-string v12, "AM_PM"

    const-string v13, "HOUR"

    const-string v14, "HOUR_OF_DAY"

    const-string v15, "MINUTE"

    const-string v16, "SECOND"

    const-string v17, "MILLISECOND"

    const-string v18, "ZONE_OFFSET"

    const-string v19, "DST_OFFSET"

    const-string v20, "YEAR_WOY"

    const-string v21, "DOW_LOCAL"

    const-string v22, "EXTENDED_YEAR"

    const-string v23, "JULIAN_DAY"

    const-string v24, "MILLISECONDS_IN_DAY"

    .line 6226
    filled-new-array/range {v3 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x7
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xb
        0xb
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x17
        0x17
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x3b
        0x3b
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x3b
        0x3b
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x3e7
        0x3e7
    .end array-data

    :array_7
    .array-data 4
        -0x2932e00
        -0x2932e00
        0x2932e00
        0x2932e00
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x36ee80
        0x36ee80
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x1
        0x7
        0x7
    .end array-data

    :array_a
    .array-data 4
        -0x7f000000
        -0x7f000000
        0x7f000000
        0x7f000000
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x5265bff
        0x5265bff
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x3
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x4
        0x7
    .end array-data

    :array_f
    .array-data 4
        0x8
        0x7
    .end array-data

    :array_10
    .array-data 4
        0x3
        0x12
    .end array-data

    :array_11
    .array-data 4
        0x4
        0x12
    .end array-data

    :array_12
    .array-data 4
        0x8
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x25
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x23
        0x11
    .end array-data

    :array_15
    .array-data 4
        0x28
        0x7
    .end array-data

    :array_16
    .array-data 4
        0x28
        0x12
    .end array-data

    :array_17
    .array-data 4
        0x36ee80
        0x1b7740
        0xea60
        0x3e8
    .end array-data

    :array_18
    .array-data 4
        0x1f
        0x1f
        0x0
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x1c
        0x1d
        0x1f
        0x1f
    .end array-data

    :array_1a
    .array-data 4
        0x1f
        0x1f
        0x3b
        0x3c
    .end array-data

    :array_1b
    .array-data 4
        0x1e
        0x1e
        0x5a
        0x5b
    .end array-data

    :array_1c
    .array-data 4
        0x1f
        0x1f
        0x78
        0x79
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x1e
        0x97
        0x98
    .end array-data

    :array_1e
    .array-data 4
        0x1f
        0x1f
        0xb5
        0xb6
    .end array-data

    :array_1f
    .array-data 4
        0x1f
        0x1f
        0xd4
        0xd5
    .end array-data

    :array_20
    .array-data 4
        0x1e
        0x1e
        0xf3
        0xf4
    .end array-data

    :array_21
    .array-data 4
        0x1f
        0x1f
        0x111
        0x112
    .end array-data

    :array_22
    .array-data 4
        0x1e
        0x1e
        0x130
        0x131
    .end array-data

    :array_23
    .array-data 4
        0x1f
        0x1f
        0x14e
        0x14f
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .line 1505
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 1

    .line 1524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1325
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->lenient:Z

    const/4 v0, 0x0

    .line 1386
    iput v0, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    .line 1391
    iput v0, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    const/4 v0, 0x2

    .line 1422
    iput v0, p0, Landroid/icu/util/Calendar;->nextStamp:I

    .line 1525
    iput-object p1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    .line 1528
    invoke-static {p2}, Landroid/icu/util/Calendar;->getRegionForCalendar(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/Calendar;->setWeekData(Ljava/lang/String;)V

    .line 1531
    invoke-direct {p0, p2}, Landroid/icu/util/Calendar;->setCalendarLocale(Landroid/icu/util/ULocale;)V

    .line 1533
    invoke-direct {p0}, Landroid/icu/util/Calendar;->initInternal()V

    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 1515
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$1100()Landroid/icu/impl/ICUCache;
    .locals 1

    .line 642
    sget-object v0, Landroid/icu/util/Calendar;->PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;
    .locals 0

    .line 642
    invoke-static {p0, p1}, Landroid/icu/util/Calendar;->getPatternData(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .line 642
    sget-object v0, Landroid/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .locals 0

    .line 642
    invoke-static {p0}, Landroid/icu/util/Calendar;->getWeekDataForRegionInternal(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    move-result-object p0

    return-object p0
.end method

.method private compare(Ljava/lang/Object;)J
    .locals 2

    .line 2344
    instance-of v0, p1, Landroid/icu/util/Calendar;

    if-eqz v0, :cond_0

    .line 2345
    check-cast p1, Landroid/icu/util/Calendar;

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    .line 2346
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 2347
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2351
    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    return-wide p0

    .line 2349
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "is not a Calendar or Date"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final computeGregorianAndDOWFields(I)V
    .locals 2

    .line 4925
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->computeGregorianFields(I)V

    .line 4928
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    invoke-static {p1}, Landroid/icu/util/Calendar;->julianDayToDayOfWeek(I)I

    move-result p1

    const/4 v1, 0x7

    aput p1, v0, v1

    .line 4931
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    add-int/2addr p1, v0

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x7

    .line 4935
    :cond_0
    iget-object p0, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v0, 0x12

    aput p1, p0, v0

    return-void
.end method

.method private final computeWeekFields()V
    .locals 10

    .line 5008
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v1, 0x13

    aget v1, v0, v1

    const/4 v2, 0x7

    .line 5009
    aget v3, v0, v2

    const/4 v4, 0x6

    .line 5010
    aget v0, v0, v4

    add-int/lit8 v5, v3, 0x7

    .line 5022
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v6

    sub-int/2addr v5, v6

    rem-int/2addr v5, v2

    sub-int v6, v3, v0

    add-int/lit16 v6, v6, 0x1b59

    .line 5023
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v7

    sub-int/2addr v6, v7

    rem-int/2addr v6, v2

    add-int/lit8 v7, v0, -0x1

    add-int/2addr v7, v6

    .line 5024
    div-int/2addr v7, v2

    rsub-int/lit8 v6, v6, 0x7

    .line 5025
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    if-lt v6, v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    const/4 v6, 0x1

    if-nez v7, :cond_1

    add-int/lit8 v4, v1, -0x1

    .line 5037
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 5038
    invoke-virtual {p0, v0, v3}, Landroid/icu/util/Calendar;->weekNumber(II)I

    move-result v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5041
    :cond_1
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v8

    add-int/lit8 v9, v8, -0x5

    if-lt v0, v9, :cond_3

    add-int v9, v5, v8

    sub-int/2addr v9, v0

    .line 5049
    rem-int/2addr v9, v2

    if-gez v9, :cond_2

    add-int/lit8 v9, v9, 0x7

    :cond_2
    sub-int/2addr v4, v9

    .line 5053
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v9

    if-lt v4, v9, :cond_3

    add-int/2addr v0, v2

    sub-int/2addr v0, v5

    if-le v0, v8, :cond_3

    add-int/lit8 v1, v1, 0x1

    move v7, v6

    .line 5060
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v4, 0x3

    aput v7, v0, v4

    const/16 v4, 0x11

    .line 5061
    aput v1, v0, v4

    const/4 v1, 0x5

    .line 5064
    aget v1, v0, v1

    const/4 v4, 0x4

    .line 5065
    invoke-virtual {p0, v1, v3}, Landroid/icu/util/Calendar;->weekNumber(II)I

    move-result v3

    aput v3, v0, v4

    .line 5066
    iget-object p0, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v0, 0x8

    sub-int/2addr v1, v6

    div-int/2addr v1, v2

    add-int/2addr v1, v6

    aput v1, p0, v0

    return-void
.end method

.method private static createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 3

    .line 1757
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 1758
    invoke-static {p0}, Landroid/icu/util/Calendar;->getCalendarTypeForLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$CalType;

    move-result-object v1

    .line 1759
    sget-object v2, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    if-ne v1, v2, :cond_0

    .line 1761
    sget-object v1, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    .line 1764
    :cond_0
    sget-object v2, Landroid/icu/util/Calendar$1;->$SwitchMap$android$icu$util$Calendar$CalType:[I

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 1820
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown calendar type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1814
    :pswitch_0
    new-instance v1, Landroid/icu/util/TaiwanCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/TaiwanCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    .line 1811
    :pswitch_1
    new-instance v1, Landroid/icu/util/PersianCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    .line 1808
    :pswitch_2
    new-instance v1, Landroid/icu/util/JapaneseCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/JapaneseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    .line 1805
    :pswitch_3
    new-instance v1, Landroid/icu/util/IslamicCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    .line 1798
    :pswitch_4
    new-instance v1, Landroid/icu/util/IndianCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    .line 1795
    :pswitch_5
    new-instance v1, Landroid/icu/util/HebrewCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    .line 1791
    :pswitch_6
    new-instance v1, Landroid/icu/util/EthiopicCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1792
    move-object p0, v1

    check-cast p0, Landroid/icu/util/EthiopicCalendar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    goto :goto_0

    .line 1788
    :pswitch_7
    new-instance v1, Landroid/icu/util/EthiopicCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    .line 1785
    :pswitch_8
    new-instance v1, Landroid/icu/util/DangiCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/DangiCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    .line 1782
    :pswitch_9
    new-instance v1, Landroid/icu/util/CopticCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/CopticCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    .line 1779
    :pswitch_a
    new-instance v1, Landroid/icu/util/ChineseCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    .line 1776
    :pswitch_b
    new-instance v1, Landroid/icu/util/BuddhistCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/BuddhistCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    goto :goto_0

    .line 1770
    :pswitch_c
    new-instance v1, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    const/4 p0, 0x2

    .line 1771
    invoke-virtual {v1, p0}, Landroid/icu/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 p0, 0x4

    .line 1772
    invoke-virtual {v1, p0}, Landroid/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    goto :goto_0

    .line 1766
    :pswitch_d
    new-instance v1, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v1, v0, p0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x3d

    .line 3642
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 3647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3649
    new-instance v3, Ljava/text/StringCharacterIterator;

    invoke-direct {v3, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 3651
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->first()C

    move-result p0

    :goto_0
    move v5, v1

    move v1, p0

    move p0, v5

    const v4, 0xffff

    if-eq v1, v4, :cond_4

    const/16 v4, 0x27

    if-ne v1, v4, :cond_1

    xor-int/lit8 p0, v0, 0x1

    move v0, p0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    if-eq v1, p0, :cond_3

    .line 3658
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_2

    const-string p0, ";"

    .line 3659
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3661
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "="

    .line 3662
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3663
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3651
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->next()C

    move-result p0

    goto :goto_0

    .line 3667
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 5447
    sget-object v2, Landroid/icu/util/Calendar;->FIND_ZONE_TRANSITION_TIME_UNITS:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const-wide/16 v6, 0x1

    const/4 v8, 0x1

    if-ge v5, v3, :cond_1

    aget v9, v2, v5

    int-to-long v9, v9

    .line 5448
    div-long v11, p4, v9

    .line 5449
    div-long v13, p2, v9

    cmp-long v15, v13, v11

    if-lez v15, :cond_0

    add-long/2addr v11, v13

    add-long/2addr v11, v6

    ushr-long v2, v11, v8

    mul-long/2addr v2, v9

    move v4, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    if-nez v4, :cond_2

    add-long v2, p2, p4

    ushr-long/2addr v2, v8

    :cond_2
    move-wide v9, v2

    if-eqz v4, :cond_5

    cmp-long v2, v9, p2

    if-eqz v2, :cond_4

    .line 5464
    invoke-virtual {v0, v9, v10}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    if-eq v2, v1, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide v4, v9

    .line 5466
    invoke-static/range {v0 .. v5}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_3
    move-wide v2, v9

    goto :goto_2

    :cond_4
    move-wide/from16 v2, p2

    :goto_2
    sub-long/2addr v9, v6

    goto :goto_3

    :cond_5
    add-long v2, p2, p4

    ushr-long/2addr v2, v8

    move-wide v9, v2

    move-wide/from16 v2, p2

    :goto_3
    cmp-long v5, v9, p4

    if-nez v5, :cond_6

    .line 5477
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 5479
    :cond_6
    invoke-virtual {v0, v9, v10}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v5

    if-eq v5, v1, :cond_8

    if-eqz v4, :cond_7

    .line 5482
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide v4, v9

    .line 5484
    invoke-static/range {v0 .. v5}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide v2, v9

    move-wide/from16 v4, p4

    .line 5486
    invoke-static/range {v0 .. v5}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static firstIslamicStartYearFromGrego(I)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x20

    const/16 v2, 0x7b9

    const/4 v3, 0x1

    if-lt p0, v2, :cond_0

    add-int/lit16 v2, p0, -0x7b9

    .line 2164
    div-int/lit8 v4, v2, 0x41

    .line 2165
    rem-int/lit8 v2, v2, 0x41

    mul-int/lit8 v4, v4, 0x2

    if-lt v2, v1, :cond_1

    goto :goto_0

    :cond_0
    add-int/lit16 v2, p0, -0x7b8

    .line 2168
    div-int/lit8 v4, v2, 0x41

    sub-int/2addr v4, v3

    neg-int v2, v2

    .line 2169
    rem-int/lit8 v2, v2, 0x41

    mul-int/lit8 v4, v4, 0x2

    if-gt v2, v1, :cond_1

    :goto_0
    move v0, v3

    :cond_1
    add-int/2addr v4, v0

    add-int/lit16 p0, p0, -0x243

    add-int/2addr p0, v4

    return p0
.end method

.method protected static final floorDivide(II)I
    .locals 0

    if-ltz p0, :cond_0

    .line 6174
    div-int/2addr p0, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 6175
    div-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method protected static final floorDivide(II[I)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    .line 6194
    rem-int v1, p0, p1

    aput v1, p2, v0

    .line 6195
    div-int/2addr p0, p1

    return p0

    :cond_0
    add-int/lit8 v1, p0, 0x1

    .line 6197
    div-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr p1, v1

    sub-int/2addr p0, p1

    .line 6198
    aput p0, p2, v0

    return v1
.end method

.method protected static final floorDivide(JI[I)I
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    int-to-long v2, p2

    .line 6218
    rem-long v4, p0, v2

    long-to-int p2, v4

    aput p2, p3, v1

    .line 6219
    div-long/2addr p0, v2

    long-to-int p0, p0

    return p0

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, p0, v2

    int-to-long v6, p2

    .line 6221
    div-long/2addr v4, v6

    sub-long/2addr v4, v2

    long-to-int p2, v4

    int-to-long v2, p2

    mul-long/2addr v2, v6

    sub-long/2addr p0, v2

    long-to-int p0, p0

    .line 6222
    aput p0, p3, v1

    return p2
.end method

.method protected static final floorDivide(JJ)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 6156
    div-long/2addr p0, p2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 6157
    div-long/2addr p0, p2

    sub-long/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method private static formatHelper(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;II)Landroid/icu/text/DateFormat;
    .locals 7

    const/4 v0, -0x1

    if-lt p3, v0, :cond_5

    const/4 v1, 0x3

    if-gt p3, v1, :cond_5

    if-lt p2, v0, :cond_4

    if-gt p2, v1, :cond_4

    .line 3449
    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->access$600(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;

    move-result-object v0

    const/4 v1, 0x0

    if-ltz p3, :cond_0

    if-ltz p2, :cond_0

    .line 3456
    invoke-static {v0, p2}, Landroid/icu/util/Calendar$PatternData;->access$700(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    .line 3457
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$800(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p3

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 3458
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$800(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 p2, p2, 0x4

    aget-object v6, v6, p2

    aput-object v6, v4, v5

    .line 3455
    invoke-static {v2, v3, v3, v4}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3462
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$900(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3463
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$900(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    .line 3464
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$900(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    .line 3466
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$800(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v4

    aget-object p2, v4, p2

    .line 3467
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$800(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v0

    aget-object p3, v0, p3

    .line 3465
    invoke-static {p2, p3, v1, v3}, Landroid/icu/util/Calendar;->mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-ltz p3, :cond_1

    .line 3471
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$800(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p2

    aget-object v2, p2, p3

    .line 3472
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$900(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 3473
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$900(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p2

    aget-object v1, p2, p3

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_3

    .line 3476
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$800(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p3

    add-int/lit8 p2, p2, 0x4

    aget-object v2, p3, p2

    .line 3477
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$900(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 3478
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->access$900(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p3

    aget-object v1, p3, p2

    .line 3483
    :cond_2
    :goto_0
    invoke-virtual {p0, v2, v1, p1}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p1

    .line 3484
    invoke-virtual {p1, p0}, Landroid/icu/text/DateFormat;->setCalendar(Landroid/icu/util/Calendar;)V

    return-object p1

    .line 3481
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No date or time style specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3446
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal date style "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3443
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal time style "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getActualHelper(III)I
    .locals 3

    if-ne p2, p3, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x1

    if-le p3, p2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 2572
    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/Calendar;

    .line 2576
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->complete()V

    .line 2578
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setLenient(Z)V

    if-gez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 2579
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->prepareGetActual(IZ)V

    .line 2585
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->set(II)V

    .line 2591
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    if-lez v1, :cond_3

    return p2

    :cond_3
    add-int v0, p2, v1

    .line 2598
    invoke-virtual {p0, p1, v1}, Landroid/icu/util/Calendar;->add(II)V

    .line 2599
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    if-eq v2, v0, :cond_4

    goto :goto_2

    :cond_4
    move p2, v0

    if-ne v0, p3, :cond_3

    :goto_2
    return p2
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 1833
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    .line 1844
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method private static getCalendarTypeForLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$CalType;
    .locals 5

    .line 1743
    invoke-static {p0}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1745
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1746
    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1747
    iget-object v4, v3, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1752
    :cond_1
    sget-object p0, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    return-object p0
.end method

.method public static getDateTimeFormatString(Landroid/icu/util/ULocale;Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    const/4 v0, -0x1

    if-lt p3, v0, :cond_4

    const/4 v1, 0x3

    if-gt p3, v1, :cond_4

    if-lt p2, v0, :cond_3

    if-gt p2, v1, :cond_3

    .line 3513
    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->access$1000(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;

    move-result-object p0

    if-ltz p3, :cond_0

    if-ltz p2, :cond_0

    .line 3519
    invoke-static {p0, p2}, Landroid/icu/util/Calendar$PatternData;->access$700(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 3520
    invoke-static {p0}, Landroid/icu/util/Calendar$PatternData;->access$800(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    aget-object p3, v3, p3

    aput-object p3, v1, v2

    const/4 p3, 0x1

    .line 3521
    invoke-static {p0}, Landroid/icu/util/Calendar$PatternData;->access$800(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p0

    add-int/lit8 p2, p2, 0x4

    aget-object p0, p0, p2

    aput-object p0, v1, p3

    .line 3518
    invoke-static {p1, v0, v0, v1}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-ltz p3, :cond_1

    .line 3523
    invoke-static {p0}, Landroid/icu/util/Calendar$PatternData;->access$800(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p3

    goto :goto_0

    :cond_1
    if-ltz p2, :cond_2

    .line 3525
    invoke-static {p0}, Landroid/icu/util/Calendar$PatternData;->access$800(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object p0

    add-int/lit8 p2, p2, 0x4

    aget-object p0, p0, p2

    :goto_0
    return-object p0

    .line 3527
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No date or time style specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3510
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal date style "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3507
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal time style "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDateTimePattern(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3611
    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->access$600(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;

    move-result-object p0

    .line 3612
    invoke-static {p0, p2}, Landroid/icu/util/Calendar$PatternData;->access$700(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getImmediatePreviousZoneTransition(J)Ljava/lang/Long;
    .locals 3

    .line 5387
    iget-object v0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    instance-of v1, v0, Landroid/icu/util/BasicTimeZone;

    if-eqz v1, :cond_1

    .line 5388
    check-cast v0, Landroid/icu/util/BasicTimeZone;

    const/4 p0, 0x1

    invoke-virtual {v0, p1, p2, p0}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5390
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x6ddd00

    .line 5395
    invoke-static {v0, p1, p2, v1, v2}, Landroid/icu/util/Calendar;->getPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;JJ)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5397
    iget-object p0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const-wide/32 v0, 0x66ff300

    invoke-static {p0, p1, p2, v0, v1}, Landroid/icu/util/Calendar;->getPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;JJ)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getInstance()Landroid/icu/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 1633
    invoke-static {v0, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 1643
    invoke-static {p0, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 0

    .line 1683
    invoke-static {p0, p1}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/TimeZone;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 0

    .line 1673
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 1

    const/4 v0, 0x0

    .line 1663
    invoke-static {v0, p0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 1

    .line 1653
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method private static getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 1692
    sget-object p1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {p1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object p1

    :cond_0
    if-nez p0, :cond_1

    .line 1695
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object p0

    .line 1698
    :cond_1
    invoke-static {p1}, Landroid/icu/util/Calendar;->createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object p1

    .line 1699
    invoke-virtual {p1, p0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 1700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;
    .locals 3

    const/4 p0, 0x1

    .line 1864
    invoke-static {p1, p0}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    .line 1867
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string/jumbo v2, "supplementalData"

    invoke-static {v1, v2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "calendarPreferenceData"

    .line 1873
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 1876
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "001"

    .line 1879
    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 1882
    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    const/4 p2, 0x0

    move v0, p2

    .line 1889
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1890
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1893
    :cond_1
    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    move-result-object p0

    array-length v0, p0

    :goto_2
    if-ge p2, v0, :cond_3

    aget-object v1, p0, p2

    .line 1894
    iget-object v2, v1, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1895
    iget-object v1, v1, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1898
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static getPatternData(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;
    .locals 7

    const-string v0, "android/icu/impl/data/icudt60b"

    .line 3580
    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    .line 3581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calendar/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/DateTimePatterns"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "calendar/gregorian/DateTimePatterns"

    .line 3583
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    .line 3586
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result p0

    .line 3587
    new-array v0, p0, [Ljava/lang/String;

    .line 3588
    new-array v1, p0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_3

    .line 3590
    invoke-virtual {p1, v3}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    .line 3591
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 3596
    :cond_1
    invoke-virtual {v4, v2}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v5, 0x1

    .line 3597
    invoke-virtual {v4, v5}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    .line 3593
    :cond_2
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3601
    :cond_3
    new-instance p0, Landroid/icu/util/Calendar$PatternData;

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar$PatternData;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method private static getPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;JJ)Ljava/lang/Long;
    .locals 8

    sub-long p3, p1, p3

    const-wide/16 v0, 0x1

    sub-long v6, p3, v0

    .line 5416
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 5417
    invoke-virtual {p0, v6, v7}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result p3

    if-ne v3, p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move-object v2, p0

    move-wide v4, p1

    .line 5421
    invoke-static/range {v2 .. v7}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static getRegionForCalendar(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1705
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    .line 1706
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "001"

    :cond_0
    return-object p0
.end method

.method public static getWeekDataForRegion(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .locals 1

    .line 4715
    sget-object v0, Landroid/icu/util/Calendar;->WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

    invoke-virtual {v0, p0, p0}, Landroid/icu/util/Calendar$WeekDataCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    move-result-object p0

    return-object p0
.end method

.method private static getWeekDataForRegionInternal(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .locals 8

    const-string v0, "001"

    if-nez p0, :cond_0

    move-object p0, v0

    .line 4747
    :cond_0
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v2, "android/icu/impl/data/icudt60b"

    const-string/jumbo v3, "supplementalData"

    invoke-static {v2, v3, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string/jumbo v2, "weekData"

    .line 4751
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 4755
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4757
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4759
    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 4765
    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object p0

    .line 4766
    new-instance v7, Landroid/icu/util/Calendar$WeekData;

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    const/4 v0, 0x2

    aget v3, p0, v0

    const/4 v0, 0x3

    aget v4, p0, v0

    const/4 v0, 0x4

    aget v5, p0, v0

    const/4 v0, 0x5

    aget v6, p0, v0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/icu/util/Calendar$WeekData;-><init>(IIIIII)V

    return-object v7

    .line 4761
    :cond_1
    throw v2
.end method

.method private static gregoYearFromIslamicStart(I)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x21

    const/16 v2, 0x575

    const/4 v3, 0x1

    if-lt p0, v2, :cond_0

    add-int/lit16 v2, p0, -0x575

    .line 2088
    div-int/lit8 v4, v2, 0x43

    .line 2089
    rem-int/lit8 v2, v2, 0x43

    mul-int/lit8 v4, v4, 0x2

    if-lt v2, v1, :cond_1

    goto :goto_0

    :cond_0
    add-int/lit16 v2, p0, -0x574

    .line 2092
    div-int/lit8 v4, v2, 0x43

    sub-int/2addr v4, v3

    neg-int v2, v2

    .line 2093
    rem-int/lit8 v2, v2, 0x43

    mul-int/lit8 v4, v4, 0x2

    if-gt v2, v1, :cond_1

    :goto_0
    move v0, v3

    :cond_1
    add-int/2addr v4, v0

    add-int/lit16 p0, p0, 0x243

    sub-int/2addr p0, v4

    return p0
.end method

.method protected static final gregorianMonthLength(II)I
    .locals 1

    .line 6129
    sget-object v0, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object p1, v0, p1

    invoke-static {p0}, Landroid/icu/util/Calendar;->isGregorianLeapYear(I)Z

    move-result p0

    aget p0, p1, p0

    return p0
.end method

.method protected static final gregorianPreviousMonthLength(II)I
    .locals 0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 6139
    invoke-static {p0, p1}, Landroid/icu/util/Calendar;->gregorianMonthLength(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x1f

    :goto_0
    return p0
.end method

.method private initInternal()V
    .locals 4

    .line 1605
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleCreateFields()[I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    .line 1608
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    array-length v1, v0

    const/16 v3, 0x20

    if-gt v1, v3, :cond_1

    .line 1613
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    const v0, 0x480067

    .line 1621
    :goto_0
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v2, v1, :cond_0

    const/4 v1, 0x1

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1624
    :cond_0
    iput v0, p0, Landroid/icu/util/Calendar;->internalSetMask:I

    return-void

    .line 1610
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid fields[]"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static final isGregorianLeapYear(I)Z
    .locals 1

    .line 6119
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static final julianDayToDayOfWeek(I)I
    .locals 1

    add-int/lit8 p0, p0, 0x2

    .line 6270
    rem-int/lit8 p0, p0, 0x7

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x7

    :cond_0
    return p0
.end method

.method protected static final julianDayToMillis(I)J
    .locals 4

    const v0, 0x253d8c    # 3.419992E-39f

    sub-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 3623
    invoke-static {p1, p3}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p3, :cond_2

    .line 3627
    invoke-static {p0, p2}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3630
    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p2

    .line 3634
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3635
    invoke-static {p1, p3}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static final millisToJulianDay(J)I
    .locals 2

    const-wide/32 v0, 0x5265c00

    .line 6252
    invoke-static {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->floorDivide(JJ)J

    move-result-wide p0

    const-wide/32 v0, 0x253d8c

    add-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4836
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4838
    invoke-direct {p0}, Landroid/icu/util/Calendar;->initInternal()V

    const/4 p1, 0x1

    .line 4840
    iput-boolean p1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    const/4 v0, 0x0

    .line 4841
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    .line 4842
    iput-boolean p1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    const/4 p1, 0x2

    .line 4843
    iput p1, p0, Landroid/icu/util/Calendar;->nextStamp:I

    return-void
.end method

.method private recalculateStamp()V
    .locals 9

    const/4 v0, 0x1

    .line 1579
    iput v0, p0, Landroid/icu/util/Calendar;->nextStamp:I

    const/4 v1, 0x0

    move v2, v1

    .line 1581
    :goto_0
    iget-object v3, p0, Landroid/icu/util/Calendar;->stamp:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 1582
    sget v3, Landroid/icu/util/Calendar;->STAMP_MAX:I

    const/4 v4, -0x1

    move v5, v3

    move v3, v1

    .line 1585
    :goto_1
    iget-object v6, p0, Landroid/icu/util/Calendar;->stamp:[I

    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 1586
    aget v7, v6, v3

    iget v8, p0, Landroid/icu/util/Calendar;->nextStamp:I

    if-le v7, v8, :cond_0

    aget v7, v6, v3

    if-ge v7, v5, :cond_0

    .line 1587
    aget v4, v6, v3

    move v5, v4

    move v4, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-ltz v4, :cond_2

    .line 1593
    iget v3, p0, Landroid/icu/util/Calendar;->nextStamp:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/icu/util/Calendar;->nextStamp:I

    aput v3, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1598
    :cond_2
    iget v1, p0, Landroid/icu/util/Calendar;->nextStamp:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/Calendar;->nextStamp:I

    return-void
.end method

.method private setCalendarLocale(Landroid/icu/util/ULocale;)V
    .locals 4

    .line 1547
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1549
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1551
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 1554
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "_"

    if-lez v2, :cond_1

    .line 1555
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1559
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1560
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "calendar"

    .line 1563
    invoke-virtual {p1, v1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "@calendar="

    .line 1565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    :cond_3
    new-instance p1, Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 1571
    :cond_4
    invoke-virtual {p0, p1, p1}, Landroid/icu/util/Calendar;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private setWeekData(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "001"

    .line 4792
    :cond_0
    sget-object v0, Landroid/icu/util/Calendar;->WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

    invoke-virtual {v0, p1, p1}, Landroid/icu/util/Calendar$WeekDataCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/Calendar$WeekData;

    .line 4793
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setWeekData(Landroid/icu/util/Calendar$WeekData;)Landroid/icu/util/Calendar;

    return-void
.end method

.method private updateTime()V
    .locals 2

    .line 4802
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeTime()V

    .line 4806
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    if-nez v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    :cond_1
    const/4 v0, 0x1

    .line 4807
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    .line 4808
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4819
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    .line 4821
    :try_start_0
    invoke-direct {p0}, Landroid/icu/util/Calendar;->updateTime()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4827
    :catch_0
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 12

    if-nez p2, :cond_0

    return-void

    :cond_0
    int-to-long v0, p2

    const-wide/32 v2, 0x5265c00

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3224
    :pswitch_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calendar.add("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") not supported"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_1
    const-wide/16 p1, 0x3e8

    goto :goto_0

    :pswitch_2
    const-wide/32 p1, 0xea60

    goto :goto_0

    :pswitch_3
    const-wide/32 p1, 0x36ee80

    :goto_0
    mul-long/2addr v0, p1

    :pswitch_4
    move p1, v5

    goto :goto_3

    :pswitch_5
    const-wide/32 p1, 0x2932e00

    goto :goto_1

    :pswitch_6
    mul-long/2addr v0, v2

    goto :goto_2

    :pswitch_7
    const-wide/32 p1, 0x240c8400

    :goto_1
    mul-long/2addr v0, p1

    :goto_2
    move p1, v4

    :goto_3
    const/16 p2, 0xf

    const/16 v6, 0x10

    const/16 v7, 0x15

    if-eqz p1, :cond_1

    .line 3235
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0, p2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v5, v8

    .line 3236
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result v8

    move v11, v8

    move v8, v5

    move v5, v11

    goto :goto_4

    :cond_1
    move v8, v5

    .line 3239
    :goto_4
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    add-long/2addr v9, v0

    invoke-virtual {p0, v9, v10}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    if-eqz p1, :cond_8

    .line 3242
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    if-eq p1, v5, :cond_8

    .line 3247
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->internalGetTimeInMillis()J

    move-result-wide v0

    .line 3248
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, p2}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr v6, p2

    if-eq v6, v8, :cond_8

    sub-int/2addr v8, v6

    int-to-long v8, v8

    .line 3254
    rem-long/2addr v8, v2

    const-wide/16 v2, 0x0

    cmp-long p2, v8, v2

    if-eqz p2, :cond_2

    add-long/2addr v8, v0

    .line 3256
    invoke-virtual {p0, v8, v9}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 3257
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    :cond_2
    if-eq p1, v5, :cond_8

    .line 3262
    iget p1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    goto :goto_5

    :cond_3
    if-lez p2, :cond_4

    .line 3274
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->internalGetTimeInMillis()J

    move-result-wide v0

    .line 3275
    :cond_4
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;->getImmediatePreviousZoneTransition(J)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3277
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_5

    .line 3279
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not locate a time zone transition before "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-lez p2, :cond_8

    .line 3265
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_5

    :cond_7
    if-gez p2, :cond_8

    .line 3270
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    :cond_8
    :goto_5
    return-void

    .line 3161
    :pswitch_8
    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_a

    .line 3163
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gregorian"

    .line 3164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "roc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "coptic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    neg-int p2, p2

    .line 3173
    :cond_a
    :pswitch_9
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    .line 3174
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->setLenient(Z)V

    .line 3175
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 3176
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->pinField(I)V

    if-nez v0, :cond_b

    .line 3178
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->complete()V

    .line 3179
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setLenient(Z)V

    :cond_b
    return-void

    .line 3147
    :pswitch_a
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 3148
    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->pinField(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_9
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method public after(Ljava/lang/Object;)Z
    .locals 2

    .line 2373
    invoke-direct {p0, p1}, Landroid/icu/util/Calendar;->compare(Ljava/lang/Object;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public before(Ljava/lang/Object;)Z
    .locals 2

    .line 2362
    invoke-direct {p0, p1}, Landroid/icu/util/Calendar;->compare(Ljava/lang/Object;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final clear()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2230
    :goto_0
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 2231
    iget-object v3, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v0, v3, v1

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2233
    :cond_0
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    return-void
.end method

.method public final clear(I)V
    .locals 2

    .line 2242
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-eqz v0, :cond_0

    .line 2243
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeFields()V

    .line 2245
    :cond_0
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 2246
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v1, v0, p1

    .line 2247
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 4560
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 4562
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/icu/util/Calendar;->fields:[I

    .line 4563
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/icu/util/Calendar;->stamp:[I

    .line 4564
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    iget-object v2, v0, Landroid/icu/util/Calendar;->fields:[I

    iget-object v3, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4565
    iget-object v1, p0, Landroid/icu/util/Calendar;->stamp:[I

    iget-object v2, v0, Landroid/icu/util/Calendar;->stamp:[I

    iget-object v3, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4567
    iget-object p0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/TimeZone;

    iput-object p0, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 4572
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public compareTo(Landroid/icu/util/Calendar;)I
    .locals 2

    .line 3323
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 642
    check-cast p1, Landroid/icu/util/Calendar;

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->compareTo(Landroid/icu/util/Calendar;)I

    move-result p0

    return p0
.end method

.method protected complete()V
    .locals 1

    .line 2264
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/icu/util/Calendar;->updateTime()V

    .line 2265
    :cond_0
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    if-nez v0, :cond_1

    .line 2266
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeFields()V

    const/4 v0, 0x1

    .line 2267
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    .line 2268
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    :cond_1
    return-void
.end method

.method protected computeFields()V
    .locals 12

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 4861
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    iget-wide v2, p0, Landroid/icu/util/Calendar;->time:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 4862
    iget-wide v1, p0, Landroid/icu/util/Calendar;->time:J

    aget v3, v0, v4

    int-to-long v5, v3

    add-long/2addr v1, v5

    const/4 v3, 0x1

    aget v5, v0, v3

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 4865
    iget v5, p0, Landroid/icu/util/Calendar;->internalSetMask:I

    move v6, v5

    move v5, v4

    .line 4866
    :goto_0
    iget-object v7, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v7, v7

    if-ge v5, v7, :cond_1

    and-int/lit8 v7, v6, 0x1

    if-nez v7, :cond_0

    .line 4868
    iget-object v7, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v3, v7, v5

    goto :goto_1

    .line 4870
    :cond_0
    iget-object v7, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v4, v7, v5

    :goto_1
    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-wide/32 v5, 0x5265c00

    .line 4884
    invoke-static {v1, v2, v5, v6}, Landroid/icu/util/Calendar;->floorDivide(JJ)J

    move-result-wide v7

    .line 4886
    iget-object v9, p0, Landroid/icu/util/Calendar;->fields:[I

    long-to-int v10, v7

    const v11, 0x253d8c    # 3.419992E-39f

    add-int/2addr v10, v11

    const/16 v11, 0x14

    aput v10, v9, v11

    .line 4888
    aget v9, v9, v11

    invoke-direct {p0, v9}, Landroid/icu/util/Calendar;->computeGregorianAndDOWFields(I)V

    .line 4894
    iget-object v9, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v9, v9, v11

    invoke-virtual {p0, v9}, Landroid/icu/util/Calendar;->handleComputeFields(I)V

    .line 4898
    invoke-direct {p0}, Landroid/icu/util/Calendar;->computeWeekFields()V

    mul-long/2addr v7, v5

    sub-long/2addr v1, v7

    long-to-int v1, v1

    .line 4904
    iget-object p0, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v2, 0x15

    aput v1, p0, v2

    const/16 v2, 0xe

    .line 4905
    rem-int/lit16 v5, v1, 0x3e8

    aput v5, p0, v2

    .line 4906
    div-int/lit16 v1, v1, 0x3e8

    const/16 v2, 0xd

    .line 4907
    rem-int/lit8 v5, v1, 0x3c

    aput v5, p0, v2

    .line 4908
    div-int/lit8 v1, v1, 0x3c

    .line 4909
    rem-int/lit8 v2, v1, 0x3c

    const/16 v5, 0xc

    aput v2, p0, v5

    .line 4910
    div-int/lit8 v1, v1, 0x3c

    const/16 v2, 0xb

    .line 4911
    aput v1, p0, v2

    const/16 v2, 0x9

    .line 4912
    div-int/lit8 v6, v1, 0xc

    aput v6, p0, v2

    const/16 v2, 0xa

    .line 4913
    rem-int/2addr v1, v5

    aput v1, p0, v2

    const/16 v1, 0xf

    .line 4914
    aget v2, v0, v4

    aput v2, p0, v1

    const/16 v1, 0x10

    .line 4915
    aget v0, v0, v3

    aput v0, p0, v1

    return-void
.end method

.method protected final computeGregorianFields(I)V
    .locals 8

    const v0, 0x1a4452

    sub-int/2addr p1, v0

    int-to-long v0, p1

    const/4 p1, 0x1

    new-array v2, p1, [I

    const v3, 0x23ab1

    .line 4959
    invoke-static {v0, v1, v3, v2}, Landroid/icu/util/Calendar;->floorDivide(JI[I)I

    move-result v0

    const/4 v1, 0x0

    .line 4960
    aget v3, v2, v1

    const v4, 0x8eac

    invoke-static {v3, v4, v2}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    move-result v3

    .line 4961
    aget v4, v2, v1

    const/16 v5, 0x5b5

    invoke-static {v4, v5, v2}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    move-result v4

    .line 4962
    aget v5, v2, v1

    const/16 v6, 0x16d

    invoke-static {v5, v6, v2}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    move-result v5

    mul-int/lit16 v0, v0, 0x190

    mul-int/lit8 v7, v3, 0x64

    add-int/2addr v0, v7

    const/4 v7, 0x4

    mul-int/2addr v4, v7

    add-int/2addr v0, v4

    add-int/2addr v0, v5

    .line 4964
    aget v2, v2, v1

    if-eq v3, v7, :cond_1

    if-ne v5, v7, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v6

    :goto_1
    and-int/lit8 v3, v0, 0x3

    if-nez v3, :cond_3

    .line 4971
    rem-int/lit8 v3, v0, 0x64

    if-nez v3, :cond_2

    rem-int/lit16 v3, v0, 0x190

    if-nez v3, :cond_3

    :cond_2
    move v3, p1

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    const/16 v4, 0x3c

    goto :goto_3

    :cond_4
    const/16 v4, 0x3b

    :goto_3
    const/4 v5, 0x2

    if-lt v2, v4, :cond_6

    if-eqz v3, :cond_5

    move v1, p1

    goto :goto_4

    :cond_5
    move v1, v5

    :cond_6
    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x6

    .line 4977
    div-int/lit16 v1, v1, 0x16f

    .line 4978
    sget-object v4, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object v4, v4, v1

    if-eqz v3, :cond_7

    const/4 v5, 0x3

    .line 4979
    :cond_7
    aget v3, v4, v5

    sub-int v3, v2, v3

    add-int/2addr v3, p1

    .line 4981
    iput v0, p0, Landroid/icu/util/Calendar;->gregorianYear:I

    .line 4982
    iput v1, p0, Landroid/icu/util/Calendar;->gregorianMonth:I

    .line 4983
    iput v3, p0, Landroid/icu/util/Calendar;->gregorianDayOfMonth:I

    add-int/2addr v2, p1

    .line 4984
    iput v2, p0, Landroid/icu/util/Calendar;->gregorianDayOfYear:I

    return-void
.end method

.method protected computeGregorianMonthStart(II)I
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-ltz p2, :cond_0

    const/16 v1, 0xb

    if-le p2, v1, :cond_1

    :cond_0
    new-array v1, v0, [I

    const/16 v2, 0xc

    .line 5956
    invoke-static {p2, v2, v1}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    move-result p2

    add-int/2addr p1, p2

    .line 5957
    aget p2, v1, p0

    .line 5960
    :cond_1
    rem-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_3

    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_2

    rem-int/lit16 v1, p1, 0x190

    if-nez v1, :cond_3

    :cond_2
    move p0, v0

    :cond_3
    sub-int/2addr p1, v0

    mul-int/lit16 v1, p1, 0x16d

    const/4 v2, 0x4

    .line 5965
    invoke-static {p1, v2}, Landroid/icu/util/Calendar;->floorDivide(II)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x64

    invoke-static {p1, v2}, Landroid/icu/util/Calendar;->floorDivide(II)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x190

    .line 5966
    invoke-static {p1, v2}, Landroid/icu/util/Calendar;->floorDivide(II)I

    move-result p1

    add-int/2addr v1, p1

    const p1, 0x1a4452

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    if-eqz p2, :cond_5

    .line 5971
    sget-object p1, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object p1, p1, p2

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    :goto_0
    aget p0, p1, p0

    add-int/2addr v1, p0

    :cond_5
    return v1
.end method

.method protected computeJulianDay()I
    .locals 4

    .line 5701
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/16 v0, 0x8

    const/4 v2, 0x0

    .line 5702
    invoke-virtual {p0, v2, v0, v2}, Landroid/icu/util/Calendar;->newestStamp(III)I

    move-result v0

    const/16 v2, 0x11

    const/16 v3, 0x13

    .line 5703
    invoke-virtual {p0, v2, v3, v0}, Landroid/icu/util/Calendar;->newestStamp(III)I

    move-result v0

    .line 5704
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v2, v2, v1

    if-gt v0, v2, :cond_0

    .line 5705
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result p0

    return p0

    .line 5709
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFieldResolutionTable()[[[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->resolveFields([[[I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x5

    .line 5714
    :cond_1
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result p0

    return p0
.end method

.method protected computeMillisInDay()I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5505
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v1, 0xb

    aget v2, v0, v1

    const/16 v3, 0xa

    .line 5506
    aget v4, v0, v3

    const/16 v5, 0x9

    aget v0, v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v4, 0xc

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    .line 5514
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v6, v0

    goto :goto_1

    .line 5518
    :cond_1
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v0, v6

    .line 5519
    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v1

    mul-int/2addr v1, v4

    add-int v6, v0, v1

    :cond_2
    :goto_1
    mul-int/lit8 v6, v6, 0x3c

    .line 5526
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v6, v0

    mul-int/lit8 v6, v6, 0x3c

    const/16 v0, 0xd

    .line 5528
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v6, v0

    mul-int/lit16 v6, v6, 0x3e8

    const/16 v0, 0xe

    .line 5530
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result p0

    add-int/2addr v6, p0

    return v6
.end method

.method protected computeMillisInDayLong()J
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5551
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v1, 0xb

    aget v2, v0, v1

    const/16 v3, 0xa

    .line 5552
    aget v4, v0, v3

    const/16 v5, 0x9

    aget v0, v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v4, 0xc

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    .line 5560
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v6, v0

    goto :goto_1

    .line 5564
    :cond_1
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v6

    .line 5565
    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    mul-int/2addr v2, v4

    int-to-long v2, v2

    add-long v6, v0, v2

    :cond_2
    :goto_1
    const-wide/16 v0, 0x3c

    mul-long/2addr v6, v0

    .line 5572
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v6, v2

    mul-long/2addr v6, v0

    const/16 v0, 0xd

    .line 5574
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v6, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v6, v0

    const/16 v0, 0xe

    .line 5576
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result p0

    int-to-long v0, p0

    add-long/2addr v6, v0

    return-wide v6
.end method

.method protected computeTime()V
    .locals 9

    .line 5275
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5276
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->validateFields()V

    .line 5280
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeJulianDay()I

    move-result v0

    .line 5282
    invoke-static {v0}, Landroid/icu/util/Calendar;->julianDayToMillis(I)J

    move-result-wide v0

    .line 5291
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v3, 0x15

    aget v2, v2, v3

    const/4 v4, 0x2

    if-lt v2, v4, :cond_1

    const/16 v2, 0x9

    const/16 v5, 0xe

    const/4 v6, 0x0

    .line 5292
    invoke-virtual {p0, v2, v5, v6}, Landroid/icu/util/Calendar;->newestStamp(III)I

    move-result v2

    iget-object v5, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v5, v5, v3

    if-gt v2, v5, :cond_1

    .line 5293
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0xb

    .line 5295
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    .line 5296
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x224

    if-le v2, v3, :cond_2

    .line 5303
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeMillisInDayLong()J

    move-result-wide v2

    goto :goto_1

    .line 5305
    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeMillisInDay()I

    move-result v2

    :goto_0
    int-to-long v2, v2

    .line 5309
    :goto_1
    iget-object v5, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v6, 0xf

    aget v7, v5, v6

    const/16 v8, 0x10

    if-ge v7, v4, :cond_9

    aget v5, v5, v8

    if-lt v5, v4, :cond_3

    goto :goto_3

    .line 5344
    :cond_3
    iget-boolean v5, p0, Landroid/icu/util/Calendar;->lenient:Z

    if-eqz v5, :cond_5

    iget v5, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    if-ne v5, v4, :cond_4

    goto :goto_2

    :cond_4
    add-long v4, v0, v2

    .line 5373
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/icu/util/Calendar;->computeZoneOffset(JJ)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v4, v0

    iput-wide v4, p0, Landroid/icu/util/Calendar;->time:J

    goto :goto_4

    .line 5348
    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/icu/util/Calendar;->computeZoneOffset(JJ)I

    move-result v4

    add-long/2addr v0, v2

    int-to-long v2, v4

    sub-long/2addr v0, v2

    .line 5351
    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v2, v0, v1}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    if-eq v4, v2, :cond_8

    .line 5356
    iget-boolean v2, p0, Landroid/icu/util/Calendar;->lenient:Z

    if-eqz v2, :cond_7

    .line 5364
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;->getImmediatePreviousZoneTransition(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 5368
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/util/Calendar;->time:J

    goto :goto_4

    .line 5366
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not locate a time zone transition before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5357
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The specified wall time does not exist due to time zone offset transition."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5370
    :cond_8
    iput-wide v0, p0, Landroid/icu/util/Calendar;->time:J

    goto :goto_4

    :cond_9
    :goto_3
    add-long/2addr v0, v2

    .line 5311
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/util/Calendar;->time:J

    :goto_4
    return-void
.end method

.method protected computeZoneOffset(JI)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    int-to-long v1, p3

    add-long v2, p1, v1

    .line 5594
    iget-object p1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    instance-of p2, p1, Landroid/icu/util/BasicTimeZone;

    const/4 p3, 0x0

    const/4 v7, 0x1

    if-eqz p2, :cond_2

    .line 5595
    iget p1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    const/4 p2, 0x4

    const/16 v1, 0xc

    if-ne p1, v7, :cond_0

    move v5, p2

    goto :goto_0

    :cond_0
    move v5, v1

    .line 5596
    :goto_0
    iget p1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    if-ne p1, v7, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, p2

    .line 5597
    :goto_1
    iget-object p0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    move-object v1, p0

    check-cast v1, Landroid/icu/util/BasicTimeZone;

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    goto :goto_3

    .line 5600
    :cond_2
    invoke-virtual {p1, v2, v3, v7, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5603
    iget p1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    if-ne p1, v7, :cond_3

    .line 5605
    aget p1, v0, p3

    aget p2, v0, v7

    add-int/2addr p1, p2

    int-to-long p1, p1

    sub-long p1, v2, p1

    .line 5610
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const-wide/32 v4, 0x1499700

    sub-long/2addr p1, v4

    invoke-virtual {v1, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result p1

    .line 5611
    aget p2, v0, p3

    aget v1, v0, v7

    add-int/2addr p2, v1

    sub-int/2addr p2, p1

    if-gez p2, :cond_3

    .line 5619
    iget-object p1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    int-to-long v4, p2

    add-long/2addr v4, v2

    invoke-virtual {p1, v4, v5, v7, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    move p1, v7

    goto :goto_2

    :cond_3
    move p1, p3

    :goto_2
    if-nez p1, :cond_4

    .line 5622
    iget p1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    if-ne p1, v7, :cond_4

    .line 5628
    aget p1, v0, p3

    aget p2, v0, v7

    add-int/2addr p1, p2

    int-to-long p1, p1

    sub-long/2addr v2, p1

    .line 5629
    iget-object p0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {p0, v2, v3, p3, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5632
    :cond_4
    :goto_3
    aget p0, v0, p3

    aget p1, v0, v7

    add-int/2addr p0, p1

    return p0
.end method

.method protected computeZoneOffset(JJ)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    add-long v2, p1, p3

    .line 5647
    iget-object p1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    instance-of p2, p1, Landroid/icu/util/BasicTimeZone;

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p2, :cond_2

    .line 5648
    iget p1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    const/4 p2, 0x4

    const/16 v1, 0xc

    if-ne p1, p4, :cond_0

    move v5, p2

    goto :goto_0

    :cond_0
    move v5, v1

    .line 5649
    :goto_0
    iget p1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    if-ne p1, p4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, p2

    .line 5650
    :goto_1
    iget-object p0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    move-object v1, p0

    check-cast v1, Landroid/icu/util/BasicTimeZone;

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    goto :goto_3

    .line 5653
    :cond_2
    invoke-virtual {p1, v2, v3, p4, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5656
    iget p1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    if-ne p1, p4, :cond_3

    .line 5658
    aget p1, v0, p3

    aget p2, v0, p4

    add-int/2addr p1, p2

    int-to-long p1, p1

    sub-long p1, v2, p1

    .line 5663
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const-wide/32 v4, 0x1499700

    sub-long/2addr p1, v4

    invoke-virtual {v1, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result p1

    .line 5664
    aget p2, v0, p3

    aget v1, v0, p4

    add-int/2addr p2, v1

    sub-int/2addr p2, p1

    if-gez p2, :cond_3

    .line 5672
    iget-object p1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    int-to-long v4, p2

    add-long/2addr v4, v2

    invoke-virtual {p1, v4, v5, p4, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    move p1, p4

    goto :goto_2

    :cond_3
    move p1, p3

    :goto_2
    if-nez p1, :cond_4

    .line 5675
    iget p1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    if-ne p1, p4, :cond_4

    .line 5681
    aget p1, v0, p3

    aget p2, v0, p4

    add-int/2addr p1, p2

    int-to-long p1, p1

    sub-long/2addr v2, p1

    .line 5682
    iget-object p0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {p0, v2, v3, p3, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5685
    :cond_4
    :goto_3
    aget p0, v0, p3

    aget p1, v0, p4

    add-int/2addr p0, p1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 2289
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 2293
    :cond_2
    check-cast p1, Landroid/icu/util/Calendar;

    .line 2295
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2296
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public fieldDifference(Ljava/util/Date;I)I
    .locals 10

    .line 3946
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 3947
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez p1, :cond_7

    move p1, v5

    move v5, v4

    .line 3958
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 3959
    invoke-virtual {p0, p2, v5}, Landroid/icu/util/Calendar;->add(II)V

    .line 3960
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    return v5

    :cond_0
    if-lez v6, :cond_4

    :goto_1
    sub-int v6, v5, p1

    if-le v6, v4, :cond_3

    .line 3978
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p1

    .line 3979
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 3980
    invoke-virtual {p0, p2, v6}, Landroid/icu/util/Calendar;->add(II)V

    .line 3981
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-nez v7, :cond_1

    return v6

    :cond_1
    if-lez v7, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move p1, v6

    goto :goto_1

    :cond_3
    move v5, p1

    goto/16 :goto_5

    :cond_4
    const p1, 0x7fffffff

    if-ge v5, p1, :cond_6

    shl-int/lit8 v6, v5, 0x1

    if-gez v6, :cond_5

    goto :goto_2

    :cond_5
    move p1, v6

    :goto_2
    move v9, v5

    move v5, p1

    move p1, v9

    goto :goto_0

    .line 3973
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_7
    if-lez p1, :cond_d

    const/4 p1, -0x1

    :goto_3
    move v9, v5

    move v5, p1

    move p1, v9

    .line 4002
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4003
    invoke-virtual {p0, p2, v5}, Landroid/icu/util/Calendar;->add(II)V

    .line 4004
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_8

    return v5

    :cond_8
    if-gez v6, :cond_b

    move v9, v5

    move v5, p1

    move p1, v9

    :goto_4
    sub-int v6, v5, p1

    if-le v6, v4, :cond_d

    sub-int v6, p1, v5

    .line 4020
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 4021
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4022
    invoke-virtual {p0, p2, v6}, Landroid/icu/util/Calendar;->add(II)V

    .line 4023
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-nez v7, :cond_9

    return v6

    :cond_9
    if-gez v7, :cond_a

    move p1, v6

    goto :goto_4

    :cond_a
    move v5, v6

    goto :goto_4

    :cond_b
    shl-int/lit8 p1, v5, 0x1

    if-eqz p1, :cond_c

    goto :goto_3

    .line 4014
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 4034
    :cond_d
    :goto_5
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4035
    invoke-virtual {p0, p2, v5}, Landroid/icu/util/Calendar;->add(II)V

    return v5
.end method

.method protected fieldName(I)Ljava/lang/String;
    .locals 1

    .line 6240
    :try_start_0
    sget-object p0, Landroid/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6242
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Field "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final get(I)I
    .locals 0

    .line 1968
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->complete()V

    .line 1969
    iget-object p0, p0, Landroid/icu/util/Calendar;->fields:[I

    aget p0, p0, p1

    return p0
.end method

.method public getActualMaximum(I)I
    .locals 4

    if-eqz p1, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 2439
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->getActualHelper(III)I

    move-result p0

    goto :goto_0

    .line 2413
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 2414
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setLenient(Z)V

    .line 2415
    invoke-virtual {v0, p1, v2}, Landroid/icu/util/Calendar;->prepareGetActual(IZ)V

    .line 2416
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result p0

    goto :goto_0

    .line 2404
    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 2405
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setLenient(Z)V

    .line 2406
    invoke-virtual {v0, p1, v2}, Landroid/icu/util/Calendar;->prepareGetActual(IZ)V

    .line 2407
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result p0

    goto :goto_0

    .line 2434
    :cond_2
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result p0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 2488
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->getActualHelper(III)I

    move-result p0

    goto :goto_0

    .line 2483
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    move-result p0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getDateTimeFormat(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 3346
    invoke-static {p0, p3, p1, p2}, Landroid/icu/util/Calendar;->formatHelper(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;II)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public getDateTimeFormat(IILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 3337
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p3

    invoke-static {p0, p3, p1, p2}, Landroid/icu/util/Calendar;->formatHelper(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;II)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method public getDayOfWeekType(I)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_a

    const/4 v1, 0x7

    if-gt p1, v1, :cond_a

    .line 4449
    iget v1, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    iget v2, p0, Landroid/icu/util/Calendar;->weekendCease:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    if-eq p1, v1, :cond_0

    return v4

    .line 4452
    :cond_0
    iget p0, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    return v0

    :cond_2
    if-ge v1, v2, :cond_4

    if-lt p1, v1, :cond_3

    if-le p1, v2, :cond_5

    :cond_3
    return v4

    :cond_4
    if-le p1, v2, :cond_5

    if-ge p1, v1, :cond_5

    return v4

    .line 4463
    :cond_5
    iget v1, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    if-ne p1, v1, :cond_7

    .line 4464
    iget p0, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    move v0, v3

    :goto_1
    return v0

    .line 4466
    :cond_7
    iget v1, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-ne p1, v1, :cond_9

    .line 4467
    iget p0, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    const p1, 0x5265c00

    if-lt p0, p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x3

    :cond_9
    :goto_2
    return v0

    .line 4447
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid day of week"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getDefaultDayInMonth(II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getDefaultMonthInYear(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 3300
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 3293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getFieldCount()I
    .locals 0

    .line 6071
    iget-object p0, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length p0, p0

    return p0
.end method

.method protected getFieldResolutionTable()[[[I
    .locals 0

    .line 5725
    sget-object p0, Landroid/icu/util/Calendar;->DATE_PRECEDENCE:[[[I

    return-object p0
.end method

.method public getFirstDayOfWeek()I
    .locals 0

    .line 4202
    iget p0, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    return p0
.end method

.method public final getGreatestMinimum(I)I
    .locals 1

    const/4 v0, 0x1

    .line 4399
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    move-result p0

    return p0
.end method

.method protected final getGregorianDayOfMonth()I
    .locals 0

    .line 6062
    iget p0, p0, Landroid/icu/util/Calendar;->gregorianDayOfMonth:I

    return p0
.end method

.method protected final getGregorianDayOfYear()I
    .locals 0

    .line 6053
    iget p0, p0, Landroid/icu/util/Calendar;->gregorianDayOfYear:I

    return p0
.end method

.method protected final getGregorianMonth()I
    .locals 0

    .line 6044
    iget p0, p0, Landroid/icu/util/Calendar;->gregorianMonth:I

    return p0
.end method

.method protected final getGregorianYear()I
    .locals 0

    .line 6035
    iget p0, p0, Landroid/icu/util/Calendar;->gregorianYear:I

    return p0
.end method

.method public final getLeastMaximum(I)I
    .locals 1

    const/4 v0, 0x2

    .line 4409
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    move-result p0

    return p0
.end method

.method protected getLimit(II)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 4337
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->handleGetLimit(II)I

    move-result p0

    return p0

    .line 4315
    :pswitch_1
    sget-object p0, Landroid/icu/util/Calendar;->LIMITS:[[I

    aget-object p0, p0, p1

    aget p0, p0, p2

    return p0

    :pswitch_2
    const/4 p1, 0x1

    if-nez p2, :cond_1

    .line 4321
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move p1, p0

    goto :goto_0

    :cond_1
    if-ne p2, p1, :cond_2

    goto :goto_0

    .line 4325
    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result p1

    const/4 v0, 0x5

    .line 4326
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->handleGetLimit(II)I

    move-result p0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    rsub-int/lit8 p1, p1, 0x7

    add-int/2addr p0, p1

    .line 4328
    div-int/lit8 p1, p0, 0x7

    goto :goto_0

    :cond_3
    add-int/lit8 p0, p0, 0x6

    rsub-int/lit8 p1, p1, 0x7

    add-int/2addr p0, p1

    .line 4330
    div-int/lit8 p1, p0, 0x7

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1

    .line 6341
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    .line 6342
    iget-object p0, p0, Landroid/icu/util/Calendar;->actualLocale:Landroid/icu/util/ULocale;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/icu/util/Calendar;->validLocale:Landroid/icu/util/ULocale;

    :goto_0
    return-object p0
.end method

.method public final getMaximum(I)I
    .locals 1

    const/4 v0, 0x3

    .line 4389
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    move-result p0

    return p0
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 0

    .line 4239
    iget p0, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    return p0
.end method

.method public final getMinimum(I)I
    .locals 1

    const/4 v0, 0x0

    .line 4379
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    move-result p0

    return p0
.end method

.method public final getRelatedYear()I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x13

    .line 2106
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 2107
    sget-object v1, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    .line 2108
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object p0

    .line 2109
    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 2110
    iget-object v6, v5, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2115
    :cond_1
    :goto_1
    sget-object p0, Landroid/icu/util/Calendar$1;->$SwitchMap$android$icu$util$Calendar$CalType:[I

    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v1

    aget p0, p0, v1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    add-int/lit16 v0, v0, 0x26e

    goto :goto_2

    .line 2137
    :pswitch_2
    invoke-static {v0}, Landroid/icu/util/Calendar;->gregoYearFromIslamicStart(I)I

    move-result v0

    goto :goto_2

    :pswitch_3
    add-int/lit8 v0, v0, 0x4f

    goto :goto_2

    :pswitch_4
    add-int/lit16 v0, v0, -0xeb0

    goto :goto_2

    :pswitch_5
    add-int/lit16 v0, v0, -0x1574

    goto :goto_2

    :pswitch_6
    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    :pswitch_7
    add-int/lit16 v0, v0, -0x91d

    goto :goto_2

    :pswitch_8
    add-int/lit16 v0, v0, 0x11c

    goto :goto_2

    :pswitch_9
    add-int/lit16 v0, v0, -0xa4d

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRepeatedWallTimeOption()I
    .locals 0

    .line 4127
    iget p0, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    return p0
.end method

.method public getSkippedWallTimeOption()I
    .locals 0

    .line 4175
    iget p0, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    return p0
.end method

.method protected final getStamp(I)I
    .locals 0

    .line 5195
    iget-object p0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget p0, p0, p1

    return p0
.end method

.method public final getTime()Ljava/util/Date;
    .locals 3

    .line 1906
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    .line 1926
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/icu/util/Calendar;->updateTime()V

    .line 1927
    :cond_0
    iget-wide v0, p0, Landroid/icu/util/Calendar;->time:J

    return-wide v0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 0

    .line 4064
    iget-object p0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public getWeekData()Landroid/icu/util/Calendar$WeekData;
    .locals 8

    .line 4723
    new-instance v7, Landroid/icu/util/Calendar$WeekData;

    iget v1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    iget v2, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    iget v3, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    iget v4, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    iget v5, p0, Landroid/icu/util/Calendar;->weekendCease:I

    iget v6, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/icu/util/Calendar$WeekData;-><init>(IIIIII)V

    return-object v7
.end method

.method public getWeekendTransition(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4492
    iget v0, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    if-ne p1, v0, :cond_0

    .line 4493
    iget p0, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    return p0

    .line 4494
    :cond_0
    iget v0, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-ne p1, v0, :cond_1

    .line 4495
    iget p0, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    return p0

    .line 4497
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not weekend transition day"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleComputeFields(I)V
    .locals 3

    .line 6009
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianMonth()I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->internalSet(II)V

    .line 6010
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianDayOfMonth()I

    move-result p1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->internalSet(II)V

    .line 6011
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianDayOfYear()I

    move-result p1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->internalSet(II)V

    .line 6012
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianYear()I

    move-result p1

    const/16 v0, 0x13

    .line 6013
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    rsub-int/lit8 p1, p1, 0x1

    move v2, p1

    move p1, v0

    goto :goto_0

    :cond_0
    move v2, p1

    move p1, v1

    .line 6019
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->internalSet(II)V

    .line 6020
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeJulianDay(I)I
    .locals 10

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    const/16 v5, 0x11

    .line 5835
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v5

    goto :goto_2

    .line 5837
    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v5

    :goto_2
    const/16 v6, 0x13

    .line 5840
    invoke-virtual {p0, v6, v5}, Landroid/icu/util/Calendar;->internalSet(II)V

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    .line 5842
    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->getDefaultMonthInYear(I)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v7

    goto :goto_3

    :cond_3
    move v7, v1

    .line 5846
    :goto_3
    invoke-virtual {p0, v5, v7, v4}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v4

    if-ne p1, v2, :cond_5

    .line 5849
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5850
    invoke-virtual {p0, v5, v7}, Landroid/icu/util/Calendar;->getDefaultDayInMonth(II)I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result p0

    :goto_4
    add-int/2addr v4, p0

    return v4

    .line 5852
    :cond_4
    invoke-virtual {p0, v5, v7}, Landroid/icu/util/Calendar;->getDefaultDayInMonth(II)I

    move-result p0

    goto :goto_4

    :cond_5
    const/4 v2, 0x6

    if-ne p1, v2, :cond_6

    .line 5857
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result p0

    goto :goto_4

    .line 5860
    :cond_6
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    add-int/lit8 v7, v4, 0x1

    .line 5874
    invoke-static {v7}, Landroid/icu/util/Calendar;->julianDayToDayOfWeek(I)I

    move-result v7

    sub-int/2addr v7, v2

    if-gez v7, :cond_7

    add-int/lit8 v7, v7, 0x7

    .line 5882
    :cond_7
    sget-object v8, Landroid/icu/util/Calendar;->DOW_PRECEDENCE:[[[I

    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->resolveFields([[[I)I

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_9

    const/16 v2, 0x12

    if-eq v8, v2, :cond_8

    move v2, v1

    goto :goto_5

    .line 5887
    :cond_8
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    sub-int/2addr v2, v3

    goto :goto_5

    .line 5884
    :cond_9
    invoke-virtual {p0, v9}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v8

    sub-int v2, v8, v2

    .line 5890
    :goto_5
    rem-int/2addr v2, v9

    if-gez v2, :cond_a

    add-int/lit8 v2, v2, 0x7

    :cond_a
    rsub-int/lit8 v8, v7, 0x1

    add-int/2addr v8, v2

    if-ne p1, v0, :cond_d

    if-ge v8, v3, :cond_b

    add-int/lit8 v8, v8, 0x7

    .line 5909
    :cond_b
    invoke-virtual {p0, v0, v3}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result p1

    if-ltz p1, :cond_c

    sub-int/2addr p1, v3

    mul-int/2addr p1, v9

    add-int/2addr v8, p1

    goto :goto_7

    .line 5920
    :cond_c
    invoke-virtual {p0, v6, v1}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    .line 5921
    invoke-virtual {p0, v5, v0}, Landroid/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result p0

    sub-int/2addr p0, v8

    .line 5922
    div-int/2addr p0, v9

    add-int/2addr p0, p1

    add-int/2addr p0, v3

    goto :goto_6

    :cond_d
    rsub-int/lit8 v0, v7, 0x7

    .line 5928
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    if-ge v0, v1, :cond_e

    add-int/lit8 v8, v8, 0x7

    .line 5933
    :cond_e
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result p0

    sub-int/2addr p0, v3

    :goto_6
    mul-int/2addr p0, v9

    add-int/2addr v8, p0

    :goto_7
    add-int/2addr v4, v8

    return v4
.end method

.method protected abstract handleComputeMonthStart(IIZ)I
.end method

.method protected handleCreateFields()[I
    .locals 0

    const/16 p0, 0x17

    new-array p0, p0, [I

    return-object p0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1

    const/4 v0, 0x0

    .line 3395
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 2

    .line 3410
    new-instance v0, Landroid/icu/util/Calendar$FormatConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/Calendar$FormatConfiguration;-><init>(Landroid/icu/util/Calendar$1;)V

    .line 3411
    invoke-static {v0, p1}, Landroid/icu/util/Calendar$FormatConfiguration;->access$102(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 3412
    invoke-static {v0, p2}, Landroid/icu/util/Calendar$FormatConfiguration;->access$202(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 3413
    new-instance p1, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {p1, p0, p3}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V

    invoke-static {v0, p1}, Landroid/icu/util/Calendar$FormatConfiguration;->access$302(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/text/DateFormatSymbols;)Landroid/icu/text/DateFormatSymbols;

    .line 3414
    invoke-static {v0, p3}, Landroid/icu/util/Calendar$FormatConfiguration;->access$402(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    .line 3415
    invoke-static {v0, p0}, Landroid/icu/util/Calendar$FormatConfiguration;->access$502(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/Calendar;)Landroid/icu/util/Calendar;

    .line 3417
    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->getInstance(Landroid/icu/util/Calendar$FormatConfiguration;)Landroid/icu/text/SimpleDateFormat;

    move-result-object p0

    return-object p0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 0

    .line 3381
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1

    .line 3360
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object p0

    return-object p0
.end method

.method protected abstract handleGetExtendedYear()I
.end method

.method protected abstract handleGetLimit(II)I
.end method

.method protected handleGetMonthLength(II)I
    .locals 2

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    .line 5762
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    .line 5763
    invoke-virtual {p0, p1, p2, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method protected handleGetYearLength(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    .line 5774
    invoke-virtual {p0, v0, v1, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    .line 5775
    invoke-virtual {p0, p1, v1, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 2329
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->lenient:Z

    iget v1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget v1, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget v1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iget v1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    shl-int/lit8 v1, v1, 0x9

    or-int/2addr v0, v1

    iget-object p0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    .line 2334
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->hashCode()I

    move-result p0

    shl-int/lit8 p0, p0, 0xb

    or-int/2addr p0, v0

    return p0
.end method

.method public haveDefaultCentury()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method protected final internalGet(I)I
    .locals 0

    .line 1980
    iget-object p0, p0, Landroid/icu/util/Calendar;->fields:[I

    aget p0, p0, p1

    return p0
.end method

.method protected final internalGet(II)I
    .locals 1

    .line 1993
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    iget-object p0, p0, Landroid/icu/util/Calendar;->fields:[I

    aget p2, p0, p1

    :cond_0
    return p2
.end method

.method protected final internalGetTimeInMillis()J
    .locals 2

    .line 6281
    iget-wide v0, p0, Landroid/icu/util/Calendar;->time:J

    return-wide v0
.end method

.method protected final internalSet(II)V
    .locals 3

    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 6084
    iget v2, p0, Landroid/icu/util/Calendar;->internalSetMask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 6088
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    aput p2, v1, p1

    .line 6089
    iget-object p0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v0, p0, p1

    return-void

    .line 6085
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subclass cannot set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6086
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isEquivalentTo(Landroid/icu/util/Calendar;)Z
    .locals 2

    .line 2309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2310
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2311
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2312
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2313
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2314
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getRepeatedWallTimeOption()I

    move-result v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getRepeatedWallTimeOption()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2315
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getSkippedWallTimeOption()I

    move-result p0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getSkippedWallTimeOption()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLenient()Z
    .locals 0

    .line 4086
    iget-boolean p0, p0, Landroid/icu/util/Calendar;->lenient:Z

    return p0
.end method

.method public final isSet(I)Z
    .locals 1

    .line 2256
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget p0, p0, p1

    if-eqz p0, :cond_0

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

.method public isWeekend()Z
    .locals 8

    const/4 v0, 0x7

    .line 4526
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 4527
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getDayOfWeekType(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/16 v4, 0xe

    .line 4539
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v5

    const/16 v6, 0xc

    .line 4540
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v6

    const/16 v7, 0xb

    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v5, v6

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v4, v5

    .line 4541
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getWeekendTransition(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    if-lt v4, p0, :cond_1

    goto :goto_0

    :cond_0
    if-ge v4, p0, :cond_1

    :goto_0
    move v2, v3

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v2
.end method

.method public isWeekend(Ljava/util/Date;)Z
    .locals 0

    .line 4512
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4513
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isWeekend()Z

    move-result p0

    return p0
.end method

.method protected newerField(II)I
    .locals 1

    .line 5203
    iget-object p0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v0, p0, p2

    aget p0, p0, p1

    if-le v0, p0, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method protected newestStamp(III)I
    .locals 2

    :goto_0
    if-gt p1, p2, :cond_1

    .line 5184
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v1, v0, p1

    if-le v1, p3, :cond_0

    .line 5185
    aget p3, v0, p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method protected pinField(I)V
    .locals 4

    .line 3781
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 3782
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v1

    .line 3784
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v3, v2, p1

    if-le v3, v0, :cond_0

    .line 3785
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 3786
    :cond_0
    aget v0, v2, p1

    if-ge v0, v1, :cond_1

    .line 3787
    invoke-virtual {p0, p1, v1}, Landroid/icu/util/Calendar;->set(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected prepareGetActual(IZ)V
    .locals 5

    const/16 v0, 0x15

    const/4 v1, 0x0

    .line 2515
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    const/4 v3, 0x7

    if-eq p1, v1, :cond_2

    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    const/16 p2, 0x11

    if-eq p1, p2, :cond_0

    const/16 p2, 0x13

    if-eq p1, p2, :cond_5

    goto :goto_0

    .line 2524
    :cond_0
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result p2

    invoke-virtual {p0, v1, p2}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 2534
    :cond_1
    invoke-virtual {p0, v2, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 2535
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {p0, v3, p2}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 2545
    :cond_2
    iget v1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    if-eqz p2, :cond_3

    add-int/lit8 v1, v1, 0x6

    .line 2547
    rem-int/2addr v1, v3

    if-ge v1, v0, :cond_3

    add-int/lit8 v1, v1, 0x7

    .line 2552
    :cond_3
    invoke-virtual {p0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_0

    .line 2528
    :cond_4
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result p2

    invoke-virtual {p0, v2, p2}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x6

    .line 2520
    invoke-virtual {p0, p2}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 2558
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method protected resolveFields([[[I)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v2, v1

    move v1, v0

    .line 5139
    :goto_0
    array-length v3, p1

    const/16 v4, 0x20

    if-ge v1, v3, :cond_7

    if-gez v2, :cond_7

    .line 5140
    aget-object v3, p1, v1

    move v6, v0

    move v5, v2

    move v2, v6

    .line 5143
    :goto_1
    array-length v7, v3

    if-ge v2, v7, :cond_6

    .line 5144
    aget-object v7, v3, v2

    .line 5147
    aget v8, v7, v0

    if-lt v8, v4, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    move v8, v0

    :goto_2
    move v9, v0

    :goto_3
    array-length v10, v7

    if-ge v8, v10, :cond_2

    .line 5148
    iget-object v10, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v11, v7, v8

    aget v10, v10, v11

    if-nez v10, :cond_1

    goto :goto_4

    .line 5153
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    if-le v9, v6, :cond_5

    .line 5158
    aget v7, v7, v0

    if-lt v7, v4, :cond_3

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 5162
    iget-object v8, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/4 v10, 0x4

    aget v10, v8, v10

    aget v8, v8, v7

    if-ge v10, v8, :cond_4

    :cond_3
    move v5, v7

    :cond_4
    if-ne v5, v7, :cond_5

    move v6, v9

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move v2, v5

    goto :goto_0

    :cond_7
    if-lt v2, v4, :cond_8

    and-int/lit8 v2, v2, 0x1f

    :cond_8
    return v2
.end method

.method public roll(II)V
    .locals 11

    if-nez p2, :cond_0

    return-void

    .line 2743
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->complete()V

    const-wide/16 v0, 0x0

    const-wide/32 v2, 0x240c8400

    const-wide/32 v4, 0x5265c00

    const/4 v6, 0x2

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x7

    const/4 v10, 0x1

    packed-switch p1, :pswitch_data_0

    .line 3057
    :pswitch_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calendar.roll("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") not supported"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3053
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->set(II)V

    return-void

    .line 2857
    :pswitch_2
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 2858
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->pinField(I)V

    .line 2859
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->pinField(I)V

    return-void

    .line 2783
    :pswitch_3
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2784
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    .line 2785
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result p1

    add-int/2addr p2, v2

    add-int/2addr p1, v10

    .line 2786
    rem-int/2addr p2, p1

    if-gez p2, :cond_1

    add-int/2addr p2, p1

    :cond_1
    const-wide/32 v3, 0x36ee80

    int-to-long p1, p2

    int-to-long v5, v2

    sub-long/2addr p1, v5

    mul-long/2addr p1, v3

    add-long/2addr v0, p1

    .line 2790
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void

    :pswitch_4
    int-to-long p1, p2

    mul-long/2addr p1, v2

    .line 3038
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    sub-int/2addr v4, v10

    div-int/2addr v4, v9

    .line 3041
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v5

    .line 3042
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v9

    .line 3044
    iget-wide v6, p0, Landroid/icu/util/Calendar;->time:J

    int-to-long v8, v4

    mul-long/2addr v8, v2

    sub-long v8, v6, v8

    add-int/2addr v4, v5

    add-int/2addr v4, v10

    int-to-long v4, v4

    mul-long/2addr v4, v2

    add-long/2addr v6, p1

    sub-long/2addr v6, v8

    .line 3047
    rem-long/2addr v6, v4

    iput-wide v6, p0, Landroid/icu/util/Calendar;->time:J

    .line 3048
    iget-wide p1, p0, Landroid/icu/util/Calendar;->time:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    add-long/2addr p1, v4

    iput-wide p1, p0, Landroid/icu/util/Calendar;->time:J

    .line 3049
    :cond_2
    iget-wide p1, p0, Landroid/icu/util/Calendar;->time:J

    add-long/2addr p1, v8

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void

    :pswitch_5
    int-to-long v6, p2

    mul-long/2addr v6, v4

    .line 3021
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result p2

    if-ne p1, v9, :cond_3

    .line 3022
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v10

    :cond_3
    sub-int/2addr p2, v10

    if-gez p2, :cond_4

    add-int/lit8 p2, p2, 0x7

    .line 3024
    :cond_4
    iget-wide v8, p0, Landroid/icu/util/Calendar;->time:J

    int-to-long p1, p2

    mul-long/2addr p1, v4

    sub-long p1, v8, p1

    add-long/2addr v8, v6

    sub-long/2addr v8, p1

    .line 3025
    rem-long/2addr v8, v2

    iput-wide v8, p0, Landroid/icu/util/Calendar;->time:J

    .line 3026
    iget-wide v4, p0, Landroid/icu/util/Calendar;->time:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_5

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/icu/util/Calendar;->time:J

    .line 3027
    :cond_5
    iget-wide v0, p0, Landroid/icu/util/Calendar;->time:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void

    :pswitch_6
    int-to-long p1, p2

    mul-long/2addr p1, v4

    .line 3005
    iget-wide v2, p0, Landroid/icu/util/Calendar;->time:J

    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v6

    sub-int/2addr v6, v10

    int-to-long v8, v6

    mul-long/2addr v8, v4

    sub-long/2addr v2, v8

    .line 3006
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 3007
    iget-wide v7, p0, Landroid/icu/util/Calendar;->time:J

    add-long/2addr v7, p1

    sub-long/2addr v7, v2

    int-to-long p1, v6

    mul-long/2addr p1, v4

    rem-long/2addr v7, p1

    iput-wide v7, p0, Landroid/icu/util/Calendar;->time:J

    .line 3008
    iget-wide v4, p0, Landroid/icu/util/Calendar;->time:J

    cmp-long v0, v4, v0

    if-gez v0, :cond_6

    add-long/2addr v4, p1

    iput-wide v4, p0, Landroid/icu/util/Calendar;->time:J

    .line 3009
    :cond_6
    iget-wide p1, p0, Landroid/icu/util/Calendar;->time:J

    add-long/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void

    .line 2893
    :pswitch_7
    invoke-virtual {p0, v9}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_7

    add-int/lit8 p1, p1, 0x7

    .line 2898
    :cond_7
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    sub-int v0, p1, v0

    add-int/2addr v0, v10

    rem-int/2addr v0, v9

    if-gez v0, :cond_8

    add-int/lit8 v0, v0, 0x7

    :cond_8
    rsub-int/lit8 v1, v0, 0x7

    .line 2906
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    if-ge v1, v2, :cond_9

    rsub-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_9
    rsub-int/lit8 v0, v0, 0x1

    .line 2913
    :goto_0
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 2914
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    sub-int v2, v1, v2

    add-int/2addr v2, p1

    rem-int/2addr v2, v9

    add-int/lit8 p1, v1, 0x7

    sub-int/2addr p1, v2

    sub-int/2addr p1, v0

    .line 2925
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    mul-int/2addr p2, v9

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    rem-int/2addr v2, p1

    if-gez v2, :cond_a

    add-int/2addr v2, p1

    :cond_a
    add-int p1, v2, v0

    if-ge p1, v10, :cond_b

    move p1, v10

    :cond_b
    if-le p1, v1, :cond_c

    move p1, v1

    .line 2940
    :cond_c
    invoke-virtual {p0, v8, p1}, Landroid/icu/util/Calendar;->set(II)V

    return-void

    .line 2951
    :pswitch_8
    invoke-virtual {p0, v9}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_d

    add-int/lit8 p1, p1, 0x7

    .line 2956
    :cond_d
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    sub-int v0, p1, v0

    add-int/2addr v0, v10

    rem-int/2addr v0, v9

    if-gez v0, :cond_e

    add-int/lit8 v0, v0, 0x7

    :cond_e
    rsub-int/lit8 v1, v0, 0x7

    .line 2964
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    if-ge v1, v2, :cond_f

    rsub-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_f
    rsub-int/lit8 v0, v0, 0x1

    .line 2971
    :goto_1
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 2972
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    sub-int v2, v1, v2

    add-int/2addr v2, p1

    rem-int/2addr v2, v9

    add-int/lit8 p1, v1, 0x7

    sub-int/2addr p1, v2

    sub-int/2addr p1, v0

    .line 2983
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    mul-int/2addr p2, v9

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    rem-int/2addr v2, p1

    if-gez v2, :cond_10

    add-int/2addr v2, p1

    :cond_10
    add-int p1, v2, v0

    if-ge p1, v10, :cond_11

    move p1, v10

    :cond_11
    if-le p1, v1, :cond_12

    move p1, v1

    .line 2996
    :cond_12
    invoke-virtual {p0, v7, p1}, Landroid/icu/util/Calendar;->set(II)V

    .line 2997
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->clear(I)V

    return-void

    .line 2800
    :pswitch_9
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result p1

    .line 2801
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v0, p2

    add-int/2addr p1, v10

    rem-int/2addr v0, p1

    if-gez v0, :cond_13

    add-int/2addr v0, p1

    .line 2806
    :cond_13
    invoke-virtual {p0, v6, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 2811
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->pinField(I)V

    return-void

    :pswitch_a
    const/4 v0, 0x0

    .line 2822
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_15

    .line 2824
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gregorian"

    .line 2825
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "roc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "coptic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_14
    neg-int p2, p2

    move v0, v10

    .line 2830
    :cond_15
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    add-int/2addr p2, v2

    if-gtz v1, :cond_18

    if-lt p2, v10, :cond_16

    goto :goto_2

    :cond_16
    if-eqz v0, :cond_17

    goto :goto_3

    :cond_17
    move v10, p2

    goto :goto_3

    .line 2832
    :cond_18
    :goto_2
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    const v1, 0x8000

    if-ge v0, v1, :cond_1a

    if-ge p2, v10, :cond_19

    neg-int p2, p2

    .line 2836
    rem-int/2addr p2, v0

    sub-int v10, v0, p2

    goto :goto_3

    :cond_19
    if-le p2, v0, :cond_17

    add-int/lit8 p2, p2, -0x1

    .line 2838
    rem-int/2addr p2, v0

    add-int/2addr v10, p2

    goto :goto_3

    :cond_1a
    if-ge p2, v10, :cond_17

    .line 2850
    :goto_3
    invoke-virtual {p0, p1, v10}, Landroid/icu/util/Calendar;->set(II)V

    .line 2851
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->pinField(I)V

    .line 2852
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->pinField(I)V

    return-void

    .line 2757
    :pswitch_b
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v0

    .line 2758
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v1, v10

    .line 2761
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, v0

    .line 2762
    rem-int/2addr v2, v1

    if-gez v2, :cond_1b

    add-int/2addr v2, v1

    :cond_1b
    add-int/2addr v2, v0

    .line 2768
    invoke-virtual {p0, p1, v2}, Landroid/icu/util/Calendar;->set(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method

.method public final roll(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 2667
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->roll(II)V

    return-void
.end method

.method public final set(II)V
    .locals 2

    .line 2003
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-eqz v0, :cond_0

    .line 2004
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeFields()V

    .line 2006
    :cond_0
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aput p2, v0, p1

    .line 2008
    iget p2, p0, Landroid/icu/util/Calendar;->nextStamp:I

    sget v0, Landroid/icu/util/Calendar;->STAMP_MAX:I

    if-ne p2, v0, :cond_1

    .line 2009
    invoke-direct {p0}, Landroid/icu/util/Calendar;->recalculateStamp()V

    .line 2011
    :cond_1
    iget-object p2, p0, Landroid/icu/util/Calendar;->stamp:[I

    iget v0, p0, Landroid/icu/util/Calendar;->nextStamp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/util/Calendar;->nextStamp:I

    aput v0, p2, p1

    const/4 p1, 0x0

    .line 2012
    iput-boolean p1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean p1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean p1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    return-void
.end method

.method public final set(III)V
    .locals 1

    const/4 v0, 0x1

    .line 2026
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 2027
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 2028
    invoke-virtual {p0, p1, p3}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public final set(IIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 2044
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 2045
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 2046
    invoke-virtual {p0, p1, p3}, Landroid/icu/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 2047
    invoke-virtual {p0, p1, p4}, Landroid/icu/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 2048
    invoke-virtual {p0, p1, p5}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public final set(IIIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 2066
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 2067
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 2068
    invoke-virtual {p0, p1, p3}, Landroid/icu/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 2069
    invoke-virtual {p0, p1, p4}, Landroid/icu/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 2070
    invoke-virtual {p0, p1, p5}, Landroid/icu/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 2071
    invoke-virtual {p0, p1, p6}, Landroid/icu/util/Calendar;->set(II)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    .line 4185
    iget v0, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 4189
    iput p1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    const/4 p1, 0x0

    .line 4190
    iput-boolean p1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    goto :goto_0

    .line 4187
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid day of week"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public setLenient(Z)V
    .locals 0

    .line 4078
    iput-boolean p1, p0, Landroid/icu/util/Calendar;->lenient:Z

    return-void
.end method

.method final setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-ne v2, v0, :cond_2

    .line 6370
    iput-object p1, p0, Landroid/icu/util/Calendar;->validLocale:Landroid/icu/util/ULocale;

    .line 6371
    iput-object p2, p0, Landroid/icu/util/Calendar;->actualLocale:Landroid/icu/util/ULocale;

    return-void

    .line 6365
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 4223
    :cond_1
    :goto_0
    iget v0, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    if-eq v0, p1, :cond_2

    .line 4224
    iput p1, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    const/4 p1, 0x0

    .line 4225
    iput-boolean p1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    :cond_2
    return-void
.end method

.method public final setRelatedYear(I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2182
    sget-object v0, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    .line 2183
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    .line 2184
    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 2185
    iget-object v6, v5, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2190
    :cond_1
    :goto_1
    sget-object v1, Landroid/icu/util/Calendar$1;->$SwitchMap$android$icu$util$Calendar$CalType:[I

    invoke-virtual {v0}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    add-int/lit16 p1, p1, -0x26e

    goto :goto_2

    .line 2212
    :pswitch_2
    invoke-static {p1}, Landroid/icu/util/Calendar;->firstIslamicStartYearFromGrego(I)I

    move-result p1

    goto :goto_2

    :pswitch_3
    add-int/lit8 p1, p1, -0x4f

    goto :goto_2

    :pswitch_4
    add-int/lit16 p1, p1, 0xeb0

    goto :goto_2

    :pswitch_5
    add-int/lit16 p1, p1, 0x1574

    goto :goto_2

    :pswitch_6
    add-int/lit8 p1, p1, -0x8

    goto :goto_2

    :pswitch_7
    add-int/lit16 p1, p1, 0x91d

    goto :goto_2

    :pswitch_8
    add-int/lit16 p1, p1, -0x11c

    goto :goto_2

    :pswitch_9
    add-int/lit16 p1, p1, 0xa4d

    :goto_2
    const/16 v0, 0x13

    .line 2222
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRepeatedWallTimeOption(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4110
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal repeated wall time option - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4112
    :cond_1
    :goto_0
    iput p1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    return-void
.end method

.method public setSkippedWallTimeOption(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4157
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal skipped wall time option - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4159
    :cond_1
    :goto_0
    iput p1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .locals 2

    .line 1918
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 5

    const-wide v0, 0x28d47dbbf19b000L

    cmp-long v2, p1, v0

    const-wide v3, -0x28ec76c40e65000L

    if-lez v2, :cond_1

    .line 1939
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide p1, v0

    goto :goto_0

    .line 1942
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "millis value greater than upper bounds for a Calendar : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    cmp-long v0, p1, v3

    if-gez v0, :cond_3

    .line 1945
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide p1, v3

    goto :goto_0

    .line 1948
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "millis value less than lower bounds for a Calendar : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1951
    :cond_3
    :goto_0
    iput-wide p1, p0, Landroid/icu/util/Calendar;->time:J

    const/4 p1, 0x0

    .line 1952
    iput-boolean p1, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean p1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    const/4 p2, 0x1

    .line 1953
    iput-boolean p2, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean p2, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    move p2, p1

    .line 1955
    :goto_1
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v1, v0

    if-ge p2, v1, :cond_4

    .line 1956
    iget-object v1, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput p1, v1, p2

    aput p1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setTimeZone(Landroid/icu/util/TimeZone;)V
    .locals 0

    .line 4045
    iput-object p1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const/4 p1, 0x0

    .line 4055
    iput-boolean p1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    return-void
.end method

.method public setWeekData(Landroid/icu/util/Calendar$WeekData;)Landroid/icu/util/Calendar;
    .locals 1

    .line 4732
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setFirstDayOfWeek(I)V

    .line 4733
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 4735
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    iput v0, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    .line 4736
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    iput v0, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    .line 4737
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    iput v0, p0, Landroid/icu/util/Calendar;->weekendCease:I

    .line 4738
    iget p1, p1, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    iput p1, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 4586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4587
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[time="

    .line 4588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4589
    iget-boolean v1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    const-string v2, "?"

    if-eqz v1, :cond_0

    iget-wide v3, p0, Landroid/icu/util/Calendar;->time:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",areFieldsSet="

    .line 4590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4591
    iget-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",areAllFieldsSet="

    .line 4592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4593
    iget-boolean v1, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",lenient="

    .line 4594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4595
    iget-boolean v1, p0, Landroid/icu/util/Calendar;->lenient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",zone="

    .line 4596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4597
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",firstDayOfWeek="

    .line 4598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4599
    iget v1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",minimalDaysInFirstWeek="

    .line 4600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4601
    iget v1, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",repeatedWallTime="

    .line 4602
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4603
    iget v1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",skippedWallTime="

    .line 4604
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4605
    iget v1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 4606
    :goto_1
    iget-object v3, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    const/16 v3, 0x2c

    .line 4607
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4608
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 p0, 0x5d

    .line 4610
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected validateField(I)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 5249
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->validateField(III)V

    goto :goto_0

    .line 5243
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5246
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->validateField(III)V

    goto :goto_0

    .line 5244
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DAY_OF_WEEK_IN_MONTH cannot be zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5239
    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v0

    .line 5240
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/util/Calendar;->validateField(III)V

    goto :goto_0

    .line 5235
    :cond_3
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v0

    const/4 v2, 0x2

    .line 5236
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/util/Calendar;->validateField(III)V

    :goto_0
    return-void
.end method

.method protected final validateField(III)V
    .locals 3

    .line 5262
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v0, v0, p1

    if-lt v0, p2, :cond_0

    if-gt v0, p3, :cond_0

    return-void

    .line 5264
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3d

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", valid range="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected validateFields()V
    .locals 3

    const/4 v0, 0x0

    .line 5217
    :goto_0
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 5218
    iget-object v1, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 5219
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->validateField(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final weekNumber(II)I
    .locals 0

    .line 3884
    invoke-virtual {p0, p1, p1, p2}, Landroid/icu/util/Calendar;->weekNumber(III)I

    move-result p0

    return p0
.end method

.method protected weekNumber(III)I
    .locals 1

    .line 3837
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int/2addr p3, v0

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    rem-int/lit8 p3, p3, 0x7

    if-gez p3, :cond_0

    add-int/lit8 p3, p3, 0x7

    :cond_0
    add-int/2addr p1, p3

    add-int/lit8 p1, p1, -0x1

    .line 3843
    div-int/lit8 p1, p1, 0x7

    rsub-int/lit8 p2, p3, 0x7

    .line 3848
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result p0

    if-lt p2, p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    return p1
.end method
