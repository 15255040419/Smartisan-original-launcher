.class Landroid/icu/text/PluralRules$RangeConstraint;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Landroid/icu/text/PluralRules$Constraint;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeConstraint"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final inRange:Z

.field private final integersOnly:Z

.field private final lowerBound:D

.field private final mod:I

.field private final operand:Landroid/icu/text/PluralRules$Operand;

.field private final range_list:[J

.field private final upperBound:D


# direct methods
.method constructor <init>(IZLandroid/icu/text/PluralRules$Operand;ZDD[J)V
    .locals 0

    .line 1611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1612
    iput p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    .line 1613
    iput-boolean p2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    .line 1614
    iput-boolean p4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    .line 1615
    iput-wide p5, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    .line 1616
    iput-wide p7, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    .line 1617
    iput-object p9, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    .line 1618
    iput-object p3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    return-void
.end method


# virtual methods
.method public isFulfilled(Landroid/icu/text/PluralRules$IFixedDecimal;)Z
    .locals 8

    .line 1623
    iget-object v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    invoke-interface {p1, v0}, Landroid/icu/text/PluralRules$IFixedDecimal;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v0

    .line 1624
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    double-to-long v6, v0

    long-to-double v6, v6

    sub-double v6, v0, v6

    cmpl-double v2, v6, v3

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v6, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    if-ne v2, v6, :cond_2

    sget-object v2, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    .line 1625
    invoke-interface {p1, v2}, Landroid/icu/text/PluralRules$IFixedDecimal;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v6

    cmpl-double p1, v6, v3

    if-eqz p1, :cond_2

    .line 1626
    :cond_1
    iget-boolean p0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    xor-int/2addr p0, v5

    return p0

    .line 1628
    :cond_2
    iget p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    if-eqz p1, :cond_3

    int-to-double v2, p1

    rem-double/2addr v0, v2

    .line 1631
    :cond_3
    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    cmpl-double p1, v0, v2

    const/4 v2, 0x0

    if-ltz p1, :cond_4

    iget-wide v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpg-double p1, v0, v3

    if-gtz p1, :cond_4

    move p1, v5

    goto :goto_0

    :cond_4
    move p1, v2

    :goto_0
    if-eqz p1, :cond_6

    .line 1632
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    if-eqz v3, :cond_6

    move p1, v2

    move v3, p1

    :goto_1
    if-nez p1, :cond_6

    .line 1634
    iget-object v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    array-length v6, v4

    if-ge v3, v6, :cond_6

    .line 1635
    aget-wide v6, v4, v3

    long-to-double v6, v6

    cmpl-double p1, v0, v6

    if-ltz p1, :cond_5

    add-int/lit8 p1, v3, 0x1

    aget-wide v6, v4, p1

    long-to-double v6, v6

    cmpg-double p1, v0, v6

    if-gtz p1, :cond_5

    move p1, v5

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1638
    :cond_6
    iget-boolean p0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-ne p0, p1, :cond_7

    move v2, v5

    :cond_7
    return v2
.end method

.method public isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 7

    .line 1643
    iget-wide v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpl-double v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const-wide/16 v5, 0x0

    cmpl-double v0, v0, v5

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 1644
    :goto_0
    iget-object v1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v2, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v2, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v2, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v2, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eq v1, v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    .line 1647
    :goto_1
    sget-object v1, Landroid/icu/text/PluralRules$2;->$SwitchMap$android$icu$text$PluralRules$SampleType:[I

    invoke-virtual {p1}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v3, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    return v4

    :cond_3
    if-eqz v0, :cond_4

    .line 1655
    iget-object p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v0, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v0, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    if-ne p1, v0, :cond_6

    :cond_4
    iget-boolean p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    if-nez p1, :cond_5

    iget-wide v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v5, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpl-double p1, v0, v5

    if-nez p1, :cond_6

    :cond_5
    iget p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    if-nez p1, :cond_6

    iget-boolean p0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    return v3

    :cond_7
    if-nez v0, :cond_a

    .line 1649
    iget-object p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v0, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v0, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v0, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    if-ne p1, v0, :cond_9

    :cond_8
    iget p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    if-nez p1, :cond_9

    iget-boolean p0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    move v3, v4

    :cond_a
    :goto_3
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1665
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1666
    iget-object v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1667
    iget v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    if-eqz v0, :cond_0

    const-string v0, " % "

    .line 1668
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1670
    :cond_0
    iget-wide v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpl-double v0, v0, v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v8

    :goto_0
    const-string v1, " = "

    const-string v2, " != "

    if-nez v0, :cond_3

    .line 1672
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_1

    .line 1673
    :cond_3
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1674
    :cond_4
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v0, :cond_5

    const-string v1, " within "

    goto :goto_1

    :cond_5
    const-string v1, " not within "

    .line 1671
    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1676
    iget-object v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    if-eqz v0, :cond_7

    move v9, v8

    .line 1677
    :goto_2
    iget-object v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    array-length v1, v0

    if-ge v9, v1, :cond_8

    .line 1678
    aget-wide v1, v0, v9

    long-to-double v1, v1

    add-int/lit8 v3, v9, 0x1

    aget-wide v3, v0, v3

    long-to-double v3, v3

    if-eqz v9, :cond_6

    move v5, v7

    goto :goto_3

    :cond_6
    move v5, v8

    :goto_3
    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroid/icu/text/PluralRules;->access$500(Ljava/lang/StringBuilder;DDZ)V

    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    .line 1681
    :cond_7
    iget-wide v1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroid/icu/text/PluralRules;->access$500(Ljava/lang/StringBuilder;DDZ)V

    .line 1683
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
