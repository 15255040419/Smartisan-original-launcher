.class public Landroid/icu/text/TimeUnitFormat;
.super Landroid/icu/text/MeasureFormat;
.source "TimeUnitFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ABBREVIATED_NAME:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_PATTERN_FOR_DAY:Ljava/lang/String; = "{0} d"

.field private static final DEFAULT_PATTERN_FOR_HOUR:Ljava/lang/String; = "{0} h"

.field private static final DEFAULT_PATTERN_FOR_MINUTE:Ljava/lang/String; = "{0} min"

.field private static final DEFAULT_PATTERN_FOR_MONTH:Ljava/lang/String; = "{0} m"

.field private static final DEFAULT_PATTERN_FOR_SECOND:Ljava/lang/String; = "{0} s"

.field private static final DEFAULT_PATTERN_FOR_WEEK:Ljava/lang/String; = "{0} w"

.field private static final DEFAULT_PATTERN_FOR_YEAR:Ljava/lang/String; = "{0} y"

.field public static final FULL_NAME:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TOTAL_STYLES:I = 0x2

.field private static final serialVersionUID:J = -0x3374a809c751fb09L


# instance fields
.field private format:Landroid/icu/text/NumberFormat;

.field private transient isReady:Z

.field private locale:Landroid/icu/util/ULocale;

.field private transient mf:Landroid/icu/text/MeasureFormat;

.field private transient pluralRules:Landroid/icu/text/PluralRules;

.field private style:I

