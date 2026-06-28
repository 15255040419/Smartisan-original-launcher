.class final enum Lcom/google/common/hash/BloomFilterStrategies$1;
.super Lcom/google/common/hash/BloomFilterStrategies;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V

    return-void
.end method


# virtual methods
.method public mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;",
            ")Z"
        }
    .end annotation

    .line 69
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitSize()J

    move-result-wide v0

    .line 70
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide p0

    long-to-int p2, p0

    const/16 v2, 0x20

    ushr-long/2addr p0, v2

    long-to-int p0, p0

    const/4 p1, 0x1

    move v2, p1

    :goto_0
    if-gt v2, p3, :cond_2

    mul-int v3, v2, p0

    add-int/2addr v3, p2

    if-gez v3, :cond_0

    not-int v3, v3

    :cond_0
    int-to-long v3, v3

    .line 80
    rem-long/2addr v3, v0

    invoke-virtual {p4, v3, v4}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->get(J)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method public put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;",
            ")Z"
        }
    .end annotation

    .line 49
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitSize()J

    move-result-wide v0

    .line 50
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide p0

    long-to-int p2, p0

    const/16 v2, 0x20

    ushr-long/2addr p0, v2

    long-to-int p0, p0

    const/4 p1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-gt p1, p3, :cond_1

    mul-int v3, p1, p0

    add-int/2addr v3, p2

    if-gez v3, :cond_0

    not-int v3, v3

    :cond_0
    int-to-long v3, v3

    .line 61
    rem-long/2addr v3, v0

    invoke-virtual {p4, v3, v4}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->set(J)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
