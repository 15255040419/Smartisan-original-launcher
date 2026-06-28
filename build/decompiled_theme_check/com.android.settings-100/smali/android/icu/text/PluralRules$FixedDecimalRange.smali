.class public Landroid/icu/text/PluralRules$FixedDecimalRange;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedDecimalRange"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final end:Landroid/icu/text/PluralRules$FixedDecimal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final start:Landroid/icu/text/PluralRules$FixedDecimal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/icu/text/PluralRules$FixedDecimal;Landroid/icu/text/PluralRules$FixedDecimal;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    iget v0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v1, p2, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-ne v0, v1, :cond_0

    .line 1082
    iput-object p1, p0, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    .line 1083
    iput-object p2, p0, Landroid/icu/text/PluralRules$FixedDecimalRange;->end:Landroid/icu/text/PluralRules$FixedDecimal;

    return-void

    .line 1080
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ranges must have the same number of visible decimals: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "~"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/text/PluralRules$FixedDecimalRange;->end:Landroid/icu/text/PluralRules$FixedDecimal;

    iget-object v2, p0, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    if-ne v1, v2, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/PluralRules$FixedDecimalRange;->end:Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
