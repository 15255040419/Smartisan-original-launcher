.class public abstract Landroid/icu/util/BasicTimeZone;
.super Landroid/icu/util/TimeZone;
.source "BasicTimeZone.java"


# static fields
.field protected static final FORMER_LATTER_MASK:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCAL_DST:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCAL_FORMER:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCAL_LATTER:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCAL_STD:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MILLIS_PER_YEAR:J = 0x757b12c00L

.field protected static final STD_DST_MASK:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2c77e2591bf19444L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 593
    invoke-direct {p0}, Landroid/icu/util/TimeZone;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 604
    invoke-direct {p0, p1}, Landroid/icu/util/TimeZone;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 587
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
.end method

.method public getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;
    .locals 33

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    const/4 v9, 0x0

    .line 383
    invoke-virtual {v0, v7, v8, v9}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v1

    const/4 v10, 0x0

    const/4 v12, 0x2

    if-eqz v1, :cond_d

    .line 385
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v14

    .line 386
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    .line 387
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    .line 391
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    .line 392
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-nez v4, :cond_1

    .line 393
    :cond_0
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-nez v4, :cond_c

    :cond_1
    const-wide v22, 0x757b12c00L

    add-long v15, v7, v22

    cmp-long v4, v15, v2

    if-lez v4, :cond_c

    new-array v4, v12, [Landroid/icu/util/AnnualTimeZoneRule;

    .line 398
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v15

    int-to-long v11, v15

    add-long/2addr v11, v2

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    move-object/from16 v24, v14

    int-to-long v13, v15

    add-long/2addr v11, v13

    .line 397
    invoke-static {v11, v12, v10}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v11

    .line 399
    aget v12, v11, v9

    const/4 v13, 0x1

    aget v14, v11, v13

    const/4 v15, 0x2

    aget v10, v11, v15

    invoke-static {v12, v14, v10}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v18

    .line 401
    new-instance v10, Landroid/icu/util/DateTimeRule;

    aget v17, v11, v13

    const/4 v12, 0x3

    aget v19, v11, v12

    const/4 v12, 0x5

    aget v20, v11, v12

    const/16 v21, 0x0

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v21}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    .line 412
    new-instance v13, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v16

    .line 413
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v18

    aget v20, v11, v9

    const v21, 0x7fffffff

    move-object v15, v13

    move/from16 v17, v6

    move-object/from16 v19, v10

    invoke-direct/range {v15 .. v21}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    aput-object v13, v4, v9

    .line 416
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 419
    invoke-virtual {v0, v2, v3, v9}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 423
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_3

    .line 424
    :cond_2
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-eqz v1, :cond_4

    .line 425
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    add-long v22, v2, v22

    .line 426
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    cmp-long v1, v22, v13

    if-lez v1, :cond_4

    .line 428
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    .line 429
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    move-wide v15, v2

    int-to-long v1, v1

    add-long/2addr v13, v1

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v13, v1

    .line 428
    invoke-static {v13, v14, v11}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v11

    .line 431
    aget v1, v11, v9

    const/4 v2, 0x1

    aget v3, v11, v2

    const/4 v13, 0x2

    aget v14, v11, v13

    invoke-static {v1, v3, v14}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v19

    .line 433
    new-instance v30, Landroid/icu/util/DateTimeRule;

    aget v18, v11, v2

    const/4 v1, 0x3

    aget v20, v11, v1

    aget v21, v11, v12

    const/16 v22, 0x0

    move-object/from16 v17, v30

    invoke-direct/range {v17 .. v22}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    .line 435
    new-instance v13, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v27

    .line 436
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v28

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v29

    aget v1, v11, v9

    const/4 v2, 0x1

    add-int/lit8 v31, v1, -0x1

    const v32, 0x7fffffff

    move-object/from16 v26, v13

    invoke-direct/range {v26 .. v32}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    .line 439
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    .line 440
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v17

    const/16 v18, 0x1

    move-object v1, v13

    move-wide/from16 v22, v15

    move-wide/from16 v2, p1

    move-object/from16 v26, v4

    move v4, v14

    move v14, v5

    move/from16 v5, v17

    move v15, v6

    move/from16 v6, v18

    .line 439
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 441
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-gtz v1, :cond_5

    .line 442
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    if-ne v15, v1, :cond_5

    .line 443
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-ne v14, v1, :cond_5

    const/4 v1, 0x1

    aput-object v13, v26, v1

    goto :goto_0

    :cond_4
    move-wide/from16 v22, v2

    move-object/from16 v26, v4

    move v14, v5

    move v15, v6

    :cond_5
    :goto_0
    const/4 v1, 0x1

    .line 451
    aget-object v2, v26, v1

    if-nez v2, :cond_a

    .line 453
    invoke-virtual {v0, v7, v8, v1}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 457
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_7

    .line 458
    :cond_6
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-eqz v1, :cond_8

    .line 459
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-nez v1, :cond_8

    .line 461
    :cond_7
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v1

    .line 462
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 461
    invoke-static {v1, v2, v11}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v1

    .line 464
    aget v2, v1, v9

    const/4 v3, 0x1

    aget v4, v1, v3

    const/4 v5, 0x2

    aget v6, v1, v5

    invoke-static {v2, v4, v6}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v18

    .line 466
    new-instance v2, Landroid/icu/util/DateTimeRule;

    aget v17, v1, v3

    const/4 v3, 0x3

    aget v19, v1, v3

    aget v20, v1, v12

    const/16 v21, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v21}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    .line 471
    new-instance v6, Landroid/icu/util/AnnualTimeZoneRule;

    .line 472
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v16

    aget-object v1, v26, v9

    .line 473
    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getStartYear()I

    move-result v1

    const/4 v3, 0x1

    add-int/lit8 v20, v1, -0x1

    const v21, 0x7fffffff

    move v10, v15

    move-object v15, v6

    move/from16 v17, v10

    move/from16 v18, v14

    move-object/from16 v19, v2

    invoke-direct/range {v15 .. v21}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    .line 477
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    .line 478
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    move-wide/from16 v1, p1

    .line 477
    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v22

    if-lez v0, :cond_9

    const/4 v0, 0x1

    aput-object v6, v26, v0

    goto :goto_1

    :cond_8
    move v10, v15

    :cond_9
    const/4 v0, 0x1

    goto :goto_1

    :cond_a
    move v0, v1

    move v10, v15

    .line 486
    :goto_1
    aget-object v1, v26, v0

    if-nez v1, :cond_b

    goto :goto_2

    .line 491
    :cond_b
    aget-object v0, v26, v9

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v14

    .line 492
    aget-object v0, v26, v9

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v6

    .line 493
    aget-object v0, v26, v9

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move v10, v6

    move-object/from16 v25, v26

    goto :goto_3

    :cond_c
    move v10, v6

    move-object/from16 v24, v14

    move v14, v5

    :goto_2
    move v5, v14

    move-object/from16 v14, v24

    const/16 v25, 0x0

    .line 496
    :goto_3
    new-instance v0, Landroid/icu/util/InitialTimeZoneRule;

    invoke-direct {v0, v14, v10, v5}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    goto :goto_5

    :cond_d
    const/4 v1, 0x1

    .line 499
    invoke-virtual {v0, v7, v8, v1}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 501
    new-instance v0, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    const/4 v4, 0x1

    goto :goto_4

    :cond_e
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 506
    invoke-virtual {v0, v7, v8, v9, v2}, Landroid/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    .line 507
    new-instance v1, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    aget v3, v2, v9

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-direct {v1, v0, v3, v2}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    :goto_4
    const/16 v25, 0x0

    :goto_5
    if-nez v25, :cond_f

    new-array v1, v4, [Landroid/icu/util/TimeZoneRule;

    aput-object v0, v1, v9

    goto :goto_6

    :cond_f
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/icu/util/TimeZoneRule;

    aput-object v0, v1, v9

    .line 518
    aget-object v0, v25, v9

    aput-object v0, v1, v4

    .line 519
    aget-object v0, v25, v4

    const/4 v2, 0x2

    aput-object v0, v1, v2

    :goto_6
    return-object v1
.end method

.method public abstract getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
.end method

.method public getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    const/4 v10, 0x1

    .line 229
    invoke-virtual {v0, v7, v8, v10}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v9

    .line 235
    :cond_0
    new-instance v11, Ljava/util/BitSet;

    array-length v2, v9

    invoke-direct {v11, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 236
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 239
    new-instance v13, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    invoke-direct {v13, v2, v3, v1}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 241
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    .line 242
    invoke-virtual {v11, v14}, Ljava/util/BitSet;->set(I)V

    move v15, v10

    .line 245
    :goto_0
    array-length v1, v9

    if-ge v15, v1, :cond_2

    .line 246
    aget-object v1, v9, v15

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    .line 247
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    const/4 v6, 0x0

    move-wide/from16 v2, p1

    .line 246
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    .line 249
    invoke-virtual {v11, v15}, Ljava/util/BitSet;->set(I)V

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    move-wide v3, v7

    move v1, v14

    move v2, v1

    :goto_1
    if-eqz v1, :cond_3

    if-nez v2, :cond_4

    .line 256
    :cond_3
    invoke-virtual {v0, v3, v4, v14}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v3

    if-nez v3, :cond_5

    .line 355
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/icu/util/TimeZoneRule;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/TimeZoneRule;

    return-object v0

    .line 260
    :cond_5
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    .line 262
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    move v13, v10

    .line 264
    :goto_2
    array-length v15, v9

    if-ge v13, v15, :cond_7

    .line 265
    aget-object v15, v9, v13

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 269
    :cond_7
    :goto_3
    array-length v15, v9

    if-ge v13, v15, :cond_16

    .line 272
    invoke-virtual {v11, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move-wide v3, v4

    goto :goto_1

    .line 275
    :cond_8
    instance-of v15, v6, Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v15, :cond_11

    .line 276
    move-object v15, v6

    check-cast v15, Landroid/icu/util/TimeArrayTimeZoneRule;

    move-object/from16 v17, v11

    move-wide v10, v7

    .line 281
    :goto_4
    invoke-virtual {v0, v10, v11, v14}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_5

    .line 285
    :cond_9
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    :goto_5
    if-eqz v3, :cond_f

    .line 292
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    .line 293
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v10

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    .line 292
    invoke-virtual {v15, v6, v10}, Landroid/icu/util/TimeArrayTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v6

    .line 294
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    cmp-long v6, v10, v7

    if-lez v6, :cond_a

    .line 296
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 299
    :cond_a
    invoke-virtual {v15}, Landroid/icu/util/TimeArrayTimeZoneRule;->getStartTimes()[J

    move-result-object v6

    .line 300
    invoke-virtual {v15}, Landroid/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    move-result v10

    move v11, v14

    .line 302
    :goto_6
    array-length v14, v6

    if-ge v11, v14, :cond_e

    .line 303
    aget-wide v18, v6, v11

    const/4 v14, 0x1

    if-ne v10, v14, :cond_b

    .line 305
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    move/from16 v16, v1

    int-to-long v0, v14

    sub-long v18, v18, v0

    goto :goto_7

    :cond_b
    move/from16 v16, v1

    :goto_7
    if-nez v10, :cond_c

    .line 308
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v0

    int-to-long v0, v0

    sub-long v18, v18, v0

    :cond_c
    cmp-long v0, v18, v7

    if-lez v0, :cond_d

    goto :goto_8

    :cond_d
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_6

    :cond_e
    move/from16 v16, v1

    .line 314
    :goto_8
    array-length v0, v6

    sub-int/2addr v0, v11

    if-lez v0, :cond_14

    .line 316
    new-array v1, v0, [J

    const/4 v3, 0x0

    .line 317
    invoke-static {v6, v11, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    new-instance v0, Landroid/icu/util/TimeArrayTimeZoneRule;

    .line 319
    invoke-virtual {v15}, Landroid/icu/util/TimeArrayTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v15}, Landroid/icu/util/TimeArrayTimeZoneRule;->getRawOffset()I

    move-result v22

    invoke-virtual {v15}, Landroid/icu/util/TimeArrayTimeZoneRule;->getDSTSavings()I

    move-result v23

    .line 320
    invoke-virtual {v15}, Landroid/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    move-result v25

    move-object/from16 v20, v0

    move-object/from16 v24, v1

    invoke-direct/range {v20 .. v25}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 321
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_f
    :goto_9
    move/from16 v16, v1

    goto/16 :goto_b

    :cond_10
    move/from16 v16, v1

    .line 288
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v10

    const/4 v14, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_11
    move/from16 v16, v1

    move-object/from16 v17, v11

    .line 325
    instance-of v0, v6, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_14

    .line 326
    check-cast v6, Landroid/icu/util/AnnualTimeZoneRule;

    .line 327
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v0

    .line 328
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    .line 327
    invoke-virtual {v6, v0, v1}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v10

    cmp-long v0, v0, v10

    if-nez v0, :cond_12

    .line 331
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_a

    :cond_12
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 335
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    .line 337
    new-instance v1, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v21

    .line 338
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v22

    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v23

    .line 339
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v24

    const/4 v3, 0x0

    aget v25, v0, v3

    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v26

    move-object/from16 v20, v1

    invoke-direct/range {v20 .. v26}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    .line 340
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :goto_a
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_15

    .line 346
    invoke-virtual {v6}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v0

    if-nez v0, :cond_13

    move-object/from16 v0, v17

    const/4 v1, 0x1

    goto :goto_c

    :cond_13
    move/from16 v1, v16

    move-object/from16 v0, v17

    const/4 v2, 0x1

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v3, 0x0

    :cond_15
    move/from16 v1, v16

    move-object/from16 v0, v17

    .line 353
    :goto_c
    invoke-virtual {v0, v13}, Ljava/util/BitSet;->set(I)V

    move-object v11, v0

    move v14, v3

    move-wide v3, v4

    const/4 v10, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    .line 270
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The rule was not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJ)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/BasicTimeZone;->hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJZ)Z

    move-result p0

    return p0
.end method

.method public hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJZ)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 107
    :cond_0
    instance-of v1, p1, Landroid/icu/util/BasicTimeZone;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x2

    new-array v3, v1, [I

    new-array v1, v1, [I

    .line 115
    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    .line 116
    invoke-virtual {p1, p2, p3, v2, v1}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    if-eqz p6, :cond_4

    .line 119
    aget v4, v3, v2

    aget v5, v3, v0

    add-int/2addr v4, v5

    aget v5, v1, v2

    aget v6, v1, v0

    add-int/2addr v5, v6

    if-ne v4, v5, :cond_3

    aget v4, v3, v0

    if-eqz v4, :cond_2

    aget v4, v1, v0

    if-eqz v4, :cond_3

    :cond_2
    aget v3, v3, v0

    if-nez v3, :cond_5

    aget v1, v1, v0

    if-eqz v1, :cond_5

    :cond_3
    return v2

    .line 125
    :cond_4
    aget v4, v3, v2

    aget v5, v1, v2

    if-ne v4, v5, :cond_11

    aget v3, v3, v0

    aget v1, v1, v0

    if-eq v3, v1, :cond_5

    goto/16 :goto_5

    .line 133
    :cond_5
    :goto_0
    invoke-virtual {p0, p2, p3, v2}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v1

    .line 134
    move-object v3, p1

    check-cast v3, Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v3, p2, p3, v2}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object p2

    if-eqz p6, :cond_7

    :goto_1
    if-eqz v1, :cond_6

    .line 140
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    cmp-long p3, v4, p4

    if-gtz p3, :cond_6

    .line 141
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    add-int/2addr p3, v4

    .line 142
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    add-int/2addr v4, v5

    if-ne p3, v4, :cond_6

    .line 143
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-eqz p3, :cond_6

    .line 144
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v2}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    .line 151
    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    cmp-long p3, v4, p4

    if-gtz p3, :cond_7

    .line 152
    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    add-int/2addr p3, v4

    .line 153
    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    add-int/2addr v4, v5

    if-ne p3, v4, :cond_7

    .line 154
    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-eqz p3, :cond_7

    .line 155
    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide p2

    invoke-virtual {v3, p2, p3, v2}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object p2

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    .line 165
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    cmp-long p3, v3, p4

    if-gtz p3, :cond_8

    move p3, v0

    goto :goto_3

    :cond_8
    move p3, v2

    :goto_3
    if-eqz p2, :cond_9

    .line 170
    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    cmp-long v3, v3, p4

    if-gtz v3, :cond_9

    move v3, v0

    goto :goto_4

    :cond_9
    move v3, v2

    :goto_4
    if-nez p3, :cond_a

    if-nez v3, :cond_a

    return v0

    :cond_a
    if-eqz p3, :cond_11

    if-nez v3, :cond_b

    goto/16 :goto_5

    .line 181
    :cond_b
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    cmp-long p3, v3, v5

    if-eqz p3, :cond_c

    return v2

    :cond_c
    if-eqz p6, :cond_f

    .line 185
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    add-int/2addr p3, v3

    .line 186
    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    add-int/2addr v3, v4

    if-ne p3, v3, :cond_e

    .line 187
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-eqz p3, :cond_d

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-eqz p3, :cond_e

    .line 188
    :cond_d
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    if-nez p3, :cond_10

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p2

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p2

    if-eqz p2, :cond_10

    :cond_e
    return v2

    .line 192
    :cond_f
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    if-ne p3, v3, :cond_11

    .line 193
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p2

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p2

    if-eq p3, p2, :cond_10

    goto :goto_5

    .line 197
    :cond_10
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide p2

    goto/16 :goto_0

    :cond_11
    :goto_5
    return v2
.end method
