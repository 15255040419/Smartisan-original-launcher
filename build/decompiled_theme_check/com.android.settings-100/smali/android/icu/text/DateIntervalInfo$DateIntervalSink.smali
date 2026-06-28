.class final Landroid/icu/text/DateIntervalInfo$DateIntervalSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DateIntervalInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateIntervalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DateIntervalSink"
.end annotation


# static fields
.field private static final ACCEPTED_PATTERN_LETTERS:Ljava/lang/String; = "yMdahHms"

.field private static final DATE_INTERVAL_PATH_PREFIX:Ljava/lang/String;

.field private static final DATE_INTERVAL_PATH_SUFFIX:Ljava/lang/String;


# instance fields
.field dateIntervalInfo:Landroid/icu/text/DateIntervalInfo;

.field nextCalendarType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/LOCALE/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-static {}, Landroid/icu/text/DateIntervalInfo;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_PREFIX:Ljava/lang/String;

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-static {}, Landroid/icu/text/DateIntervalInfo;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/DateIntervalInfo;)V
    .locals 0

    .line 431
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 432
    iput-object p1, p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->dateIntervalInfo:Landroid/icu/text/DateIntervalInfo;

    return-void
.end method

.method private getCalendarTypeFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 508
    sget-object p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_SUFFIX:Ljava/lang/String;

    .line 509
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 510
    sget-object p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 511
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->DATE_INTERVAL_PATH_SUFFIX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 510
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 513
    :cond_0
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed \'intervalFormat\' alias path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setIntervalPatternIfAbsent(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)V
    .locals 1

    .line 547
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->dateIntervalInfo:Landroid/icu/text/DateIntervalInfo;

    .line 548
    invoke-static {v0}, Landroid/icu/text/DateIntervalInfo;->access$200(Landroid/icu/text/DateIntervalInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 549
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 551
    :cond_0
    iget-object p0, p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->dateIntervalInfo:Landroid/icu/text/DateIntervalInfo;

    .line 552
    invoke-virtual {p3}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object p3

    .line 551
    invoke-static {p0, p1, p2, p3}, Landroid/icu/text/DateIntervalInfo;->access$300(Landroid/icu/text/DateIntervalInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/DateIntervalInfo$PatternInfo;

    :cond_1
    return-void
.end method

.method private validateAndProcessPatternLetter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 523
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 526
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const-string/jumbo v2, "yMdahHms"

    .line 527
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    return-object v0

    .line 532
    :cond_1
    sget-object v0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne v1, p0, :cond_2

    .line 533
    sget-object p0, Landroid/icu/text/DateIntervalInfo;->CALENDAR_FIELD_TO_PATTERN_LETTER:[Ljava/lang/String;

    const/16 p1, 0xa

    aget-object p1, p0, p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method public getAndResetNextCalendarType()Ljava/lang/String;
    .locals 2

    .line 491
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->nextCalendarType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 492
    iput-object v1, p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->nextCalendarType:Ljava/lang/String;

    return-object v0
.end method

.method public processSkeletonTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 4

    .line 467
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v1

    const/4 v2, 0x0

    .line 469
    :goto_0
    invoke-interface {v1, v2, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 470
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 472
    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->validateAndProcessPatternLetter(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 477
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-direct {p0, v0, v3, p2}, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->setIntervalPatternIfAbsent(Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/UResource$Value;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 4

    .line 438
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    .line 439
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 440
    invoke-static {}, Landroid/icu/text/DateIntervalInfo;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 445
    :cond_0
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 447
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getAliasString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->getCalendarTypeFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->nextCalendarType:Ljava/lang/String;

    goto :goto_3

    .line 450
    :cond_1
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 452
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    .line 453
    :goto_1
    invoke-interface {p3, v0, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 454
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 456
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DateIntervalInfo$DateIntervalSink;->processSkeletonTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method
