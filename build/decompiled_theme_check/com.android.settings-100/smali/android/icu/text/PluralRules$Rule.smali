.class Landroid/icu/text/PluralRules$Rule;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final constraint:Landroid/icu/text/PluralRules$Constraint;

.field private final decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

.field private final integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

.field private final keyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V
    .locals 0

    .line 1783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1784
    iput-object p1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    .line 1785
    iput-object p2, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    .line 1786
    iput-object p3, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    .line 1787
    iput-object p4, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    return-void
.end method

.method static synthetic access$300(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 0

    .line 1774
    iget-object p0, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    return-object p0
.end method

.method static synthetic access$400(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 0

    .line 1774
    iget-object p0, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    return-object p0
.end method


# virtual methods
.method public and(Landroid/icu/text/PluralRules$Constraint;)Landroid/icu/text/PluralRules$Rule;
    .locals 4

    .line 1792
    new-instance v0, Landroid/icu/text/PluralRules$Rule;

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    new-instance v2, Landroid/icu/text/PluralRules$AndConstraint;

    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-direct {v2, v3, p1}, Landroid/icu/text/PluralRules$AndConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    iget-object p1, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    iget-object p0, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    invoke-direct {v0, v1, v2, p1, p0}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V

    return-object v0
.end method

.method public appliesTo(Landroid/icu/text/PluralRules$IFixedDecimal;)Z
    .locals 0

    .line 1805
    iget-object p0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {p0, p1}, Landroid/icu/text/PluralRules$Constraint;->isFulfilled(Landroid/icu/text/PluralRules$IFixedDecimal;)Z

    move-result p0

    return p0
.end method

.method public getConstraint()Ljava/lang/String;
    .locals 0

    .line 1830
    iget-object p0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 0

    .line 1801
    iget-object p0, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1826
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object p0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 0

    .line 1809
    iget-object p0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {p0, p1}, Landroid/icu/text/PluralRules$Constraint;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    move-result p0

    return p0
.end method

.method public or(Landroid/icu/text/PluralRules$Constraint;)Landroid/icu/text/PluralRules$Rule;
    .locals 4

    .line 1797
    new-instance v0, Landroid/icu/text/PluralRules$Rule;

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    new-instance v2, Landroid/icu/text/PluralRules$OrConstraint;

    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-direct {v2, v3, p1}, Landroid/icu/text/PluralRules$OrConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    iget-object p1, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    iget-object p0, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    invoke-direct {v0, v1, v2, p1, p0}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    const-string v2, ""

    const-string v3, " "

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    invoke-virtual {v4}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    invoke-virtual {p0}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
