.class public final Landroid/icu/impl/coll/FCDUTF16CollationIterator;
.super Landroid/icu/impl/coll/UTF16CollationIterator;
.source "FCDUTF16CollationIterator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final rawStart:I


# instance fields
.field private checkDir:I

.field private final nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private normalized:Ljava/lang/StringBuilder;

.field private rawLimit:I

.field private rawSeq:Ljava/lang/CharSequence;

.field private segmentLimit:I

.field private segmentStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;)V

    .line 29
    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iput-object p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 34
    iput-object p3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    .line 35
    iput p4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    .line 36
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    iput p2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    .line 37
    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iput-object p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    const/4 p1, 0x1

    .line 38
    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    return-void
.end method

.method private nextSegment()V
    .locals 7

    .line 263
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    const/4 v1, 0x0

    move v2, v1

    .line 268
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 269
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v4, v0

    .line 270
    iget-object v5, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v5, v3}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v3

    shr-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_0

    .line 272
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    if-eq v0, v6, :cond_0

    .line 274
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    goto :goto_4

    :cond_0
    if-eqz v5, :cond_4

    if-gt v2, v5, :cond_1

    .line 277
    invoke-static {v3}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    :cond_1
    :goto_1
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    if-ne v4, v0, :cond_2

    goto :goto_2

    .line 282
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-static {v0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 283
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v2, v4

    .line 284
    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v3, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v0

    const/16 v3, 0xff

    if-gt v0, v3, :cond_3

    .line 285
    :goto_2
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-direct {p0, v0, v4}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalize(II)V

    .line 286
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    goto :goto_4

    :cond_3
    move v4, v2

    goto :goto_1

    :cond_4
    and-int/lit16 v2, v3, 0xff

    .line 290
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    if-eq v4, v0, :cond_6

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_0

    .line 292
    :cond_6
    :goto_3
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    .line 297
    :goto_4
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    return-void
.end method

.method private normalize(II)V
    .locals 7

    .line 378
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    .line 382
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    sub-int v6, p2, p1

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    .line 385
    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    .line 386
    iput p2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    .line 387
    iget-object p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    iput-object p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 388
    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 389
    iget p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iget-object p2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    return-void
.end method

.method private previousSegment()V
    .locals 7

    .line 339
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    const/4 v1, 0x0

    move v2, v1

    .line 344
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-static {v3, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 345
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    sub-int v4, v0, v4

    .line 346
    iget-object v5, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v5, v3}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v3

    and-int/lit16 v5, v3, 0xff

    if-nez v5, :cond_0

    .line 348
    iget v6, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    if-eq v0, v6, :cond_0

    .line 350
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    goto :goto_4

    :cond_0
    if-eqz v5, :cond_6

    if-eqz v2, :cond_1

    if-gt v5, v2, :cond_2

    .line 354
    :cond_1
    invoke-static {v3}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    :goto_1
    const/16 v0, 0xff

    if-le v3, v0, :cond_5

    if-nez v4, :cond_3

    goto :goto_2

    .line 359
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    invoke-static {v0, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 360
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int v2, v4, v2

    .line 361
    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v3, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    goto :goto_1

    .line 362
    :cond_5
    :goto_2
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-direct {p0, v4, v0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->normalize(II)V

    .line 363
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    goto :goto_4

    :cond_6
    shr-int/lit8 v2, v3, 0x8

    if-eqz v4, :cond_8

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move v0, v4

    goto :goto_0

    .line 369
    :cond_8
    :goto_3
    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v4, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 374
    :goto_4
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    return-void
.end method

.method private switchToBackward()V
    .locals 4

    .line 307
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 309
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    .line 310
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    if-ne v0, v3, :cond_0

    .line 311
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 312
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    goto :goto_1

    .line 314
    :cond_0
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    goto :goto_1

    .line 318
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 323
    :cond_2
    iput-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    .line 324
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 326
    :goto_0
    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 327
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    :goto_1
    return-void
.end method

.method private switchToForward()V
    .locals 3

    .line 227
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 229
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 230
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    if-ne v0, v2, :cond_0

    .line 231
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    .line 232
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 234
    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    goto :goto_1

    .line 238
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 243
    :cond_2
    iput-object v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    .line 244
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 250
    :goto_0
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    .line 251
    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    :goto_1
    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->previousCodePoint()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 44
    instance-of v0, p1, Landroid/icu/impl/coll/CollationIterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 45
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationIterator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, p1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    if-nez v0, :cond_0

    goto :goto_3

    .line 50
    :cond_0
    check-cast p1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    .line 52
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    iget v2, p1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 55
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iget-object v3, p1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v3, v4, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-eq v0, v3, :cond_4

    return v1

    .line 58
    :cond_4
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 62
    :cond_5
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    sub-int/2addr v0, v1

    iget v3, p1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget p0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    sub-int/2addr v0, p0

    iget p0, p1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget p1, p1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    sub-int/2addr p0, p1

    if-ne v0, p0, :cond_6

    move v1, v2

    :cond_6
    return v1

    .line 59
    :cond_7
    :goto_2
    iget p0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    sub-int/2addr p0, v1

    iget p1, p1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    sub-int/2addr p1, v1

    if-ne p0, p1, :cond_8

    move v1, v2

    :cond_8
    :goto_3
    return v1
.end method

.method protected forwardNumCodePoints(I)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCodePoint()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getOffset()I
    .locals 2

    .line 84
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-ne v0, v1, :cond_1

    .line 87
    iget p0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    :goto_0
    add-int/lit8 p0, p0, 0x0

    return p0

    .line 89
    :cond_1
    iget p0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentLimit:I

    goto :goto_0

    .line 85
    :cond_2
    :goto_1
    iget p0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    goto :goto_0
.end method

.method protected handleNextCE32()J
    .locals 3

    .line 176
    :goto_0
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-lez v0, :cond_2

    .line 177
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-ne v0, v1, :cond_0

    const-wide v0, -0xffffff40L

    return-wide v0

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 181
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 183
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 185
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextSegment()V

    .line 186
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    .line 190
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v0, v1, :cond_4

    .line 191
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 197
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v0

    return-wide v0

    .line 194
    :cond_4
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToForward()V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public nextCodePoint()I
    .locals 3

    .line 106
    :goto_0
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-lez v0, :cond_2

    .line 107
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 111
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 113
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 115
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextSegment()V

    .line 116
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_5

    .line 120
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v0, v1, :cond_5

    .line 121
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 128
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 129
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_4
    return v0

    .line 124
    :cond_5
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToForward()V

    goto/16 :goto_0
.end method

.method public previousCodePoint()I
    .locals 3

    .line 141
    :goto_0
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    if-gez v0, :cond_2

    .line 142
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 146
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    .line 148
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 150
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->previousSegment()V

    .line 151
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_5

    .line 155
    iget v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-eq v0, v1, :cond_5

    .line 156
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 163
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    .line 164
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    iget v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    .line 166
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_4
    return v0

    .line 159
    :cond_5
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->switchToBackward()V

    goto/16 :goto_0
.end method

.method public resetToOffset(I)V
    .locals 1

    .line 75
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->reset()V

    .line 76
    iget-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->seq:Ljava/lang/CharSequence;

    add-int/lit8 p1, p1, 0x0

    .line 77
    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->pos:I

    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->start:I

    .line 78
    iget p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    const/4 p1, 0x1

    .line 79
    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    return-void
.end method

.method public setText(ZLjava/lang/CharSequence;I)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 96
    iput-object p2, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawSeq:Ljava/lang/CharSequence;

    .line 97
    iput p3, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->segmentStart:I

    .line 98
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->limit:I

    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->rawLimit:I

    const/4 p1, 0x1

    .line 99
    iput p1, p0, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->checkDir:I

    return-void
.end method
