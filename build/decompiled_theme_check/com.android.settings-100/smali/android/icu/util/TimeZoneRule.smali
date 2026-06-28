.class public abstract Landroid/icu/util/TimeZoneRule;
.super Ljava/lang/Object;
.source "TimeZoneRule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5875820a58321ca4L


# instance fields
.field private final dstSavings:I

.field private final name:Ljava/lang/String;

.field private final rawOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/icu/util/TimeZoneRule;->name:Ljava/lang/String;

    .line 44
    iput p2, p0, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    .line 45
    iput p3, p0, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    return-void
.end method


# virtual methods
.method public getDSTSavings()I
    .locals 0

    .line 73
    iget p0, p0, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    return p0
.end method

.method public abstract getFinalStart(II)Ljava/util/Date;
.end method

.method public abstract getFirstStart(II)Ljava/util/Date;
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Landroid/icu/util/TimeZoneRule;->name:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getNextStart(JIIZ)Ljava/util/Date;
.end method

.method public abstract getPreviousStart(JIIZ)Ljava/util/Date;
.end method

.method public getRawOffset()I
    .locals 0

    .line 63
    iget p0, p0, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    return p0
.end method

.method public isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .locals 2

    .line 85
    iget v0, p0, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    iget v1, p1, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    iget p1, p1, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract isTransitionRule()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/util/TimeZoneRule;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", stdOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", dstSaving="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
