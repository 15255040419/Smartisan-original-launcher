.class public final Landroid/icu/text/RelativeDateTimeFormatter;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RelativeDateTimeFormatter$Loader;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;,
        Landroid/icu/text/RelativeDateTimeFormatter$Cache;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$Direction;,
        Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$Style;
    }
.end annotation


# static fields
.field private static final cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

.field private static final fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;


# instance fields
.field private final breakIterator:Landroid/icu/text/BreakIterator;

.field private final capitalizationContext:Landroid/icu/text/DisplayContext;

.field private final combinedDateAndTime:Ljava/lang/String;

.field private final dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private final locale:Landroid/icu/util/ULocale;

.field private final numberFormat:Landroid/icu/text/NumberFormat;

.field private final patternMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pluralRules:Landroid/icu/text/PluralRules;

.field private final qualitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field private styleToDateFormatSymbolsWidth:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 775
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 1201
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$1;)V

    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    return-void
.end method

.method private constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules;",
            "Landroid/icu/text/NumberFormat;",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Landroid/icu/text/DisplayContext;",
            "Landroid/icu/text/BreakIterator;",
            "Landroid/icu/util/ULocale;",
            ")V"
        }
    .end annotation

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 507
    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->styleToDateFormatSymbolsWidth:[I

    .line 713
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->qualitativeUnitMap:Ljava/util/EnumMap;

    .line 714
    iput-object p2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->patternMap:Ljava/util/EnumMap;

    .line 715
    iput-object p3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->combinedDateAndTime:Ljava/lang/String;

    .line 716
    iput-object p4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->pluralRules:Landroid/icu/text/PluralRules;

    .line 717
    iput-object p5, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 718
    iput-object p6, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 719
    invoke-virtual {p7}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object p1

    sget-object p2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne p1, p2, :cond_0

    .line 722
    iput-object p7, p0, Landroid/icu/text/RelativeDateTimeFormatter;->capitalizationContext:Landroid/icu/text/DisplayContext;

    .line 723
    iput-object p8, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    .line 724
    iput-object p9, p0, Landroid/icu/text/RelativeDateTimeFormatter;->locale:Landroid/icu/util/ULocale;

    .line 725
    new-instance p1, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {p1, p9}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    return-void

    .line 720
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p7}, Landroid/icu/text/DisplayContext;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x2
    .end array-data
.end method

