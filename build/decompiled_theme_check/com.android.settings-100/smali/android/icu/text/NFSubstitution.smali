.class abstract Landroid/icu/text/NFSubstitution;
.super Ljava/lang/Object;
.source "NFSubstitution.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_INT64_IN_DOUBLE:J = 0x1fffffffffffffL


# instance fields
.field final numberFormat:Landroid/icu/text/DecimalFormat;

.field final pos:I

.field final ruleSet:Landroid/icu/text/NFRuleSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 5

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Landroid/icu/text/NFSubstitution;->pos:I

    .line 167
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, "Illegal substitution syntax"

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt p1, v2, :cond_0

    .line 173
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v2, v4, :cond_0

    const/4 p1, 0x1

    .line 174
    invoke-virtual {p3, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    if-nez p1, :cond_6

    .line 183
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 184
    iput-object p2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    .line 185
    iput-object v2, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    goto :goto_2

    .line 187
    :cond_1
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x25

    if-ne p1, v3, :cond_2

    .line 191
    iget-object p1, p2, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {p1, p3}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    .line 192
    iput-object v2, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    goto :goto_2

    .line 194
    :cond_2
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x23

    if-eq p1, v3, :cond_5

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x30

    if-ne p1, v3, :cond_3

    goto :goto_1

    .line 203
    :cond_3
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p3, 0x3e

    if-ne p1, p3, :cond_4

    .line 209
    iput-object p2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    .line 210
    iput-object v2, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    goto :goto_2

    .line 214
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_5
    :goto_1
    iput-object v2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    .line 200
    iget-object p1, p2, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {p1}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/DecimalFormat;

    iput-object p1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    .line 201
    iget-object p0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0, p3}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    :goto_2
    return-void

    .line 177
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeSubstitution(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Landroid/icu/text/NFSubstitution;
    .locals 14

    move v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    .line 77
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 81
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-wide/16 v2, -0x4

    const-wide/16 v6, -0x3

    const-wide/16 v8, -0x2

    const-wide/16 v10, -0x1

    packed-switch v0, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal substitution character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :pswitch_0
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Landroid/icu/text/AbsoluteValueSubstitution;

    invoke-direct {v0, p0, v4, v5}, Landroid/icu/text/AbsoluteValueSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    cmp-long v0, v10, v8

    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 137
    new-instance v6, Landroid/icu/text/ModulusSubstitution;

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ModulusSubstitution;-><init>(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v6

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ">> not allowed in fraction rule set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_4
    :goto_0
    new-instance v0, Landroid/icu/text/FractionalPartSubstitution;

    invoke-direct {v0, p0, v4, v5}, Landroid/icu/text/FractionalPartSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    .line 141
    :pswitch_1
    new-instance v0, Landroid/icu/text/SameValueSubstitution;

    invoke-direct {v0, p0, v4, v5}, Landroid/icu/text/SameValueSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    .line 83
    :pswitch_2
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-eqz v0, :cond_8

    .line 92
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    cmp-long v0, v10, v8

    if-eqz v0, :cond_7

    .line 93
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_7

    .line 94
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-nez v0, :cond_5

    goto :goto_1

    .line 99
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    new-instance v6, Landroid/icu/text/NumeratorSubstitution;

    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v2

    long-to-double v2, v2

    .line 103
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultRuleSet()Landroid/icu/text/NFRuleSet;

    move-result-object v4

    move-object v0, v6

    move v1, p0

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/NumeratorSubstitution;-><init>(IDLandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v6

    .line 107
    :cond_6
    new-instance v0, Landroid/icu/text/MultiplierSubstitution;

    move-object v2, p1

    invoke-direct {v0, p0, p1, v4, v5}, Landroid/icu/text/MultiplierSubstitution;-><init>(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    .line 97
    :cond_7
    :goto_1
    new-instance v0, Landroid/icu/text/IntegralPartSubstitution;

    invoke-direct {v0, p0, v4, v5}, Landroid/icu/text/IntegralPartSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    .line 89
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "<< not allowed in negative-number rule"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract calcUpperBound(D)D
.end method

.method public abstract composeRuleValue(DD)D
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 1

    .line 438
    invoke-virtual {p0, p5, p6}, Landroid/icu/text/NFSubstitution;->calcUpperBound(D)D

    move-result-wide p5

    .line 446
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0, p1, p2, p5, p6}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    move-result-object p5

    if-eqz p7, :cond_1

    .line 448
    iget-object p6, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {p6}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    move-result p6

    if-nez p6, :cond_1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p6

    if-nez p6, :cond_1

    .line 449
    iget-object p5, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget-object p5, p5, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {p5}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object p5

    invoke-virtual {p5, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p5

    goto :goto_0

    .line 454
    :cond_0
    iget-object p5, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p5, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p5

    .line 461
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-eqz p1, :cond_3

    .line 462
    invoke-virtual {p5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 486
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/text/NFSubstitution;->composeRuleValue(DD)D

    move-result-wide p0

    double-to-long p2, p0

    long-to-double p4, p2

    cmpl-double p4, p0, p4

    if-nez p4, :cond_2

    .line 488
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 490
    :cond_2
    new-instance p2, Ljava/lang/Double;

    invoke-direct {p2, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    :cond_3
    return-object p5
.end method

.method public doSubstitution(DLjava/lang/StringBuilder;II)V
    .locals 9

    .line 347
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFSubstitution;->transformNumber(D)D

    move-result-wide v1

    .line 349
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 351
    iget-object p1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p1, v3, v4}, Landroid/icu/text/NFRuleSet;->findRule(D)Landroid/icu/text/NFRule;

    move-result-object v0

    .line 352
    iget p0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v4, p4, p0

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuilder;II)V

    return-void

    .line 358
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    cmpl-double p1, v1, p1

    if-nez p1, :cond_1

    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v3, :cond_1

    double-to-long v4, v1

    .line 359
    iget p0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v7, p4, p0

    move-object v6, p3

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    goto :goto_0

    .line 365
    :cond_1
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_2

    .line 366
    iget p0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v4, p4, p0

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuilder;II)V

    goto :goto_0

    .line 368
    :cond_2
    iget p1, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int/2addr p4, p1

    iget-object p0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0, v1, v2}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public doSubstitution(JLjava/lang/StringBuilder;II)V
    .locals 7

    .line 300
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFSubstitution;->transformNumber(J)J

    move-result-wide v2

    .line 306
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget p0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v5, p4, p0

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    goto :goto_0

    :cond_0
    const-wide v0, 0x1fffffffffffffL

    cmp-long p5, p1, v0

    if-gtz p5, :cond_2

    long-to-double p1, p1

    .line 313
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFSubstitution;->transformNumber(D)D

    move-result-wide p1

    .line 314
    iget-object p5, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p5}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    move-result p5

    if-nez p5, :cond_1

    .line 315
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    .line 318
    :cond_1
    iget p5, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int/2addr p4, p5

    iget-object p0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFSubstitution;->transformNumber(J)J

    move-result-wide p1

    .line 329
    iget p5, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int/2addr p4, p5

    iget-object p0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
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

    .line 248
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 249
    check-cast p1, Landroid/icu/text/NFSubstitution;

    .line 251
    iget v2, p0, Landroid/icu/text/NFSubstitution;->pos:I

    iget v3, p1, Landroid/icu/text/NFSubstitution;->pos:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-nez v2, :cond_4

    :cond_2
    iget-object p0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    if-nez p0, :cond_3

    iget-object p0, p1, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    if-nez p0, :cond_4

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    .line 253
    invoke-virtual {p0, p1}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :goto_0
    move v0, v1

    :cond_4
    return v0
.end method

.method public final getPos()I
    .locals 0

    .line 531
    iget p0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public isModulusSubstitution()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 0

    .line 553
    iget-object p0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    if-eqz p0, :cond_0

    .line 554
    invoke-virtual {p0, p1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    :cond_0
    return-void
.end method

.method public setDivisor(IS)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 276
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {v1}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method abstract tokenChar()C
.end method

.method public abstract transformNumber(D)D
.end method

.method public abstract transformNumber(J)J
.end method
