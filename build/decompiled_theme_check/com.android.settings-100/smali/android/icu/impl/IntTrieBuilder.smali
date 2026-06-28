.class public Landroid/icu/impl/IntTrieBuilder;
.super Landroid/icu/impl/TrieBuilder;
.source "IntTrieBuilder.java"


# instance fields
.field protected m_data_:[I

.field protected m_initialValue_:I

.field private m_leadUnitValue_:I


# direct methods
.method public constructor <init>(Landroid/icu/impl/IntTrieBuilder;)V
    .locals 4

    .line 48
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieBuilder;-><init>(Landroid/icu/impl/TrieBuilder;)V

    .line 49
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataCapacity_:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    .line 50
    iget-object v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget v0, p1, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    iput v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    .line 52
    iget p1, p1, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    iput p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    return-void
.end method

.method public constructor <init>([IIIIZ)V
    .locals 5

    .line 66
    invoke-direct {p0}, Landroid/icu/impl/TrieBuilder;-><init>()V

    const/16 v0, 0x20

    if-lt p2, v0, :cond_4

    if-eqz p5, :cond_0

    const/16 v1, 0x400

    if-lt p2, v1, :cond_4

    :cond_0
    if-eqz p1, :cond_1

    .line 74
    iput-object p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    goto :goto_0

    .line 77
    :cond_1
    new-array p1, p2, [I

    iput-object p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    :goto_0
    const/4 p1, 0x0

    if-eqz p5, :cond_3

    move v1, p1

    move v2, v0

    .line 92
    :goto_1
    iget-object v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    add-int/lit8 v4, v1, 0x1

    aput v2, v3, v1

    add-int/2addr v2, v0

    const/16 v1, 0x8

    if-lt v4, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v1, v4

    goto :goto_1

    .line 97
    :cond_3
    :goto_2
    iput v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    .line 99
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    invoke-static {v0, p1, v1, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 100
    iput p3, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    .line 101
    iput p4, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    .line 102
    iput p2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataCapacity_:I

    .line 103
    iput-boolean p5, p0, Landroid/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    .line 104
    iput-boolean p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    return-void

    .line 69
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument maxdatalength is too small"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private allocDataBlock()I
    .locals 3

    .line 508
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    add-int/lit8 v1, v0, 0x20

    .line 510
    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataCapacity_:I

    if-le v1, v2, :cond_0

    const/4 p0, -0x1

    return p0

    .line 514
    :cond_0
    iput v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    return v0
.end method

.method private compact(Z)V
    .locals 8

    .line 559
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    if-eqz v0, :cond_0

    return-void

    .line 565
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/IntTrieBuilder;->findUnusedBlocks()V

    .line 570
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    const/16 v0, 0x120

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v2, v1

    move v3, v2

    .line 576
    :cond_2
    :goto_1
    iget v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    const/4 v5, 0x0

    if-ge v2, v4, :cond_a

    .line 581
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    ushr-int/lit8 v6, v2, 0x5

    aget v4, v4, v6

    if-gez v4, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x20

    goto :goto_1

    :cond_3
    if-lt v2, v0, :cond_5

    .line 589
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    if-eqz p1, :cond_4

    const/4 v7, 0x4

    goto :goto_3

    :cond_4
    move v7, v1

    :goto_3
    invoke-static {v4, v3, v2, v7}, Landroid/icu/impl/IntTrieBuilder;->findSameDataBlock([IIII)I

    move-result v4

    if-ltz v4, :cond_5

    .line 594
    iget-object v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    aput v4, v5, v6

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    if-lt v2, v0, :cond_6

    const/16 v4, 0x1c

    move v5, v4

    :goto_4
    if-lez v5, :cond_6

    .line 606
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    sub-int v7, v3, v5

    invoke-static {v4, v7, v2, v5}, Landroid/icu/impl/IntTrieBuilder;->equal_int([IIII)Z

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v5, v5, -0x4

    goto :goto_4

    :cond_6
    if-lez v5, :cond_7

    .line 613
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    sub-int v7, v3, v5

    aput v7, v4, v6

    add-int/2addr v2, v5

    rsub-int/lit8 v4, v5, 0x20

    :goto_5
    if-lez v4, :cond_2

    .line 617
    iget-object v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v2, 0x1

    aget v2, v5, v2

    aput v2, v5, v3

    add-int/lit8 v4, v4, -0x1

    move v3, v6

    move v2, v7

    goto :goto_5

    :cond_7
    if-ge v3, v2, :cond_9

    .line 622
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    aput v3, v4, v6

    move v4, v2

    move v2, v1

    :goto_6
    if-lez v2, :cond_8

    .line 624
    iget-object v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v4, 0x1

    aget v4, v5, v4

    aput v4, v5, v3

    add-int/lit8 v2, v2, -0x1

    move v3, v6

    move v4, v7

    goto :goto_6

    :cond_8
    move v2, v4

    goto :goto_1

    .line 628
    :cond_9
    iget-object v4, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    aput v2, v4, v6

    add-int/lit8 v3, v3, 0x20

    move v2, v3

    goto :goto_1

    .line 634
    :cond_a
    :goto_7
    iget p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    if-ge v5, p1, :cond_b

    .line 635
    iget-object p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_map_:[I

    iget-object v1, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    aput v0, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 637
    :cond_b
    iput v3, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    return-void
.end method

.method private fillBlock(IIIIZ)V
    .locals 1

    add-int/2addr p3, p1

    add-int/2addr p1, p2

    if-eqz p5, :cond_0

    :goto_0
    if-ge p1, p3, :cond_2

    .line 783
    iget-object p2, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    add-int/lit8 p5, p1, 0x1

    aput p4, p2, p1

    move p1, p5

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p3, :cond_2

    .line 788
    iget-object p2, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    aget p5, p2, p1

    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    if-ne p5, v0, :cond_1

    .line 789
    aput p4, p2, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static final findSameDataBlock([IIII)I
    .locals 2

    add-int/lit8 p1, p1, -0x20

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    const/16 v1, 0x20

    .line 654
    invoke-static {p0, v0, p2, v1}, Landroid/icu/impl/IntTrieBuilder;->equal_int([IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/2addr v0, p3

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private final fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V
    .locals 13

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 675
    iget-object v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    const/16 v3, 0x6c0

    const/4 v4, 0x0

    .line 677
    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    iget v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    if-ne v5, v6, :cond_0

    move v5, v4

    goto :goto_0

    .line 694
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/IntTrieBuilder;->allocDataBlock()I

    move-result v5

    if-ltz v5, :cond_7

    const/4 v9, 0x0

    const/16 v10, 0x20

    .line 699
    iget v11, p0, Landroid/icu/impl/IntTrieBuilder;->m_leadUnitValue_:I

    const/4 v12, 0x1

    move-object v7, p0

    move v8, v5

    invoke-direct/range {v7 .. v12}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    neg-int v5, v5

    :goto_0
    const/16 v6, 0x6e0

    if-ge v3, v6, :cond_1

    .line 704
    iget-object v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aput v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/high16 v3, 0x10000

    const/16 v5, 0x800

    move v6, v5

    :goto_1
    const/high16 v7, 0x110000

    if-ge v3, v7, :cond_5

    shr-int/lit8 v7, v3, 0x5

    .line 717
    aget v7, v2, v7

    if-eqz v7, :cond_4

    and-int/lit16 v3, v3, -0x400

    shr-int/lit8 v7, v3, 0x5

    .line 721
    invoke-static {v2, v6, v7}, Landroid/icu/impl/IntTrieBuilder;->findSameIndexBlock([III)I

    move-result v8

    add-int/lit8 v9, v8, 0x20

    .line 727
    invoke-interface {p1, v3, v9}, Landroid/icu/impl/TrieBuilder$DataManipulate;->getFoldedValue(II)I

    move-result v9

    .line 729
    invoke-static {v3}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v10

    invoke-virtual {p0, v10}, Landroid/icu/impl/IntTrieBuilder;->getValue(I)I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 730
    invoke-static {v3}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v10

    invoke-virtual {p0, v10, v9}, Landroid/icu/impl/IntTrieBuilder;->setValue(II)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v8, v6, :cond_3

    .line 739
    invoke-static {v2, v7, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x20

    goto :goto_2

    .line 732
    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Data table overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit16 v3, v3, 0x400

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x20

    goto :goto_1

    :cond_5
    const p1, 0x8800

    if-ge v6, p1, :cond_6

    const/16 p1, 0x820

    add-int/lit16 v3, v6, -0x800

    .line 764
    invoke-static {v2, v5, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    invoke-static {v1, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v0

    .line 770
    iput v6, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    return-void

    .line 760
    :cond_6
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Index table overflow"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 697
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error: Out of memory space"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDataBlock(I)I
    .locals 3

    shr-int/lit8 p1, p1, 0x5

    .line 526
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aget v0, v0, p1

    if-lez v0, :cond_0

    return v0

    .line 532
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/IntTrieBuilder;->allocDataBlock()I

    move-result v1

    if-gez v1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 537
    :cond_1
    iget-object v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aput v1, v2, p1

    .line 540
    iget-object p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object p0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    const/16 v2, 0x80

    invoke-static {p1, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method


# virtual methods
.method public getValue(I)I
    .locals 2

    .line 175
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    if-nez v0, :cond_1

    const v0, 0x10ffff

    if-gt p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    shr-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    .line 180
    iget-object p0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    aget p0, p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getValue(I[Z)I
    .locals 4

    .line 193
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const v0, 0x10ffff

    if-gt p1, v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    shr-int/lit8 v3, p1, 0x5

    aget v0, v0, v3

    if-eqz p2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 202
    :goto_0
    aput-boolean v1, p2, v2

    .line 204
    :cond_2
    iget-object p0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr p2, p1

    aget p0, p0, p2

    return p0

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 195
    aput-boolean v1, p2, v2

    :cond_4
    return v2
.end method

.method public serialize(Ljava/io/OutputStream;ZLandroid/icu/impl/TrieBuilder$DataManipulate;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_b

    .line 305
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 307
    invoke-direct {p0, v1}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    .line 309
    invoke-direct {p0, p3}, Landroid/icu/impl/IntTrieBuilder;->fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V

    const/4 p3, 0x1

    .line 311
    invoke-direct {p0, p3}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    .line 312
    iput-boolean p3, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    :cond_0
    if-eqz p2, :cond_1

    .line 318
    iget p3, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    add-int/2addr p3, v0

    goto :goto_0

    .line 320
    :cond_1
    iget p3, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    :goto_0
    const/high16 v0, 0x40000

    if-ge p3, v0, :cond_a

    .line 331
    iget p3, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x10

    if-eqz p2, :cond_2

    .line 333
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 335
    :cond_2
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    mul-int/lit8 v0, v0, 0x4

    :goto_1
    add-int/2addr p3, v0

    if-nez p1, :cond_3

    return p3

    .line 343
    :cond_3
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const p1, 0x54726965

    .line 344
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 p1, 0x25

    if-nez p2, :cond_4

    const/16 p1, 0x125

    .line 350
    :cond_4
    iget-boolean v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    if-eqz v2, :cond_5

    or-int/lit16 p1, p1, 0x200

    .line 353
    :cond_5
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 355
    iget p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 356
    iget p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz p2, :cond_7

    move p1, v1

    .line 361
    :goto_2
    iget p2, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    if-ge p1, p2, :cond_6

    .line 362
    iget-object p2, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aget p2, p2, p1

    iget v2, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    add-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x2

    .line 363
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 367
    :cond_6
    :goto_3
    iget p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    if-ge v1, p1, :cond_9

    .line 368
    iget-object p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    aget p1, p1, v1

    const p2, 0xffff

    and-int/2addr p1, p2

    .line 369
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move p1, v1

    .line 373
    :goto_4
    iget p2, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    if-ge p1, p2, :cond_8

    .line 374
    iget-object p2, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aget p2, p2, p1

    ushr-int/lit8 p2, p2, 0x2

    .line 375
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 379
    :cond_8
    :goto_5
    iget p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    if-ge v1, p1, :cond_9

    .line 380
    iget-object p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    return p3

    .line 323
    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Data length too small"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 300
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameters can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public serialize(Landroid/icu/impl/TrieBuilder$DataManipulate;Landroid/icu/impl/Trie$DataManipulate;)Landroid/icu/impl/IntTrie;
    .locals 8

    if-eqz p1, :cond_4

    .line 245
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 247
    invoke-direct {p0, v1}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    .line 249
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->fold(Landroid/icu/impl/TrieBuilder$DataManipulate;)V

    const/4 p1, 0x1

    .line 251
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->compact(Z)V

    .line 252
    iput-boolean p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    .line 255
    :cond_0
    iget p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    const/high16 v0, 0x40000

    if-ge p1, v0, :cond_3

    .line 259
    iget p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    new-array v3, p1, [C

    .line 260
    iget p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    new-array v4, p1, [I

    move p1, v1

    .line 263
    :goto_0
    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_indexLength_:I

    if-ge p1, v0, :cond_1

    .line 264
    iget-object v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    aget v0, v0, p1

    ushr-int/lit8 v0, v0, 0x2

    int-to-char v0, v0

    aput-char v0, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 267
    :cond_1
    iget-object p1, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    iget v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_dataLength_:I

    invoke-static {p1, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x125

    .line 271
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isLatin1Linear_:Z

    if-eqz v0, :cond_2

    const/16 p1, 0x325

    :cond_2
    move v6, p1

    .line 274
    new-instance p1, Landroid/icu/impl/IntTrie;

    iget v5, p0, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/IntTrie;-><init>([C[IIILandroid/icu/impl/Trie$DataManipulate;)V

    return-object p1

    .line 256
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Data length too small"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameters can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRange(IIIZ)Z
    .locals 14

    move-object v6, p0

    move v0, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 409
    iget-boolean v1, v6, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v9, 0x0

    if-nez v1, :cond_e

    if-ltz v0, :cond_e

    const v1, 0x10ffff

    if-gt v0, v1, :cond_e

    if-ltz v7, :cond_e

    const/high16 v1, 0x110000

    if-gt v7, v1, :cond_e

    if-le v0, v7, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v10, 0x1

    if-ne v0, v7, :cond_1

    return v10

    :cond_1
    and-int/lit8 v2, v0, 0x1f

    if-eqz v2, :cond_4

    .line 421
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v1

    if-gez v1, :cond_2

    return v9

    :cond_2
    add-int/lit8 v0, v0, 0x20

    and-int/lit8 v11, v0, -0x20

    if-gt v11, v7, :cond_3

    const/16 v3, 0x20

    move-object v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    .line 428
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v7, 0x1f

    move-object v0, p0

    move/from16 v4, p3

    move/from16 v5, p4

    .line 433
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    return v10

    :cond_4
    move v11, v0

    :goto_0
    and-int/lit8 v12, v7, 0x1f

    and-int/lit8 v7, v7, -0x20

    .line 447
    iget v0, v6, Landroid/icu/impl/IntTrieBuilder;->m_initialValue_:I

    if-ne v8, v0, :cond_5

    move v13, v9

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    move v13, v0

    :goto_1
    if-ge v11, v7, :cond_b

    .line 455
    iget-object v0, v6, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    shr-int/lit8 v1, v11, 0x5

    aget v2, v0, v1

    if-lez v2, :cond_6

    const/4 v3, 0x0

    const/16 v4, 0x20

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    .line 458
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    goto :goto_2

    .line 460
    :cond_6
    iget-object v0, v6, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    neg-int v3, v2

    aget v0, v0, v3

    if-eq v0, v8, :cond_a

    if-eqz v2, :cond_7

    if-eqz p4, :cond_a

    :cond_7
    if-ltz v13, :cond_8

    .line 464
    iget-object v0, v6, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    neg-int v2, v13

    aput v2, v0, v1

    goto :goto_2

    .line 468
    :cond_8
    invoke-direct {p0, v11}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v13

    if-gez v13, :cond_9

    return v9

    .line 475
    :cond_9
    iget-object v0, v6, Landroid/icu/impl/IntTrieBuilder;->m_index_:[I

    neg-int v2, v13

    aput v2, v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v13

    move/from16 v4, p3

    .line 476
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    :cond_a
    :goto_2
    add-int/lit8 v11, v11, 0x20

    goto :goto_1

    :cond_b
    if-lez v12, :cond_d

    .line 485
    invoke-direct {p0, v11}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v1

    if-gez v1, :cond_c

    return v9

    :cond_c
    const/4 v2, 0x0

    move-object v0, p0

    move v3, v12

    move/from16 v4, p3

    move/from16 v5, p4

    .line 489
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/IntTrieBuilder;->fillBlock(IIIIZ)V

    :cond_d
    return v10

    :cond_e
    :goto_3
    return v9
.end method

.method public setValue(II)Z
    .locals 2

    .line 218
    iget-boolean v0, p0, Landroid/icu/impl/IntTrieBuilder;->m_isCompacted_:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const v0, 0x10ffff

    if-gt p1, v0, :cond_2

    if-gez p1, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/IntTrieBuilder;->getDataBlock(I)I

    move-result v0

    if-gez v0, :cond_1

    return v1

    .line 227
    :cond_1
    iget-object p0, p0, Landroid/icu/impl/IntTrieBuilder;->m_data_:[I

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    aput p2, p0, v0

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method
