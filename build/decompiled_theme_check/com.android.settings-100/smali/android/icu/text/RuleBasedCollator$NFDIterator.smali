.class abstract Landroid/icu/text/RuleBasedCollator$NFDIterator;
.super Ljava/lang/Object;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NFDIterator"
.end annotation


# instance fields
.field private decomp:Ljava/lang/String;

.field private index:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final nextCodePoint()I
    .locals 3

    .line 1473
    iget v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    if-ltz v0, :cond_1

    .line 1474
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 1475
    iput v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    goto :goto_0

    .line 1477
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    iget v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1478
    iget v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    return v0

    .line 1482
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextRawCodePoint()I

    move-result p0

    return p0
.end method

.method final nextDecomposedCodePoint(Landroid/icu/impl/Normalizer2Impl;I)I
    .locals 1

    .line 1491
    iget v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    if-ltz v0, :cond_0

    return p2

    .line 1492
    :cond_0
    invoke-virtual {p1, p2}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    .line 1493
    iget-object p1, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->decomp:Ljava/lang/String;

    if-nez p1, :cond_1

    return p2

    :cond_1
    const/4 p2, 0x0

    .line 1494
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 1495
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    iput p2, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    return p1
.end method

.method protected abstract nextRawCodePoint()I
.end method

.method final reset()V
    .locals 1

    const/4 v0, -0x1

    .line 1464
    iput v0, p0, Landroid/icu/text/RuleBasedCollator$NFDIterator;->index:I

    return-void
.end method
