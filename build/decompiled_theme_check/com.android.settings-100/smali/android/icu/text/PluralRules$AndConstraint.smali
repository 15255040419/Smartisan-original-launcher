.class Landroid/icu/text/PluralRules$AndConstraint;
.super Landroid/icu/text/PluralRules$BinaryConstraint;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndConstraint"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6bc9ed26013a36e3L


# direct methods
.method constructor <init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V
    .locals 0

    .line 1721
    invoke-direct {p0, p1, p2}, Landroid/icu/text/PluralRules$BinaryConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    return-void
.end method


# virtual methods
.method public isFulfilled(Landroid/icu/text/PluralRules$IFixedDecimal;)Z
    .locals 1

    .line 1726
    iget-object v0, p0, Landroid/icu/text/PluralRules$AndConstraint;->a:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isFulfilled(Landroid/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/PluralRules$AndConstraint;->b:Landroid/icu/text/PluralRules$Constraint;

    .line 1727
    invoke-interface {p0, p1}, Landroid/icu/text/PluralRules$Constraint;->isFulfilled(Landroid/icu/text/PluralRules$IFixedDecimal;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 1

    .line 1734
    iget-object v0, p0, Landroid/icu/text/PluralRules$AndConstraint;->a:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/icu/text/PluralRules$AndConstraint;->b:Landroid/icu/text/PluralRules$Constraint;

    .line 1735
    invoke-interface {p0, p1}, Landroid/icu/text/PluralRules$Constraint;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/PluralRules$AndConstraint;->a:Landroid/icu/text/PluralRules$Constraint;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/PluralRules$AndConstraint;->b:Landroid/icu/text/PluralRules$Constraint;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
