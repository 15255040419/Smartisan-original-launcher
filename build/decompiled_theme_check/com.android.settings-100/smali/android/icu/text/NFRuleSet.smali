.class final Landroid/icu/text/NFRuleSet;
.super Ljava/lang/Object;
.source "NFRuleSet.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final IMPROPER_FRACTION_RULE_INDEX:I = 0x1

.field static final INFINITY_RULE_INDEX:I = 0x4

.field static final MASTER_RULE_INDEX:I = 0x3

.field static final NAN_RULE_INDEX:I = 0x5

.field static final NEGATIVE_RULE_INDEX:I = 0x0

.field static final PROPER_FRACTION_RULE_INDEX:I = 0x2

.field private static final RECURSION_LIMIT:I = 0x40


# instance fields
.field fractionRules:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/icu/text/NFRule;",
            ">;"
        }
    .end annotation
.end field

.field private isFractionRuleSet:Z

.field private final isParseable:Z

.field private final name:Ljava/lang/String;

.field final nonNumericalRules:[Landroid/icu/text/NFRule;

.field final owner:Landroid/icu/text/RuleBasedNumberFormat;

.field private rules:[Landroid/icu/text/NFRule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/RuleBasedNumberFormat;[Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/text/NFRule;

    .line 46
    iput-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    .line 106
    iput-object p1, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    .line 107
    aget-object p1, p2, p3

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Empty rule set description"

    if-eqz v1, :cond_5

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x25

    const/4 v4, 0x1

    if-ne v1, v3, :cond_3

    const/16 v1, 0x3a

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 123
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "@noparse"

    .line 124
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v4, v5

    iput-boolean v4, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    .line 125
    iget-boolean v4, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    if-nez v4, :cond_0

    .line 126
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 128
    :cond_0
    iput-object v3, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    .line 131
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge v1, p0, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 134
    aput-object p1, p2, p3

    goto :goto_1

    .line 120
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Rule set name doesn\'t end in colon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string p2, "%default"

    .line 140
    iput-object p2, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    .line 141
    iput-boolean v4, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    .line 144
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_4

    return-void

    .line 145
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private findFractionRuleSetRule(D)Landroid/icu/text/NFRule;
    .locals 13

    .line 630
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v2

    const/4 v0, 0x1

    .line 631
    :goto_0
    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 632
    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/icu/text/NFRuleSet;->lcm(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    long-to-double v4, v2

    mul-double/2addr v4, p1

    .line 634
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    move v0, v1

    .line 640
    :goto_1
    iget-object v8, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v9, v8

    if-ge v1, v9, :cond_4

    .line 647
    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v8

    mul-long/2addr v8, v4

    rem-long/2addr v8, v2

    sub-long v10, v2, v8

    cmp-long v12, v10, v8

    if-gez v12, :cond_1

    move-wide v8, v10

    :cond_1
    cmp-long v10, v8, v6

    if-gez v10, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v0, v8, v6

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    move-wide v6, v8

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v0, 0x1

    .line 675
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v3, v2

    if-ge v1, v3, :cond_6

    aget-object v2, v2, v1

    .line 676
    invoke-virtual {v2}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v2

    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 677
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v2, v2, v0

    .line 678
    invoke-virtual {v2}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const-wide/16 v2, 0x2

    cmp-long p1, p1, v2

    if-ltz p1, :cond_6

    :cond_5
    move v0, v1

    .line 684
    :cond_6
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object p0, p0, v0

    return-object p0
.end method

.method private findNormalRule(J)Landroid/icu/text/NFRule;
    .locals 5

    .line 540
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eqz v0, :cond_0

    long-to-double p1, p1

    .line 541
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Landroid/icu/text/NFRule;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 547
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 548
    aget-object p0, v0, v1

    return-object p0

    :cond_1
    neg-long p1, p1

    .line 567
    :cond_2
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v0, v0

    if-lez v0, :cond_9

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_5

    add-int v3, v1, v0

    ushr-int/lit8 v2, v3, 0x1

    .line 571
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    .line 573
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object p0, p0, v2

    return-object p0

    :cond_3
    if-lez v3, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_5
    const-string v1, "The rule set "

    if-eqz v0, :cond_8

    .line 585
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    .line 592
    invoke-virtual {v3, p1, p2}, Landroid/icu/text/NFRule;->shouldRollBack(J)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eq v0, v2, :cond_6

    .line 597
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    add-int/lit8 v0, v0, -0x2

    aget-object v3, p0, v0

    goto :goto_1

    .line 594
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot roll back from the rule \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    return-object v3

    .line 583
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot format the value "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_9
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 p1, 0x3

    aget-object p0, p0, p1

    return-object p0
.end method

.method private static lcm(JJ)J
    .locals 17

    const/4 v0, 0x0

    move-wide/from16 v2, p2

    move v4, v0

    move-wide/from16 v0, p0

    :goto_0
    const-wide/16 v5, 0x1

    and-long v7, v0, v5

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    const/4 v12, 0x1

    if-nez v11, :cond_0

    and-long v13, v2, v5

    cmp-long v11, v13, v9

    if-nez v11, :cond_0

    add-int/lit8 v4, v4, 0x1

    shr-long/2addr v0, v12

    shr-long/2addr v2, v12

    goto :goto_0

    :cond_0
    cmp-long v7, v7, v5

    if-nez v7, :cond_1

    neg-long v7, v2

    move-wide v15, v0

    move-wide v0, v7

    move-wide v7, v2

    move-wide v2, v15

    goto :goto_1

    :cond_1
    move-wide v7, v2

    move-wide v2, v0

    :goto_1
    cmp-long v11, v0, v9

    if-eqz v11, :cond_4

    :goto_2
    and-long v13, v0, v5

    cmp-long v11, v13, v9

    if-nez v11, :cond_2

    shr-long/2addr v0, v12

    goto :goto_2

    :cond_2
    cmp-long v11, v0, v9

    if-lez v11, :cond_3

    move-wide v2, v0

    goto :goto_3

    :cond_3
    neg-long v0, v0

    move-wide v7, v0

    :goto_3
    sub-long v0, v2, v7

    goto :goto_1

    :cond_4
    shl-long v0, v2, v4

    .line 724
    div-long v0, p0, v0

    mul-long v0, v0, p2

    return-wide v0
.end method

.method private setBestFractionRule(ILandroid/icu/text/NFRule;Z)V
    .locals 1

    if-eqz p3, :cond_1

    .line 267
    iget-object p3, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    if-nez p3, :cond_0

    .line 268
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    .line 270
    :cond_0
    iget-object p3, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_1
    iget-object p3, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v0, p3, p1

    if-nez v0, :cond_2

    .line 274
    aput-object p2, p3, p1

    goto :goto_0

    .line 278
    :cond_2
    iget-object p3, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {p3}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p3

    .line 279
    invoke-virtual {p3}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p3

    invoke-virtual {p2}, Landroid/icu/text/NFRule;->getDecimalPoint()C

    move-result v0

    if-ne p3, v0, :cond_3

    .line 280
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aput-object p2, p0, p1

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 309
    instance-of v0, p1, Landroid/icu/text/NFRuleSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 313
    :cond_0
    check-cast p1, Landroid/icu/text/NFRuleSet;

    .line 315
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v0, v0

    iget-object v2, p1, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v2, v2

    if-ne v0, v2, :cond_6

    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    iget-boolean v2, p1, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eq v0, v2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 323
    :goto_0
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 324
    aget-object v2, v2, v0

    iget-object v3, p1, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 330
    :goto_1
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 331
    aget-object v2, v2, v0

    iget-object v3, p1, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/text/NFRule;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method findRule(D)Landroid/icu/text/NFRule;
    .locals 3

    .line 465
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Landroid/icu/text/NFRule;

    move-result-object p0

    return-object p0

    .line 469
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    iget-object p1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 p2, 0x5

    aget-object p1, p1, p2

    if-nez p1, :cond_1

    .line 472
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultNaNRule()Landroid/icu/text/NFRule;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_4

    .line 481
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    .line 482
    aget-object p0, v0, v1

    return-object p0

    :cond_3
    neg-double p1, p1

    .line 488
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 489
    iget-object p1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 p2, 0x4

    aget-object p1, p1, p2

    if-nez p1, :cond_5

    .line 491
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultInfinityRule()Landroid/icu/text/NFRule;

    move-result-object p1

    :cond_5
    return-object p1

    .line 497
    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_7

    .line 498
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x2

    aget-object v2, v0, v1

    if-eqz v2, :cond_7

    .line 501
    aget-object p0, v0, v1

    return-object p0

    .line 503
    :cond_7
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_8

    .line 505
    aget-object p0, v0, v1

    return-object p0

    .line 510
    :cond_8
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x3

    aget-object v2, v0, v1

    if-eqz v2, :cond_9

    .line 511
    aget-object p0, v0, v1

    return-object p0

    .line 516
    :cond_9
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findNormalRule(J)Landroid/icu/text/NFRule;

    move-result-object p0

    return-object p0
.end method

.method public format(DLjava/lang/StringBuilder;II)V
    .locals 7

    const/16 v0, 0x40

    if-ge p5, v0, :cond_0

    .line 454
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findRule(D)Landroid/icu/text/NFRule;

    move-result-object v1

    add-int/lit8 v6, p5, 0x1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    .line 455
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuilder;II)V

    return-void

    .line 452
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Recursion limit exceeded when applying ruleSet "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public format(JLjava/lang/StringBuilder;II)V
    .locals 7

    const/16 v0, 0x40

    if-ge p5, v0, :cond_0

    .line 438
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findNormalRule(J)Landroid/icu/text/NFRule;

    move-result-object v1

    add-int/lit8 v6, p5, 0x1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    .line 439
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(JLjava/lang/StringBuilder;II)V

    return-void

    .line 436
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Recursion limit exceeded when applying ruleSet "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 403
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public isFractionSet()Z
    .locals 0

    .line 395
    iget-boolean p0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    return p0
.end method

.method public isParseable()Z
    .locals 0

    .line 419
    iget-boolean p0, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    return p0
.end method

.method public isPublic()Z
    .locals 1

    .line 411
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    const-string v0, "%%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public makeIntoFractionRuleSet()V
    .locals 1

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;
    .locals 14

    move-object v0, p0

    move-object/from16 v7, p2

    .line 757
    new-instance v8, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/text/ParsePosition;-><init>(I)V

    .line 758
    sget-object v1, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 762
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 767
    :cond_0
    iget-object v10, v0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    array-length v11, v10

    move-object v13, v1

    move v12, v9

    :goto_0
    if-ge v12, v11, :cond_3

    aget-object v1, v10, v12

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    .line 769
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    move-result-object v1

    .line 770
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 772
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v13, v1

    .line 778
    :cond_1
    invoke-virtual {v7, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 791
    :cond_3
    iget-object v1, v0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move v10, v1

    :goto_1
    if-ltz v10, :cond_6

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 792
    iget-boolean v1, v0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v1

    long-to-double v1, v1

    cmpl-double v1, v1, p3

    if-ltz v1, :cond_4

    goto :goto_2

    .line 796
    :cond_4
    iget-object v1, v0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v10

    iget-boolean v4, v0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    move-result-object v1

    .line 797
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-le v2, v3, :cond_5

    .line 799
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v13, v1

    .line 805
    :cond_5
    invoke-virtual {v7, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 811
    :cond_6
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v13
.end method

.method public parseRules(Ljava/lang/String;)V
    .locals 9

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    const/16 v4, 0x3b

    .line 177
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_1

    move v4, v1

    .line 185
    :cond_1
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-static {v3, p0, v2, v5, v0}, Landroid/icu/text/NFRule;->makeRules(Ljava/lang/String;Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;Landroid/icu/text/RuleBasedNumberFormat;Ljava/util/List;)V

    .line 187
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 188
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/NFRule;

    :cond_2
    add-int/lit8 v3, v4, 0x1

    if-lt v3, v1, :cond_0

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/NFRule;

    .line 202
    invoke-virtual {v5}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-nez v8, :cond_4

    .line 209
    invoke-virtual {v5, v3, v4}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    goto :goto_1

    :cond_4
    cmp-long v5, v6, v3

    if-ltz v5, :cond_5

    move-wide v3, v6

    .line 221
    :goto_1
    iget-boolean v5, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-nez v5, :cond_3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 216
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rules are not in order, base: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/icu/text/NFRule;

    iput-object p1, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    .line 229
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 8

    .line 821
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 822
    invoke-virtual {v4, p1}, Landroid/icu/text/NFRule;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 825
    :cond_0
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_3

    .line 827
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 828
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/NFRule;

    .line 829
    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 830
    invoke-direct {p0, v0, v3, v2}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 837
    :cond_3
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    array-length v0, p0

    :goto_3
    if-ge v2, v0, :cond_5

    aget-object v1, p0, v2

    if-eqz v1, :cond_4

    .line 839
    invoke-virtual {v1, p1}, Landroid/icu/text/NFRule;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method setNonNumericalRule(Landroid/icu/text/NFRule;)V
    .locals 6

    .line 237
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 239
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 242
    invoke-direct {p0, v3, p1, v3}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    goto :goto_0

    :cond_1
    const-wide/16 v4, -0x3

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    const/4 v0, 0x2

    .line 245
    invoke-direct {p0, v0, p1, v3}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    goto :goto_0

    :cond_2
    const-wide/16 v4, -0x4

    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    const/4 v0, 0x3

    .line 248
    invoke-direct {p0, v0, p1, v3}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    goto :goto_0

    :cond_3
    const-wide/16 v2, -0x5

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 251
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v0, 0x4

    aput-object p1, p0, v0

    goto :goto_0

    :cond_4
    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 254
    iget-object p0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v0, 0x5

    aput-object p1, p0, v0

    :cond_5
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "\n"

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 361
    invoke-virtual {v6}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 365
    :cond_0
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    if-eqz v4, :cond_4

    .line 367
    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 368
    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    const-wide/16 v8, -0x3

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 369
    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    const-wide/16 v8, -0x4

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    goto :goto_2

    .line 378
    :cond_1
    invoke-virtual {v4}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 371
    :cond_2
    :goto_2
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/NFRule;

    .line 372
    invoke-virtual {v7}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v8

    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 373
    invoke-virtual {v7}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 383
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
