.class Landroid/icu/text/ModulusSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field divisor:J

.field private final ruleToUse:Landroid/icu/text/NFRule;


# direct methods
.method constructor <init>(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 4

    .line 849
    invoke-direct {p0, p1, p4, p5}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p2}, Landroid/icu/text/NFRule;->getDivisor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    .line 856
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    const-string p1, ">>>"

    .line 866
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 867
    iput-object p3, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 869
    iput-object p1, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    :goto_0
    return-void

    .line 857
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Substitution with bad divisor ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {p5, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-virtual {p5, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 0

    .line 1050
    iget-wide p0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    long-to-double p0, p0

    return-wide p0
.end method

.method public composeRuleValue(DD)D
    .locals 2

    .line 1040
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    long-to-double v0, v0

    rem-double v0, p3, v0

    sub-double/2addr p3, v0

    add-double/2addr p3, p1

    return-wide p3
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 6

    .line 1002
    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    if-nez v0, :cond_0

    .line 1003
    invoke-super/range {p0 .. p7}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p5

    .line 1009
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    move-result-object p1

    .line 1011
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    if-eqz p2, :cond_2

    .line 1012
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    .line 1014
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/text/ModulusSubstitution;->composeRuleValue(DD)D

    move-result-wide p0

    double-to-long p2, p0

    long-to-double p4, p2

    cmpl-double p4, p0, p4

    if-nez p4, :cond_1

    .line 1016
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1018
    :cond_1
    new-instance p2, Ljava/lang/Double;

    invoke-direct {p2, p0, p1}, Ljava/lang/Double;-><init>(D)V

    return-object p2

    :cond_2
    return-object p1
.end method

.method public doSubstitution(DLjava/lang/StringBuilder;II)V
    .locals 7

    .line 950
    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    if-nez v0, :cond_0

    .line 951
    invoke-super/range {p0 .. p5}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    goto :goto_0

    .line 956
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/ModulusSubstitution;->transformNumber(D)D

    move-result-wide v2

    .line 958
    iget-object v1, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    iget p0, p0, Landroid/icu/text/ModulusSubstitution;->pos:I

    add-int v5, p4, p0

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuilder;II)V

    :goto_0
    return-void
.end method

.method public doSubstitution(JLjava/lang/StringBuilder;II)V
    .locals 7

    .line 926
    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    if-nez v0, :cond_0

    .line 927
    invoke-super/range {p0 .. p5}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuilder;II)V

    goto :goto_0

    .line 932
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/ModulusSubstitution;->transformNumber(J)J

    move-result-wide v2

    .line 933
    iget-object v1, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    iget p0, p0, Landroid/icu/text/ModulusSubstitution;->pos:I

    add-int v5, p4, p0

    move-object v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(JLjava/lang/StringBuilder;II)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 900
    invoke-super {p0, p1}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 901
    check-cast p1, Landroid/icu/text/ModulusSubstitution;

    .line 903
    iget-wide v2, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    iget-wide p0, p1, Landroid/icu/text/ModulusSubstitution;->divisor:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isModulusSubstitution()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setDivisor(IS)V
    .locals 2

    int-to-long v0, p1

    .line 881
    invoke-static {v0, v1, p2}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    .line 883
    iget-wide p0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    return-void

    .line 884
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Substitution with bad divisor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method tokenChar()C
    .locals 0

    const/16 p0, 0x3e

    return p0
.end method

.method public transformNumber(D)D
    .locals 2

    .line 981
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    long-to-double v0, v0

    rem-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public transformNumber(J)J
    .locals 2

    .line 970
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    rem-long/2addr p1, v0

    return-wide p1
.end method
