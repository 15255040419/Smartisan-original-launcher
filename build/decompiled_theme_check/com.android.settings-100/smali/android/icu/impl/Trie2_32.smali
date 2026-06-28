.class public Landroid/icu/impl/Trie2_32;
.super Landroid/icu/impl/Trie2;
.source "Trie2_32.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/icu/impl/Trie2;-><init>()V

    return-void
.end method

.method public static createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_32;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {p0}, Landroid/icu/impl/Trie2;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/Trie2_32;

    return-object p0
.end method


# virtual methods
.method public final get(I)I
    .locals 3

    if-ltz p1, :cond_4

    const v0, 0xd800

    if-lt p1, v0, :cond_3

    const v1, 0xdbff

    const v2, 0xffff

    if-le p1, v1, :cond_0

    if-gt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-gt p1, v2, :cond_1

    .line 90
    iget-object v1, p0, Landroid/icu/impl/Trie2_32;->index:[C

    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x800

    aget-char v0, v1, v0

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    .line 92
    iget-object p0, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget p0, p0, v0

    return p0

    .line 95
    :cond_1
    iget v0, p0, Landroid/icu/impl/Trie2_32;->highStart:I

    if-ge p1, v0, :cond_2

    shr-int/lit8 v0, p1, 0xb

    add-int/lit16 v0, v0, 0x820

    .line 98
    iget-object v1, p0, Landroid/icu/impl/Trie2_32;->index:[C

    aget-char v0, v1, v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v0, v1

    .line 100
    iget-object v1, p0, Landroid/icu/impl/Trie2_32;->index:[C

    aget-char v0, v1, v0

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    .line 102
    iget-object p0, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget p0, p0, v0

    return p0

    :cond_2
    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    .line 106
    iget-object p1, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    iget p0, p0, Landroid/icu/impl/Trie2_32;->highValueIndex:I

    aget p0, p1, p0

    return p0

    .line 78
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    .line 80
    iget-object p0, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget p0, p0, v0

    return p0

    .line 112
    :cond_4
    iget p0, p0, Landroid/icu/impl/Trie2_32;->errorValue:I

    return p0
.end method

.method public getFromU16SingleLead(C)I
    .locals 2

    .line 134
    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    .line 136
    iget-object p0, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget p0, p0, v0

    return p0
.end method

.method public getSerializedLength()I
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v0, v0, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x10

    iget p0, p0, Landroid/icu/impl/Trie2_32;->dataLength:I

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr v0, p0

    return v0
.end method

.method rangeEnd(III)I
    .locals 4

    :goto_0
    if-lt p1, p2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v0, 0x800

    const v1, 0xd800

    if-lt p1, v1, :cond_4

    const v2, 0xdbff

    const v3, 0xffff

    if-le p1, v2, :cond_1

    if-gt p1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-ge p1, v3, :cond_2

    .line 205
    iget-object v2, p0, Landroid/icu/impl/Trie2_32;->index:[C

    sub-int v1, p1, v1

    shr-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    goto :goto_2

    .line 206
    :cond_2
    iget v0, p0, Landroid/icu/impl/Trie2_32;->highStart:I

    if-ge p1, v0, :cond_3

    shr-int/lit8 v0, p1, 0xb

    add-int/lit16 v0, v0, 0x820

    .line 209
    iget-object v1, p0, Landroid/icu/impl/Trie2_32;->index:[C

    aget-char v0, v1, v0

    .line 210
    iget-object v1, p0, Landroid/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v2, p1, 0x5

    and-int/lit8 v2, v2, 0x3f

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    goto :goto_2

    .line 213
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    iget p0, p0, Landroid/icu/impl/Trie2_32;->highValueIndex:I

    aget p0, v0, p0

    if-ne p3, p0, :cond_9

    move p1, p2

    goto :goto_4

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Landroid/icu/impl/Trie2_32;->index:[C

    shr-int/lit8 v2, p1, 0x5

    aget-char v1, v1, v2

    :goto_2
    shl-int/lit8 v1, v1, 0x2

    .line 219
    iget v2, p0, Landroid/icu/impl/Trie2_32;->index2NullOffset:I

    if-ne v0, v2, :cond_6

    .line 220
    iget v0, p0, Landroid/icu/impl/Trie2_32;->initialValue:I

    if-eq p3, v0, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit16 p1, p1, 0x800

    goto :goto_0

    .line 224
    :cond_6
    iget v0, p0, Landroid/icu/impl/Trie2_32;->dataNullOffset:I

    if-ne v1, v0, :cond_8

    .line 229
    iget v0, p0, Landroid/icu/impl/Trie2_32;->initialValue:I

    if-eq p3, v0, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_8
    and-int/lit8 v0, p1, 0x1f

    add-int/2addr v0, v1

    add-int/lit8 v1, v1, 0x20

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_c

    .line 239
    iget-object v3, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v3, v3, v2

    if-eq v3, p3, :cond_b

    sub-int/2addr v2, v0

    add-int/2addr p1, v2

    :cond_9
    :goto_4
    if-le p1, p2, :cond_a

    move p1, p2

    :cond_a
    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    sub-int/2addr v1, v0

    add-int/2addr p1, v1

    goto :goto_0
.end method

.method public serialize(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie2_32;->serializeHeader(Ljava/io/DataOutputStream;)I

    move-result p1

    const/4 v1, 0x0

    add-int/2addr p1, v1

    .line 157
    :goto_0
    iget v2, p0, Landroid/icu/impl/Trie2_32;->dataLength:I

    if-ge v1, v2, :cond_0

    .line 158
    iget-object v2, p0, Landroid/icu/impl/Trie2_32;->data32:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    :cond_0
    iget p0, p0, Landroid/icu/impl/Trie2_32;->dataLength:I

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr p1, p0

    return p1
.end method
