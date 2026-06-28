.class public final Landroid/icu/impl/coll/FCDIterCollationIterator;
.super Landroid/icu/impl/coll/IterCollationIterator;
.source "FCDIterCollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/FCDIterCollationIterator$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private limit:I

.field private final nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field private normalized:Ljava/lang/StringBuilder;

.field private pos:I

.field private s:Ljava/lang/StringBuilder;

.field private start:I

.field private state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/coll/IterCollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLandroid/icu/text/UCharacterIterator;)V

    .line 28
    sget-object p2, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object p2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 29
    iput p4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 30
    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iput-object p1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    return-void
.end method

.method private nextSegment()Z
    .locals 7

    .line 261
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 263
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    move v0, v1

    .line 271
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_2

    goto :goto_3

    .line 273
    :cond_2
    iget-object v4, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v4, v2}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v4

    shr-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_3

    .line 275
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 277
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    goto :goto_3

    .line 280
    :cond_3
    iget-object v6, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_7

    if-gt v0, v5, :cond_4

    .line 281
    invoke-static {v4}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 284
    :cond_4
    :goto_1
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    if-gez v0, :cond_5

    goto :goto_2

    .line 286
    :cond_5
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v2, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v2

    const/16 v4, 0xff

    if-gt v2, v4, :cond_6

    .line 287
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    .line 292
    :goto_2
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalize(Ljava/lang/CharSequence;)V

    .line 293
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 294
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 295
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 296
    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v3

    .line 290
    :cond_6
    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    and-int/lit16 v0, v4, 0xff

    if-nez v0, :cond_1

    .line 305
    :goto_3
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 307
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    .line 308
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return v3
.end method

.method private normalize(Ljava/lang/CharSequence;)V
    .locals 1

    .line 405
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    .line 409
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    iget-object p0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p0}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/Appendable;

    return-void
.end method

