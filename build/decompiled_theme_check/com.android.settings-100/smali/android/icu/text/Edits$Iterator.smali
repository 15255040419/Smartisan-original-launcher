.class public final Landroid/icu/text/Edits$Iterator;
.super Ljava/lang/Object;
.source "Edits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Edits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iterator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final array:[C

.field private changed:Z

.field private final coarse:Z

.field private destIndex:I

.field private dir:I

.field private index:I

.field private final length:I

.field private newLength_:I

.field private oldLength_:I

.field private final onlyChanges_:Z

.field private remaining:I

.field private replIndex:I

.field private srcIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 218
    const-class v0, Landroid/icu/text/Edits;

    return-void
.end method

.method private constructor <init>([CIZZ)V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    .line 236
    iput p2, p0, Landroid/icu/text/Edits$Iterator;->length:I

    .line 237
    iput-boolean p3, p0, Landroid/icu/text/Edits$Iterator;->onlyChanges_:Z

    .line 238
    iput-boolean p4, p0, Landroid/icu/text/Edits$Iterator;->coarse:Z

    return-void
.end method

.method synthetic constructor <init>([CIZZLandroid/icu/text/Edits$1;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/Edits$Iterator;-><init>([CIZZ)V

    return-void
.end method

.method private findIndex(IZ)I
    .locals 7

    if-gez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 537
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 538
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_0

    .line 540
    :cond_1
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    .line 541
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_8

    .line 544
    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_7

    .line 547
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->previous()Z

    if-eqz p2, :cond_3

    .line 549
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    goto :goto_2

    :cond_3
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    :goto_2
    if-lt p1, v0, :cond_4

    return v3

    .line 554
    :cond_4
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    if-lez v1, :cond_2

    if-eqz p2, :cond_5

    .line 557
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_3

    :cond_5
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 558
    :goto_3
    iget-object v4, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v4, v4, v5

    and-int/lit16 v4, v4, 0x1ff

    add-int/2addr v4, v2

    .line 560
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    sub-int/2addr v4, v5

    mul-int v6, v4, v1

    sub-int v6, v0, v6

    if-lt p1, v6, :cond_6

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    .line 563
    div-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 565
    iget p1, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget p2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    mul-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 566
    iget p1, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iget p2, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    mul-int v1, v0, p2

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    .line 567
    iget p1, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    mul-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    add-int/2addr v5, v0

    .line 568
    iput v5, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    return v3

    .line 572
    :cond_6
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    mul-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 573
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    mul-int v5, v4, v1

    sub-int/2addr v0, v5

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    .line 574
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    mul-int/2addr v4, v1

    sub-int/2addr v0, v4

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    .line 575
    iput v3, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    goto :goto_1

    .line 580
    :cond_7
    iput v3, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    .line 581
    iput v3, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    iput v3, p0, Landroid/icu/text/Edits$Iterator;->index:I

    goto :goto_4

    :cond_8
    add-int/2addr v0, v1

    if-ge p1, v0, :cond_9

    return v3

    .line 586
    :cond_9
    :goto_4
    invoke-direct {p0, v3}, Landroid/icu/text/Edits$Iterator;->next(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_a

    .line 588
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 589
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_5

    .line 591
    :cond_a
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    .line 592
    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    :goto_5
    add-int v4, v0, v1

    if-ge p1, v4, :cond_b

    return v3

    .line 598
    :cond_b
    iget v4, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    if-le v4, v2, :cond_9

    mul-int v5, v4, v1

    add-int/2addr v5, v0

    if-ge p1, v5, :cond_c

    sub-int/2addr p1, v0

    .line 603
    div-int/2addr p1, v1

    .line 604
    iget p2, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget v0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    mul-int/2addr v0, p1

    add-int/2addr p2, v0

    iput p2, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 605
    iget p2, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iget v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    mul-int v1, p1, v0

    add-int/2addr p2, v1

    iput p2, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    .line 606
    iget p2, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    mul-int/2addr v0, p1

    add-int/2addr p2, v0

    iput p2, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    sub-int/2addr v4, p1

    .line 607
    iput v4, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    return v3

    .line 611
    :cond_c
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    mul-int/2addr v0, v4

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 612
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    mul-int/2addr v0, v4

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 613
    iput v3, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    goto :goto_4

    :cond_d
    return v2
.end method

.method private next(Z)Z
    .locals 6

    .line 297
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 298
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updateNextIndexes()V

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    .line 303
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    if-lez v0, :cond_1

    .line 306
    iget p1, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/2addr p1, v1

    iput p1, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 307
    iput v1, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    return v1

    .line 311
    :cond_1
    iput v1, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    .line 313
    :goto_0
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    if-le v0, v1, :cond_2

    sub-int/2addr v0, v1

    .line 316
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    return v1

    .line 319
    :cond_2
    iput v2, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 321
    :cond_3
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    iget v3, p0, Landroid/icu/text/Edits$Iterator;->length:I

    if-lt v0, v3, :cond_4

    .line 322
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->noNext()Z

    move-result p0

    return p0

    .line 324
    :cond_4
    iget-object v3, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v0, v3, v0

    const/16 v3, 0xfff

    if-gt v0, v3, :cond_8

    .line 327
    iput-boolean v2, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    add-int/lit8 v2, v0, 0x1

    .line 328
    iput v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 329
    :goto_1
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    iget v4, p0, Landroid/icu/text/Edits$Iterator;->length:I

    if-ge v2, v4, :cond_5

    iget-object v0, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    aget-char v0, v0, v2

    if-gt v0, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 330
    iput v2, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 331
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    add-int/lit8 v4, v0, 0x1

    add-int/2addr v2, v4

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_1

    .line 333
    :cond_5
    iget v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    if-eqz p1, :cond_7

    .line 335
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updateNextIndexes()V

    .line 336
    iget p1, p0, Landroid/icu/text/Edits$Iterator;->index:I

    iget v2, p0, Landroid/icu/text/Edits$Iterator;->length:I

    if-lt p1, v2, :cond_6

    .line 337
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->noNext()Z

    move-result p0

    return p0

    :cond_6
    add-int/2addr p1, v1

    .line 340
    iput p1, p0, Landroid/icu/text/Edits$Iterator;->index:I

    goto :goto_2

    :cond_7
    return v1

    .line 345
    :cond_8
    :goto_2
    iput-boolean v1, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    const/16 p1, 0x6fff

    if-gt v0, p1, :cond_b

    shr-int/lit8 v2, v0, 0xc

    shr-int/lit8 v4, v0, 0x9

    and-int/lit8 v4, v4, 0x7

    and-int/lit16 v0, v0, 0x1ff

    add-int/2addr v0, v1

    .line 350
    iget-boolean v5, p0, Landroid/icu/text/Edits$Iterator;->coarse:Z

    if-eqz v5, :cond_9

    mul-int/2addr v2, v0

    .line 351
    iput v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    mul-int/2addr v0, v4

    .line 352
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_3

    .line 355
    :cond_9
    iput v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 356
    iput v4, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    if-le v0, v1, :cond_a

    .line 358
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    :cond_a
    return v1

    :cond_b
    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    .line 364
    invoke-direct {p0, v2}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v2

    iput v2, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    and-int/lit8 v0, v0, 0x3f

    .line 365
    invoke-direct {p0, v0}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 366
    iget-boolean v0, p0, Landroid/icu/text/Edits$Iterator;->coarse:Z

    if-nez v0, :cond_c

    return v1

    .line 371
    :cond_c
    :goto_3
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    iget v2, p0, Landroid/icu/text/Edits$Iterator;->length:I

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    aget-char v2, v2, v0

    if-le v2, v3, :cond_e

    add-int/lit8 v0, v0, 0x1

    .line 372
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    if-gt v2, p1, :cond_d

    and-int/lit16 v0, v2, 0x1ff

    add-int/2addr v0, v1

    .line 375
    iget v4, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    shr-int/lit8 v5, v2, 0xc

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    iput v4, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 376
    iget v4, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    shr-int/lit8 v2, v2, 0x9

    and-int/lit8 v2, v2, 0x7

    mul-int/2addr v2, v0

    add-int/2addr v4, v2

    iput v4, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_3

    .line 379
    :cond_d
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    invoke-direct {p0, v4}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 380
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    and-int/lit8 v2, v2, 0x3f

    invoke-direct {p0, v2}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_3

    :cond_e
    return v1
.end method

.method private noNext()Z
    .locals 1

    const/4 v0, 0x0

    .line 278
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    .line 279
    iput-boolean v0, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    .line 280
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    return v0
.end method

.method private previous()Z
    .locals 8

    .line 390
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    const/4 v1, 0x1

    if-ltz v0, :cond_2

    const/4 v2, -0x1

    if-lez v0, :cond_1

    .line 395
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    if-lez v0, :cond_0

    .line 398
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 399
    iput v2, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    return v1

    .line 402
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updateNextIndexes()V

    .line 404
    :cond_1
    iput v2, p0, Landroid/icu/text/Edits$Iterator;->dir:I

    .line 406
    :cond_2
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 408
    iget-object v3, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v4, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v3, v3, v4

    and-int/lit16 v3, v3, 0x1ff

    if-gt v0, v3, :cond_3

    add-int/2addr v0, v1

    .line 411
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 412
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    return v1

    .line 415
    :cond_3
    iput v2, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 417
    :cond_4
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    if-gtz v0, :cond_5

    .line 418
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->noNext()Z

    move-result p0

    return p0

    .line 420
    :cond_5
    iget-object v3, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v0, v3, v0

    const/16 v3, 0xfff

    if-gt v0, v3, :cond_7

    .line 423
    iput-boolean v2, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    add-int/2addr v0, v1

    .line 424
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 425
    :goto_0
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    if-lez v0, :cond_6

    iget-object v2, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v2, v2, v4

    if-gt v2, v3, :cond_6

    add-int/lit8 v0, v0, -0x1

    .line 426
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 427
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    goto :goto_0

    .line 429
    :cond_6
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 431
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    return v1

    .line 434
    :cond_7
    iput-boolean v1, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    const/16 v2, 0x6fff

    const/16 v4, 0x7fff

    if-gt v0, v2, :cond_a

    shr-int/lit8 v5, v0, 0xc

    shr-int/lit8 v6, v0, 0x9

    and-int/lit8 v6, v6, 0x7

    and-int/lit16 v0, v0, 0x1ff

    add-int/2addr v0, v1

    .line 439
    iget-boolean v7, p0, Landroid/icu/text/Edits$Iterator;->coarse:Z

    if-eqz v7, :cond_8

    mul-int/2addr v5, v0

    .line 440
    iput v5, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    mul-int/2addr v0, v6

    .line 441
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_3

    .line 444
    :cond_8
    iput v5, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 445
    iput v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    if-le v0, v1, :cond_9

    .line 447
    iput v1, p0, Landroid/icu/text/Edits$Iterator;->remaining:I

    .line 449
    :cond_9
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    return v1

    :cond_a
    if-gt v0, v4, :cond_b

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    .line 455
    invoke-direct {p0, v5}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v5

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    and-int/lit8 v0, v0, 0x3f

    .line 456
    invoke-direct {p0, v0}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_2

    .line 461
    :cond_b
    :goto_1
    iget-object v0, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    sub-int/2addr v5, v1

    iput v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v0, v0, v5

    if-le v0, v4, :cond_c

    goto :goto_1

    .line 463
    :cond_c
    iget v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->index:I

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    .line 464
    invoke-direct {p0, v6}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v6

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    and-int/lit8 v0, v0, 0x3f

    .line 465
    invoke-direct {p0, v0}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 466
    iput v5, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 468
    :goto_2
    iget-boolean v0, p0, Landroid/icu/text/Edits$Iterator;->coarse:Z

    if-nez v0, :cond_d

    .line 469
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    return v1

    .line 474
    :cond_d
    :goto_3
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    if-lez v0, :cond_f

    iget-object v5, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    add-int/lit8 v6, v0, -0x1

    aget-char v5, v5, v6

    if-le v5, v3, :cond_f

    add-int/lit8 v0, v0, -0x1

    .line 475
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    if-gt v5, v2, :cond_e

    and-int/lit16 v0, v5, 0x1ff

    add-int/2addr v0, v1

    .line 478
    iget v6, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    shr-int/lit8 v7, v5, 0xc

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 479
    iget v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    shr-int/lit8 v5, v5, 0x9

    and-int/lit8 v5, v5, 0x7

    mul-int/2addr v5, v0

    add-int/2addr v6, v5

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    goto :goto_3

    :cond_e
    if-gt v5, v4, :cond_d

    .line 482
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->index:I

    .line 483
    iget v6, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    invoke-direct {p0, v7}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    .line 484
    iget v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    and-int/lit8 v5, v5, 0x3f

    invoke-direct {p0, v5}, Landroid/icu/text/Edits$Iterator;->readLength(I)I

    move-result v5

    add-int/2addr v6, v5

    iput v6, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    .line 485
    iput v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    goto :goto_3

    .line 488
    :cond_f
    invoke-direct {p0}, Landroid/icu/text/Edits$Iterator;->updatePreviousIndexes()V

    return v1
.end method

.method private readLength(I)I
    .locals 3

    const/16 v0, 0x3d

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x3e

    if-ge p1, v0, :cond_1

    .line 247
    iget-object p1, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v0, p0, Landroid/icu/text/Edits$Iterator;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char p0, p1, v0

    and-int/lit16 p0, p0, 0x7fff

    return p0

    :cond_1
    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1e

    .line 252
    iget-object v0, p0, Landroid/icu/text/Edits$Iterator;->array:[C

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->index:I

    aget-char v2, v0, v1

    and-int/lit16 v2, v2, 0x7fff

    shl-int/lit8 v2, v2, 0xf

    or-int/2addr p1, v2

    add-int/lit8 v2, v1, 0x1

    aget-char v0, v0, v2

    and-int/lit16 v0, v0, 0x7fff

    or-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x2

    .line 255
    iput v1, p0, Landroid/icu/text/Edits$Iterator;->index:I

    return p1
.end method

.method private updateNextIndexes()V
    .locals 2

    .line 261
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 262
    iget-boolean v0, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    if-eqz v0, :cond_0

    .line 263
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    .line 265
    :cond_0
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    return-void
.end method

.method private updatePreviousIndexes()V
    .locals 2

    .line 269
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    .line 270
    iget-boolean v0, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    if-eqz v0, :cond_0

    .line 271
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    .line 273
    :cond_0
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iget v1, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    return-void
.end method


# virtual methods
.method public destinationIndex()I
    .locals 0

    .line 728
    iget p0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    return p0
.end method

.method public destinationIndexFromSourceIndex(I)I
    .locals 2

    const/4 v0, 0x1

    .line 639
    invoke-direct {p0, p1, v0}, Landroid/icu/text/Edits$Iterator;->findIndex(IZ)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-gtz v0, :cond_3

    .line 644
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 648
    :cond_1
    iget-boolean v1, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    if-eqz v1, :cond_2

    .line 650
    iget p1, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    iget p0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    add-int/2addr p1, p0

    return p1

    .line 653
    :cond_2
    iget p0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0

    .line 646
    :cond_3
    :goto_0
    iget p0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    return p0
.end method

.method public findDestinationIndex(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 529
    invoke-direct {p0, p1, v0}, Landroid/icu/text/Edits$Iterator;->findIndex(IZ)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public findSourceIndex(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 509
    invoke-direct {p0, p1, v0}, Landroid/icu/text/Edits$Iterator;->findIndex(IZ)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChange()Z
    .locals 0

    .line 700
    iget-boolean p0, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    return p0
.end method

.method public newLength()I
    .locals 0

    .line 711
    iget p0, p0, Landroid/icu/text/Edits$Iterator;->newLength_:I

    return p0
.end method

.method public next()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Landroid/icu/text/Edits$Iterator;->onlyChanges_:Z

    invoke-direct {p0, v0}, Landroid/icu/text/Edits$Iterator;->next(Z)Z

    move-result p0

    return p0
.end method

.method public oldLength()I
    .locals 0

    .line 705
    iget p0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    return p0
.end method

.method public replacementIndex()I
    .locals 0

    .line 723
    iget p0, p0, Landroid/icu/text/Edits$Iterator;->replIndex:I

    return p0
.end method

.method public sourceIndex()I
    .locals 0

    .line 717
    iget p0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    return p0
.end method

.method public sourceIndexFromDestinationIndex(I)I
    .locals 2

    const/4 v0, 0x0

    .line 677
    invoke-direct {p0, p1, v0}, Landroid/icu/text/Edits$Iterator;->findIndex(IZ)I

    move-result v1

    if-gez v1, :cond_0

    return v0

    :cond_0
    if-gtz v1, :cond_3

    .line 682
    iget v0, p0, Landroid/icu/text/Edits$Iterator;->destIndex:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 686
    :cond_1
    iget-boolean v1, p0, Landroid/icu/text/Edits$Iterator;->changed:Z

    if-eqz v1, :cond_2

    .line 688
    iget p1, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    iget p0, p0, Landroid/icu/text/Edits$Iterator;->oldLength_:I

    add-int/2addr p1, p0

    return p1

    .line 691
    :cond_2
    iget p0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0

    .line 684
    :cond_3
    :goto_0
    iget p0, p0, Landroid/icu/text/Edits$Iterator;->srcIndex:I

    return p0
.end method
