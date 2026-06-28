.class public final Landroid/icu/impl/coll/CollationWeights;
.super Ljava/lang/Object;
.source "CollationWeights.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationWeights$WeightRange;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private maxBytes:[I

.field private middleLength:I

.field private minBytes:[I

.field private rangeCount:I

.field private rangeIndex:I

.field private ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 556
    iput-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    new-array v0, v0, [I

    .line 557
    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    .line 558
    iput-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    return-void
.end method

.method private allocWeightsInMinLengthRanges(II)Z
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 492
    :goto_0
    iget v3, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    if-ne v3, p2, :cond_0

    .line 495
    iget-object v3, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p2, 0x1

    .line 498
    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    move-result v3

    mul-int v4, v2, v3

    if-le p1, v4, :cond_1

    return v0

    .line 502
    :cond_1
    iget-object v4, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v4, v4, v0

    iget-wide v4, v4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 503
    iget-object v6, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v6, v6, v0

    iget-wide v6, v6, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    const/4 v8, 0x1

    move-wide v9, v6

    move-wide v5, v4

    move v4, v8

    :goto_1
    if-ge v4, v1, :cond_4

    .line 505
    iget-object v7, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v7, v7, v4

    iget-wide v11, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    cmp-long v7, v11, v5

    if-gez v7, :cond_2

    iget-object v5, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v5, v5, v4

    iget-wide v5, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 506
    :cond_2
    iget-object v7, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v7, v7, v4

    iget-wide v11, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    cmp-long v7, v11, v9

    if-lez v7, :cond_3

    iget-object v7, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v7, v7, v4

    iget-wide v9, v7, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    sub-int v1, p1, v2

    add-int/lit8 v4, v3, -0x1

    .line 516
    div-int/2addr v1, v4

    sub-int v4, v2, v1

    if-eqz v1, :cond_5

    mul-int/2addr v3, v1

    add-int/2addr v3, v4

    if-ge v3, p1, :cond_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, -0x1

    .line 525
    :cond_6
    iget-object p1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v3, p1, v0

    iput-wide v5, v3, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    if-nez v4, :cond_7

    .line 529
    aget-object p2, p1, v0

    iput-wide v9, p2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 530
    aget-object p2, p1, v0

    iput v2, p2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 531
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    .line 532
    iput v8, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    goto :goto_2

    .line 539
    :cond_7
    aget-object p1, p1, v0

    add-int/lit8 v2, v4, -0x1

    invoke-direct {p0, v5, v6, p2, v2}, Landroid/icu/impl/coll/CollationWeights;->incWeightByOffset(JII)J

    move-result-wide v2

    iput-wide v2, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 540
    iget-object p1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v2, p1, v0

    iput v4, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 542
    aget-object v2, p1, v8

    if-nez v2, :cond_8

    .line 543
    new-instance v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$1;)V

    aput-object v2, p1, v8

    .line 545
    :cond_8
    iget-object p1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v2, p1, v8

    aget-object p1, p1, v0

    iget-wide v3, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    invoke-direct {p0, v3, v4, p2}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 546
    iget-object p1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v0, p1, v8

    iput-wide v9, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 547
    aget-object v0, p1, v8

    iput p2, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    .line 548
    aget-object p2, p1, v8

    iput v1, p2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 549
    aget-object p1, p1, v8

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    const/4 p1, 0x2

    .line 550
    iput p1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    :goto_2
    return v8
.end method

.method private allocWeightsInShortRanges(II)Z
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    move p1, v0

    .line 463
    :goto_0
    iget v2, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    add-int/lit8 v3, p2, 0x1

    if-gt v2, v3, :cond_3

    .line 464
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-gt v1, v2, :cond_2

    .line 466
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    if-le v2, p2, :cond_0

    .line 470
    iget-object p2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object p2, p2, p1

    iput v1, p2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    :cond_0
    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 472
    iput p1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    .line 475
    iget p1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-le p1, p2, :cond_1

    .line 477
    iget-object p0, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    :cond_1
    return p2

    .line 481
    :cond_2
    iget-object v2, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v2, v2, p1

    iget v2, v2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    sub-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private countBytes(I)I
    .locals 1

    .line 243
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v0, v0, p1

    iget-object p0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget p0, p0, p1

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static decWeightTrail(JI)J
    .locals 2

    rsub-int/lit8 p2, p2, 0x4

    mul-int/lit8 p2, p2, 0x8

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method private static getWeightByte(JI)I
    .locals 0

    .line 203
    invoke-static {p0, p1, p2}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result p0

    return p0
.end method

.method private getWeightRanges(JJ)Z
    .locals 11

    .line 294
    invoke-static {p1, p2}, Landroid/icu/impl/coll/CollationWeights;->lengthOfWeight(J)I

    move-result v0

    .line 295
    invoke-static {p3, p4}, Landroid/icu/impl/coll/CollationWeights;->lengthOfWeight(J)I

    move-result v1

    cmp-long v2, p1, p3

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    return v3

    :cond_0
    if-ge v0, v1, :cond_1

    .line 309
    invoke-static {p3, p4, v0}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    move-result-wide v4

    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x5

    new-array v4, v2, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    .line 317
    new-instance v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$1;)V

    new-array v2, v2, [Landroid/icu/impl/coll/CollationWeights$WeightRange;

    .line 335
    :goto_0
    iget v7, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    if-le v0, v7, :cond_3

    .line 336
    invoke-static {p1, p2, v0}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v7

    .line 337
    iget-object v8, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v8, v8, v0

    if-ge v7, v8, :cond_2

    .line 338
    new-instance v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    invoke-direct {v8, v6}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$1;)V

    aput-object v8, v4, v0

    .line 339
    aget-object v8, v4, v0

    invoke-static {p1, p2, v0}, Landroid/icu/impl/coll/CollationWeights;->incWeightTrail(JI)J

    move-result-wide v9

    iput-wide v9, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 340
    aget-object v8, v4, v0

    iget-object v9, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v9, v9, v0

    invoke-static {p1, p2, v0, v9}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    move-result-wide v9

    iput-wide v9, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 341
    aget-object v8, v4, v0

    iput v0, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    .line 342
    aget-object v8, v4, v0

    iget-object v9, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v9, v9, v0

    sub-int/2addr v9, v7

    iput v9, v8, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    :cond_2
    add-int/lit8 v7, v0, -0x1

    .line 344
    invoke-static {p1, p2, v7}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    move-result-wide p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const-wide v8, 0xff000000L

    cmp-long v0, p1, v8

    if-gez v0, :cond_4

    .line 347
    invoke-static {p1, p2, v7}, Landroid/icu/impl/coll/CollationWeights;->incWeightTrail(JI)J

    move-result-wide p1

    iput-wide p1, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    goto :goto_1

    :cond_4
    const-wide p1, 0xffffffffL

    .line 351
    iput-wide p1, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 355
    :goto_1
    iget p1, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    if-le v1, p1, :cond_6

    .line 356
    invoke-static {p3, p4, v1}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result p1

    .line 357
    iget-object p2, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget p2, p2, v1

    if-le p1, p2, :cond_5

    .line 358
    new-instance p2, Landroid/icu/impl/coll/CollationWeights$WeightRange;

    invoke-direct {p2, v6}, Landroid/icu/impl/coll/CollationWeights$WeightRange;-><init>(Landroid/icu/impl/coll/CollationWeights$1;)V

    aput-object p2, v2, v1

    .line 359
    aget-object p2, v2, v1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v0, v0, v1

    invoke-static {p3, p4, v1, v0}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    move-result-wide v7

    iput-wide v7, p2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 360
    aget-object p2, v2, v1

    invoke-static {p3, p4, v1}, Landroid/icu/impl/coll/CollationWeights;->decWeightTrail(JI)J

    move-result-wide v7

    iput-wide v7, p2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 361
    aget-object p2, v2, v1

    iput v1, p2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    .line 362
    aget-object p2, v2, v1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v0, v0, v1

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    :cond_5
    add-int/lit8 p1, v1, -0x1

    .line 364
    invoke-static {p3, p4, p1}, Landroid/icu/impl/coll/CollationWeights;->truncateWeight(JI)J

    move-result-wide p3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 366
    :cond_6
    invoke-static {p3, p4, p1}, Landroid/icu/impl/coll/CollationWeights;->decWeightTrail(JI)J

    move-result-wide p1

    iput-wide p1, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 369
    iget p1, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    iput p1, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    .line 370
    iget-wide p1, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    iget-wide p3, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    cmp-long p1, p1, p3

    const/4 p2, 0x4

    const/4 p3, 0x1

    if-ltz p1, :cond_7

    .line 371
    iget-wide v0, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    iget-wide v6, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    sub-long/2addr v0, v6

    iget p1, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    rsub-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x8

    shr-long/2addr v0, p1

    long-to-int p1, v0

    add-int/2addr p1, p3

    iput p1, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    goto/16 :goto_7

    :cond_7
    move p1, p2

    .line 374
    :goto_2
    iget p4, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    if-le p1, p4, :cond_c

    .line 375
    aget-object p4, v4, p1

    if-eqz p4, :cond_b

    aget-object p4, v2, p1

    if-eqz p4, :cond_b

    aget-object p4, v4, p1

    iget p4, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-lez p4, :cond_b

    aget-object p4, v2, p1

    iget p4, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-lez p4, :cond_b

    .line 382
    aget-object p4, v4, p1

    iget-wide v0, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 383
    aget-object p4, v2, p1

    iget-wide v7, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    cmp-long p4, v0, v7

    if-lez p4, :cond_8

    .line 397
    aget-object p4, v4, p1

    aget-object v0, v2, p1

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    iput-wide v0, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 398
    aget-object p4, v4, p1

    aget-object v0, v4, p1

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 399
    invoke-static {v0, v1, p1}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v0

    aget-object v1, v4, p1

    iget-wide v7, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 400
    invoke-static {v7, v8, p1}, Landroid/icu/impl/coll/CollationWeights;->getWeightTrail(JI)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    iput v0, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    :goto_3
    move p4, p3

    goto :goto_5

    :cond_8
    if-nez p4, :cond_9

    goto :goto_4

    .line 408
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    move-result-wide v0

    cmp-long p4, v0, v7

    if-nez p4, :cond_a

    .line 410
    aget-object p4, v4, p1

    aget-object v0, v2, p1

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    iput-wide v0, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 411
    aget-object p4, v4, p1

    iget v0, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    aget-object v1, v2, p1

    iget v1, v1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    add-int/2addr v0, v1

    iput v0, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    goto :goto_3

    :cond_a
    :goto_4
    move p4, v3

    :goto_5
    if-eqz p4, :cond_b

    .line 418
    aget-object p4, v2, p1

    iput v3, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    :goto_6
    add-int/lit8 p1, p1, -0x1

    .line 419
    iget p4, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    if-le p1, p4, :cond_c

    .line 420
    aput-object v6, v2, p1

    aput-object v6, v4, p1

    goto :goto_6

    :cond_b
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 444
    :cond_c
    :goto_7
    iput v3, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    .line 445
    iget p1, v5, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-lez p1, :cond_d

    .line 446
    iget-object p1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aput-object v5, p1, v3

    .line 447
    iput p3, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    .line 449
    :cond_d
    iget p1, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    add-int/2addr p1, p3

    :goto_8
    if-gt p1, p2, :cond_10

    .line 451
    aget-object p4, v2, p1

    if-eqz p4, :cond_e

    aget-object p4, v2, p1

    iget p4, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-lez p4, :cond_e

    .line 452
    iget-object p4, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    iget v0, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    aget-object v1, v2, p1

    aput-object v1, p4, v0

    .line 454
    :cond_e
    aget-object p4, v4, p1

    if-eqz p4, :cond_f

    aget-object p4, v4, p1

    iget p4, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-lez p4, :cond_f

    .line 455
    iget-object p4, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    iget v0, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    aget-object v1, v4, p1

    aput-object v1, p4, v0

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 458
    :cond_10
    iget p0, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-lez p0, :cond_11

    goto :goto_9

    :cond_11
    move p3, v3

    :goto_9
    return p3
