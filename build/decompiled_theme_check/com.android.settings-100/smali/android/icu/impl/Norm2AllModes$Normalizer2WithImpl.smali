.class public abstract Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;
.super Landroid/icu/text/Normalizer2;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Normalizer2WithImpl"
.end annotation


# instance fields
.field public final impl:Landroid/icu/impl/Normalizer2Impl;


# direct methods
.method public constructor <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Landroid/icu/text/Normalizer2;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public composePair(II)I
    .locals 0

    .line 146
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/Normalizer2Impl;->composePair(II)I

    move-result p0

    return p0
.end method

.method public getCombiningClass(I)I
    .locals 0

    .line 151
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getCC(I)I

    move-result p0

    return p0
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getQuickCheck(I)I
.end method

.method public getRawDecomposition(I)Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getRawDecomposition(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 3

    if-eq p2, p1, :cond_0

    .line 106
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 107
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 108
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    .line 109
    invoke-virtual {v0}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;->flush()V

    return-object p2

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    if-eq p2, p1, :cond_0

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 98
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    return-object p2

    .line 95
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method protected abstract normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
.end method

.method protected abstract normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
.end method

.method public normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .locals 4

    if-eq p1, p2, :cond_0

    .line 128
    new-instance v0, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object v1, p0, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v1, p1, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    .line 128
    invoke-virtual {p0, p2, p3, v0}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    return-object p1

    .line 126
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    :goto_0
    return-object p0
.end method
