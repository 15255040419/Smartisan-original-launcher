.class final Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
.super Ljava/lang/Object;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LockFreeBitArray"
.end annotation


# static fields
.field private static final LONG_ADDRESSABLE_BITS:I = 0x6


# instance fields
.field private final bitCount:Lcom/google/common/hash/LongAddable;

.field final data:Ljava/util/concurrent/atomic/AtomicLongArray;


# direct methods
.method constructor <init>(J)V
    .locals 3

    .line 154
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    const-wide/16 v1, 0x40

    invoke-static {p1, p2, v1, v2, v0}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p1

    new-array p1, p1, [J

    invoke-direct {p0, p1}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;-><init>([J)V

    return-void
.end method

.method constructor <init>([J)V
    .locals 6

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "data length is zero!"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    iput-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 161
    invoke-static {}, Lcom/google/common/hash/LongAddables;->create()Lcom/google/common/hash/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    const-wide/16 v2, 0x0

    .line 163
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-wide v4, p1, v1

    .line 164
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    :cond_1
    iget-object p0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    invoke-interface {p0, v2, v3}, Lcom/google/common/hash/LongAddable;->add(J)V

    return-void
.end method

.method public static toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J
    .locals 4

    .line 203
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 204
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 205
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method bitCount()J
    .locals 2

    .line 224
    iget-object p0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    invoke-interface {p0}, Lcom/google/common/hash/LongAddable;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method bitSize()J
    .locals 4

    .line 212
    iget-object p0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x40

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method copy()Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
    .locals 1

    .line 228
    new-instance v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    iget-object p0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p0}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;-><init>([J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 270
    instance-of v0, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    if-eqz v0, :cond_0

    .line 271
    check-cast p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    .line 273
    iget-object p0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p0}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object p0

    iget-object p1, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p1}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method get(J)Z
    .locals 2

    .line 194
    iget-object p0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    const/4 v0, 0x6

    ushr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    long-to-int p0, p1

    const-wide/16 p1, 0x1

    shl-long p0, p1, p0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {p0}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result p0

    return p0
.end method

.method putAll(Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 241
    iget-object v2, v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 242
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v2

    iget-object v3, v1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    iget-object v3, v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 244
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v3

    iget-object v6, v1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 245
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v6

    const-string v7, "BitArrays must be of equal length (%s != %s)"

    .line 241
    invoke-static {v2, v7, v3, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    move v2, v5

    .line 246
    :goto_1
    iget-object v3, v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 247
    iget-object v3, v1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v6

    .line 253
    :cond_1
    iget-object v3, v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v14

    or-long v16, v14, v6

    cmp-long v3, v14, v16

    if-nez v3, :cond_2

    move v3, v5

    goto :goto_2

    .line 259
    :cond_2
    iget-object v8, v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    move v9, v2

    move-wide v10, v14

    move-wide/from16 v12, v16

    invoke-virtual/range {v8 .. v13}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_2
    if-eqz v3, :cond_3

    .line 262
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    invoke-static {v14, v15}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    sub-int/2addr v3, v6

    .line 263
    iget-object v6, v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    int-to-long v7, v3

    invoke-interface {v6, v7, v8}, Lcom/google/common/hash/LongAddable;->add(J)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method set(J)Z
    .locals 10

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->get(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x6

    ushr-long v2, p1, v0

    long-to-int v0, v2

    const-wide/16 v2, 0x1

    long-to-int p1, p1

    shl-long p1, v2, p1

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v6

    or-long v8, v6, p1

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    return v1

    .line 186
    :cond_2
    iget-object v4, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    move v5, v0

    invoke-virtual/range {v4 .. v9}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    iget-object p0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    invoke-interface {p0}, Lcom/google/common/hash/LongAddable;->increment()V

    const/4 p0, 0x1

    return p0
.end method
