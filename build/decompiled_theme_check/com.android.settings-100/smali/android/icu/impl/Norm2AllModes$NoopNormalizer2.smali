.class public final Landroid/icu/impl/Norm2AllModes$NoopNormalizer2;
.super Landroid/icu/text/Normalizer2;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoopNormalizer2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/icu/text/Normalizer2;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 0

    if-eq p1, p2, :cond_0

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p1

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasBoundaryAfter(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hasBoundaryBefore(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isInert(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 0

    if-eq p2, p1, :cond_0

    .line 41
    :try_start_0
    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 43
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    .line 31
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p2

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 0

    if-eq p1, p2, :cond_0

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p1

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 0

    .line 73
    sget-object p0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-object p0
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 0

    .line 75
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method
