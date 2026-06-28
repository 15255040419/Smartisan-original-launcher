.class final Landroid/icu/impl/coll/CollationFastLatinBuilder;
.super Ljava/lang/Object;
.source "CollationFastLatinBuilder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONTRACTION_FLAG:J = 0x80000000L

.field private static final NUM_SPECIAL_GROUPS:I = 0x4


# instance fields
.field private ce0:J

.field private ce1:J

.field private charCEs:[[J

.field private contractionCEs:Landroid/icu/impl/coll/UVector64;

.field private firstDigitPrimary:J

.field private firstLatinPrimary:J

.field private firstShortPrimary:J

.field private headerLength:I

.field private lastLatinPrimary:J

.field lastSpecialPrimaries:[J

.field private miniCEs:[C

.field private result:Ljava/lang/StringBuilder;

.field private shortPrimaryOverflow:Z

.field private uniqueCEs:Landroid/icu/impl/coll/UVector64;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1c0

    const/4 v1, 0x2

    .line 686
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, J

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 695
    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x0

    .line 68
    iput-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    .line 69
    iput-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    .line 70
    new-instance v2, Landroid/icu/impl/coll/UVector64;

    invoke-direct {v2}, Landroid/icu/impl/coll/UVector64;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    .line 71
    new-instance v2, Landroid/icu/impl/coll/UVector64;

    invoke-direct {v2}, Landroid/icu/impl/coll/UVector64;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    const/4 v2, 0x0

    .line 72
    iput-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    .line 73
    iput-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    .line 74
    iput-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    .line 75
    iput-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    .line 76
    iput-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    .line 78
    iput v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    return-void
.end method

.method private addContractionEntry(IJJ)V
    .locals 3

    .line 383
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    .line 384
    iget-object p1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {p1, p2, p3}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    .line 385
    iget-object p1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {p1, p4, p5}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    .line 386
    invoke-direct {p0, p2, p3}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    .line 387
    invoke-direct {p0, p4, p5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    return-void
.end method

.method private addUniqueCE(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, -0xc001

    and-long/2addr p1, v0

    .line 393
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->binarySearch([JIJ)I

    move-result v0

    if-gez v0, :cond_1

    .line 395
    iget-object p0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    not-int v0, v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/coll/UVector64;->insertElementAt(JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final binarySearch([JIJ)I
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    const-wide/16 v3, 0x2

    .line 49
    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 50
    aget-wide v2, p0, v1

    invoke-static {p2, p3, v2, v3}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->compareInt64AsUnsigned(JJ)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    if-gez v2, :cond_3

    if-ne v1, v0, :cond_2

    not-int p0, v0

    return p0

    :cond_2
    move p1, v1

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    not-int p0, v0

    return p0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static final compareInt64AsUnsigned(JJ)I
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    add-long/2addr p0, v0

    add-long/2addr p2, v0

    cmp-long p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private encodeCharCEs()V
    .locals 11

    .line 534
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x1c0

    if-ge v2, v3, :cond_0

    .line 536
    iget-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_4

    .line 540
    iget-object v5, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v5, v5, v4

    aget-wide v5, v5, v1

    .line 541
    invoke-static {v5, v6}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    .line 542
    :cond_1
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v7, v7, v4

    const/4 v8, 0x1

    aget-wide v9, v7, v8

    invoke-direct {p0, v5, v6, v9, v10}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeTwoCEs(JJ)I

    move-result v5

    ushr-int/lit8 v6, v5, 0x10

    if-lez v6, :cond_3

    .line 547
    iget-object v6, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v2

    const/16 v7, 0x3ff

    if-le v6, v7, :cond_2

    goto :goto_2

    .line 551
    :cond_2
    iget-object v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    shr-int/lit8 v8, v5, 0x10

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v5, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    or-int/lit16 v8, v6, 0x800

    goto :goto_2

    :cond_3
    move v8, v5

    .line 555
    :goto_2
    iget-object v5, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    add-int v6, v0, v4

    int-to-char v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private encodeContractions()V
    .locals 16

    move-object/from16 v0, p0

    .line 562
    iget v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    const/16 v2, 0x1c0

    add-int/2addr v1, v2

    .line 563
    iget-object v3, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_5

    .line 565
    iget-object v6, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v6, v6, v5

    aget-wide v6, v6, v4

    .line 566
    invoke-static {v6, v7}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    .line 567
    :cond_0
    iget-object v8, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v1

    const/16 v9, 0x3ff

    const/4 v10, 0x1

    if-le v8, v9, :cond_1

    .line 569
    iget-object v6, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    add-int/2addr v7, v5

    invoke-virtual {v6, v7, v10}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_1
    long-to-int v6, v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move v7, v10

    .line 574
    :goto_1
    iget-object v9, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v9, v6}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v11

    const-wide/16 v13, 0x1ff

    cmp-long v9, v11, v13

    if-nez v9, :cond_2

    if-nez v7, :cond_2

    .line 593
    iget-object v6, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    add-int/2addr v7, v5

    or-int/lit16 v8, v8, 0x400

    int-to-char v8, v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 576
    :cond_2
    iget-object v7, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v7, v9}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v13

    .line 577
    iget-object v7, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    add-int/lit8 v9, v6, 0x2

    move v15, v5

    invoke-virtual {v7, v9}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v4

    .line 578
    invoke-direct {v0, v13, v14, v4, v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeTwoCEs(JJ)I

    move-result v4

    if-ne v4, v10, :cond_3

    .line 580
    iget-object v4, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v13, 0x200

    or-long/2addr v11, v13

    long-to-int v5, v11

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    ushr-int/lit8 v5, v4, 0x10

    if-nez v5, :cond_4

    .line 582
    iget-object v5, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v13, 0x400

    or-long/2addr v11, v13

    long-to-int v7, v11

    int-to-char v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    iget-object v5, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    int-to-char v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 585
    :cond_4
    iget-object v5, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const-wide/16 v13, 0x600

    or-long/2addr v11, v13

    long-to-int v7, v11

    int-to-char v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    iget-object v5, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    shr-int/lit8 v7, v4, 0x10

    int-to-char v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v6, v6, 0x3

    move v5, v15

    const/4 v4, 0x0

    const/4 v7, 0x0

    goto :goto_1

    .line 596
    :cond_5
    iget-object v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v3, :cond_6

    .line 598
    iget-object v0, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method private encodeTwoCEs(JJ)I
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide v2, 0x101000100L

    cmp-long v2, p1, v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    .line 637
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getMiniCE(J)I

    move-result v2

    if-ne v2, v3, :cond_2

    return v2

    :cond_2
    const v4, 0xc000

    const/16 v5, 0x1000

    if-lt v2, v5, :cond_3

    long-to-int p1, p1

    and-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0xb

    add-int/lit8 p1, p1, 0x8

    or-int/2addr v2, p1

    :cond_3
    cmp-long p1, p3, v0

    if-nez p1, :cond_4

    return v2

    .line 649
    :cond_4
    invoke-direct {p0, p3, p4}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getMiniCE(J)I

    move-result p0

    if-ne p0, v3, :cond_5

    return p0

    :cond_5
    long-to-int p1, p3

    and-int/2addr p1, v4

    if-lt v2, v5, :cond_6

    and-int/lit16 p2, v2, 0x3e0

    const/16 p3, 0xa0

    if-ne p2, p3, :cond_6

    and-int/lit16 p2, p0, 0x3e0

    and-int/lit8 p3, p0, 0x7

    const/16 p4, 0x180

    if-lt p2, p4, :cond_6

    if-nez p1, :cond_6

    if-nez p3, :cond_6

    and-int/lit16 p0, v2, -0x3e1

    or-int/2addr p0, p2

    return p0

    :cond_6
    const/16 p2, 0x3e0

    if-le p0, p2, :cond_7

    if-gt v5, p0, :cond_8

    :cond_7
    shr-int/lit8 p1, p1, 0xb

    add-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    :cond_8
    shl-int/lit8 p1, v2, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method private encodeUniqueCEs()V
    .locals 19

    move-object/from16 v0, p0

    .line 407
    iget-object v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    .line 409
    iget-object v1, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    move v1, v2

    move v7, v1

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    .line 417
    :goto_0
    iget-object v12, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v12}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v12

    if-ge v1, v12, :cond_15

    .line 418
    iget-object v12, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v12, v1}, Landroid/icu/impl/coll/UVector64;->elementAti(I)J

    move-result-wide v12

    const/16 v14, 0x20

    ushr-long v14, v12, v14

    cmp-long v16, v14, v5

    if-eqz v16, :cond_7

    :goto_1
    cmp-long v16, v14, v3

    if-lez v16, :cond_1

    .line 427
    iget-object v3, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    int-to-char v4, v7

    invoke-virtual {v3, v8, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v3, 0x4

    if-ge v8, v3, :cond_0

    .line 429
    iget-object v3, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    aget-wide v3, v3, v8

    goto :goto_1

    :cond_0
    const-wide v3, 0xffffffffL

    :cond_1
    move-wide/from16 v17, v3

    .line 435
    iget-wide v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v2, v14, v2

    const/16 v3, 0x1000

    if-gez v2, :cond_4

    if-nez v7, :cond_2

    const/4 v4, 0x1

    const/16 v7, 0xc00

    goto :goto_2

    :cond_2
    const/16 v2, 0xff8

    if-ge v7, v2, :cond_3

    add-int/lit8 v7, v7, 0x8

    const/4 v4, 0x1

    goto :goto_2

    .line 444
    :cond_3
    iget-object v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/4 v4, 0x1

    aput-char v4, v2, v1

    goto :goto_3

    :cond_4
    const/4 v4, 0x1

    if-ge v7, v3, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    const v2, 0xf800

    if-ge v7, v2, :cond_6

    add-int/lit16 v7, v7, 0x400

    :goto_2
    move-wide v5, v14

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    const/16 v9, 0x500

    const/16 v10, 0xa0

    goto :goto_4

    .line 457
    :cond_6
    iput-boolean v4, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    .line 458
    iget-object v2, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    aput-char v4, v2, v1

    :goto_3
    move-wide/from16 v3, v17

    goto/16 :goto_c

    :cond_7
    move v2, v11

    :goto_4
    long-to-int v11, v12

    ushr-int/lit8 v12, v11, 0x10

    if-eq v12, v9, :cond_11

    if-nez v7, :cond_a

    if-nez v10, :cond_8

    const/16 v2, 0x180

    goto :goto_5

    :cond_8
    const/16 v13, 0x3e0

    if-ge v10, v13, :cond_9

    add-int/lit8 v10, v10, 0x20

    move v2, v10

    :goto_5
    move v10, v2

    goto :goto_8

    .line 476
    :cond_9
    iget-object v11, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/4 v14, 0x1

    aput-char v14, v11, v1

    goto/16 :goto_b

    :cond_a
    const/4 v14, 0x1

    const/16 v15, 0x500

    if-ge v12, v15, :cond_d

    const/16 v13, 0xa0

    if-ne v10, v13, :cond_b

    const/4 v10, 0x0

    goto :goto_8

    :cond_b
    const/16 v13, 0x80

    if-ge v10, v13, :cond_c

    :goto_6
    add-int/lit8 v2, v10, 0x20

    goto :goto_5

    .line 487
    :cond_c
    iget-object v11, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    aput-char v14, v11, v1

    goto :goto_b

    :cond_d
    const/16 v13, 0xa0

    if-ne v12, v15, :cond_e

    :goto_7
    move v10, v13

    goto :goto_8

    :cond_e
    const/16 v13, 0xc0

    if-ge v10, v13, :cond_f

    goto :goto_7

    :cond_f
    const/16 v13, 0x160

    if-ge v10, v13, :cond_10

    goto :goto_6

    :goto_8
    move v9, v12

    const/4 v2, 0x0

    goto :goto_9

    .line 498
    :cond_10
    iget-object v11, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/4 v12, 0x1

    aput-char v12, v11, v1

    goto :goto_b

    :cond_11
    :goto_9
    and-int/lit16 v11, v11, 0x3f3f

    const/16 v12, 0x500

    if-le v11, v12, :cond_13

    const/4 v11, 0x7

    if-ge v2, v11, :cond_12

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 511
    :cond_12
    iget-object v11, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    const/4 v12, 0x1

    aput-char v12, v11, v1

    goto :goto_b

    :cond_13
    :goto_a
    const/16 v11, 0xc00

    if-gt v11, v7, :cond_14

    const/16 v11, 0xff8

    if-gt v7, v11, :cond_14

    .line 517
    iget-object v11, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    or-int v12, v7, v2

    int-to-char v12, v12

    aput-char v12, v11, v1

    goto :goto_b

    .line 519
    :cond_14
    iget-object v11, v0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    or-int v12, v7, v10

    or-int/2addr v12, v2

    int-to-char v12, v12

    aput-char v12, v11, v1

    :goto_b
    move v11, v2

    :goto_c
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method private getCEs(Landroid/icu/impl/coll/CollationData;)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x180

    if-ne v1, v3, :cond_0

    const/16 v1, 0x2000

    goto :goto_1

    :cond_0
    const/16 v3, 0x2040

    if-ne v1, v3, :cond_1

    .line 230
    iget-object p0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    const-wide/16 v0, 0x1ff

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/coll/UVector64;->addElement(J)V

    return-void

    .line 203
    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v3

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2

    .line 205
    iget-object v3, p1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 206
    invoke-virtual {v3, v1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v3

    move-object v3, p1

    .line 210
    :goto_2
    invoke-direct {p0, v3, v1, v4}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    .line 211
    iget-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v7, v3, v2

    iget-wide v8, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    aput-wide v8, v7, v0

    .line 212
    aget-object v3, v3, v2

    iget-wide v10, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    aput-wide v10, v3, v6

    .line 213
    invoke-direct {p0, v8, v9}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    .line 214
    iget-wide v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    invoke-direct {p0, v7, v8}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addUniqueCE(J)V

    goto :goto_3

    .line 217
    :cond_3
    iget-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v7, v3, v2

    const-wide v8, 0x101000100L

    iput-wide v8, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    aput-wide v8, v7, v0

    .line 218
    aget-object v3, v3, v2

    iput-wide v4, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    aput-wide v4, v3, v6

    :goto_3
    if-nez v1, :cond_4

    .line 220
    iget-wide v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    invoke-static {v7, v8}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->isContractionCharCE(J)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v8, 0x1ff

    .line 224
    iget-wide v9, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v11, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    .line 225
    iget-object v3, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->charCEs:[[J

    aget-object v7, v3, v0

    const-wide v8, 0x180000000L

    aput-wide v8, v7, v0

    .line 226
    aget-object v3, v3, v0

    aput-wide v4, v3, v6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0
.end method

.method private getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z
    .locals 11

    .line 234
    invoke-virtual {p1, p3}, Landroid/icu/impl/coll/CollationData;->getFinalCE32(I)I

    move-result p3

    const-wide/16 v0, 0x0

    .line 235
    iput-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    .line 236
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->isSimpleOrLongCE32(I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 237
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_7

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eq v2, v5, :cond_5

    const/4 v5, 0x6

    if-eq v2, v5, :cond_3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_2

    const/16 v5, 0xe

    if-eq v2, v5, :cond_1

    return v4

    .line 280
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    goto :goto_0

    .line 277
    :cond_2
    invoke-direct {p0, p1, p3}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromContractionCE32(Landroid/icu/impl/coll/CollationData;I)Z

    move-result p0

    return p0

    .line 258
    :cond_3
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 259
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p3

    if-gt p3, v6, :cond_4

    .line 261
    iget-object v2, p1, Landroid/icu/impl/coll/CollationData;->ces:[J

    aget-wide v7, v2, p2

    iput-wide v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    if-ne p3, v6, :cond_8

    .line 263
    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->ces:[J

    add-int/2addr p2, v3

    aget-wide p1, p1, p2

    iput-wide p1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    goto :goto_0

    :cond_4
    return v4

    .line 245
    :cond_5
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    .line 246
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p3

    if-gt p3, v6, :cond_6

    .line 248
    iget-object v2, p1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    aget v2, v2, p2

    invoke-static {v2}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v7

    iput-wide v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    if-ne p3, v6, :cond_8

    .line 250
    iget-object p1, p1, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    add-int/2addr p2, v3

    aget p1, p1, p2

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    goto :goto_0

    :cond_6
    return v4

    .line 241
    :cond_7
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->latinCE0FromCE32(I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    .line 242
    invoke-static {p3}, Landroid/icu/impl/coll/Collation;->latinCE1FromCE32(I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    .line 287
    :cond_8
    :goto_0
    iget-wide p1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    cmp-long p3, p1, v0

    if-nez p3, :cond_a

    iget-wide p0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    move v3, v4

    :goto_1
    return v3

    :cond_a
    const/16 p3, 0x20

    ushr-long v5, p1, p3

    cmp-long v2, v5, v0

    if-nez v2, :cond_b

    return v4

    .line 292
    :cond_b
    iget-wide v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_c

    return v4

    :cond_c
    long-to-int p1, p1

    .line 295
    iget-wide v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long p2, v5, v7

    const/high16 v2, 0x5000000

    if-gez p2, :cond_d

    and-int/lit16 p2, p1, -0x4000

    if-eq p2, v2, :cond_d

    return v4

    :cond_d
    and-int/lit16 p1, p1, 0x3f3f

    const/16 p2, 0x500

    if-ge p1, p2, :cond_e

    return v4

    .line 301
    :cond_e
    iget-wide v7, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    cmp-long v9, v7, v0

    if-eqz v9, :cond_13

    ushr-long/2addr v7, p3

    cmp-long p3, v7, v0

    if-nez p3, :cond_f

    .line 308
    iget-wide v9, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_10

    goto :goto_2

    :cond_f
    invoke-direct {p0, v5, v6, v7, v8}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->inSameGroup(JJ)Z

    move-result v5

    if-nez v5, :cond_10

    :goto_2
    return v4

    .line 309
    :cond_10
    iget-wide v5, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    long-to-int v5, v5

    ushr-int/lit8 v6, v5, 0x10

    if-nez v6, :cond_11

    return v4

    :cond_11
    if-eqz p3, :cond_12

    .line 314
    iget-wide v9, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long p3, v7, v9

    if-gez p3, :cond_12

    and-int/lit16 p3, v5, -0x4000

    if-eq p3, v2, :cond_12

    return v4

    :cond_12
    if-ge p1, p2, :cond_13

    return v4

    .line 322
    :cond_13
    iget-wide p1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v5, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    or-long p0, p1, v5

    const-wide/16 p2, 0xc0

    and-long/2addr p0, p2

    cmp-long p0, p0, v0

    if-eqz p0, :cond_14

    return v4

    :cond_14
    return v3
.end method

.method private getCEsFromContractionCE32(Landroid/icu/impl/coll/CollationData;I)Z
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 327
    invoke-static/range {p2 .. p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v8

    .line 328
    invoke-virtual {v7, v8}, Landroid/icu/impl/coll/CollationData;->getCE32FromContexts(I)I

    move-result v0

    .line 332
    iget-object v1, v6, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v9

    const/4 v10, -0x1

    .line 333
    invoke-direct {v6, v7, v10, v0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1ff

    .line 334
    iget-wide v2, v6, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v4, v6, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1ff

    const-wide v2, 0x101000100L

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    .line 337
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    .line 343
    :goto_0
    iget-object v0, v7, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x2

    const/4 v11, 0x0

    invoke-static {v0, v8, v11}, Landroid/icu/util/CharsTrie;->iterator(Ljava/lang/CharSequence;II)Landroid/icu/util/CharsTrie$Iterator;

    move-result-object v8

    move v12, v10

    :goto_1
    move v0, v11

    .line 344
    :cond_1
    :goto_2
    invoke-virtual {v8}, Landroid/icu/util/CharsTrie$Iterator;->hasNext()Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_6

    .line 345
    invoke-virtual {v8}, Landroid/icu/util/CharsTrie$Iterator;->next()Landroid/icu/util/CharsTrie$Entry;

    move-result-object v14

    .line 346
    iget-object v15, v14, Landroid/icu/util/CharsTrie$Entry;->chars:Ljava/lang/CharSequence;

    .line 347
    invoke-interface {v15, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationFastLatin;->getCharIndex(C)I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_2

    :cond_2
    if-ne v4, v12, :cond_3

    if-eqz v0, :cond_1

    const-wide v2, 0x101000100L

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    move v1, v4

    move-wide v4, v13

    .line 352
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 358
    iget-wide v2, v6, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v0, v6, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move v1, v12

    move v12, v4

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    goto :goto_3

    :cond_4
    move v12, v4

    .line 360
    :goto_3
    iget v0, v14, Landroid/icu/util/CharsTrie$Entry;->value:I

    .line 361
    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v13, :cond_5

    invoke-direct {v6, v7, v10, v0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEsFromCE32(Landroid/icu/impl/coll/CollationData;II)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v13

    goto :goto_2

    :cond_5
    const-wide v2, 0x101000100L

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move v1, v12

    .line 364
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 370
    iget-wide v2, v6, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    iget-wide v4, v6, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    move-object/from16 v0, p0

    move v1, v12

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->addContractionEntry(IJJ)V

    :cond_7
    const-wide v0, 0x180000000L

    int-to-long v2, v9

    or-long/2addr v0, v2

    .line 377
    iput-wide v0, v6, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce0:J

    const-wide/16 v0, 0x0

    .line 378
    iput-wide v0, v6, Landroid/icu/impl/coll/CollationFastLatinBuilder;->ce1:J

    return v13
.end method

.method private getMiniCE(J)I
    .locals 2

    const-wide/32 v0, -0xc001

    and-long/2addr p1, v0

    .line 401
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v1}, Landroid/icu/impl/coll/UVector64;->size()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->binarySearch([JIJ)I

    move-result p1

    .line 403
    iget-object p0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->miniCEs:[C

    aget-char p0, p0, p1

    return p0
.end method

.method private inSameGroup(JJ)Z
    .locals 6

    .line 160
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_1

    cmp-long p0, p3, v0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    cmp-long v0, p3, v0

    if-ltz v0, :cond_2

    return v4

    .line 167
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    cmp-long v2, p1, v0

    if-lez v2, :cond_4

    cmp-long p0, p3, v0

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    return v3

    :cond_4
    cmp-long v0, p3, v0

    if-lez v0, :cond_5

    return v4

    :cond_5
    move v0, v4

    .line 178
    :goto_2
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    aget-wide v1, v1, v0

    cmp-long v5, p1, v1

    if-gtz v5, :cond_7

    cmp-long p0, p3, v1

    if-gtz p0, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    return v3

    :cond_7
    cmp-long v1, p3, v1

    if-gtz v1, :cond_8

    return v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static isContractionCharCE(J)Z
    .locals 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide v0, 0x101000100L

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadGroups(Landroid/icu/impl/coll/CollationData;)Z
    .locals 7

    const/4 v0, 0x5

    .line 133
    iput v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    .line 134
    iget v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    or-int/lit16 v0, v0, 0x200

    .line 135
    iget-object v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    const-wide/16 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 139
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    add-int/lit16 v5, v1, 0x1000

    invoke-virtual {p1, v5}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v5

    aput-wide v5, v2, v1

    .line 140
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastSpecialPrimaries:[J

    aget-wide v5, v2, v1

    cmp-long v2, v5, v3

    if-nez v2, :cond_0

    return v0

    .line 144
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1004

    .line 147
    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    const/16 v1, 0x19

    .line 148
    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v5

    iput-wide v5, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    .line 149
    invoke-virtual {p1, v1}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->lastLatinPrimary:J

    .line 150
    iget-wide v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    iget-wide p0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    cmp-long p0, p0, v3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method private resetCEs()V
    .locals 1

    .line 188
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    .line 189
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    .line 191
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method


# virtual methods
.method forData(Landroid/icu/impl/coll/CollationData;)Z
    .locals 2

    .line 82
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 85
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->loadGroups(Landroid/icu/impl/coll/CollationData;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 88
    :cond_0
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstDigitPrimary:J

    iput-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    .line 89
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEs(Landroid/icu/impl/coll/CollationData;)V

    .line 90
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeUniqueCEs()V

    .line 91
    iget-boolean v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    if-eqz v0, :cond_1

    .line 94
    iget-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstLatinPrimary:J

    iput-wide v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->firstShortPrimary:J

    .line 95
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->resetCEs()V

    .line 96
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->getCEs(Landroid/icu/impl/coll/CollationData;)V

    .line 97
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeUniqueCEs()V

    .line 107
    :cond_1
    iget-boolean p1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->shortPrimaryOverflow:Z

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 109
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeCharCEs()V

    .line 110
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationFastLatinBuilder;->encodeContractions()V

    .line 112
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->contractionCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    .line 113
    iget-object p0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->uniqueCEs:Landroid/icu/impl/coll/UVector64;

    invoke-virtual {p0}, Landroid/icu/impl/coll/UVector64;->removeAllElements()V

    return p1

    .line 83
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "attempt to reuse a CollationFastLatinBuilder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getHeader()[C
    .locals 3

    .line 121
    iget v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    new-array v1, v0, [C

    .line 122
    iget-object p0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-object v1
.end method

.method getTable()[C
    .locals 4

    .line 127
    iget-object v0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v1, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->headerLength:I

    sub-int/2addr v0, v1

    new-array v0, v0, [C

    .line 128
    iget-object p0, p0, Landroid/icu/impl/coll/CollationFastLatinBuilder;->result:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return-object v0
.end method
