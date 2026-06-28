.class final Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;
.super Landroid/icu/impl/UResource$Sink;
.source "TimeUnitFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeUnitFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeUnitFormatSetupSink"
.end annotation


# instance fields
.field beenHere:Z

.field locale:Landroid/icu/util/ULocale;

.field pluralKeywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field style:I

.field timeUnitToCountToPatterns:Ljava/util/Map;
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
.method constructor <init>(Ljava/util/Map;ILjava/util/Set;Landroid/icu/util/ULocale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/icu/util/TimeUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/ULocale;",
            ")V"
        }
    .end annotation

    .line 377
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 378
    iput-object p1, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->timeUnitToCountToPatterns:Ljava/util/Map;

    .line 379
    iput p2, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->style:I

    .line 380
    iput-object p3, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->pluralKeywords:Ljava/util/Set;

    .line 381
    iput-object p4, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->locale:Landroid/icu/util/ULocale;

    const/4 p1, 0x0

    .line 382
    iput-boolean p1, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->beenHere:Z

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 9

    .line 388
    iget-boolean p3, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->beenHere:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 391
    iput-boolean p3, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->beenHere:Z

    .line 394
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    .line 395
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 396
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "year"

    .line 399
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    sget-object v2, Landroid/icu/util/TimeUnit;->YEAR:Landroid/icu/util/TimeUnit;

    goto :goto_1

    :cond_1
    const-string v3, "month"

    .line 401
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    sget-object v2, Landroid/icu/util/TimeUnit;->MONTH:Landroid/icu/util/TimeUnit;

    goto :goto_1

    :cond_2
    const-string v3, "day"

    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    sget-object v2, Landroid/icu/util/TimeUnit;->DAY:Landroid/icu/util/TimeUnit;

    goto :goto_1

    :cond_3
    const-string v3, "hour"

    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 406
    sget-object v2, Landroid/icu/util/TimeUnit;->HOUR:Landroid/icu/util/TimeUnit;

    goto :goto_1

    :cond_4
    const-string v3, "minute"

    .line 407
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 408
    sget-object v2, Landroid/icu/util/TimeUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "second"

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 410
    sget-object v2, Landroid/icu/util/TimeUnit;->SECOND:Landroid/icu/util/TimeUnit;

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "week"

    .line 411
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 412
    sget-object v2, Landroid/icu/util/TimeUnit;->WEEK:Landroid/icu/util/TimeUnit;

    .line 417
    :goto_1
    iget-object v3, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_7

    .line 419
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 420
    iget-object v4, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->timeUnitToCountToPatterns:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :cond_7
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    move v4, v0

    .line 424
    :goto_2
    invoke-interface {v2, v4, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 425
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v5

    .line 426
    iget-object v6, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->pluralKeywords:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    .line 432
    :cond_8
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    if-nez v6, :cond_9

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 435
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_9
    iget v5, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->style:I

    aget-object v5, v6, v5

    if-nez v5, :cond_a

    .line 438
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    .line 439
    new-instance v7, Landroid/icu/text/MessageFormat;

    iget-object v8, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->locale:Landroid/icu/util/ULocale;

    invoke-direct {v7, v5, v8}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    .line 440
    iget v5, p0, Landroid/icu/text/TimeUnitFormat$TimeUnitFormatSetupSink;->style:I

    aput-object v7, v6, v5

    :cond_a
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method
