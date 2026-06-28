.class public final Landroid/icu/util/CharsTrie$Iterator;
.super Ljava/lang/Object;
.source "CharsTrie.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CharsTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/icu/util/CharsTrie$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private chars_:Ljava/lang/CharSequence;

.field private entry_:Landroid/icu/util/CharsTrie$Entry;

.field private initialPos_:I

.field private initialRemainingMatchLength_:I

.field private maxLength_:I

.field private pos_:I

.field private remainingMatchLength_:I

.field private skipValue_:Z

.field private stack_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private str_:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    .line 609
    new-instance v0, Landroid/icu/util/CharsTrie$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/CharsTrie$Entry;-><init>(Landroid/icu/util/CharsTrie$1;)V

    iput-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    .line 421
    iput-object p1, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    .line 422
    iput p2, p0, Landroid/icu/util/CharsTrie$Iterator;->initialPos_:I

    iput p2, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 423
    iput p3, p0, Landroid/icu/util/CharsTrie$Iterator;->initialRemainingMatchLength_:I

    iput p3, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    .line 424
    iput p4, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    .line 425
    iget p1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    if-ltz p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 429
    iget p2, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez p2, :cond_0

    if-le p1, p2, :cond_0

    move p1, p2

    .line 432
    :cond_0
    iget-object p2, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    iget p4, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    add-int v0, p4, p1

    invoke-virtual {p2, p3, p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 433
    iget p2, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    add-int/2addr p2, p1

    iput p2, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 434
    iget p2, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;IIILandroid/icu/util/CharsTrie$1;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/util/CharsTrie$Iterator;-><init>(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private branchNext(II)I
    .locals 10

    :goto_0
    const/4 v0, 0x5

    const/16 v1, 0x20

    if-le p2, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 576
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Landroid/icu/util/CharsTrie;->access$800(Ljava/lang/CharSequence;I)I

    move-result v2

    int-to-long v2, v2

    shl-long v1, v2, v1

    shr-int/lit8 v3, p2, 0x1

    sub-int/2addr p2, v3

    shl-int/lit8 p2, p2, 0x10

    int-to-long v4, p2

    or-long/2addr v1, v4

    iget-object p2, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    int-to-long v4, p2

    or-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object p2, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    invoke-static {p2, p1}, Landroid/icu/util/CharsTrie;->access$900(Ljava/lang/CharSequence;I)I

    move-result p1

    move p2, v3

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 584
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v2, 0x8000

    and-int/2addr v2, v0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 586
    :goto_1
    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    and-int/lit16 v0, v0, 0x7fff

    invoke-static {v5, v3, v0}, Landroid/icu/util/CharsTrie;->access$600(Ljava/lang/CharSequence;II)I

    move-result v5

    .line 587
    invoke-static {v3, v0}, Landroid/icu/util/CharsTrie;->access$1000(II)I

    move-result v0

    .line 588
    iget-object v3, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    int-to-long v6, v0

    shl-long/2addr v6, v1

    sub-int/2addr p2, v4

    shl-int/lit8 p2, p2, 0x10

    int-to-long v8, p2

    or-long/2addr v6, v8

    iget-object p2, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    int-to-long v8, p2

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object p2, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    const/4 p1, -0x1

    .line 591
    iput p1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 592
    iget-object p2, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object p0, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iput-object p0, p2, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    .line 593
    iput v5, p2, Landroid/icu/util/CharsTrie$Entry;->value:I

    return p1

    :cond_2
    add-int/2addr v0, v5

    return v0
.end method

.method private truncateAndStop()Landroid/icu/util/CharsTrie$Entry;
    .locals 2

    const/4 v0, -0x1

    .line 564
    iput v0, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 567
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object p0, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iput-object p0, v1, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    .line 568
    iput v0, v1, Landroid/icu/util/CharsTrie$Entry;->value:I

    return-object v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 461
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    if-gez v0, :cond_1

    iget-object p0, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public next()Landroid/icu/util/CharsTrie$Entry;
    .locals 6

    .line 475
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    const/4 v1, 0x1

    if-gez v0, :cond_2

    .line 477
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 482
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    .line 485
    iget-object v3, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    const v4, 0xffff

    and-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    ushr-int/lit8 v0, v0, 0x10

    if-le v0, v1, :cond_0

    .line 488
    invoke-direct {p0, v2, v0}, Landroid/icu/util/CharsTrie$Iterator;->branchNext(II)I

    move-result v0

    if-gez v0, :cond_2

    .line 490
    iget-object p0, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    return-object p0

    .line 493
    :cond_0
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v4

    goto :goto_0

    .line 478
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 496
    :cond_2
    :goto_0
    iget v2, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    if-ltz v2, :cond_3

    .line 499
    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Iterator;->truncateAndStop()Landroid/icu/util/CharsTrie$Entry;

    move-result-object p0

    return-object p0

    .line 502
    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_9

    .line 504
    iget-boolean v2, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 505
    invoke-static {v3, v0}, Landroid/icu/util/CharsTrie;->access$500(II)I

    move-result v3

    and-int/lit8 v0, v0, 0x3f

    .line 507
    iput-boolean v4, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    goto :goto_5

    :cond_4
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_5

    move v4, v1

    :cond_5
    if-eqz v4, :cond_6

    .line 512
    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    and-int/lit16 v0, v0, 0x7fff

    invoke-static {v5, v3, v0}, Landroid/icu/util/CharsTrie;->access$600(Ljava/lang/CharSequence;II)I

    move-result v0

    iput v0, v2, Landroid/icu/util/CharsTrie$Entry;->value:I

    goto :goto_2

    .line 514
    :cond_6
    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object v5, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    invoke-static {v5, v3, v0}, Landroid/icu/util/CharsTrie;->access$700(Ljava/lang/CharSequence;II)I

    move-result v0

    iput v0, v2, Landroid/icu/util/CharsTrie$Entry;->value:I

    :goto_2
    if-nez v4, :cond_8

    .line 516
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v0, :cond_7

    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v2, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-ne v0, v2, :cond_7

    goto :goto_3

    :cond_7
    sub-int/2addr v3, v1

    .line 523
    iput v3, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 524
    iput-boolean v1, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v0, -0x1

    .line 517
    iput v0, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 526
    :goto_4
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    iget-object p0, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iput-object p0, v0, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    return-object v0

    .line 530
    :cond_9
    :goto_5
    iget v2, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v2, :cond_a

    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget v4, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-ne v2, v4, :cond_a

    .line 531
    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Iterator;->truncateAndStop()Landroid/icu/util/CharsTrie$Entry;

    move-result-object p0

    return-object p0

    :cond_a
    const/16 v2, 0x30

    if-ge v0, v2, :cond_c

    if-nez v0, :cond_b

    .line 535
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/lit8 v2, v3, 0x1

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_6

    :cond_b
    move v2, v3

    :goto_6
    add-int/2addr v0, v1

    .line 537
    invoke-direct {p0, v2, v0}, Landroid/icu/util/CharsTrie$Iterator;->branchNext(II)I

    move-result v0

    if-gez v0, :cond_3

    .line 539
    iget-object p0, p0, Landroid/icu/util/CharsTrie$Iterator;->entry_:Landroid/icu/util/CharsTrie$Entry;

    return-object p0

    :cond_c
    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v1

    .line 544
    iget v2, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v2, :cond_d

    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v0

    iget v4, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-le v2, v4, :cond_d

    .line 545
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/2addr v4, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v4, v2

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 546
    invoke-direct {p0}, Landroid/icu/util/CharsTrie$Iterator;->truncateAndStop()Landroid/icu/util/CharsTrie$Entry;

    move-result-object p0

    return-object p0

    .line 548
    :cond_d
    iget-object v2, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/icu/util/CharsTrie$Iterator;->chars_:Ljava/lang/CharSequence;

    add-int/2addr v0, v3

    invoke-virtual {v2, v4, v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 419
    invoke-virtual {p0}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 0

    .line 560
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public reset()Landroid/icu/util/CharsTrie$Iterator;
    .locals 2

    .line 443
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->initialPos_:I

    iput v0, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 444
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->initialRemainingMatchLength_:I

    iput v0, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Landroid/icu/util/CharsTrie$Iterator;->skipValue_:Z

    .line 446
    iget v0, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    add-int/lit8 v0, v0, 0x1

    .line 447
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->maxLength_:I

    if-lez v1, :cond_0

    if-le v0, v1, :cond_0

    move v0, v1

    .line 450
    :cond_0
    iget-object v1, p0, Landroid/icu/util/CharsTrie$Iterator;->str_:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 451
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->pos_:I

    .line 452
    iget v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/CharsTrie$Iterator;->remainingMatchLength_:I

    .line 453
    iget-object v0, p0, Landroid/icu/util/CharsTrie$Iterator;->stack_:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method