.method private previousSegment()Z
    .locals 6

    .line 350
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    .line 352
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 360
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    goto/16 :goto_3

    .line 362
    :cond_2
    iget-object v3, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v3, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v3

    and-int/lit16 v4, v3, 0xff

    if-nez v4, :cond_3

    .line 364
    iget-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 366
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    goto :goto_3

    .line 369
    :cond_3
    iget-object v5, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_9

    if-eqz v1, :cond_4

    if-gt v4, v1, :cond_5

    .line 371
    :cond_4
    invoke-static {v3}, Landroid/icu/impl/coll/CollationFCD;->isFCD16OfTibetanCompositeVowel(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_5
    :goto_1
    const/16 v0, 0xff

    if-le v3, v0, :cond_8

    .line 374
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    if-gez v0, :cond_6

    goto :goto_2

    .line 376
    :cond_6
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {v1, v0}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result v3

    if-nez v3, :cond_7

    .line 378
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    goto :goto_2

    .line 381
    :cond_7
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 383
    :cond_8
    :goto_2
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 384
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalize(Ljava/lang/CharSequence;)V

    .line 385
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 386
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 387
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    .line 388
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v2

    :cond_9
    shr-int/lit8 v1, v3, 0x8

    if-nez v1, :cond_1

    .line 397
    :goto_3
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 399
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->s:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    .line 400
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return v2
.end method

.method private switchToBackward()V
    .locals 3

    .line 319
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 322
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    if-ne v0, v1, :cond_0

    .line 323
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_1

    .line 325
    :cond_0
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_1

    .line 329
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_3

    .line 335
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    .line 337
    :cond_3
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    .line 339
    :goto_0
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    :goto_1
    return-void
.end method

.method private switchToForward()V
    .locals 3

    .line 230
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_1

    .line 232
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 233
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-ne v0, v1, :cond_0

    .line 234
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_1

    .line 236
    :cond_0
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    goto :goto_1

    .line 240
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_START:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_3

    .line 246
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    iget v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/icu/text/UCharacterIterator;->moveIndex(I)I

    .line 248
    :cond_3
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 250
    :goto_0
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    :goto_1
    return-void
.end method


# virtual methods
.method protected backwardNumCodePoints(I)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->previousCodePoint()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected forwardNumCodePoints(I)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    .line 209
    invoke-virtual {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->nextCodePoint()I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getOffset()I
    .locals 2

    .line 42
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 43
    iget-object p0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result p0

    return p0

    .line 44
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_1

    .line 45
    iget p0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return p0

    .line 46
    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    if-nez v0, :cond_2

    .line 47
    iget p0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    return p0

    .line 49
    :cond_2
    iget p0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    return p0
.end method

.method protected handleGetTrailSurrogate()C
    .locals 3

    .line 189
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 190
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 191
    invoke-static {v0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v2, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 194
    iget-object p0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    :cond_1
    :goto_0
    int-to-char p0, v0

    return p0

    .line 200
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    :cond_3
    return v0
.end method

.method protected handleNextCE32()J
    .locals 3

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_3

    .line 155
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    if-gez v0, :cond_1

    const-wide v0, -0xffffff40L

    return-wide v0

    .line 159
    :cond_1
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 160
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    .line 161
    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 162
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previous()I

    .line 163
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->nextSegment()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xc0

    return-wide v0

    .line 171
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-eq v0, v1, :cond_4

    .line 172
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 173
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    goto :goto_1

    .line 176
    :cond_4
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_6

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 178
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 184
    :cond_5
    :goto_1
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->trie:Landroid/icu/impl/Trie2_32;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie2_32;->getFromU16SingleLead(C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/FCDIterCollationIterator;->makeCodePointAndCE32Pair(II)J

    move-result-wide v0

    return-wide v0

    .line 181
    :cond_6
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->switchToForward()V

    goto/16 :goto_0
.end method

.method public nextCodePoint()I
    .locals 3

    .line 57
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_6

    .line 58
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    if-gez v0, :cond_1

    return v0

    .line 62
    :cond_1
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    .line 64
    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previous()I

    .line 66
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->nextSegment()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 72
    :cond_3
    invoke-static {v0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 73
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v1

    .line 74
    invoke-static {v1}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_4

    int-to-char p0, v0

    int-to-char v0, v1

    .line 75
    invoke-static {p0, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_4
    if-ltz v1, :cond_5

    .line 77
    iget-object p0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    :cond_5
    return v0

    .line 81
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_7

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->limit:I

    if-eq v0, v1, :cond_7

    .line 82
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    .line 83
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    .line 86
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_8

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 88
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    .line 89
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    .line 92
    :cond_8
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->switchToForward()V

    goto/16 :goto_0
.end method

.method public previousCodePoint()I
    .locals 4

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_BWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_8

    .line 102
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v0

    const/4 v1, -0x1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 105
    sget-object v0, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return v1

    .line 108
    :cond_1
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->hasLccc(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 110
    invoke-static {v0}, Landroid/icu/impl/coll/CollationFCD;->maybeTibetanCompositeVowel(I)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    .line 111
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/coll/CollationFCD;->hasTccc(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    invoke-static {v0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-gez v2, :cond_3

    .line 124
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v2

    .line 126
    :cond_3
    invoke-static {v2}, Landroid/icu/impl/coll/FCDIterCollationIterator;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_4

    int-to-char p0, v2

    int-to-char v0, v0

    .line 127
    invoke-static {p0, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    :cond_4
    if-ltz v2, :cond_7

    .line 131
    iget-object p0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    goto :goto_2

    :cond_5
    move v2, v1

    .line 112
    :goto_1
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    if-ltz v2, :cond_6

    .line 114
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    .line 116
    :cond_6
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->previousSegment()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_7
    :goto_2
    return v0

    .line 135
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_IN_FCD_SEGMENT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    if-eq v0, v1, :cond_9

    .line 136
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->iter:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v0

    .line 137
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    .line 140
    :cond_9
    iget-object v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    sget-object v1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->IN_NORM_ITER_AT_LIMIT:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    if-eqz v0, :cond_a

    .line 141
    iget-object v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->normalized:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v0

    .line 142
    iget v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->pos:I

    return v0

    .line 145
    :cond_a
    invoke-direct {p0}, Landroid/icu/impl/coll/FCDIterCollationIterator;->switchToBackward()V

    goto/16 :goto_0
.end method

.method public resetToOffset(I)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/icu/impl/coll/IterCollationIterator;->resetToOffset(I)V

    .line 36
    iput p1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->start:I

    .line 37
    sget-object p1, Landroid/icu/impl/coll/FCDIterCollationIterator$State;->ITER_CHECK_FWD:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    iput-object p1, p0, Landroid/icu/impl/coll/FCDIterCollationIterator;->state:Landroid/icu/impl/coll/FCDIterCollationIterator$State;

    return-void
.end method
