.class public Landroid/icu/util/RuleBasedTimeZone;
.super Landroid/icu/util/BasicTimeZone;
.source "RuleBasedTimeZone.java"


# static fields
.field private static final serialVersionUID:J = 0x693487808c366c3fL


# instance fields
.field private finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

.field private historicRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/TimeZoneRule;",
            ">;"
        }
    .end annotation
.end field

.field private transient historicTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/TimeZoneTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final initialRule:Landroid/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private transient upToDate:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/InitialTimeZoneRule;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 736
    iput-boolean p1, p0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    .line 46
    iput-object p2, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    return-void
.end method

.method private complete()V
    .locals 20

    move-object/from16 v0, p0

    .line 470
    iget-boolean v1, v0, Landroid/icu/util/RuleBasedTimeZone;->upToDate:Z

    if-eqz v1, :cond_0

    return-void

    .line 477
    :cond_0
    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 478
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Incomplete final rules"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_2
    :goto_0
    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v7, v2

    goto/16 :goto_a

    .line 483
    :cond_4
    :goto_1
    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    const-wide v3, -0x28ec76c40e65000L

    .line 488
    iget-object v5, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    const/4 v6, 0x0

    if-eqz v5, :cond_12

    .line 489
    new-instance v7, Ljava/util/BitSet;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v7, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 492
    :goto_2
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    .line 493
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    const-wide v8, 0x28d47dbbf19b000L

    const/4 v10, 0x0

    move v15, v6

    move-wide/from16 v17, v8

    move-object/from16 v16, v10

    .line 499
    :goto_3
    iget-object v8, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v15, v8, :cond_9

    .line 500
    invoke-virtual {v7, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    .line 503
    :cond_5
    iget-object v8, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Landroid/icu/util/TimeZoneRule;

    const/16 v19, 0x0

    move-object v8, v13

    move-wide v9, v3

    move v11, v5

    move v12, v14

    move-object v2, v13

    move/from16 v13, v19

    .line 504
    invoke-virtual/range {v8 .. v13}, Landroid/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v8

    if-nez v8, :cond_6

    .line 507
    invoke-virtual {v7, v15}, Ljava/util/BitSet;->set(I)V

    goto :goto_4

    :cond_6
    if-eq v2, v1, :cond_8

    .line 510
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 511
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v9

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v10

    if-ne v9, v10, :cond_7

    .line 512
    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v9

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    if-ne v9, v10, :cond_7

    goto :goto_4

    .line 515
    :cond_7
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v10, v8, v17

    if-gez v10, :cond_8

    move-object/from16 v16, v2

    move-wide/from16 v17, v8

    :cond_8
    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    if-nez v16, :cond_c

    move v2, v6

    .line 526
    :goto_5
    iget-object v8, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_b

    .line 527
    invoke-virtual {v7, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-nez v8, :cond_a

    move v2, v6

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_c

    goto :goto_9

    .line 537
    :cond_c
    iget-object v2, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v2, :cond_f

    move v2, v6

    :goto_7
    const/4 v8, 0x2

    if-ge v2, v8, :cond_f

    .line 540
    iget-object v8, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v9, v8, v2

    if-ne v9, v1, :cond_d

    goto :goto_8

    .line 543
    :cond_d
    aget-object v8, v8, v2

    const/4 v13, 0x0

    move-wide v9, v3

    move v11, v5

    move v12, v14

    invoke-virtual/range {v8 .. v13}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 545
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v10, v8, v17

    if-gez v10, :cond_e

    .line 548
    iget-object v10, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v10, v10, v2

    move-wide/from16 v17, v8

    move-object/from16 v16, v10

    :cond_e
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_f
    move-object/from16 v2, v16

    move-wide/from16 v8, v17

    if-nez v2, :cond_10

    goto :goto_9

    .line 559
    :cond_10
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v3, :cond_11

    .line 560
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    .line 562
    :cond_11
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v4, Landroid/icu/util/TimeZoneTransition;

    invoke-direct {v4, v8, v9, v1, v2}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    move-wide v3, v8

    const/4 v2, 0x1

    goto/16 :goto_2

    .line 567
    :cond_12
    :goto_9
    iget-object v2, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v2, :cond_15

    .line 568
    iget-object v2, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    if-nez v2, :cond_13

    .line 569
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    .line 572
    :cond_13
    iget-object v2, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v10, v2, v6

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    const/4 v15, 0x0

    move-wide v11, v3

    invoke-virtual/range {v10 .. v15}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v2

    .line 573
    iget-object v5, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v7, 0x1

    aget-object v10, v5, v7

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    invoke-virtual/range {v10 .. v15}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v3

    .line 574
    invoke-virtual {v3, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 575
    iget-object v3, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v4, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iget-object v5, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v6

    invoke-direct {v4, v7, v8, v1, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v3, 0x1

    aget-object v7, v1, v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v10

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    .line 577
    iget-object v2, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v3, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v6, v1, v6

    const/4 v7, 0x1

    aget-object v1, v1, v7

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_14
    const/4 v7, 0x1

    .line 579
    iget-object v2, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v4, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iget-object v5, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v7

    invoke-direct {v4, v8, v9, v1, v5}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v8, v1, v6

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v11

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    .line 581
    iget-object v2, v0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    new-instance v3, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v7, 0x1

    aget-object v8, v1, v7

    aget-object v1, v1, v6

    invoke-direct {v3, v4, v5, v8, v1}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    const/4 v7, 0x1

    .line 585
    :goto_a
    iput-boolean v7, v0, Landroid/icu/util/RuleBasedTimeZone;->upToDate:Z

    return-void
.end method

.method private findRuleInFinal(JZII)Landroid/icu/util/TimeZoneRule;
    .locals 13

    move-object v0, p0

    .line 635
    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    const/4 v3, 0x0

    aget-object v4, v1, v3

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    aget-object v5, v1, v4

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p3, :cond_1

    .line 645
    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v3

    .line 646
    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v7

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    move/from16 v9, p4

    move/from16 v10, p5

    .line 645
    invoke-static/range {v5 .. v10}, Landroid/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v1

    int-to-long v5, v1

    sub-long v5, p1, v5

    move-wide v8, v5

    goto :goto_0

    :cond_1
    move-wide v8, p1

    .line 650
    :goto_0
    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v7, v1, v3

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v10

    iget-object v1, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    if-eqz p3, :cond_2

    .line 654
    iget-object v5, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v6

    iget-object v5, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v7

    iget-object v5, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v4

    .line 655
    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v8

    iget-object v5, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v9

    move/from16 v10, p4

    move/from16 v11, p5

    .line 654
    invoke-static/range {v6 .. v11}, Landroid/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result v5

    int-to-long v5, v5

    sub-long v5, p1, v5

    move-wide v8, v5

    goto :goto_1

    :cond_2
    move-wide v8, p1

    .line 659
    :goto_1
    iget-object v5, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v7, v5, v4

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v10

    iget-object v5, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v5

    if-eqz v1, :cond_5

    if-nez v5, :cond_3

    goto :goto_3

    .line 671
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    iget-object v0, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_4

    aget-object v0, v0, v3

    goto :goto_2

    :cond_4
    aget-object v0, v0, v4

    :goto_2
    return-object v0

    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 663
    iget-object v0, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v3

    return-object v0

    :cond_6
    if-eqz v5, :cond_7

    .line 665
    iget-object v0, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v4

    return-object v0

    :cond_7
    :goto_4
    return-object v2
.end method

.method private static getLocalDelta(IIIIII)I
    .locals 4

    add-int/2addr p0, p1

    add-int/2addr p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    move v0, v1

    :cond_1
    sub-int p1, p2, p0

    const/16 p3, 0xc

    const/4 v3, 0x3

    if-ltz p1, :cond_6

    and-int/lit8 p1, p4, 0x3

    if-ne p1, v1, :cond_2

    if-nez v2, :cond_c

    :cond_2
    if-ne p1, v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v1, :cond_4

    if-nez v0, :cond_b

    :cond_4
    if-ne p1, v3, :cond_5

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    and-int/lit8 p1, p4, 0xc

    if-ne p1, p3, :cond_b

    goto :goto_2

    :cond_6
    and-int/lit8 p1, p5, 0x3

    if-ne p1, v1, :cond_7

    if-nez v2, :cond_b

    :cond_7
    if-ne p1, v3, :cond_8

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    if-ne p1, v1, :cond_9

    if-nez v0, :cond_c

    :cond_9
    if-ne p1, v3, :cond_a

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    and-int/lit8 p1, p5, 0xc

    const/4 p3, 0x4

    if-ne p1, p3, :cond_b

    goto :goto_2

    :cond_b
    :goto_1
    move p0, p2

    :cond_c
    :goto_2
    return p0
.end method

.method private getOffset(JZII[I)V
    .locals 5

    .line 592
    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    .line 594
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 595
    iget-object p0, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    goto :goto_3

    .line 597
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZoneTransition;

    invoke-static {v0, p3, p4, p5}, Landroid/icu/util/RuleBasedTimeZone;->getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    .line 600
    iget-object p0, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    goto :goto_3

    .line 602
    :cond_1
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 603
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/TimeZoneTransition;

    invoke-static {v3, p3, p4, p5}, Landroid/icu/util/RuleBasedTimeZone;->getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-lez v3, :cond_4

    .line 606
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v3, :cond_2

    .line 607
    invoke-direct/range {p0 .. p5}, Landroid/icu/util/RuleBasedTimeZone;->findRuleInFinal(JZII)Landroid/icu/util/TimeZoneRule;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 612
    iget-object p0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p0

    goto :goto_3

    :cond_3
    move-object p0, p1

    goto :goto_3

    :cond_4
    :goto_1
    if-ltz v0, :cond_6

    .line 617
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/TimeZoneTransition;

    invoke-static {v3, p3, p4, p5}, Landroid/icu/util/RuleBasedTimeZone;->getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-ltz v3, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 623
    :cond_6
    :goto_2
    iget-object p0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p0

    .line 627
    :goto_3
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p1

    aput p1, p6, v2

    .line 628
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p0

    aput p0, p6, v1

    return-void
.end method

.method private static getTransitionTime(Landroid/icu/util/TimeZoneTransition;ZII)J
    .locals 8

    .line 679
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 681
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v2

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v3

    .line 682
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    move v6, p2

    move v7, p3

    .line 681
    invoke-static/range {v2 .. v7}, Landroid/icu/util/RuleBasedTimeZone;->getLocalDelta(IIIIII)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v0, p0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public addTransitionRule(Landroid/icu/util/TimeZoneRule;)V
    .locals 4

    .line 58
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 61
    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->isTransitionRule()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    instance-of v0, p1, Landroid/icu/util/AnnualTimeZoneRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/icu/util/AnnualTimeZoneRule;

    .line 65
    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    .line 67
    iget-object p1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/icu/util/AnnualTimeZoneRule;

    .line 68
    iput-object p1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    .line 69
    iget-object p1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aput-object v0, p1, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 70
    aget-object v3, p1, v2

    if-nez v3, :cond_1

    .line 71
    aput-object v0, p1, v2

    goto :goto_0

    .line 74
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Too many final rules"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_2
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez v0, :cond_3

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    .line 81
    :cond_3
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_0
    iput-boolean v1, p0, Landroid/icu/util/RuleBasedTimeZone;->upToDate:Z

    return-void

    .line 62
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Rule must be a transition rule"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Attempt to modify a frozen RuleBasedTimeZone instance."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 457
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 460
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public cloneAsThawed()Landroid/icu/util/TimeZone;
    .locals 3

    .line 758
    invoke-super {p0}, Landroid/icu/util/BasicTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Landroid/icu/util/RuleBasedTimeZone;

    .line 759
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 760
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    .line 762
    :cond_0
    iget-object p0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz p0, :cond_1

    .line 763
    invoke-virtual {p0}, [Landroid/icu/util/AnnualTimeZoneRule;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/icu/util/AnnualTimeZoneRule;

    iput-object p0, v0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    :cond_1
    const/4 p0, 0x0

    .line 765
    iput-boolean p0, v0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->cloneAsThawed()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public freeze()Landroid/icu/util/TimeZone;
    .locals 1

    .line 749
    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    const/4 v0, 0x1

    .line 750
    iput-boolean v0, p0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0}, Landroid/icu/util/RuleBasedTimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 11

    .line 325
    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    .line 326
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 331
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZoneTransition;

    .line 332
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    cmp-long v3, v3, p1

    const/4 v4, 0x1

    if-gtz v3, :cond_8

    if-eqz p3, :cond_1

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 336
    :cond_1
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .line 337
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/TimeZoneTransition;

    .line 338
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    if-eqz p3, :cond_3

    cmp-long v7, v5, p1

    if-nez v7, :cond_3

    :cond_2
    :goto_0
    move v4, v2

    move-object v0, v3

    goto/16 :goto_3

    :cond_3
    cmp-long v5, v5, p1

    if-gtz v5, :cond_6

    .line 342
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_5

    .line 344
    aget-object v5, v0, v2

    aget-object v0, v0, v4

    .line 345
    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v8

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v9

    move-wide v6, p1

    move v10, p3

    .line 344
    invoke-virtual/range {v5 .. v10}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 346
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v5, v3, v4

    aget-object v3, v3, v2

    .line 347
    invoke-virtual {v3}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v8

    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v9

    .line 346
    invoke-virtual/range {v5 .. v10}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object p1

    .line 349
    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 350
    new-instance p1, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v3, v0, v4

    aget-object v0, v0, v2

    invoke-direct {p1, p2, p3, v3, v0}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    move-object v0, p1

    goto :goto_3

    .line 352
    :cond_4
    new-instance p2, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iget-object p1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object p3, p1, v2

    aget-object p1, p1, v4

    invoke-direct {p2, v5, v6, p3, p1}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    move-object v0, p2

    goto :goto_3

    :cond_5
    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lez v0, :cond_2

    .line 364
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/TimeZoneTransition;

    .line 365
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-ltz v5, :cond_2

    if-nez p3, :cond_7

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, -0x1

    move-object v3, v4

    goto :goto_1

    :cond_8
    :goto_2
    move v4, v2

    .line 376
    :goto_3
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object p1

    .line 377
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p2

    .line 378
    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v3

    if-ne p3, v3, :cond_a

    .line 379
    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p1

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p2

    if-ne p1, p2, :cond_a

    if-eqz v4, :cond_9

    return-object v1

    .line 384
    :cond_9
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v2}, Landroid/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public getOffset(IIIIII)I
    .locals 7

    const/4 p5, 0x1

    if-nez p1, :cond_0

    rsub-int/lit8 p2, p2, 0x1

    .line 98
    :cond_0
    invoke-static {p2, p3, p4}, Landroid/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide p1

    const-wide/32 p3, 0x5265c00

    mul-long/2addr p1, p3

    int-to-long p3, p6

    add-long v1, p1, p3

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p1

    .line 100
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    const/4 p0, 0x0

    .line 101
    aget p0, p1, p0

    aget p1, p1, p5

    add-int/2addr p0, p1

    return p0
.end method

.method public getOffset(JZ[I)V
    .locals 7

    const/4 v4, 0x4

    const/16 v5, 0xc

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v6, p4

    .line 109
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    return-void
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 121
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZII[I)V

    return-void
.end method

.method public getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
    .locals 10

    .line 395
    invoke-direct {p0}, Landroid/icu/util/RuleBasedTimeZone;->complete()V

    .line 396
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 400
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/TimeZoneTransition;

    .line 401
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v3

    if-eqz p3, :cond_1

    cmp-long v5, v3, p1

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    return-object v1

    .line 407
    :cond_2
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 408
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/TimeZoneTransition;

    .line 409
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    if-eqz p3, :cond_4

    cmp-long v6, v4, p1

    if-nez v6, :cond_4

    :cond_3
    :goto_0
    move-object v0, v3

    goto/16 :goto_1

    :cond_4
    cmp-long v4, v4, p1

    if-gez v4, :cond_6

    .line 413
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_3

    .line 415
    aget-object v4, v0, v2

    aget-object v0, v0, v1

    .line 416
    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v7

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    move-wide v5, p1

    move v9, p3

    .line 415
    invoke-virtual/range {v4 .. v9}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    .line 417
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v3, v1

    aget-object v3, v3, v2

    .line 418
    invoke-virtual {v3}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v7

    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v8

    .line 417
    invoke-virtual/range {v4 .. v9}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object p1

    .line 420
    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 421
    new-instance p1, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v1, v0, v1

    aget-object v0, v0, v2

    invoke-direct {p1, p2, p3, v1, v0}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    move-object v0, p1

    goto :goto_1

    .line 423
    :cond_5
    new-instance p2, Landroid/icu/util/TimeZoneTransition;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object p1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object p3, p1, v2

    aget-object p1, p1, v1

    invoke-direct {p2, v3, v4, p3, p1}, Landroid/icu/util/TimeZoneTransition;-><init>(JLandroid/icu/util/TimeZoneRule;Landroid/icu/util/TimeZoneRule;)V

    move-object v0, p2

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 431
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicTransitions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/icu/util/TimeZoneTransition;

    .line 432
    invoke-virtual {v3}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-ltz v1, :cond_3

    if-eqz p3, :cond_6

    if-nez v1, :cond_6

    goto :goto_0

    .line 442
    :goto_1
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object p1

    .line 443
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p2

    .line 444
    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result p3

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    if-ne p3, v1, :cond_7

    .line 445
    invoke-virtual {p1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p1

    invoke-virtual {p2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p2

    if-ne p1, p2, :cond_7

    .line 447
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v2}, Landroid/icu/util/RuleBasedTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method public getRawOffset()I
    .locals 4

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 133
    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    .line 134
    aget p0, v2, v3

    return p0
.end method

.method public getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
    .locals 6

    .line 291
    iget-object v0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 295
    :goto_0
    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v2, :cond_2

    .line 296
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 302
    :cond_2
    :goto_1
    new-array v0, v0, [Landroid/icu/util/TimeZoneRule;

    .line 303
    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 306
    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v2, :cond_3

    move v2, v1

    .line 307
    :goto_2
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v1

    if-ge v2, v4, :cond_4

    .line 308
    iget-object v4, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/TimeZoneRule;

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    .line 311
    :cond_4
    iget-object p0, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz p0, :cond_5

    add-int/lit8 v4, v2, 0x1

    .line 312
    aget-object v3, p0, v3

    aput-object v3, v0, v2

    .line 313
    aget-object v2, p0, v1

    if-eqz v2, :cond_5

    .line 314
    aget-object p0, p0, v1

    aput-object p0, v0, v4

    :cond_5
    return-object v0
.end method

.method public hasSameRules(Landroid/icu/util/TimeZone;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 232
    :cond_0
    instance-of v1, p1, Landroid/icu/util/RuleBasedTimeZone;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 236
    :cond_1
    check-cast p1, Landroid/icu/util/RuleBasedTimeZone;

    .line 239
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    iget-object v3, p1, Landroid/icu/util/RuleBasedTimeZone;->initialRule:Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual {v1, v3}, Landroid/icu/util/InitialTimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 244
    :cond_2
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_5

    move v1, v2

    .line 245
    :goto_0
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v4, v3

    if-ge v1, v4, :cond_6

    .line 246
    aget-object v3, v3, v1

    if-nez v3, :cond_3

    iget-object v3, p1, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v3, v3, v1

    if-nez v3, :cond_3

    goto :goto_1

    .line 249
    :cond_3
    iget-object v3, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v4, v3, v1

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    aget-object v5, v4, v1

    if-eqz v5, :cond_4

    aget-object v3, v3, v1

    aget-object v4, v4, v1

    .line 250
    invoke-virtual {v3, v4}, Landroid/icu/util/AnnualTimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2

    .line 256
    :cond_5
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-nez v1, :cond_d

    iget-object v1, p1, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_6

    goto :goto_3

    .line 261
    :cond_6
    iget-object v1, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v3, p1, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz v3, :cond_b

    .line 262
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 265
    :cond_7
    iget-object p0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/TimeZoneRule;

    .line 267
    iget-object v3, p1, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/TimeZoneRule;

    .line 268
    invoke-virtual {v1, v4}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v1, v0

    goto :goto_2

    :cond_a
    move v1, v2

    :goto_2
    if-nez v1, :cond_8

    return v2

    .line 277
    :cond_b
    iget-object p0, p0, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-nez p0, :cond_d

    iget-object p0, p1, Landroid/icu/util/RuleBasedTimeZone;->historicRules:Ljava/util/List;

    if-eqz p0, :cond_c

    goto :goto_3

    :cond_c
    return v0

    :cond_d
    :goto_3
    return v2
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 143
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    const/4 p0, 0x1

    .line 144
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

    .line 742
    iget-boolean p0, p0, Landroid/icu/util/RuleBasedTimeZone;->isFrozen:Z

    return p0
.end method

.method public observesDaylightTime()Z
    .locals 8

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 189
    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    const/4 v4, 0x1

    .line 190
    aget v2, v2, v4

    if-eqz v2, :cond_0

    return v4

    .line 195
    :cond_0
    iget-object v2, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/BitSet;

    array-length v2, v2

    invoke-direct {v5, v2}, Ljava/util/BitSet;-><init>(I)V

    move-object v2, v5

    .line 197
    :goto_0
    invoke-virtual {p0, v0, v1, v3}, Landroid/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 202
    :cond_2
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-eqz v5, :cond_3

    return v4

    :cond_3
    if-eqz v2, :cond_6

    move v5, v3

    .line 208
    :goto_1
    iget-object v6, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v7, v6

    if-ge v5, v7, :cond_5

    .line 209
    aget-object v6, v6, v5

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 210
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 213
    :cond_5
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    iget-object v5, p0, Landroid/icu/util/RuleBasedTimeZone;->finalRules:[Landroid/icu/util/AnnualTimeZoneRule;

    array-length v5, v5

    if-ne v1, v5, :cond_6

    :goto_2
    return v3

    .line 218
    :cond_6
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 0

    .line 154
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setRawOffset in RuleBasedTimeZone is not supported."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public useDaylightTime()Z
    .locals 5

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 168
    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/icu/util/RuleBasedTimeZone;->getOffset(JZ[I)V

    const/4 v4, 0x1

    .line 169
    aget v2, v2, v4

    if-eqz v2, :cond_0

    return v4

    .line 173
    :cond_0
    invoke-virtual {p0, v0, v1, v3}, Landroid/icu/util/RuleBasedTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 174
    invoke-virtual {p0}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result p0

    if-eqz p0, :cond_1

    return v4

    :cond_1
    return v3
.end method
