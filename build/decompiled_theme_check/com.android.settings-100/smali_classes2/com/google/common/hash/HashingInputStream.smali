.class public final Lcom/google/common/hash/HashingInputStream;
.super Ljava/io/FilterInputStream;
.source "HashingInputStream.java"


# instance fields
.field private final hasher:Lcom/google/common/hash/Hasher;


# direct methods
.method public constructor <init>(Lcom/google/common/hash/HashFunction;Ljava/io/InputStream;)V
    .locals 0

    .line 42
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/InputStream;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    invoke-interface {p1}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/hash/Hasher;

    iput-object p1, p0, Lcom/google/common/hash/HashingInputStream;->hasher:Lcom/google/common/hash/Hasher;

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/google/common/hash/HashingInputStream;->hasher:Lcom/google/common/hash/Hasher;

    invoke-interface {p0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public mark(I)V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/common/hash/HashingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 55
    iget-object p0, p0, Lcom/google/common/hash/HashingInputStream;->hasher:Lcom/google/common/hash/Hasher;

    int-to-byte v1, v0

    invoke-interface {p0, v1}, Lcom/google/common/hash/Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/common/hash/HashingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 69
    iget-object p0, p0, Lcom/google/common/hash/HashingInputStream;->hasher:Lcom/google/common/hash/Hasher;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/common/hash/Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    :cond_0
    return p3
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    new-instance p0, Ljava/io/IOException;

    const-string v0, "reset not supported"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
