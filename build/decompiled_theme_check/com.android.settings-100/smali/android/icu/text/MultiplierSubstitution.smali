.class Landroid/icu/text/MultiplierSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field divisor:J


# direct methods
.method constructor <init>(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 2

    .line 687
    invoke-direct {p0, p1, p3, p4}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Landroid/icu/text/NFRule;->getDivisor()J

    move-result-wide p2

    iput-wide p2, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    .line 694
    iget-wide p2, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-eqz p0, :cond_0

    return-void

    .line 695
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Substitution with divisor 0 "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-virtual {p4, p3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " | "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {p4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 0

    .line 785
    iget-wide p0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    long-to-double p0, p0

    return-wide p0
.end method

.method public composeRuleValue(DD)D
    .locals 0

    .line 775
    iget-wide p3, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    long-to-double p3, p3

    mul-double/2addr p1, p3

    return-wide p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 725
    invoke-super {p0, p1}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    check-cast p1, Landroid/icu/text/MultiplierSubstitution;

    iget-wide p0, p1, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setDivisor(IS)V
    .locals 2

    int-to-long v0, p1

    .line 707
    invoke-static {v0, v1, p2}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    .line 709
    iget-wide p0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    return-void

    .line 710
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Substitution with divisor 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method tokenChar()C
    .locals 0

    const/16 p0, 0x3c

    return p0
.end method

.method public transformNumber(D)D
    .locals 2

    .line 753
    iget-object v0, p0, Landroid/icu/text/MultiplierSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-nez v0, :cond_0

    .line 754
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    long-to-double v0, v0

    div-double/2addr p1, v0

    return-wide p1

    .line 756
    :cond_0
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    long-to-double v0, v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public transformNumber(J)J
    .locals 2

    .line 739
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    div-long/2addr p1, v0

    long-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method
