.class public Landroid/icu/impl/OlsonTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "OlsonTimeZone.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z

.field private static final MAX_OFFSET_SECONDS:I = 0x15180

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final ZONEINFORES:Ljava/lang/String; = "zoneinfo64"

.field private static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = -0x572e1120b9848270L


# instance fields
.field private volatile canonicalID:Ljava/lang/String;

.field private finalStartMillis:D

.field private finalStartYear:I

.field private finalZone:Landroid/icu/util/SimpleTimeZone;

.field private transient finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

.field private transient firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

.field private transient firstTZTransition:Landroid/icu/util/TimeZoneTransition;

.field private transient firstTZTransitionIdx:I

.field private transient historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

.field private transient initialRule:Landroid/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private serialVersionOnStream:I

.field private transitionCount:I

.field private transient transitionRulesInitialized:Z

.field private transitionTimes64:[J

.field private typeCount:I

.field private typeMapData:[B

.field private typeOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "olson"

    .line 888
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/OlsonTimeZone;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;Ljava/lang/String;)V
    .locals 2

    .line 485
    invoke-direct {p0, p3}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const p3, 0x7fffffff

    .line 867
    iput p3, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 872
    iput-wide v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    const/4 p3, 0x0

    .line 878
    iput-object p3, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 884
    iput-object p3, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    const/4 p3, 0x1

    .line 1233
    iput p3, p0, Landroid/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    const/4 p3, 0x0

    .line 1268
    iput-boolean p3, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    .line 486
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/OlsonTimeZone;->construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 639
    invoke-direct {p0, p1}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const v0, 0x7fffffff

    .line 867
    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 872
    iput-wide v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    const/4 v0, 0x0

    .line 878
    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 884
    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1233
    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 1268
    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    .line 640
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string/jumbo v2, "zoneinfo64"

    invoke-static {v1, v2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 642
    invoke-static {v0, p1}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 643
    invoke-direct {p0, v0, v1}, Landroid/icu/impl/OlsonTimeZone;->construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)V

    .line 644
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz p0, :cond_0

    .line 645
    invoke-virtual {p0, p1}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "Invalid Format"

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    .line 494
    sget-boolean v4, Landroid/icu/impl/OlsonTimeZone;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OlsonTimeZone("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    .line 500
    iput v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v6, 0x2

    :try_start_0
    const-string/jumbo v7, "transPre32"

    .line 504
    invoke-virtual {v2, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    .line 505
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v7
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :try_start_1
    array-length v8, v7

    rem-int/2addr v8, v6

    if-nez v8, :cond_1

    .line 510
    iget v8, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    array-length v9, v7

    div-int/2addr v9, v6

    add-int/2addr v8, v9

    iput v8, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    goto :goto_0

    .line 508
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    const/4 v7, 0x0

    :catch_1
    :goto_0
    :try_start_2
    const-string/jumbo v8, "trans"

    .line 517
    invoke-virtual {v2, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v8

    .line 518
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v8
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    .line 519
    :try_start_3
    iget v9, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    array-length v10, v8

    add-int/2addr v9, v10

    iput v9, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    const/4 v8, 0x0

    :catch_3
    :goto_1
    :try_start_4
    const-string/jumbo v9, "transPost32"

    .line 526
    invoke-virtual {v2, v9}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    .line 527
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v9
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_4

    .line 528
    :try_start_5
    array-length v10, v9

    rem-int/2addr v10, v6

    if-nez v10, :cond_2

    .line 532
    iget v10, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    array-length v11, v9

    div-int/2addr v11, v6

    add-int/2addr v10, v11

    iput v10, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    goto :goto_2

    .line 530
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_4
    const/4 v9, 0x0

    .line 537
    :catch_5
    :goto_2
    iget v10, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v11, 0x1

    if-lez v10, :cond_6

    .line 538
    new-array v10, v10, [J

    iput-object v10, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    const/16 v10, 0x20

    const-wide v12, 0xffffffffL

    if-eqz v7, :cond_3

    move v14, v4

    move v15, v14

    .line 541
    :goto_3
    array-length v4, v7

    div-int/2addr v4, v6

    if-ge v14, v4, :cond_4

    .line 542
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    mul-int/lit8 v16, v14, 0x2

    aget v5, v7, v16

    move-object/from16 v17, v7

    int-to-long v6, v5

    and-long v5, v6, v12

    shl-long/2addr v5, v10

    add-int/lit8 v16, v16, 0x1

    aget v7, v17, v16

    int-to-long v10, v7

    and-long/2addr v10, v12

    or-long/2addr v5, v10

    aput-wide v5, v4, v15

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v17

    const/4 v6, 0x2

    const/16 v10, 0x20

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :cond_4
    if-eqz v8, :cond_5

    const/4 v4, 0x0

    .line 548
    :goto_4
    array-length v5, v8

    if-ge v4, v5, :cond_5

    .line 549
    iget-object v5, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget v6, v8, v4

    int-to-long v6, v6

    aput-wide v6, v5, v15

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_5
    if-eqz v9, :cond_7

    const/4 v4, 0x0

    .line 553
    :goto_5
    array-length v5, v9

    const/4 v6, 0x2

    div-int/2addr v5, v6

    if-ge v4, v5, :cond_7

    .line 554
    iget-object v5, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    mul-int/lit8 v6, v4, 0x2

    aget v7, v9, v6

    int-to-long v7, v7

    and-long/2addr v7, v12

    const/16 v10, 0x20

    shl-long/2addr v7, v10

    const/4 v11, 0x1

    add-int/2addr v6, v11

    aget v6, v9, v6

    int-to-long v10, v6

    and-long/2addr v10, v12

    or-long v6, v7, v10

    aput-wide v6, v5, v15

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    add-int/2addr v15, v5

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    .line 560
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    :cond_7
    const-string/jumbo v4, "typeOffsets"

    .line 564
    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 565
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 566
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_c

    array-length v5, v4

    const/16 v7, 0x7ffe

    if-gt v5, v7, :cond_c

    array-length v5, v4

    rem-int/2addr v5, v6

    if-nez v5, :cond_c

    .line 569
    array-length v4, v4

    div-int/2addr v4, v6

    iput v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    .line 572
    iget v4, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v4, :cond_9

    const-string/jumbo v4, "typeMap"

    .line 573
    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    const/4 v5, 0x0

    .line 574
    invoke-virtual {v4, v5}, Landroid/icu/util/UResourceBundle;->getBinary([B)[B

    move-result-object v4

    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 575
    iget-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v4, :cond_8

    array-length v4, v4

    iget v5, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v4, v5, :cond_8

    const/4 v4, 0x0

    goto :goto_6

    .line 576
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/4 v4, 0x0

    .line 579
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 583
    :goto_6
    iput-object v4, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const v5, 0x7fffffff

    .line 584
    iput v5, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 585
    iput-wide v5, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    :try_start_6
    const-string v5, "finalRule"

    .line 589
    invoke-virtual {v2, v5}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catch Ljava/util/MissingResourceException; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    const-string v4, "finalRaw"

    .line 591
    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 592
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    .line 593
    invoke-static {v1, v5}, Landroid/icu/impl/OlsonTimeZone;->loadRule(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 594
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v1

    if-eqz v1, :cond_a

    .line 596
    array-length v6, v1

    const/16 v7, 0xb

    if-ne v6, v7, :cond_a

    .line 599
    new-instance v6, Landroid/icu/util/SimpleTimeZone;

    const-string v19, ""

    const/4 v7, 0x0

    aget v20, v1, v7

    const/4 v7, 0x1

    aget v21, v1, v7

    const/4 v7, 0x2

    aget v22, v1, v7

    const/4 v7, 0x3

    aget v7, v1, v7

    mul-int/lit16 v7, v7, 0x3e8

    const/4 v8, 0x4

    aget v24, v1, v8

    const/4 v8, 0x5

    aget v25, v1, v8

    const/4 v8, 0x6

    aget v26, v1, v8

    const/4 v8, 0x7

    aget v27, v1, v8

    const/16 v8, 0x8

    aget v8, v1, v8

    mul-int/lit16 v8, v8, 0x3e8

    const/16 v9, 0x9

    aget v29, v1, v9

    const/16 v9, 0xa

    aget v1, v1, v9

    mul-int/lit16 v1, v1, 0x3e8

    move-object/from16 v17, v6

    move/from16 v18, v4

    move/from16 v23, v7

    move/from16 v28, v8

    move/from16 v30, v1

    invoke-direct/range {v17 .. v30}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    iput-object v6, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const-string v1, "finalYear"

    .line 608
    invoke-virtual {v2, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 609
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v1

    iput v1, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    .line 627
    iget v1, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v1

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v1, v6

    long-to-double v1, v1

    iput-wide v1, v0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    goto :goto_7

    .line 597
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/util/MissingResourceException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_6
    move-object v5, v4

    :catch_7
    if-nez v5, :cond_b

    :goto_7
    return-void

    .line 632
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private constructEmpty()V
    .locals 3

    const/4 v0, 0x0

    .line 464
    iput v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v1, 0x0

    .line 465
    iput-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 466
    iput-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    const/4 v2, 0x1

    .line 468
    iput v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 469
    fill-array-data v2, :array_0

    iput-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 470
    iput-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const v1, 0x7fffffff

    .line 471
    iput v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 472
    iput-wide v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 474
    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private dstOffsetAt(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 770
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte p1, v0, p1

    invoke-direct {p0, p1}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 771
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method private getHistoricalOffset(JZII[I)V
    .locals 14

    move-object v0, p0

    .line 682
    iget v1, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    const-wide/16 v4, 0x3e8

    move-wide v6, p1

    .line 683
    invoke-static {v6, v7, v4, v5}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v4

    if-nez p3, :cond_0

    .line 684
    iget-object v1, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v6, v1, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 686
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v2

    .line 687
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    aput v0, p6, v3

    goto/16 :goto_a

    .line 692
    :cond_0
    iget v1, v0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_12

    .line 693
    iget-object v6, v0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v6, v6, v1

    if-eqz p3, :cond_10

    const-wide/32 v8, 0x15180

    sub-long v8, v6, v8

    cmp-long v8, v4, v8

    if-ltz v8, :cond_10

    add-int/lit8 v8, v1, -0x1

    .line 695
    invoke-direct {p0, v8}, Landroid/icu/impl/OlsonTimeZone;->zoneOffsetAt(I)I

    move-result v9

    .line 696
    invoke-direct {p0, v8}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v2

    .line 698
    :goto_1
    invoke-direct {p0, v1}, Landroid/icu/impl/OlsonTimeZone;->zoneOffsetAt(I)I

    move-result v10

    .line 699
    invoke-direct {p0, v1}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v11

    if-eqz v11, :cond_2

    move v11, v3

    goto :goto_2

    :cond_2
    move v11, v2

    :goto_2
    if-eqz v8, :cond_3

    if-nez v11, :cond_3

    move v12, v3

    goto :goto_3

    :cond_3
    move v12, v2

    :goto_3
    if-nez v8, :cond_4

    if-eqz v11, :cond_4

    move v8, v3

    goto :goto_4

    :cond_4
    move v8, v2

    :goto_4
    sub-int v11, v10, v9

    const/4 v13, 0x3

    if-ltz v11, :cond_a

    and-int/lit8 v11, p4, 0x3

    if-ne v11, v3, :cond_5

    if-nez v12, :cond_6

    :cond_5
    if-ne v11, v13, :cond_7

    if-eqz v8, :cond_7

    :cond_6
    :goto_5
    int-to-long v8, v9

    goto :goto_7

    :cond_7
    if-ne v11, v3, :cond_8

    if-nez v8, :cond_c

    :cond_8
    if-ne v11, v13, :cond_9

    if-eqz v12, :cond_9

    goto :goto_6

    :cond_9
    and-int/lit8 v8, p4, 0xc

    const/16 v11, 0xc

    if-ne v8, v11, :cond_c

    goto :goto_5

    :cond_a
    and-int/lit8 v11, p5, 0x3

    if-ne v11, v3, :cond_b

    if-nez v12, :cond_c

    :cond_b
    if-ne v11, v13, :cond_d

    if-eqz v8, :cond_d

    :cond_c
    :goto_6
    int-to-long v8, v10

    :goto_7
    add-long/2addr v6, v8

    goto :goto_8

    :cond_d
    if-ne v11, v3, :cond_e

    if-nez v8, :cond_6

    :cond_e
    if-ne v11, v13, :cond_f

    if-eqz v12, :cond_f

    goto :goto_5

    :cond_f
    and-int/lit8 v8, p5, 0xc

    const/4 v11, 0x4

    if-ne v8, v11, :cond_c

    goto :goto_5

    :cond_10
    :goto_8
    cmp-long v6, v4, v6

    if-ltz v6, :cond_11

    goto :goto_9

    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 741
    :cond_12
    :goto_9
    invoke-direct {p0, v1}, Landroid/icu/impl/OlsonTimeZone;->rawOffsetAt(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    aput v4, p6, v2

    .line 742
    invoke-direct {p0, v1}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    aput v0, p6, v3

    goto :goto_a

    .line 746
    :cond_13
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, p6, v2

    .line 747
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    aput v0, p6, v3

    :goto_a
    return-void
.end method

.method private getInt(B)I
    .locals 0

    and-int/lit16 p0, p1, 0xff

    return p0
.end method

.method private declared-synchronized initTransitionRules()V
    .locals 24

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1112
    :try_start_0
    iget-boolean v0, v1, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1113
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1116
    :try_start_1
    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 1117
    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    .line 1118
    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    .line 1119
    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    const/4 v2, 0x0

    .line 1120
    iput v2, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    .line 1121
    iput-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    .line 1123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(STD)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(DST)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1129
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialRawOffset()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    .line 1130
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/OlsonTimeZone;->initialDstOffset()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    .line 1131
    new-instance v7, Landroid/icu/util/InitialTimeZoneRule;

    if-nez v6, :cond_1

    move-object v8, v3

    goto :goto_0

    :cond_1
    move-object v8, v4

    :goto_0
    invoke-direct {v7, v8, v5, v6}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    iput-object v7, v1, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 1133
    iget v5, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    const/4 v6, 0x1

    if-lez v5, :cond_b

    move v5, v2

    .line 1139
    :goto_1
    iget v7, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v5, v7, :cond_3

    .line 1140
    iget-object v7, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v7, v7, v5

    invoke-direct {v1, v7}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 1143
    :cond_2
    iget v7, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    add-int/2addr v7, v6

    iput v7, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1145
    :cond_3
    :goto_2
    iget v7, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v5, v7, :cond_4

    goto/16 :goto_6

    .line 1149
    :cond_4
    iget v5, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    new-array v5, v5, [J

    move v7, v2

    .line 1150
    :goto_3
    iget v8, v1, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    const-wide/16 v9, 0x3e8

    if-ge v7, v8, :cond_a

    .line 1153
    iget v8, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    move v11, v2

    :goto_4
    iget v12, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v8, v12, :cond_6

    .line 1154
    iget-object v12, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v12, v12, v8

    invoke-direct {v1, v12}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v12

    if-ne v7, v12, :cond_5

    .line 1155
    iget-object v12, v1, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v12, v12, v8

    mul-long/2addr v12, v9

    long-to-double v14, v12

    .line 1156
    iget-wide v9, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpg-double v9, v14, v9

    if-gez v9, :cond_5

    add-int/lit8 v9, v11, 0x1

    .line 1158
    aput-wide v12, v5, v11

    move v11, v9

    :cond_5
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v9, 0x3e8

    goto :goto_4

    :cond_6
    if-lez v11, :cond_9

    .line 1163
    new-array v8, v11, [J

    .line 1164
    invoke-static {v5, v2, v8, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1166
    iget-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    mul-int/lit8 v10, v7, 0x2

    aget v9, v9, v10

    mul-int/lit16 v9, v9, 0x3e8

    .line 1167
    iget-object v11, v1, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    add-int/lit8 v10, v10, 0x1

    aget v10, v11, v10

    mul-int/lit16 v10, v10, 0x3e8

    .line 1168
    iget-object v11, v1, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    if-nez v11, :cond_7

    .line 1169
    iget v11, v1, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    new-array v11, v11, [Landroid/icu/util/TimeArrayTimeZoneRule;

    iput-object v11, v1, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    .line 1171
    :cond_7
    iget-object v11, v1, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    new-instance v12, Landroid/icu/util/TimeArrayTimeZoneRule;

    if-nez v10, :cond_8

    move-object/from16 v17, v3

    goto :goto_5

    :cond_8
    move-object/from16 v17, v4

    :goto_5
    const/16 v21, 0x2

    move-object/from16 v16, v12

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v20, v8

    invoke-direct/range {v16 .. v21}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    aput-object v12, v11, v7

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1177
    :cond_a
    iget-object v3, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget v4, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    aget-byte v3, v3, v4

    invoke-direct {v1, v3}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v3

    .line 1178
    new-instance v4, Landroid/icu/util/TimeZoneTransition;

    iget-object v5, v1, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget v7, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    aget-wide v7, v5, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    iget-object v5, v1, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    iget-object v9, v1, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    aget-object v3, v9, v3

    invoke-direct {v4, v7, v8, v5, v3}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    iput-object v4, v1, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    .line 1184
    :cond_b
    :goto_6
    iget-object v3, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v3, :cond_f

    .line 1186
    iget-wide v3, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    double-to-long v3, v3

    .line 1188
    iget-object v5, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v5}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1197
    iget-object v5, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v5}, Landroid/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/SimpleTimeZone;

    iput-object v5, v1, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    .line 1198
    iget-object v5, v1, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    iget v7, v1, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v5, v7}, Landroid/icu/util/SimpleTimeZone;->setStartYear(I)V

    .line 1200
    iget-object v5, v1, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v5, v3, v4, v2}, Landroid/icu/util/SimpleTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v2

    .line 1201
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v3

    .line 1202
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    goto :goto_7

    .line 1204
    :cond_c
    iget-object v5, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    iput-object v5, v1, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    .line 1205
    new-instance v5, Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object v7, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v7}, Landroid/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    iget-object v7, v1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    .line 1206
    invoke-virtual {v7}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v9

    const/4 v10, 0x0

    new-array v11, v6, [J

    aput-wide v3, v11, v2

    const/4 v12, 0x2

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    move-wide/from16 v22, v3

    move-object v3, v5

    move-wide/from16 v4, v22

    .line 1209
    :goto_7
    iget v2, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-lez v2, :cond_d

    .line 1210
    iget-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object v2, v1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget v7, v1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    sub-int/2addr v7, v6

    aget-byte v2, v2, v7

    invoke-direct {v1, v2}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v2

    aget-object v0, v0, v2

    :cond_d
    if-nez v0, :cond_e

    .line 1214
    iget-object v0, v1, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    .line 1216
    :cond_e
    new-instance v2, Landroid/icu/util/TimeZoneTransition;

    invoke-direct {v2, v4, v5, v0, v3}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    iput-object v2, v1, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    .line 1219
    :cond_f
    iput-boolean v6, v1, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1220
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initialDstOffset()I
    .locals 1

    .line 779
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method private initialRawOffset()I
    .locals 1

    .line 775
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method private static loadRule(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 1

    const-string v0, "Rules"

    .line 892
    invoke-virtual {p0, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 893
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method private rawOffsetAt(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 765
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte p1, v0, p1

    invoke-direct {p0, p1}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 766
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget p0, p0, p1

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1236
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1238
    iget p1, p0, Landroid/icu/impl/OlsonTimeZone;->serialVersionOnStream:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 1242
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "android/icu/impl/data/icudt60b"

    const-string/jumbo v3, "zoneinfo64"

    .line 1245
    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 1247
    invoke-static {v2, p1}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 1248
    invoke-direct {p0, v2, v3}, Landroid/icu/impl/OlsonTimeZone;->construct(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)V

    .line 1249
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_1

    .line 1250
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v2, p1}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 1259
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->constructEmpty()V

    .line 1264
    :cond_2
    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void
.end method

.method private zoneOffsetAt(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 760
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte p1, v0, p1

    invoke-direct {p0, p1}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 761
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 261
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 3

    .line 1292
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/OlsonTimeZone;

    .line 1293
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_0

    .line 1295
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 1296
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/SimpleTimeZone;

    iput-object p0, v0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    :cond_0
    const/4 p0, 0x0

    .line 1306
    iput-boolean p0, v0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 899
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 901
    :cond_0
    check-cast p1, Landroid/icu/impl/OlsonTimeZone;

    .line 903
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object v2, p1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    invoke-static {v0, v2}, Landroid/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    iget v2, p1, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_3

    iget-object v2, p1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v2, :cond_3

    .line 910
    invoke-virtual {v0, v2}, Landroid/icu/util/SimpleTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    iget v2, p1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    iget v2, p1, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget-object v2, p1, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 913
    invoke-static {v0, v2}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iget-object v2, p1, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 914
    invoke-static {v0, v2}, Landroid/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object p1, p1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 915
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    .line 1283
    iput-boolean v0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public getCanonicalID()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 444
    monitor-enter p0

    .line 445
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 449
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 454
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 456
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    return-object p0
.end method

.method public getDSTSavings()I
    .locals 1

    .line 378
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result p0

    return p0

    .line 381
    :cond_0
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->getDSTSavings()I

    move-result p0

    return p0
.end method

.method public getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 6

    .line 953
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->initTransitionRules()V

    .line 955
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    .line 956
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 957
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object p0

    .line 958
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    .line 959
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/SimpleTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1

    .line 968
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v0, :cond_8

    .line 970
    iget v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v0, v0, -0x1

    .line 971
    :goto_0
    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    const-wide/16 v2, 0x3e8

    if-lt v0, v1, :cond_4

    .line 972
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v4, v1, v0

    mul-long/2addr v4, v2

    cmp-long v1, p1, v4

    if-gtz v1, :cond_4

    if-nez p3, :cond_3

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 977
    :cond_4
    :goto_1
    iget p1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 p1, p1, -0x1

    if-ne v0, p1, :cond_5

    .line 978
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object p0

    .line 979
    :cond_5
    iget p1, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ge v0, p1, :cond_6

    .line 980
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object p0

    .line 983
    :cond_6
    iget-object p1, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object p2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    add-int/lit8 p3, v0, 0x1

    aget-byte p2, p2, p3

    invoke-direct {p0, p2}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result p2

    aget-object p1, p1, p2

    .line 984
    iget-object p2, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v0, v1, v0

    invoke-direct {p0, v0}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result v0

    aget-object p2, p2, v0

    .line 985
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v0, v0, p3

    mul-long/2addr v0, v2

    .line 988
    invoke-virtual {p2}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v2

    if-ne p3, v2, :cond_7

    .line 989
    invoke-virtual {p2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    if-ne p3, v2, :cond_7

    const/4 p1, 0x0

    .line 990
    invoke-virtual {p0, v0, v1, p1}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object p0

    return-object p0

    .line 993
    :cond_7
    new-instance p0, Landroid/icu/util/TimeZoneTransition;

    invoke-direct {p0, v0, v1, p2, p1}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object p0

    :cond_8
    return-object v1
.end method

.method public getOffset(IIIIII)I
    .locals 9

    if-ltz p3, :cond_0

    const/16 v0, 0xb

    if-gt p3, v0, :cond_0

    .line 132
    invoke-static {p2, p3}, Landroid/icu/impl/Grego;->monthLength(II)I

    move-result v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v8}, Landroid/icu/impl/OlsonTimeZone;->getOffset(IIIIIII)I

    move-result p0

    return p0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Month is not in the legal range: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOffset(IIIIIII)I
    .locals 8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_3

    :cond_0
    if-ltz p3, :cond_3

    const/16 v1, 0xb

    if-gt p3, v1, :cond_3

    if-lt p4, v0, :cond_3

    if-gt p4, p7, :cond_3

    if-lt p5, v0, :cond_3

    const/4 v1, 0x7

    if-gt p5, v1, :cond_3

    if-ltz p6, :cond_3

    const v1, 0x5265c00

    if-ge p6, v1, :cond_3

    const/16 v1, 0x1c

    if-lt p7, v1, :cond_3

    const/16 v1, 0x1f

    if-gt p7, v1, :cond_3

    if-nez p1, :cond_1

    neg-int p2, p2

    :cond_1
    move v3, p2

    .line 159
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_2

    iget p2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-lt v3, p2, :cond_2

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 160
    invoke-virtual/range {v1 .. v7}, Landroid/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result p0

    return p0

    .line 164
    :cond_2
    invoke-static {v3, p3, p4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide p1

    const-wide/32 p3, 0x5265c00

    mul-long/2addr p1, p3

    int-to-long p3, p6

    add-long v2, p1, p3

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object v1, p0

    move-object v7, p1

    .line 167
    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    const/4 p0, 0x0

    .line 168
    aget p0, p1, p0

    aget p1, p1, v0

    add-int/2addr p0, p1

    return p0

    .line 152
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getOffset(JZ[I)V
    .locals 9

    .line 272
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_0

    long-to-double v1, p1

    iget-wide v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 273
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/util/SimpleTimeZone;->getOffset(JZ[I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x4

    const/16 v7, 0xc

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v8, p4

    .line 275
    invoke-direct/range {v2 .. v8}, Landroid/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    :goto_0
    return-void
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 9

    .line 286
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_0

    long-to-double v1, p1

    iget-wide v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 287
    invoke-virtual/range {v0 .. v5}, Landroid/icu/util/SimpleTimeZone;->getOffsetFromLocal(JII[I)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    move-object v2, p0

    move-wide v3, p1

    move v6, p3

    move v7, p4

    move-object v8, p5

    .line 289
    invoke-direct/range {v2 .. v8}, Landroid/icu/impl/OlsonTimeZone;->getHistoricalOffset(JZII[I)V

    :goto_0
    return-void
.end method

.method public getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 7

    .line 1004
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->initTransitionRules()V

    .line 1006
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    .line 1007
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1008
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object p0

    .line 1009
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 1010
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/SimpleTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object p0

    return-object p0

    .line 1014
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->firstFinalTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object p0

    .line 1019
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1021
    iget v0, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1022
    :goto_0
    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    const-wide/16 v3, 0x3e8

    if-lt v0, v2, :cond_4

    .line 1023
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v5, v2, v0

    mul-long/2addr v5, v3

    cmp-long v2, p1, v5

    if-gtz v2, :cond_4

    if-eqz p3, :cond_3

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1028
    :cond_4
    :goto_1
    iget p1, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransitionIdx:I

    if-ge v0, p1, :cond_5

    return-object v1

    :cond_5
    if-ne v0, p1, :cond_6

    .line 1032
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->firstTZTransition:Landroid/icu/util/TimeZoneTransition;

    return-object p0

    .line 1035
    :cond_6
    iget-object p1, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object p2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte p2, p2, v0

    invoke-direct {p0, p2}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result p2

    aget-object p1, p1, p2

    .line 1036
    iget-object p2, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    iget-object p3, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    add-int/lit8 v1, v0, -0x1

    aget-byte p3, p3, v1

    invoke-direct {p0, p3}, Landroid/icu/impl/OlsonTimeZone;->getInt(B)I

    move-result p3

    aget-object p2, p2, p3

    .line 1037
    iget-object p3, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v0, p3, v0

    mul-long/2addr v0, v3

    .line 1040
    invoke-virtual {p2}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v2

    if-ne p3, v2, :cond_7

    .line 1041
    invoke-virtual {p2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p3

    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    if-ne p3, v2, :cond_7

    const/4 p1, 0x0

    .line 1042
    invoke-virtual {p0, v0, v1, p1}, Landroid/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object p0

    return-object p0

    .line 1045
    :cond_7
    new-instance p0, Landroid/icu/util/TimeZoneTransition;

    invoke-direct {p0, v0, v1, p2, p1}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    return-object p0

    :cond_8
    return-object v1
.end method

.method public getRawOffset()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    .line 300
    aget p0, v0, v3

    return p0
.end method

.method public getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .locals 12

    .line 1056
    invoke-direct {p0}, Landroid/icu/impl/OlsonTimeZone;->initTransitionRules()V

    .line 1058
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    move v3, v2

    .line 1061
    :goto_0
    iget-object v4, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 1062
    aget-object v4, v4, v0

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 1067
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_4

    .line 1068
    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 1075
    :cond_4
    :goto_1
    new-array v0, v3, [Landroid/icu/util/TimeZoneRule;

    .line 1077
    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    aput-object v3, v0, v1

    .line 1079
    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v3, :cond_6

    move v3, v1

    move v4, v2

    .line 1080
    :goto_2
    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->historicRules:[Landroid/icu/util/TimeArrayTimeZoneRule;

    array-length v6, v5

    if-ge v3, v6, :cond_7

    .line 1081
    aget-object v6, v5, v3

    if-eqz v6, :cond_5

    add-int/lit8 v6, v4, 0x1

    .line 1082
    aget-object v5, v5, v3

    aput-object v5, v0, v4

    move v4, v6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move v4, v2

    .line 1087
    :cond_7
    iget-object v3, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v3, :cond_9

    .line 1088
    invoke-virtual {v3}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1089
    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZoneWithStartYear:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {p0}, Landroid/icu/util/SimpleTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object p0

    add-int/lit8 v1, v4, 0x1

    .line 1091
    aget-object v2, p0, v2

    aput-object v2, v0, v4

    const/4 v2, 0x2

    .line 1092
    aget-object p0, p0, v2

    aput-object p0, v0, v1

    goto :goto_3

    .line 1095
    :cond_8
    new-instance v3, Landroid/icu/util/TimeArrayTimeZoneRule;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(STD)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v5}, Landroid/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v7

    const/4 v8, 0x0

    new-array v9, v2, [J

    iget-wide v10, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    double-to-long v10, v10

    aput-wide v10, v9, v1

    const/4 v10, 0x2

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    aput-object v3, v0, v4

    :cond_9
    :goto_3
    return-object v0
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 404
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 408
    :cond_1
    instance-of v1, p1, Landroid/icu/impl/OlsonTimeZone;

    if-nez v1, :cond_2

    return v2

    .line 414
    :cond_2
    check-cast p1, Landroid/icu/impl/OlsonTimeZone;

    .line 415
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-nez v1, :cond_3

    .line 416
    iget-object v1, p1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v1, :cond_4

    return v2

    .line 420
    :cond_3
    iget-object v3, p1, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v3, :cond_6

    iget v4, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    iget v5, p1, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    if-ne v4, v5, :cond_6

    .line 422
    invoke-virtual {v1, v3}, Landroid/icu/util/SimpleTimeZone;->hasSameRules(Landroid/icu/util/TimeZone;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 429
    :cond_4
    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    iget v3, p1, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    iget-object v3, p1, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    .line 430
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    iget v3, p1, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    iget-object v3, p1, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    .line 432
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    iget-object p1, p1, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    .line 433
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v2
.end method

.method public hashCode()I
    .locals 9

    .line 922
    iget v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    ushr-int/lit8 v1, v0, 0x4

    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v2, 0x6

    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    int-to-long v0, v0

    const/16 v3, 0x8

    ushr-int/2addr v2, v3

    int-to-long v4, v2

    iget-wide v6, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    .line 925
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 926
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const/4 v6, 0x0

    if-nez v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->hashCode()I

    move-result v2

    :goto_0
    int-to-long v7, v2

    add-long/2addr v4, v7

    .line 927
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->hashCode()I

    move-result v2

    int-to-long v7, v2

    add-long/2addr v4, v7

    xor-long/2addr v0, v4

    long-to-int v0, v0

    .line 928
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    if-eqz v1, :cond_2

    move v1, v0

    move v0, v6

    .line 929
    :goto_1
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    array-length v4, v2

    if-ge v0, v4, :cond_1

    int-to-long v4, v1

    .line 930
    aget-wide v7, v2, v0

    aget-wide v1, v2, v0

    ushr-long/2addr v1, v3

    xor-long/2addr v1, v7

    add-long/2addr v4, v1

    long-to-int v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    move v1, v0

    move v0, v6

    .line 933
    :goto_2
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 934
    aget v4, v2, v0

    aget v2, v2, v0

    ushr-int/2addr v2, v3

    xor-int/2addr v2, v4

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 936
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v0, :cond_4

    .line 937
    :goto_3
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v2, v0

    if-ge v6, v2, :cond_4

    .line 938
    aget-byte v0, v0, v6

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v1, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    return v1
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 390
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/icu/impl/OlsonTimeZone;->getOffset(JZ[I)V

    const/4 p0, 0x1

    .line 391
    aget v0, v0, p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    return p0
.end method

.method public isFrozen()Z
    .locals 0

    .line 1275
    iget-boolean p0, p0, Landroid/icu/impl/OlsonTimeZone;->isFrozen:Z

    return p0
.end method

.method public observesDaylightTime()Z
    .locals 9

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 346
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 347
    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    long-to-double v5, v0

    .line 349
    iget-wide v7, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v2, v5, v7

    if-ltz v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v5, 0x3e8

    .line 355
    invoke-static {v0, v1, v5, v6}, Landroid/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v0

    .line 356
    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    sub-int/2addr v2, v4

    .line 357
    invoke-direct {p0, v2}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    :goto_0
    if-ltz v2, :cond_5

    .line 361
    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v5, v5, v2

    cmp-long v5, v5, v0

    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v2, -0x1

    .line 364
    invoke-direct {p0, v5}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v5

    if-eqz v5, :cond_4

    return v4

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v3
.end method

.method public setID(Ljava/lang/String;)V
    .locals 1

    .line 654
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 659
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 660
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/OlsonTimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 662
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 664
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->canonicalID:Ljava/lang/String;

    .line 668
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {v0, p1}, Landroid/icu/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 671
    :cond_1
    invoke-super {p0, p1}, Landroid/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 672
    iput-boolean p1, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void

    .line 655
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen OlsonTimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRawOffset(I)V
    .locals 12

    .line 176
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 180
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getRawOffset()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v2, v0

    .line 185
    iget-wide v4, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpg-double v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_6

    .line 186
    new-instance v2, Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v4}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroid/icu/impl/OlsonTimeZone;->useDaylightTime()Z

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    .line 190
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/OlsonTimeZone;->getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    .line 191
    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 196
    invoke-virtual {p0, v0, v1, v3}, Landroid/icu/impl/OlsonTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 198
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    const-wide/16 v8, 0x1

    sub-long/2addr v5, v8

    invoke-virtual {p0, v5, v6}, Landroid/icu/impl/OlsonTimeZone;->getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    .line 201
    :cond_1
    array-length v6, v5

    if-ne v6, v7, :cond_3

    aget-object v6, v5, v4

    instance-of v6, v6, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    aget-object v7, v5, v6

    instance-of v7, v7, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v7, :cond_3

    .line 205
    aget-object v7, v5, v4

    check-cast v7, Landroid/icu/util/AnnualTimeZoneRule;

    .line 206
    aget-object v5, v5, v6

    check-cast v5, Landroid/icu/util/AnnualTimeZoneRule;

    .line 208
    invoke-virtual {v7}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v6

    invoke-virtual {v7}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    add-int/2addr v6, v8

    .line 209
    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v8

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v9

    add-int/2addr v8, v9

    if-le v6, v8, :cond_2

    .line 212
    invoke-virtual {v7}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v7

    .line 213
    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v5

    sub-int/2addr v6, v8

    move-object v11, v7

    move-object v7, v5

    move-object v5, v11

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v5

    .line 217
    invoke-virtual {v7}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v7

    sub-int v6, v8, v6

    .line 221
    :goto_0
    invoke-virtual {v5}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v8

    invoke-virtual {v5}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v9

    invoke-virtual {v5}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v10

    .line 222
    invoke-virtual {v5}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v5

    .line 221
    invoke-virtual {v2, v8, v9, v10, v5}, Landroid/icu/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 223
    invoke-virtual {v7}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v5

    invoke-virtual {v7}, Landroid/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v8

    invoke-virtual {v7}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v9

    .line 224
    invoke-virtual {v7}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v7

    .line 223
    invoke-virtual {v2, v5, v8, v9, v7}, Landroid/icu/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 226
    invoke-virtual {v2, v6}, Landroid/icu/util/SimpleTimeZone;->setDSTSavings(I)V

    goto :goto_1

    .line 234
    :cond_3
    invoke-virtual {v2, v3, v4, v3}, Landroid/icu/util/SimpleTimeZone;->setStartRule(III)V

    const/16 v5, 0xb

    const/16 v6, 0x1f

    const v7, 0x5265bff

    .line 235
    invoke-virtual {v2, v5, v6, v7}, Landroid/icu/util/SimpleTimeZone;->setEndRule(III)V

    :cond_4
    :goto_1
    const/4 v5, 0x0

    .line 239
    invoke-static {v0, v1, v5}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    .line 241
    aget v1, v0, v3

    iput v1, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    .line 242
    aget v0, v0, v3

    invoke-static {v0, v3, v4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    if-eqz p1, :cond_5

    .line 247
    iget p1, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v2, p1}, Landroid/icu/util/SimpleTimeZone;->setStartYear(I)V

    .line 250
    :cond_5
    iput-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    goto :goto_2

    .line 253
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v0, p1}, Landroid/icu/util/SimpleTimeZone;->setRawOffset(I)V

    .line 256
    :goto_2
    iput-boolean v3, p0, Landroid/icu/impl/OlsonTimeZone;->transitionRulesInitialized:Z

    return-void

    .line 177
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen OlsonTimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transitionCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",typeCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/icu/impl/OlsonTimeZone;->typeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",transitionTimes="

    .line 790
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    const/16 v3, 0x2c

    const/16 v4, 0x5d

    const/4 v5, 0x0

    const-string v6, "null"

    if-eqz v2, :cond_2

    .line 792
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    .line 793
    :goto_0
    iget-object v7, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    array-length v7, v7

    if-ge v2, v7, :cond_1

    if-lez v2, :cond_0

    .line 795
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 797
    :cond_0
    iget-object v7, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v7, v7, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 799
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 801
    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v2, ",typeOffsets="

    .line 803
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    if-eqz v2, :cond_5

    .line 805
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    .line 806
    :goto_2
    iget-object v7, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    array-length v7, v7

    if-ge v2, v7, :cond_4

    if-lez v2, :cond_3

    .line 808
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 810
    :cond_3
    iget-object v7, p0, Landroid/icu/impl/OlsonTimeZone;->typeOffsets:[I

    aget v7, v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 812
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 814
    :cond_5
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v2, ",typeMapData="

    .line 816
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    if-eqz v2, :cond_7

    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 819
    :goto_4
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    array-length v1, v1

    if-ge v5, v1, :cond_8

    if-lez v5, :cond_6

    .line 821
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 823
    :cond_6
    iget-object v1, p0, Landroid/icu/impl/OlsonTimeZone;->typeMapData:[B

    aget-byte v1, v1, v5

    invoke-static {v1}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 826
    :cond_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",finalStartYear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",finalStartMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",finalZone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useDaylightTime()Z
    .locals 11

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 315
    iget-object v2, p0, Landroid/icu/impl/OlsonTimeZone;->finalZone:Landroid/icu/util/SimpleTimeZone;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    long-to-double v5, v0

    iget-wide v7, p0, Landroid/icu/impl/OlsonTimeZone;->finalStartMillis:D

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_1

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {v2}, Landroid/icu/util/SimpleTimeZone;->useDaylightTime()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    const/4 v2, 0x0

    .line 319
    invoke-static {v0, v1, v2}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    .line 322
    aget v1, v0, v4

    invoke-static {v1, v4, v3}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v1

    const-wide/32 v5, 0x15180

    mul-long/2addr v1, v5

    .line 323
    aget v0, v0, v4

    add-int/2addr v0, v3

    invoke-static {v0, v4, v3}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v7

    mul-long/2addr v7, v5

    move v0, v4

    .line 327
    :goto_1
    iget v5, p0, Landroid/icu/impl/OlsonTimeZone;->transitionCount:I

    if-ge v0, v5, :cond_6

    .line 328
    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v9, v5, v0

    cmp-long v6, v9, v7

    if-ltz v6, :cond_2

    goto :goto_2

    .line 331
    :cond_2
    aget-wide v5, v5, v0

    cmp-long v5, v5, v1

    if-ltz v5, :cond_3

    invoke-direct {p0, v0}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p0, Landroid/icu/impl/OlsonTimeZone;->transitionTimes64:[J

    aget-wide v5, v5, v0

    cmp-long v5, v5, v1

    if-lez v5, :cond_5

    if-lez v0, :cond_5

    add-int/lit8 v5, v0, -0x1

    .line 332
    invoke-direct {p0, v5}, Landroid/icu/impl/OlsonTimeZone;->dstOffsetAt(I)I

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    return v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v4
.end method