.method static synthetic access$000(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 0

    .line 74
    invoke-static {p0}, Landroid/icu/text/RelativeDateTimeFormatter;->keyToDirection(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()[Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    .line 74
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object v0
.end method

.method private adjustForContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 690
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 691
    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 694
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    monitor-enter v0

    .line 695
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->locale:Landroid/icu/util/ULocale;

    iget-object p0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    const/16 v2, 0x300

    invoke-static {v1, p1, p0, v2}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 700
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private getAbsoluteUnitString(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/text/RelativeDateTimeFormatter$Direction;)Ljava/lang/String;
    .locals 1

    .line 624
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->qualitativeUnitMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-eqz v0, :cond_1

    .line 628
    invoke-virtual {v0, p3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 638
    :cond_1
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {p1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 4

    .line 346
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 3

    .line 356
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 2

    .line 379
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    invoke-static {p0, p1, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 11

    .line 397
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    invoke-virtual {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    move-result-object v0

    if-nez p1, :cond_0

    .line 399
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 401
    :cond_0
    invoke-virtual {p1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/NumberFormat;

    :goto_0
    move-object v6, p1

    .line 403
    new-instance p1, Landroid/icu/text/RelativeDateTimeFormatter;

    iget-object v2, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->qualitativeUnitMap:Ljava/util/EnumMap;

    iget-object v3, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->relUnitPatternMap:Ljava/util/EnumMap;

    iget-object v4, v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->dateTimePattern:Ljava/lang/String;

    .line 408
    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v5

    .line 412
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    if-ne p3, v0, :cond_1

    .line 413
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v9, v0

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    move-object v10, p0

    invoke-direct/range {v1 .. v10}, Landroid/icu/text/RelativeDateTimeFormatter;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Ljava/lang/String;Landroid/icu/text/PluralRules;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;)V

    return-object p1
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 0

    .line 366
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/NumberFormat;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 0

    .line 427
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object p0

    return-object p0
.end method

.method private getRelativeUnitPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;
    .locals 2

    .line 741
    invoke-virtual {p4}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p4

    .line 743
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->patternMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumMap;

    if-eqz v0, :cond_1

    .line 745
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 747
    aget-object v1, v0, p3

    aget-object v1, v1, p4

    if-eqz v1, :cond_1

    .line 748
    aget-object p0, v0, p3

    aget-object p0, p0, p4

    return-object p0

    .line 756
    :cond_1
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-virtual {p1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0
.end method

.method private getRelativeUnitPluralPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;
    .locals 1

    .line 730
    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    if-eq p4, v0, :cond_0

    .line 731
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_0

    return-object p4

    .line 736
    :cond_0
    sget-object p4, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static keyToDirection(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 1

    const-string v0, "-2"

    .line 809
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object p0

    :cond_0
    const-string v0, "-1"

    .line 812
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object p0

    :cond_1
    const-string v0, "0"

    .line 815
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 816
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object p0

    :cond_2
    const-string v0, "1"

    .line 818
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 819
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object p0

    :cond_3
    const-string v0, "2"

    .line 821
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 822
    sget-object p0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public combineDateAndTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 653
    new-instance v0, Landroid/icu/text/MessageFormat;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 654
    iget-object p0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->combinedDateAndTime:Ljava/lang/String;

    sget-object v1, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0, p0, v1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;Landroid/icu/text/MessagePattern$ApostropheMode;)V

    .line 655
    new-instance p0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {p0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    .line 656
    new-instance p1, Ljava/text/FieldPosition;

    invoke-direct {p1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v0, v1, p0, p1}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 657
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;
    .locals 6

    .line 443
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-eq p3, v0, :cond_1

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be NEXT or LAST"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 447
    :cond_1
    :goto_0
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_2

    move p3, v1

    goto :goto_1

    :cond_2
    move p3, v2

    .line 451
    :goto_1
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    monitor-enter v0

    .line 452
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 453
    sget-object v4, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    .line 454
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-static {p1, p2, v5, v3, v4}, Landroid/icu/text/QuantityFormatter;->selectPlural(Ljava/lang/Number;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Landroid/icu/impl/StandardPlural;

    move-result-object p1

    .line 457
    iget-object p2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {p0, p2, p4, p3, p1}, Landroid/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPluralPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/CharSequence;

    aput-object v3, p2, v2

    .line 458
    invoke-static {p1, p2}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 459
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    invoke-direct {p0, p1}, Landroid/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 459
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public format(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/String;
    .locals 8

    .line 564
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const-wide v1, -0x3fff333333333333L    # -2.1

    cmpl-double v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_5

    const-wide v4, 0x4000cccccccccccdL    # 2.1

    cmpg-double v1, p1, v4

    if-gez v1, :cond_5

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, p1

    const-wide/16 v6, 0x0

    cmpg-double v1, v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-gez v1, :cond_0

    sub-double/2addr v4, v6

    goto :goto_0

    :cond_0
    add-double/2addr v4, v6

    :goto_0
    double-to-int v1, v4

    const/16 v4, -0xc8

    if-eq v1, v4, :cond_4

    const/16 v4, -0x64

    if-eq v1, v4, :cond_3

    if-eqz v1, :cond_6

    const/16 v4, 0x64

    if-eq v1, v4, :cond_2

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_1

    goto :goto_1

    .line 574
    :cond_1
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    goto :goto_2

    .line 573
    :cond_2
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    goto :goto_2

    .line 571
    :cond_3
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    goto :goto_2

    .line 570
    :cond_4
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v2

    .line 578
    :cond_6
    :goto_2
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    .line 579
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$1;->$SwitchMap$android$icu$text$RelativeDateTimeFormatter$RelativeDateTimeUnit:[I

    invoke-virtual {p3}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_7
    :pswitch_0
    move v3, v2

    goto :goto_3

    .line 591
    :pswitch_1
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 590
    :pswitch_2
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 589
    :pswitch_3
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 588
    :pswitch_4
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 587
    :pswitch_5
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 586
    :pswitch_6
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 585
    :pswitch_7
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 593
    :pswitch_8
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne v0, v4, :cond_7

    .line 595
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    goto :goto_3

    .line 584
    :pswitch_9
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 583
    :pswitch_a
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 582
    :pswitch_b
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 581
    :pswitch_c
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->QUARTER:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    goto :goto_3

    .line 580
    :pswitch_d
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    :goto_3
    if-nez v3, :cond_8

    .line 607
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 608
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    return-object v0

    .line 613
    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/RelativeDateTimeFormatter;->formatNumeric(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    .locals 3

    .line 522
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    if-ne p2, v0, :cond_1

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "NOW can only accept direction PLAIN."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 527
    :cond_1
    :goto_0
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    if-ne p1, v0, :cond_2

    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v0}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 528
    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v0

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {v1}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 530
    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result p1

    sget-object p2, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    move-result p2

    sub-int/2addr p1, p2

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 531
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->styleToDateFormatSymbolsWidth:[I

    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 533
    invoke-virtual {v2}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 532
    invoke-virtual {v0, p2, v1}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object p2

    .line 534
    aget-object p1, p2, p1

    goto :goto_1

    .line 537
    :cond_2
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    invoke-direct {p0, v0, p2, p1}, Landroid/icu/text/RelativeDateTimeFormatter;->getAbsoluteUnitString(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/text/RelativeDateTimeFormatter$Direction;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    .line 539
    invoke-direct {p0, p1}, Landroid/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public formatNumeric(DLandroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;)Ljava/lang/String;
    .locals 3

    .line 485
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 486
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$1;->$SwitchMap$android$icu$text$RelativeDateTimeFormatter$RelativeDateTimeUnit:[I

    invoke-virtual {p3}, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->ordinal()I

    move-result p3

    aget p3, v1, p3

    packed-switch p3, :pswitch_data_0

    .line 496
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "formatNumeric does not currently support RelativeUnit.SUNDAY..SATURDAY"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 493
    :pswitch_0
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_0

    .line 492
    :pswitch_1
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_0

    .line 491
    :pswitch_2
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_0

    .line 490
    :pswitch_3
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_0

    .line 489
    :pswitch_4
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_0

    .line 488
    :pswitch_5
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    goto :goto_0

    .line 487
    :pswitch_6
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 498
    :goto_0
    :pswitch_7
    sget-object p3, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-gez v1, :cond_0

    .line 500
    sget-object p3, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    neg-double p1, p1

    .line 503
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/RelativeDateTimeFormatter;->format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getCapitalizationContext()Landroid/icu/text/DisplayContext;
    .locals 0

    .line 678
    iget-object p0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->capitalizationContext:Landroid/icu/text/DisplayContext;

    return-object p0
.end method

.method public getFormatStyle()Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 0

    .line 686
    iget-object p0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    return-object p0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 1

    .line 668
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    monitor-enter v0

    .line 669
    :try_start_0
    iget-object p0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/NumberFormat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 670
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
