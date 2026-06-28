.class final Lcom/google/common/hash/HashCode$BytesHashCode;
.super Lcom/google/common/hash/HashCode;
.source "HashCode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BytesHashCode"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    .line 256
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public asInt()I
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v3, v3

    const-string v4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes)."

    invoke-static {v0, v4, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 275
    iget-object p0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public asLong()J
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v0, v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v1, v1

    const-string v2, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes)."

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 287
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode$BytesHashCode;->padToLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public bits()I
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method equalsSameBits(Lcom/google/common/hash/HashCode;)Z
    .locals 6

    .line 313
    iget-object v0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v0, v0

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    move v3, v0

    move v1, v2

    .line 318
    :goto_0
    iget-object v4, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 319
    aget-byte v4, v4, v1

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v5

    aget-byte v5, v5, v1

    if-ne v4, v5, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method getBytesInternal()[B
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    return-object p0
.end method

.method public padToLong()J
    .locals 7

    .line 292
    iget-object v0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/4 v2, 0x1

    .line 293
    :goto_0
    iget-object v3, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    array-length v3, v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    aget-byte v3, v3, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method writeBytesToImpl([BII)V
    .locals 1

    .line 301
    iget-object p0, p0, Lcom/google/common/hash/HashCode$BytesHashCode;->bytes:[B

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