.field private transient timeUnitToCountToPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    invoke-direct {p0}, Landroid/icu/text/MeasureFormat;-><init>()V

    .line 122
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, v1}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    .line 124
    iput v0, p0, Landroid/icu/text/TimeUnitFormat;->style:I

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-direct {p0}, Landroid/icu/text/MeasureFormat;-><init>()V

    if-ltz p2, :cond_1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    if-nez p2, :cond_0

    .line 161
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 160
    :goto_0
    invoke-static {p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    .line 162
    iput p2, p0, Landroid/icu/text/TimeUnitFormat;->style:I

    .line 165
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/TimeUnitFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 166
    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    return-void

    .line 158
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "style should be either FULL_NAME or ABBREVIATED_NAME style"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;ILandroid/icu/text/NumberFormat;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    if-eqz p3, :cond_0

    .line 173
    invoke-virtual {p3}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/NumberFormat;

    invoke-virtual {p0, p1}, Landroid/icu/text/TimeUnitFormat;->setNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/TimeUnitFormat;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Landroid/icu/text/TimeUnitFormat;-><init>(Ljava/util/Locale;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;I)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 627
    new-instance v0, Landroid/icu/text/TimeUnitFormat;

    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    iget v2, p0, Landroid/icu/text/TimeUnitFormat;->style:I

    iget-object p0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-direct {v0, v1, v2, p0}, Landroid/icu/text/TimeUnitFormat;-><init>(Landroid/icu/util/ULocale;ILandroid/icu/text/NumberFormat;)V

    return-object v0
.end method

.method private searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 508
    iget-object v0, v7, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/icu/util/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v13, 0x2

    if-eqz v0, :cond_1

    :try_start_0
    const-string v2, "android/icu/impl/data/icudt60b/unit"

    .line 513
    invoke-static {v2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    .line 515
    invoke-virtual {v2, p1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 516
    invoke-virtual {v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 517
    invoke-virtual {v2, v11}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 518
    new-instance v3, Landroid/icu/text/MessageFormat;

    iget-object v4, v7, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v3, v2, v4}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 519
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-nez v2, :cond_0

    new-array v2, v13, [Ljava/lang/Object;

    .line 522
    invoke-interface {v12, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :cond_0
    aput-object v3, v2, p2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 528
    :catch_0
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string/jumbo v0, "unitsShort"

    .line 532
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "units"

    move-object v0, p0

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 533
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 534
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 535
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, p2

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string/jumbo v0, "other"

    .line 541
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 544
    sget-object v1, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    if-ne v9, v1, :cond_3

    .line 545
    new-instance v0, Landroid/icu/text/MessageFormat;

    iget-object v1, v7, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    const-string/jumbo v2, "{0} s"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_1

    .line 546
    :cond_3
    sget-object v1, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    if-ne v9, v1, :cond_4

    .line 547
    new-instance v0, Landroid/icu/text/MessageFormat;

    iget-object v1, v7, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    const-string/jumbo v2, "{0} min"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_1

    .line 548
    :cond_4
    sget-object v1, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    if-ne v9, v1, :cond_5

    .line 549
    new-instance v0, Landroid/icu/text/MessageFormat;

    iget-object v1, v7, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    const-string/jumbo v2, "{0} h"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_1

    .line 550
    :cond_5
    sget-object v1, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    if-ne v9, v1, :cond_6

    .line 551
    new-instance v0, Landroid/icu/text/MessageFormat;

    iget-object v1, v7, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    const-string/jumbo v2, "{0} w"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_1

    .line 552
    :cond_6
    sget-object v1, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    if-ne v9, v1, :cond_7

    .line 553
    new-instance v0, Landroid/icu/text/MessageFormat;

    iget-object v1, v7, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    const-string/jumbo v2, "{0} d"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_1

    .line 554
    :cond_7
    sget-object v1, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    if-ne v9, v1, :cond_8

    .line 555
    new-instance v0, Landroid/icu/text/MessageFormat;

    iget-object v1, v7, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    const-string/jumbo v2, "{0} m"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_1

    .line 556
    :cond_8
    sget-object v1, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    if-ne v9, v1, :cond_9

    .line 557
    new-instance v0, Landroid/icu/text/MessageFormat;

    iget-object v1, v7, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    const-string/jumbo v2, "{0} y"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 559
    :cond_9
    :goto_1
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-nez v1, :cond_a

    new-array v1, v13, [Ljava/lang/Object;

    .line 562
    invoke-interface {v12, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    :cond_a
    aput-object v0, v1, p2

    goto :goto_2

    :cond_b
    const-string/jumbo v5, "other"

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    .line 567
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_2
    return-void
.end method

.method private setup()V
    .locals 4

    .line 349
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 351
    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    goto :goto_0

    .line 353
    :cond_0
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    .line 356
    :goto_0
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {p0, v0, v0}, Landroid/icu/text/TimeUnitFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 358
    :cond_1
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    if-nez v0, :cond_2

    .line 359
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getNumberInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    .line 361
    :cond_2
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    .line 363
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v0}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v0

    .line 364
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    const/4 v2, 0x0

    const-string/jumbo v3, "units/duration"

    invoke-direct {p0, v3, v1, v2, v0}, Landroid/icu/text/TimeUnitFormat;->setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V

    .line 365
    iget-object v1, p0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    const/4 v2, 0x1

    const-string/jumbo v3, "unitsShort/duration"

    invoke-direct {p0, v3, v1, v2, v0}, Landroid/icu/text/TimeUnitFormat;->setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V

    .line 366
    iput-boolean v2, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    return-void
.end method

.method private setup(Ljava/lang/String;Ljava/util/Map;ILjava/util/Set;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    :try_start_0
    const-string v0, "android/icu/impl/data/icudt60b/unit"

    .line 452
    iget-object v1, v7, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 455
    new-instance v1, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;

    iget-object v2, v7, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    move-object/from16 v3, p4

    invoke-direct {v1, v8, v9, v3, v2}, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;-><init>(Ljava/util/Map;ILjava/util/Set;Landroid/icu/util/ULocale;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v10, p1

    .line 457
    :try_start_1
    invoke-virtual {v0, v10, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object/from16 v10, p1

    .line 478
    :catch_1
    :goto_0
    invoke-static {}, Landroid/icu/util/TimeUnit;->values()[Landroid/icu/util/TimeUnit;

    move-result-object v11

    .line 479
    iget-object v0, v7, Landroid/icu/text/TimeUnitFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v0}, Landroid/icu/text/PluralRules;->getKeywords()Ljava/util/Set;

    move-result-object v12

    const/4 v0, 0x0

    move v13, v0

    .line 480
    :goto_1
    array-length v0, v11

    if-ge v13, v0, :cond_4

    .line 483
    aget-object v14, v11, v13

    .line 484
    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 487
    invoke-interface {v8, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v15, v0

    .line 489
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 490
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v9

    if-nez v0, :cond_1

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v14

    move-object v4, v5

    move-object v6, v15

    .line 492
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/TimeUnitFormat;->searchInTree(Ljava/lang/String;ILandroid/icu/util/TimeUnit;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 622
    iget-object p0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->toTimeUnitProxy()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    invoke-super {p0}, Landroid/icu/text/MeasureFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeUnitFormat;

    .line 614
    iget-object p0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/NumberFormat;

    iput-object p0, v0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    iget-object p0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    iget-object p0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 603
    iget-object p0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    iget-object p0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeUnitFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeUnitAmount;

    move-result-object p0

    return-object p0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeUnitAmount;
    .locals 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 263
    iget-boolean v2, v0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    if-nez v2, :cond_0

    .line 264
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/TimeUnitFormat;->setup()V

    .line 268
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 275
    iget-object v3, v0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, -0x1

    move v11, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x2

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/util/TimeUnit;

    .line 276
    iget-object v14, v0, Landroid/icu/text/TimeUnitFormat;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 277
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move/from16 v17, v11

    move-object v11, v10

    move v10, v8

    move-object v8, v7

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v13, :cond_5

    .line 280
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/Object;

    aget-object v18, v18, v7

    move-object/from16 v6, v18

    check-cast v6, Landroid/icu/text/MessageFormat;

    .line 281
    invoke-virtual {v1, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 282
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v13, p1

    .line 284
    invoke-virtual {v6, v13, v1}, Landroid/icu/text/MessageFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v6

    .line 285
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    if-ne v5, v4, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-ne v5, v2, :cond_1

    goto :goto_4

    .line 290
    :cond_1
    check-cast v6, [Ljava/lang/Object;

    array-length v5, v6

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 294
    aget-object v6, v6, v5

    .line 295
    instance-of v5, v6, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 296
    check-cast v6, Ljava/lang/Number;

    goto :goto_3

    .line 302
    :cond_2
    :try_start_0
    iget-object v5, v0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v6
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 308
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    sub-int/2addr v5, v2

    if-le v5, v10, :cond_4

    .line 312
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    move v10, v5

    move/from16 v17, v8

    move-object v11, v12

    move-object/from16 v9, v16

    move-object v8, v6

    :catch_0
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x2

    goto :goto_2

    :cond_5
    move-object/from16 v13, p1

    move-object v7, v8

    move v8, v10

    move-object v10, v11

    move/from16 v11, v17

    const/4 v13, 0x2

    goto :goto_1

    :cond_6
    move-object/from16 v13, p1

    goto/16 :goto_0

    :cond_7
    if-nez v7, :cond_b

    if-eqz v8, :cond_b

    const-string/jumbo v0, "zero"

    .line 325
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 326
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5

    :cond_8
    const-string/jumbo v0, "one"

    .line 327
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    .line 328
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5

    :cond_9
    const-string/jumbo v0, "two"

    .line 329
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    .line 330
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_5

    :cond_a
    const/4 v0, 0x3

    .line 334
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_b
    :goto_5
    if-nez v8, :cond_c

    .line 338
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v0, 0x0

    .line 339
    invoke-virtual {v1, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v0, 0x0

    return-object v0

    .line 342
    :cond_c
    invoke-virtual {v1, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 343
    invoke-virtual {v1, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 344
    new-instance v0, Landroid/icu/util/TimeUnitAmount;

    invoke-direct {v0, v7, v10}, Landroid/icu/util/TimeUnitAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/TimeUnit;)V

    return-object v0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/TimeUnitFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/TimeUnitAmount;

    move-result-object p0

    return-object p0
.end method

.method public setLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeUnitFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    if-eq p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/MeasureFormat;->withLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    .line 198
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/TimeUnitFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 199
    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    const/4 p1, 0x0

    .line 200
    iput-boolean p1, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    :cond_0
    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Landroid/icu/text/TimeUnitFormat;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/TimeUnitFormat;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeUnitFormat;

    move-result-object p0

    return-object p0
.end method

.method public setNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/TimeUnitFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_2

    .line 229
    iget-object p1, p0, Landroid/icu/text/TimeUnitFormat;->locale:Landroid/icu/util/ULocale;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 230
    iput-boolean p1, p0, Landroid/icu/text/TimeUnitFormat;->isReady:Z

    .line 231
    iget-object p1, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/icu/text/MeasureFormat;->withLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {p1}, Landroid/icu/text/NumberFormat;->getNumberInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    .line 234
    iget-object p1, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-virtual {p1, v0}, Landroid/icu/text/MeasureFormat;->withNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    goto :goto_0

    .line 237
    :cond_2
    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    .line 238
    iget-object p1, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    iget-object v0, p0, Landroid/icu/text/TimeUnitFormat;->format:Landroid/icu/text/NumberFormat;

    invoke-virtual {p1, v0}, Landroid/icu/text/MeasureFormat;->withNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat;->mf:Landroid/icu/text/MeasureFormat;

    :goto_0
    return-object p0
.end method
