.class final Lcom/google/common/hash/HashCode$LongHashCode;
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
    name = "LongHashCode"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final hash:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    .line 181
    iput-wide p1, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    return-void
.end method


# virtual methods
.method public asBytes()[B
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 191
    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    long-to-int p0, v2

    int-to-byte p0, p0

    const/4 v4, 0x0

    aput-byte p0, v1, v4

    shr-long v4, v2, v0

    long-to-int p0, v4

    int-to-byte p0, p0

    const/4 v0, 0x1

    aput-byte p0, v1, v0

    const/16 p0, 0x10

    shr-long v4, v2, p0

    long-to-int p0, v4

    int-to-byte p0, p0

    const/4 v0, 0x2

    aput-byte p0, v1, v0

    const/16 p0, 0x18

    shr-long v4, v2, p0

    long-to-int p0, v4

    int-to-byte p0, p0

    const/4 v0, 0x3

    aput-byte p0, v1, v0

    const/16 p0, 0x20

    shr-long v4, v2, p0

    long-to-int p0, v4

    int-to-byte p0, p0

    const/4 v0, 0x4

    aput-byte p0, v1, v0

    const/16 p0, 0x28

    shr-long v4, v2, p0

    long-to-int p0, v4

    int-to-byte p0, p0

    const/4 v0, 0x5

    aput-byte p0, v1, v0

    const/16 p0, 0x30

    shr-long v4, v2, p0

    long-to-int p0, v4

    int-to-byte p0, p0

    const/4 v0, 0x6

    aput-byte p0, v1, v0

    const/16 p0, 0x38

    shr-long/2addr v2, p0

    long-to-int p0, v2

    int-to-byte p0, p0

    const/4 v0, 0x7

    aput-byte p0, v1, v0

    return-object v1
.end method

.method public asInt()I
    .locals 2

    .line 205
    iget-wide v0, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    long-to-int p0, v0

    return p0
.end method

.method public asLong()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    return-wide v0
.end method

.method public bits()I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method equalsSameBits(Lcom/google/common/hash/HashCode;)Z
    .locals 2

    .line 227
    iget-wide v0, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public padToLong()J
    .locals 2

    .line 215
    iget-wide v0, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    return-wide v0
.end method

.method writeBytesToImpl([BII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 221
    iget-wide v2, p0, Lcom/google/common/hash/HashCode$LongHashCode;->hash:J

    mul-int/lit8 v4, v0, 0x8

    shr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
