.class public final Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;
.super Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FCDNormalizer2"
.end annotation


# direct methods
.method public constructor <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    return-void
.end method


# virtual methods
.method public getQuickCheck(I)I
    .locals 1

    .line 275
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/icu/impl/Normalizer2Impl;->isDecompYes(I)Z

    move-result p0

    return p0
.end method

.method public hasBoundaryAfter(I)Z
    .locals 0

    .line 280
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasFCDBoundaryAfter(I)Z

    move-result p0

    return p0
.end method

.method public hasBoundaryBefore(I)Z
    .locals 0

    .line 278
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasFCDBoundaryBefore(I)Z

    move-result p0

    return p0
.end method

.method public isInert(I)Z
    .locals 0

    .line 282
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->isFCDInert(I)Z

    move-result p0

    return p0
.end method

.method protected normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 2

    .line 262
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    return-void
.end method

.method protected normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 0

    .line 267
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/Normalizer2Impl;->makeFCDAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    return-void
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 3

    .line 271
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/icu/impl/Normalizer2Impl;->makeFCD(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result p0

    return p0
.end method