.end method

.method private static getWeightTrail(JI)I
    .locals 0

    rsub-int/lit8 p2, p2, 0x4

    mul-int/lit8 p2, p2, 0x8

    shr-long/2addr p0, p2

    long-to-int p0, p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private incWeight(JI)J
    .locals 2

    .line 248
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/icu/impl/coll/CollationWeights;->getWeightByte(JI)I

    move-result v0

    .line 249
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v1, v1, p3

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 250
    invoke-static {p1, p2, p3, v0}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    move-result-wide p0

    return-wide p0

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v0, v0, p3

    invoke-static {p1, p2, p3, v0}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    move-result-wide p1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method

.method private incWeightByOffset(JII)J
    .locals 2

    .line 262
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/icu/impl/coll/CollationWeights;->getWeightByte(JI)I

    move-result v0

    add-int/2addr p4, v0

    .line 263
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v0, v0, p3

    if-gt p4, v0, :cond_0

    .line 264
    invoke-static {p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    move-result-wide p0

    return-wide p0

    .line 267
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v1, v0, p3

    sub-int/2addr p4, v1

    .line 268
    aget v0, v0, p3

    invoke-direct {p0, p3}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    move-result v1

    rem-int v1, p4, v1

    add-int/2addr v0, v1

    invoke-static {p1, p2, p3, v0}, Landroid/icu/impl/coll/CollationWeights;->setWeightByte(JII)J

    move-result-wide p1

    .line 269
    invoke-direct {p0, p3}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    move-result v0

    div-int/2addr p4, v0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0
.end method

.method private static incWeightTrail(JI)J
    .locals 2

    rsub-int/lit8 p2, p2, 0x4

    mul-int/lit8 p2, p2, 0x8

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public static lengthOfWeight(J)I
    .locals 4

    const-wide/32 v0, 0xffffff

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/32 v0, 0xffff

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/16 v0, 0xff

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method private lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V
    .locals 4

    .line 277
    iget v0, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    add-int/lit8 v0, v0, 0x1

    .line 278
    iget-wide v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    iget-object v3, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aget v3, v3, v0

    invoke-static {v1, v2, v0, v3}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    move-result-wide v1

    iput-wide v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 279
    iget-wide v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    iget-object v3, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aget v3, v3, v0

    invoke-static {v1, v2, v0, v3}, Landroid/icu/impl/coll/CollationWeights;->setWeightTrail(JII)J

    move-result-wide v1

    iput-wide v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->end:J

    .line 280
    iget v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationWeights;->countBytes(I)I

    move-result p0

    mul-int/2addr v1, p0

    iput v1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    .line 281
    iput v0, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    return-void
.end method

.method private static setWeightByte(JII)J
    .locals 5

    mul-int/lit8 p2, p2, 0x8

    const/16 v0, 0x20

    if-ge p2, v0, :cond_0

    const-wide v1, 0xffffffffL

    shr-long/2addr v1, p2

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    sub-int/2addr v0, p2

    const-wide v3, 0xffffff00L

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    and-long/2addr p0, v1

    int-to-long p2, p3

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method private static setWeightTrail(JII)J
    .locals 2

    rsub-int/lit8 p2, p2, 0x4

    mul-int/lit8 p2, p2, 0x8

    const-wide v0, 0xffffff00L

    shl-long/2addr v0, p2

    and-long/2addr p0, v0

    int-to-long v0, p3

    shl-long p2, v0, p2

    or-long/2addr p0, p2

    return-wide p0
.end method

.method private static truncateWeight(JI)J
    .locals 2

    rsub-int/lit8 p2, p2, 0x4

    mul-int/lit8 p2, p2, 0x8

    const-wide v0, 0xffffffffL

    shl-long/2addr v0, p2

    and-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public allocWeights(JJI)Z
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/impl/coll/CollationWeights;->getWeightRanges(JJ)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 101
    :cond_0
    iget-object p1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object p1, p1, p2

    iget p1, p1, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    .line 103
    invoke-direct {p0, p5, p1}, Landroid/icu/impl/coll/CollationWeights;->allocWeightsInShortRanges(II)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    return p2

    .line 111
    :cond_2
    invoke-direct {p0, p5, p1}, Landroid/icu/impl/coll/CollationWeights;->allocWeightsInMinLengthRanges(II)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 126
    :goto_0
    iput p2, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    .line 127
    iget p1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    iget-object p0, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    array-length p2, p0

    if-ge p1, p2, :cond_3

    const/4 p2, 0x0

    .line 128
    aput-object p2, p0, p1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    move p3, p2

    .line 115
    :goto_1
    iget p4, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-ge p3, p4, :cond_0

    iget-object p4, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object p4, p4, p3

    iget p4, p4, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    if-ne p4, p1, :cond_0

    .line 116
    iget-object p4, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object p4, p4, p3

    invoke-direct {p0, p4}, Landroid/icu/impl/coll/CollationWeights;->lengthenRange(Landroid/icu/impl/coll/CollationWeights$WeightRange;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method public initForPrimary(Z)V
    .locals 6

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    .line 31
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    const/4 v2, 0x3

    aput v2, v1, v0

    .line 32
    iget-object v3, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    const/16 v4, 0xff

    aput v4, v3, v0

    const/4 v0, 0x4

    const/4 v5, 0x2

    if-eqz p1, :cond_0

    .line 34
    aput v0, v1, v5

    const/16 p1, 0xfe

    .line 35
    aput p1, v3, v5

    goto :goto_0

    .line 37
    :cond_0
    aput v5, v1, v5

    .line 38
    aput v4, v3, v5

    .line 40
    :goto_0
    iget-object p1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    aput v5, p1, v2

    .line 41
    iget-object p0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v4, p0, v2

    .line 42
    aput v5, p1, v0

    .line 43
    aput v4, p0, v0

    return-void
.end method

.method public initForSecondary()V
    .locals 4

    const/4 v0, 0x3

    .line 48
    iput v0, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    .line 49
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 50
    iget-object p0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, p0, v2

    const/4 v2, 0x2

    .line 51
    aput v3, v1, v2

    .line 52
    aput v3, p0, v2

    .line 53
    aput v2, v1, v0

    const/16 v3, 0xff

    .line 54
    aput v3, p0, v0

    const/4 v0, 0x4

    .line 55
    aput v2, v1, v0

    .line 56
    aput v3, p0, v0

    return-void
.end method

.method public initForTertiary()V
    .locals 4

    const/4 v0, 0x3

    .line 61
    iput v0, p0, Landroid/icu/impl/coll/CollationWeights;->middleLength:I

    .line 62
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->minBytes:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 63
    iget-object p0, p0, Landroid/icu/impl/coll/CollationWeights;->maxBytes:[I

    aput v3, p0, v2

    const/4 v2, 0x2

    .line 64
    aput v3, v1, v2

    .line 65
    aput v3, p0, v2

    .line 68
    aput v2, v1, v0

    const/16 v3, 0x3f

    .line 69
    aput v3, p0, v0

    const/4 v0, 0x4

    .line 70
    aput v2, v1, v0

    .line 71
    aput v3, p0, v0

    return-void
.end method

.method public nextWeight()J
    .locals 5

    .line 141
    iget v0, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    iget v1, p0, Landroid/icu/impl/coll/CollationWeights;->rangeCount:I

    if-lt v0, v1, :cond_0

    const-wide v0, 0xffffffffL

    return-wide v0

    .line 145
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/coll/CollationWeights;->ranges:[Landroid/icu/impl/coll/CollationWeights$WeightRange;

    aget-object v0, v1, v0

    .line 146
    iget-wide v1, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 147
    iget v3, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->count:I

    if-nez v3, :cond_1

    .line 149
    iget v0, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationWeights;->rangeIndex:I

    goto :goto_0

    .line 152
    :cond_1
    iget v3, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->length:I

    invoke-direct {p0, v1, v2, v3}, Landroid/icu/impl/coll/CollationWeights;->incWeight(JI)J

    move-result-wide v3

    iput-wide v3, v0, Landroid/icu/impl/coll/CollationWeights$WeightRange;->start:J

    :goto_0
    return-wide v1
.end method
