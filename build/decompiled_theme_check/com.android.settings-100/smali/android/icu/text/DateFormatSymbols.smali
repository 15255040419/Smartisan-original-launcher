.class public Landroid/icu/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateFormatSymbols$CalendarDataSink;,
        Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    }
.end annotation


# static fields
.field public static final ABBREVIATED:I = 0x0

.field static final ALTERNATE_TIME_SEPARATOR:Ljava/lang/String; = "."

.field private static final CALENDAR_CLASSES:[[Ljava/lang/String;

.field private static final DAY_PERIOD_KEYS:[Ljava/lang/String;

.field static final DEFAULT_TIME_SEPARATOR:Ljava/lang/String; = ":"

.field private static DFSCACHE:Landroid/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateFormatSymbols;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field public static final DT_CONTEXT_COUNT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final DT_LEAP_MONTH_PATTERN_FORMAT_ABBREV:I = 0x1

.field static final DT_LEAP_MONTH_PATTERN_FORMAT_NARROW:I = 0x2

.field static final DT_LEAP_MONTH_PATTERN_FORMAT_WIDE:I = 0x0

.field static final DT_LEAP_MONTH_PATTERN_NUMERIC:I = 0x6

.field static final DT_LEAP_MONTH_PATTERN_STANDALONE_ABBREV:I = 0x4

.field static final DT_LEAP_MONTH_PATTERN_STANDALONE_NARROW:I = 0x5

.field static final DT_LEAP_MONTH_PATTERN_STANDALONE_WIDE:I = 0x3

.field static final DT_MONTH_PATTERN_COUNT:I = 0x7

.field public static final DT_WIDTH_COUNT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT:I = 0x0

.field private static final LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

.field public static final NARROW:I = 0x2

.field public static final NUMERIC:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHORT:I = 0x3

.field public static final STANDALONE:I = 0x1

.field public static final WIDE:I = 0x1

.field private static final contextUsageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;",
            ">;"
        }
    .end annotation
.end field

.field static final millisPerHour:I = 0x36ee80

.field static final patternChars:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

.field private static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field abbreviatedDayPeriods:[Ljava/lang/String;

.field private actualLocale:Landroid/icu/util/ULocale;

.field ampms:[Ljava/lang/String;

.field ampmsNarrow:[Ljava/lang/String;

.field capitalization:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;",
            "[Z>;"
        }
    .end annotation
.end field

.field eraNames:[Ljava/lang/String;

.field eras:[Ljava/lang/String;

.field leapMonthPatterns:[Ljava/lang/String;

.field localPatternChars:Ljava/lang/String;

.field months:[Ljava/lang/String;

.field narrowDayPeriods:[Ljava/lang/String;

.field narrowEras:[Ljava/lang/String;

.field narrowMonths:[Ljava/lang/String;

.field narrowWeekdays:[Ljava/lang/String;

.field quarters:[Ljava/lang/String;

.field private requestedLocale:Landroid/icu/util/ULocale;

.field shortMonths:[Ljava/lang/String;

.field shortQuarters:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field shortYearNames:[Ljava/lang/String;

.field shortZodiacNames:[Ljava/lang/String;

.field shorterWeekdays:[Ljava/lang/String;

.field standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

.field standaloneMonths:[Ljava/lang/String;

.field standaloneNarrowDayPeriods:[Ljava/lang/String;

.field standaloneNarrowMonths:[Ljava/lang/String;

.field standaloneNarrowWeekdays:[Ljava/lang/String;

.field standaloneQuarters:[Ljava/lang/String;

.field standaloneShortMonths:[Ljava/lang/String;

.field standaloneShortQuarters:[Ljava/lang/String;

.field standaloneShortWeekdays:[Ljava/lang/String;

.field standaloneShorterWeekdays:[Ljava/lang/String;

.field standaloneWeekdays:[Ljava/lang/String;

.field standaloneWideDayPeriods:[Ljava/lang/String;

.field private timeSeparator:Ljava/lang/String;

.field private validLocale:Landroid/icu/util/ULocale;

.field weekdays:[Ljava/lang/String;

.field wideDayPeriods:[Ljava/lang/String;

.field private zoneStrings:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "GregorianCalendar"

    const-string v2, "gregorian"

    .line 647
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "JapaneseCalendar"

    const-string v3, "japanese"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "BuddhistCalendar"

    const-string v4, "buddhist"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "TaiwanCalendar"

    const-string/jumbo v5, "roc"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "PersianCalendar"

    const-string/jumbo v6, "persian"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "IslamicCalendar"

    const-string v7, "islamic"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "HebrewCalendar"

    const-string v8, "hebrew"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "ChineseCalendar"

    const-string v9, "chinese"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "IndianCalendar"

    const-string v10, "indian"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "CopticCalendar"

    const-string v10, "coptic"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0x9

    aput-object v1, v0, v10

    const-string v1, "EthiopicCalendar"

    const-string v10, "ethiopic"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v1

    const/16 v10, 0xa

    aput-object v1, v0, v10

    sput-object v0, Landroid/icu/text/DateFormatSymbols;->CALENDAR_CLASSES:[[Ljava/lang/String;

    .line 687
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    .line 688
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v10, "month-format-except-narrow"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v10, "month-standalone-except-narrow"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v10, "month-narrow"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v10, "day-format-except-narrow"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v10, "day-standalone-except-narrow"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v10, "day-narrow"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v10, "era-name"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v10, "era-abbr"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v10, "era-narrow"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string/jumbo v10, "zone-long"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string/jumbo v10, "zone-short"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v10, "metazone-long"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    sget-object v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    const-string v10, "metazone-short"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    new-instance v0, Landroid/icu/text/DateFormatSymbols$1;

    invoke-direct {v0}, Landroid/icu/text/DateFormatSymbols$1;-><init>()V

    sput-object v0, Landroid/icu/text/DateFormatSymbols;->DFSCACHE:Landroid/icu/impl/CacheBase;

    new-array v0, v9, [Ljava/lang/String;

    .line 2027
    sput-object v0, Landroid/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    .line 2029
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const-string v1, "monthPatterns/format/wide"

    aput-object v1, v0, v2

    const-string v1, "monthPatterns/format/abbreviated"

    .line 2030
    aput-object v1, v0, v3

    const-string v1, "monthPatterns/format/narrow"

    .line 2031
    aput-object v1, v0, v4

    const-string v1, "monthPatterns/stand-alone/wide"

    .line 2032
    aput-object v1, v0, v5

    const-string v1, "monthPatterns/stand-alone/abbreviated"

    .line 2033
    aput-object v1, v0, v6

    const-string v1, "monthPatterns/stand-alone/narrow"

    .line 2034
    aput-object v1, v0, v7

    const-string v1, "monthPatterns/numeric/all"

    .line 2035
    aput-object v1, v0, v8

    const-string v9, "midnight"

    const-string v10, "noon"

    const-string v11, "morning1"

    const-string v12, "afternoon1"

    const-string v13, "evening1"

    const-string v14, "night1"

    const-string v15, "morning2"

    const-string v16, "afternoon2"

    const-string v17, "evening2"

    const-string v18, "night2"

    .line 2061
    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 226
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V
    .locals 1

    .line 2140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 342
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 349
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 357
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 366
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 375
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 383
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 392
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 401
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 410
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 439
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 448
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 477
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 485
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 493
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 499
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 513
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 520
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 527
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 534
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 543
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 552
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 588
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 606
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 612
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 618
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 624
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 630
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 636
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 642
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 709
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2141
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Ljava/util/Locale;)V
    .locals 1

    .line 2128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 342
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 349
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 357
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 366
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 375
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 383
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 392
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 401
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 410
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 439
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 448
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 477
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 485
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 493
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 499
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 513
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 520
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 527
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 534
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 543
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 552
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 588
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 606
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 612
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 618
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 624
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 630
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 636
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 642
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 709
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2129
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 342
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 349
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 357
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 366
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 375
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 383
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 392
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 401
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 410
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 439
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 448
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 477
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 485
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 493
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 499
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 513
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 520
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 527
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 534
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 543
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 552
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 588
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 606
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 612
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 618
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 624
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 630
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 636
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 642
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 709
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 250
    invoke-static {p1}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 1

    .line 1808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 342
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 349
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 357
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 366
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 375
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 383
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 392
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 401
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 410
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 439
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 448
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 477
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 485
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 493
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 499
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 513
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 520
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 527
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 534
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 543
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 552
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 588
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 606
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 612
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 618
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 624
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 630
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 636
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 642
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 709
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 1809
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/DateFormatSymbols$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 342
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 349
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 357
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 366
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 375
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 383
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 392
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 401
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 410
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 439
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 448
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 477
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 485
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 493
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 499
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 513
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 520
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 527
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 534
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 543
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 552
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 588
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 606
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 612
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 618
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 624
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 630
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 636
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 642
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 709
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2186
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Landroid/icu/util/ULocale;",
            ")V"
        }
    .end annotation

    .line 2158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 342
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 349
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 357
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 366
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 375
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 383
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 392
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 401
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 410
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 439
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 448
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 477
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 485
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 493
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 499
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 513
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 520
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 527
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 534
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 543
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 552
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 588
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 606
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 612
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 618
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 624
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 630
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 636
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 642
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 709
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2159
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    .line 2160
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 2161
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 2163
    sget-object v1, Landroid/icu/text/DateFormatSymbols;->CALENDAR_CLASSES:[[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 2164
    aget-object v7, v6, v4

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2165
    aget-object v0, v6, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const-string v0, "Calendar"

    const-string v1, ""

    .line 2170
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2173
    :cond_2
    invoke-virtual {p0, p2, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .line 2150
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 238
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Landroid/icu/util/ULocale;)V
    .locals 1

    .line 2206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 335
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 342
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 349
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 357
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 366
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 375
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 383
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 392
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 401
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 410
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 420
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 430
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 439
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 448
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 458
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 468
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 477
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 485
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 493
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 499
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 506
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 513
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 520
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 527
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 534
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 543
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 552
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 588
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 606
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 612
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 618
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 624
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 630
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 636
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 642
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 709
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2207
    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    invoke-static {p2}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    .locals 0

    .line 2197
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/ResourceBundle;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private static final arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_2

    .line 2045
    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    .line 2049
    :cond_2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 2050
    aget-object v0, p0, v1

    aget-object v2, p1, v1

    invoke-static {v0, v2}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method private final duplicate([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 2091
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private final duplicate([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 3

    .line 2096
    array-length v0, p1

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    .line 2097
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2098
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 310
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    .line 327
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormatBundle(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Ljava/util/ResourceBundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDateFormatBundle(Landroid/icu/util/Calendar;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDateFormatBundle(Ljava/lang/Class;Landroid/icu/util/ULocale;)Ljava/util/ResourceBundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDateFormatBundle(Ljava/lang/Class;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Landroid/icu/text/DateFormatSymbols;
    .locals 1

    .line 264
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v0}, Landroid/icu/text/DateFormatSymbols;-><init>()V

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormatSymbols;
    .locals 1

    .line 294
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .locals 1

    .line 279
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2070
    sget-object p0, Landroid/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    array-length p0, p0

    new-array p0, p0, [Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2072
    :goto_0
    sget-object v1, Landroid/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2073
    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2369
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1404
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DateFormatSymbols;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1408
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 1431
    :cond_1
    check-cast p1, Landroid/icu/text/DateFormatSymbols;

    .line 1432
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 1433
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 1434
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 1435
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 1436
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 1437
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 1438
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 1439
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 1440
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 1441
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 1442
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 1443
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 1444
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 1445
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 1446
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 1447
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 1448
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 1449
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 1450
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 1451
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 1452
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 1453
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 1454
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 1455
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 1456
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 1457
    invoke-static {v2, v3}, Landroid/icu/text/DateFormatSymbols;->arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    .line 1461
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object p1, p1, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 1462
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .locals 1

    .line 1271
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEraNames()[Ljava/lang/String;
    .locals 1

    .line 732
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 1

    .line 716
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLeapMonthPattern(II)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1167
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    if-eq p2, v3, :cond_3

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_4

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    move v0, p1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_4

    if-eq p2, v3, :cond_7

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_4

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-ltz v0, :cond_8

    .line 1205
    iget-object p0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    .line 1203
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad context or width argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .locals 0

    .line 1385
    iget-object p0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1

    .line 2316
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    .line 2317
    iget-object p0, p0, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    :goto_0
    return-object p0
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 1

    .line 761
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMonths(II)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_3

    goto :goto_0

    .line 798
    :cond_1
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    goto :goto_0

    .line 791
    :cond_2
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    goto :goto_0

    .line 795
    :cond_3
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_7

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_5

    if-eq p2, v0, :cond_7

    goto :goto_0

    .line 784
    :cond_5
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    goto :goto_0

    .line 777
    :cond_6
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_0

    .line 781
    :cond_7
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    :goto_0
    if-eqz v3, :cond_8

    .line 806
    invoke-direct {p0, v3}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 804
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad context or width argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNarrowEras()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 752
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQuarters(II)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 1038
    :cond_1
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    goto :goto_0

    .line 1042
    :cond_2
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_5

    goto :goto_0

    .line 1023
    :cond_4
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    goto :goto_0

    .line 1027
    :cond_5
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    :cond_6
    :goto_0
    if-eqz v3, :cond_7

    .line 1053
    invoke-direct {p0, v3}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1051
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad context or width argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    .line 864
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .locals 1

    .line 996
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimeSeparatorString()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1290
    iget-object p0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    return-object p0
.end method

.method public getWeekdays()[Ljava/lang/String;
    .locals 1

    .line 881
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWeekdays(II)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_3

    if-eq p2, v0, :cond_1

    goto :goto_2

    .line 920
    :cond_1
    iget-object p1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz p1, :cond_2

    :goto_0
    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    :goto_1
    move-object v3, p1

    goto :goto_2

    .line 923
    :cond_3
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    goto :goto_2

    .line 914
    :cond_4
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    goto :goto_2

    .line 917
    :cond_5
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_b

    if-eq p2, v2, :cond_a

    if-eq p2, v1, :cond_9

    if-eq p2, v0, :cond_7

    goto :goto_2

    .line 904
    :cond_7
    iget-object p1, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    iget-object p1, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_1

    .line 907
    :cond_9
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    goto :goto_2

    .line 898
    :cond_a
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_2

    .line 901
    :cond_b
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    :goto_2
    if-eqz v3, :cond_c

    .line 931
    invoke-direct {p0, v3}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 929
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad context or width argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getYearNames(II)[Ljava/lang/String;
    .locals 0

    .line 1108
    iget-object p1, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1109
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getZodiacNames(II)[Ljava/lang/String;
    .locals 0

    .line 1136
    iget-object p1, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1137
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .locals 15

    .line 1330
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1331
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1334
    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    .line 1335
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v1

    .line 1336
    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames;->loadAllDisplayNames()V

    const/4 v2, 0x4

    new-array v9, v2, [Landroid/icu/text/TimeZoneNames$NameType;

    .line 1337
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v3, 0x1

    aput-object v2, v9, v3

    const/4 v2, 0x2

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v3, v9, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v3, v9, v2

    .line 1341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1342
    array-length v2, v0

    const/4 v3, 0x5

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [[Ljava/lang/String;

    move v14, v10

    .line 1343
    :goto_0
    array-length v2, v0

    if-ge v14, v2, :cond_2

    .line 1344
    aget-object v2, v0, v14

    invoke-static {v2}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1346
    aget-object v2, v0, v14

    :cond_1
    move-object v3, v2

    .line 1349
    aget-object v2, v13, v14

    aget-object v4, v0, v14

    aput-object v4, v2, v10

    .line 1350
    aget-object v7, v13, v14

    const/4 v8, 0x1

    move-object v2, v1

    move-object v4, v9

    move-wide v5, v11

    invoke-virtual/range {v2 .. v8}, Landroid/icu/text/TimeZoneNames;->getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1353
    :cond_2
    iput-object v13, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 1354
    iget-object p0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1420
    iget-object p0, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method initializeData(Landroid/icu/text/DateFormatSymbols;)V
    .locals 1

    .line 1516
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 1517
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 1518
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 1519
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 1520
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 1521
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 1522
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 1523
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 1524
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 1525
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 1526
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 1527
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 1528
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 1529
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 1530
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 1531
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 1532
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 1533
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 1534
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 1535
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 1536
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 1537
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 1538
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 1539
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 1540
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 1541
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 1542
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 1543
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 1544
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 1545
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 1546
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 1547
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 1548
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 1550
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 1551
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 1553
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 1555
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    .line 1556
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    .line 1557
    iget-object p1, p1, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    return-void
.end method

.method protected initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1825
    new-instance v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;

    invoke-direct {v0}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;-><init>()V

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string v2, "gregorian"

    if-nez p2, :cond_0

    .line 1828
    invoke-static {v1, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p2

    check-cast p2, Landroid/icu/impl/ICUResourceBundle;

    :cond_0
    :goto_0
    const-string v3, ""

    if-eqz p3, :cond_4

    .line 1835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calendar/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1837
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1839
    invoke-virtual {v0}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->visitAllResources()V

    :goto_1
    move-object p3, v2

    goto :goto_0

    .line 1842
    :cond_1
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The \'gregorian\' calendar type wasn\'t found for the locale: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p1, p0, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 1845
    :cond_2
    invoke-virtual {v0, p3}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->preEnumerate(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {v4, v3, v0}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 1849
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    .line 1854
    :cond_3
    iget-object p3, v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 1859
    invoke-virtual {v0}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->visitAllResources()V

    goto :goto_1

    .line 1863
    :cond_4
    :goto_2
    iget-object p2, v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    .line 1864
    iget-object p3, v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    const-string v0, "eras/abbreviated"

    .line 1866
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const-string v0, "eras/wide"

    .line 1867
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    const-string v0, "eras/narrow"

    .line 1868
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    const-string v0, "monthNames/format/wide"

    .line 1870
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    const-string v0, "monthNames/format/abbreviated"

    .line 1871
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    const-string v0, "monthNames/format/narrow"

    .line 1872
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    const-string v0, "monthNames/stand-alone/wide"

    .line 1874
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    const-string v0, "monthNames/stand-alone/abbreviated"

    .line 1875
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    const-string v0, "monthNames/stand-alone/narrow"

    .line 1876
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    const-string v0, "dayNames/format/wide"

    .line 1878
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    .line 1879
    iput-object v4, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 1880
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 1881
    array-length v6, v0

    const/4 v7, 0x1

    invoke-static {v0, v5, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "dayNames/format/abbreviated"

    .line 1883
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/String;

    .line 1884
    iput-object v6, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 1885
    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    aput-object v3, v6, v5

    .line 1886
    array-length v8, v4

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v4, "dayNames/format/short"

    .line 1888
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/String;

    .line 1889
    iput-object v6, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 1890
    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    aput-object v3, v6, v5

    .line 1891
    array-length v8, v4

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v4, "dayNames/format/narrow"

    .line 1893
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v6, "dayNames/stand-alone/narrow"

    if-nez v4, :cond_6

    .line 1895
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-nez v4, :cond_6

    .line 1898
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_5

    goto :goto_3

    .line 1901
    :cond_5
    new-instance p1, Ljava/util/MissingResourceException;

    .line 1902
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Resource not found"

    invoke-direct {p1, p2, p0, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    new-array v0, v2, [Ljava/lang/String;

    .line 1906
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 1907
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    aput-object v3, v0, v5

    .line 1908
    array-length v8, v4

    invoke-static {v4, v5, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "dayNames/stand-alone/wide"

    .line 1911
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 1912
    iput-object v4, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 1913
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    aput-object v3, v4, v5

    .line 1914
    array-length v8, v0

    invoke-static {v0, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "dayNames/stand-alone/abbreviated"

    .line 1917
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 1918
    iput-object v4, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 1919
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    aput-object v3, v4, v5

    .line 1920
    array-length v8, v0

    invoke-static {v0, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "dayNames/stand-alone/short"

    .line 1923
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 1924
    iput-object v4, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 1925
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    aput-object v3, v4, v5

    .line 1926
    array-length v8, v0

    invoke-static {v0, v5, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1929
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    .line 1930
    iput-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 1931
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    aput-object v3, v2, v5

    .line 1932
    array-length v3, v0

    invoke-static {v0, v5, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v0, "AmPmMarkers"

    .line 1934
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const-string v0, "AmPmMarkersNarrow"

    .line 1935
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    const-string/jumbo v0, "quarters/format/wide"

    .line 1937
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    const-string/jumbo v0, "quarters/format/abbreviated"

    .line 1938
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    const-string/jumbo v0, "quarters/stand-alone/wide"

    .line 1940
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    const-string/jumbo v0, "quarters/stand-alone/abbreviated"

    .line 1941
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    const-string v0, "dayPeriod/format/abbreviated"

    .line 1943
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    const-string v0, "dayPeriod/format/wide"

    .line 1944
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    const-string v0, "dayPeriod/format/narrow"

    .line 1945
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    const-string v0, "dayPeriod/stand-alone/abbreviated"

    .line 1946
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    const-string v0, "dayPeriod/stand-alone/wide"

    .line 1947
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    const-string v0, "dayPeriod/stand-alone/narrow"

    .line 1948
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    move v0, v5

    :goto_4
    const/4 v2, 0x7

    if-ge v0, v2, :cond_9

    .line 1951
    sget-object v3, Landroid/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_8

    .line 1953
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_8

    const-string v4, "leap"

    .line 1955
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 1957
    iget-object v4, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-nez v4, :cond_7

    new-array v2, v2, [Ljava/lang/String;

    .line 1958
    iput-object v2, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 1960
    :cond_7
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aput-object v3, v2, v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const-string p3, "cyclicNameSets/years/format/abbreviated"

    .line 1966
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    const-string p3, "cyclicNameSets/zodiacs/format/abbreviated"

    .line 1967
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 1969
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    .line 1972
    invoke-static {v1, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p2

    check-cast p2, Landroid/icu/impl/ICUResourceBundle;

    const-string p3, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    .line 1975
    iput-object p3, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 1978
    invoke-virtual {p2}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object p3

    .line 1979
    invoke-virtual {p0, p3, p3}, Landroid/icu/text/DateFormatSymbols;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 1981
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    const/4 p3, 0x2

    new-array v0, p3, [Z

    .line 1982
    fill-array-data v0, :array_0

    .line 1985
    invoke-static {}, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->values()[Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-result-object v1

    .line 1986
    array-length v2, v1

    move v3, v5

    :goto_5
    if-ge v3, v2, :cond_a

    aget-object v4, v1, v3

    .line 1987
    iget-object v6, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    :try_start_0
    const-string v0, "contextTransforms"

    .line 1991
    invoke-virtual {p2, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_e

    .line 1997
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v0

    .line 1998
    :cond_b
    :goto_7
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1999
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 2000
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v2

    .line 2001
    array-length v3, v2

    if-lt v3, p3, :cond_b

    .line 2002
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 2003
    sget-object v3, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    if-eqz v1, :cond_b

    new-array v3, p3, [Z

    .line 2006
    aget v4, v2, v5

    if-eqz v4, :cond_c

    move v4, v7

    goto :goto_8

    :cond_c
    move v4, v5

    :goto_8
    aput-boolean v4, v3, v5

    .line 2007
    aget v2, v2, v7

    if-eqz v2, :cond_d

    move v2, v7

    goto :goto_9

    :cond_d
    move v2, v5

    :goto_9
    aput-boolean v2, v3, v7

    .line 2008
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 2014
    :cond_e
    invoke-static {p1}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object p1

    if-nez p1, :cond_f

    const-string p1, "latn"

    goto :goto_a

    .line 2015
    :cond_f
    invoke-virtual {p1}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2016
    :goto_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NumberElements/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/symbols/timeSeparator"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2018
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormatSymbols;->setTimeSeparatorString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    const-string p1, ":"

    .line 2020
    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormatSymbols;->setTimeSeparatorString(Ljava/lang/String;)V

    :goto_b
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 3

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "numbers"

    .line 1502
    invoke-virtual {p1, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1503
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1506
    :cond_0
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->DFSCACHE:Landroid/icu/impl/CacheBase;

    invoke-virtual {v0, p2, p1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/DateFormatSymbols;

    .line 1507
    invoke-virtual {p0, p1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/text/DateFormatSymbols;)V

    return-void
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .locals 0

    .line 1279
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    return-void
.end method

.method public setEraNames([Ljava/lang/String;)V
    .locals 0

    .line 740
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .locals 0

    .line 724
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    return-void
.end method

.method public setLeapMonthPattern(Ljava/lang/String;II)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1221
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_7

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_7

    if-eq p3, v2, :cond_6

    if-eq p3, v1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    move v0, v2

    :goto_0
    if-ltz v0, :cond_8

    .line 1261
    iget-object p0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aput-object p1, p0, v0

    :cond_8
    return-void
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .locals 0

    .line 1394
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

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

    .line 2345
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    .line 2346
    iput-object p2, p0, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    return-void

    .line 2340
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setMonths([Ljava/lang/String;)V
    .locals 0

    .line 814
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    return-void
.end method

.method public setMonths([Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 850
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    goto :goto_0

    .line 844
    :cond_2
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    goto :goto_0

    .line 847
    :cond_3
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_7

    if-eq p3, v1, :cond_6

    if-eq p3, v0, :cond_5

    goto :goto_0

    .line 835
    :cond_5
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    goto :goto_0

    .line 829
    :cond_6
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_0

    .line 832
    :cond_7
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setQuarters([Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_1

    goto :goto_0

    .line 1083
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    goto :goto_0

    .line 1086
    :cond_2
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_5

    if-eq p3, v1, :cond_4

    goto :goto_0

    .line 1068
    :cond_4
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    goto :goto_0

    .line 1071
    :cond_5
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .locals 0

    .line 872
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .locals 0

    .line 1008
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    return-void
.end method

.method public setTimeSeparatorString(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1301
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .locals 0

    .line 985
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    return-void
.end method

.method public setWeekdays([Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_4

    if-eq p3, v2, :cond_3

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 968
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    goto :goto_0

    .line 971
    :cond_2
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    goto :goto_0

    .line 962
    :cond_3
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    goto :goto_0

    .line 965
    :cond_4
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_9

    if-eq p3, v2, :cond_8

    if-eq p3, v1, :cond_7

    if-eq p3, v0, :cond_6

    goto :goto_0

    .line 952
    :cond_6
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    goto :goto_0

    .line 955
    :cond_7
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    goto :goto_0

    .line 946
    :cond_8
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_0

    .line 949
    :cond_9
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setYearNames([Ljava/lang/String;II)V
    .locals 0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1122
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setZodiacNames([Ljava/lang/String;II)V
    .locals 0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1150
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .locals 0

    .line 1373
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    return-void
.end method
