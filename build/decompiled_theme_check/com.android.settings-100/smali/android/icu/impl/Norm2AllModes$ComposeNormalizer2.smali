.class public final Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;
.super Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComposeNormalizer2"
.end annotation


# instance fields
.field private final onlyContiguous:Z


# direct methods
.method public constructor <init>(Landroid/icu/impl/Normalizer2Impl;Z)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;-><init>(Landroid/icu/impl/Normalizer2Impl;)V

    .line 202
    iput-boolean p2, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    return-void
.end method


# virtual methods
.method public getQuickCheck(I)I
    .locals 1

    .line 239
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/icu/impl/Normalizer2Impl;->getCompQuickCheck(I)I

    move-result p0

    return p0
.end method

.method public hasBoundaryAfter(I)Z
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-boolean p0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    invoke-virtual {v0, p1, p0}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryAfter(IZ)Z

    move-result p0

    return p0
.end method

.method public hasBoundaryBefore(I)Z
    .locals 0

    .line 242
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->hasCompBoundaryBefore(I)Z

    move-result p0

    return p0
.end method

.method public isInert(I)Z
    .locals 1

    .line 249
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-boolean p0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    invoke-virtual {v0, p1, p0}, Landroid/icu/impl/Normalizer2Impl;->isCompInert(IZ)Z

    move-result p0

    return p0
.end method

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 7

    .line 218
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    new-instance v6, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;

    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    invoke-direct {v6, p0, v1, v2}, Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;-><init>(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/Appendable;I)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    move-result p0

    return p0
.end method

.method protected normalize(Ljava/lang/CharSequence;Landroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 7

    .line 207
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/icu/impl/Normalizer2Impl;->compose(Ljava/lang/CharSequence;IIZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)Z

    return-void
.end method

.method protected normalizeAndAppend(Ljava/lang/CharSequence;ZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    iget-boolean p0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    invoke-virtual {v0, p1, p2, p0, p3}, Landroid/icu/impl/Normalizer2Impl;->composeAndAppend(Ljava/lang/CharSequence;ZZLandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)V

    return-void
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 6

    .line 224
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 226
    sget-object p0, Landroid/icu/text/Normalizer;->MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-object p0

    :cond_0
    ushr-int/lit8 p0, p0, 0x1

    .line 227
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p0, p1, :cond_1

    .line 228
    sget-object p0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-object p0

    .line 230
    :cond_1
    sget-object p0, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-object p0
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 6

    .line 235
    iget-object v0, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->impl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-boolean v4, p0, Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;->onlyContiguous:Z

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->composeQuickCheck(Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x1

    return p0
.end method
