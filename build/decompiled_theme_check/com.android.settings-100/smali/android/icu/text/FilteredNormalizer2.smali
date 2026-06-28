.class public Landroid/icu/text/FilteredNormalizer2;
.super Landroid/icu/text/Normalizer2;
.source "FilteredNormalizer2.java"


# instance fields
.field private norm2:Landroid/icu/text/Normalizer2;

.field private set:Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor <init>(Landroid/icu/text/Normalizer2;Landroid/icu/text/UnicodeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/icu/text/Normalizer2;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    .line 39
    iput-object p2, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    return-void
.end method

.method private normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;
    .locals 5

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 219
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 220
    iget-object v2, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, p1, v1, p3}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    sub-int v3, v2, v1

    .line 222
    sget-object v4, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v4, :cond_1

    if-eqz v3, :cond_0

    .line 224
    invoke-interface {p2, p1, v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 226
    :cond_0
    sget-object p3, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 231
    iget-object p3, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 233
    :cond_2
    sget-object p3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    return-object p2

    :catch_0
    move-exception p0

    .line 238
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .locals 6

    if-eq p1, p2, :cond_8

    .line 248
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 250
    invoke-virtual {p0, p2, p1}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0

    .line 252
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p1

    .line 256
    :cond_1
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 258
    invoke-interface {p2, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 259
    iget-object v2, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    const v4, 0x7fffffff

    invoke-virtual {v2, p1, v4, v3}, Landroid/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    if-nez v2, :cond_3

    if-eqz p3, :cond_2

    .line 262
    iget-object v2, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v2, p1, v1}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 264
    :cond_2
    iget-object v2, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v2, p1, v1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 267
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_4

    .line 270
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v3, v1}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    :cond_4
    iget-object v5, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v3, v1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 274
    :goto_0
    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 277
    :cond_5
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 278
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p3, :cond_6

    .line 280
    sget-object p3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-direct {p0, p2, p1, p3}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    goto :goto_2

    .line 282
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    return-object p1

    .line 246
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public composePair(II)I
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Normalizer2;->composePair(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCombiningClass(I)I
    .locals 1

    .line 110
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDecomposition(I)Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRawDecomposition(I)Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->getRawDecomposition(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hasBoundaryAfter(I)Z
    .locals 1

    .line 196
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->hasBoundaryAfter(I)Z

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

.method public hasBoundaryBefore(I)Z
    .locals 1

    .line 188
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

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

.method public isInert(I)Z
    .locals 1

    .line 204
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->isInert(I)Z

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

.method public isNormalized(Ljava/lang/CharSequence;)Z
    .locals 5

    .line 118
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .line 119
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 120
    iget-object v3, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, p1, v0, v2}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v3

    .line 121
    sget-object v4, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne v2, v4, :cond_0

    .line 122
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    :goto_1
    move-object v2, v0

    goto :goto_2

    .line 124
    :cond_0
    iget-object v2, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 127
    :cond_1
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_1

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 1

    if-eq p2, p1, :cond_0

    .line 62
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    if-eq p2, p1, :cond_0

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 51
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/UnicodeSet$SpanCondition;)Ljava/lang/Appendable;

    return-object p2

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/FilteredNormalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 5

    .line 139
    sget-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    .line 140
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v2, 0x0

    .line 141
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 142
    iget-object v3, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, p1, v2, v1}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v3

    .line 143
    sget-object v4, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne v1, v4, :cond_0

    .line 144
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_1

    .line 146
    :cond_0
    iget-object v1, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    .line 147
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v1

    .line 148
    sget-object v2, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-ne v1, v2, :cond_1

    return-object v1

    .line 150
    :cond_1
    sget-object v2, Landroid/icu/text/Normalizer;->MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

    if-ne v1, v2, :cond_2

    move-object v0, v1

    .line 153
    :cond_2
    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public spanQuickCheckYes(Ljava/lang/CharSequence;)I
    .locals 4

    .line 164
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v1, 0x0

    .line 165
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 166
    iget-object v2, p0, Landroid/icu/text/FilteredNormalizer2;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, p1, v1, v0}, Landroid/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    .line 167
    sget-object v3, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-ne v0, v3, :cond_0

    .line 168
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    goto :goto_1

    .line 170
    :cond_0
    iget-object v0, p0, Landroid/icu/text/FilteredNormalizer2;->norm2:Landroid/icu/text/Normalizer2;

    .line 172
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/2addr v1, v0

    if-ge v1, v2, :cond_1

    return v1

    .line 176
    :cond_1
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    :goto_1
    move v1, v2

    goto :goto_0

    .line 180
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method
