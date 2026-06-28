.class public abstract Landroid/icu/text/Normalizer2;
.super Ljava/lang/Object;
.source "Normalizer2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Normalizer2$Mode;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/io/InputStream;Ljava/lang/String;Landroid/icu/text/Normalizer2$Mode;)Landroid/icu/text/Normalizer2;
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 186
    :try_start_0
    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 188
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    move-object p0, v0

    .line 191
    :goto_0
    invoke-static {p0, p1}, Landroid/icu/impl/Norm2AllModes;->getInstance(Ljava/nio/ByteBuffer;Ljava/lang/String;)Landroid/icu/impl/Norm2AllModes;

    move-result-object p0

    .line 192
    sget-object p1, Landroid/icu/text/Normalizer2$1;->$SwitchMap$android$icu$text$Normalizer2$Mode:[I

    invoke-virtual {p2}, Landroid/icu/text/Normalizer2$Mode;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    return-object v0

    .line 196
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes;->fcc:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object p0

    .line 195
    :cond_2
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes;->fcd:Landroid/icu/impl/Norm2AllModes$FCDNormalizer2;

    return-object p0

    .line 194
    :cond_3
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    return-object p0

    .line 193
    :cond_4
    iget-object p0, p0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object p0
.end method

.method public static getNFCInstance()Landroid/icu/text/Normalizer2;
    .locals 1

    .line 117
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object v0
.end method

.method public static getNFDInstance()Landroid/icu/text/Normalizer2;
    .locals 1

    .line 127
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    return-object v0
.end method

.method public static getNFKCCasefoldInstance()Landroid/icu/text/Normalizer2;
    .locals 1

    .line 157
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKC_CFInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object v0
.end method

.method public static getNFKCInstance()Landroid/icu/text/Normalizer2;
    .locals 1

    .line 137
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->comp:Landroid/icu/impl/Norm2AllModes$ComposeNormalizer2;

    return-object v0
.end method

.method public static getNFKDInstance()Landroid/icu/text/Normalizer2;
    .locals 1

    .line 147
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFKCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Landroid/icu/impl/Norm2AllModes;->decomp:Landroid/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    return-object v0
.end method


# virtual methods
.method public abstract append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
.end method

.method public composePair(II)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getCombiningClass(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getDecomposition(I)Ljava/lang/String;
.end method

.method public getRawDecomposition(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract hasBoundaryAfter(I)Z
.end method

.method public abstract hasBoundaryBefore(I)Z
.end method

.method public abstract isInert(I)Z
.end method

.method public abstract isNormalized(Ljava/lang/CharSequence;)Z
.end method

.method public abstract normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
.end method

.method public normalize(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 207
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v0

    .line 211
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 212
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 216
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 219
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
.end method

.method public abstract normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
.end method

.method public abstract quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
.end method

.method public abstract spanQuickCheckYes(Ljava/lang/CharSequence;)I
.end method
