.class final Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;
.super Lcom/google/common/hash/AbstractHasher;
.source "Murmur3_32HashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Murmur3_32HashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Murmur3_32Hasher"
.end annotation


# instance fields
.field private buffer:J

.field private h1:I

.field private isDone:Z

.field private length:I

.field private shift:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 267
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHasher;-><init>()V

    .line 268
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    const/4 p1, 0x0

    .line 269
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    .line 270
    iput-boolean p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->isDone:Z

    return-void
.end method

.method private update(IJ)V
    .locals 4

    .line 275
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    const-wide v2, 0xffffffffL

    and-long/2addr p2, v2

    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    shl-long/2addr p2, v2

    or-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    mul-int/lit8 p2, p1, 0x8

    add-int/2addr v2, p2

    .line 276
    iput v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    .line 277
    iget p2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    .line 279
    iget p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    const/16 p2, 0x20

    if-lt p1, p2, :cond_0

    .line 280
    iget p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    long-to-int p3, v0

    invoke-static {p3}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$000(I)I

    move-result p3

    invoke-static {p1, p3}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$100(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 281
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    ushr-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    .line 282
    iget p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    :cond_0
    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 3

    .line 386
    iget-boolean v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->isDone:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 387
    iput-boolean v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->isDone:Z

    .line 388
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    iget-wide v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$000(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 389
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    iget p0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    invoke-static {v0, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$600(II)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .locals 2

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    const/4 p1, 0x1

    .line 288
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 3

    .line 307
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 308
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 309
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    goto :goto_0

    .line 312
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 4

    add-int v0, p2, p3

    .line 294
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x4

    if-gt v1, p3, :cond_0

    add-int/2addr v0, p2

    .line 297
    invoke-static {p1, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$200([BI)I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x4

    invoke-direct {p0, v0, v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    move v0, v1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 300
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x2

    .line 334
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x4

    .line 321
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .locals 3

    long-to-int v0, p1

    int-to-long v0, v0

    const/4 v2, 0x4

    .line 327
    invoke-direct {p0, v2, v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    .line 328
    invoke-direct {p0, v2, p1, p2}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;
    .locals 9

    .line 341
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 342
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x4

    const/4 v3, 0x4

    const/16 v4, 0x80

    if-gt v2, v0, :cond_0

    .line 347
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v1, 0x1

    .line 348
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v1, 0x2

    .line 349
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v1, 0x3

    .line 350
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ge v5, v4, :cond_0

    if-ge v6, v4, :cond_0

    if-ge v7, v4, :cond_0

    if-ge v8, v4, :cond_0

    shl-int/lit8 v1, v6, 0x8

    or-int/2addr v1, v5

    shl-int/lit8 v4, v7, 0x10

    or-int/2addr v1, v4

    shl-int/lit8 v4, v8, 0x18

    or-int/2addr v1, v4

    int-to-long v4, v1

    .line 352
    invoke-direct {p0, v3, v4, v5}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    move v1, v2

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_6

    .line 360
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    int-to-long v6, v2

    .line 362
    invoke-direct {p0, v5, v6, v7}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    goto :goto_3

    :cond_1
    const/16 v6, 0x800

    if-ge v2, v6, :cond_2

    .line 364
    invoke-static {v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$300(C)J

    move-result-wide v6

    const/4 v2, 0x2

    invoke-direct {p0, v2, v6, v7}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    goto :goto_3

    :cond_2
    const v6, 0xd800

    if-lt v2, v6, :cond_5

    const v6, 0xdfff

    if-le v2, v6, :cond_3

    goto :goto_2

    .line 368
    :cond_3
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    if-ne v6, v2, :cond_4

    .line 371
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    return-object p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 375
    invoke-static {v6}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$500(I)J

    move-result-wide v6

    invoke-direct {p0, v3, v6, v7}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    goto :goto_3

    .line 366
    :cond_5
    :goto_2
    invoke-static {v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$400(C)J

    move-result-wide v6

    const/4 v2, 0x3

    invoke-direct {p0, v2, v6, v7}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    :goto_3
    add-int/2addr v1, v5

    goto :goto_1

    :cond_6
    return-object p0

    .line 380
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/google/common/hash/AbstractHasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method
