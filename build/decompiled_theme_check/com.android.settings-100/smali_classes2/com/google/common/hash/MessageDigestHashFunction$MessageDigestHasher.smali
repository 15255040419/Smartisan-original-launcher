.class final Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;
.super Lcom/google/common/hash/AbstractByteHasher;
.source "MessageDigestHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/MessageDigestHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageDigestHasher"
.end annotation


# instance fields
.field private final bytes:I

.field private final digest:Ljava/security/MessageDigest;

.field private done:Z


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/google/common/hash/AbstractByteHasher;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    .line 129
    iput p2, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->bytes:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/common/hash/MessageDigestHashFunction$1;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;-><init>(Ljava/security/MessageDigest;I)V

    return-void
.end method

.method private checkNotDone()V
    .locals 1

    .line 151
    iget-boolean p0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->done:Z

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 2

    .line 156
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->done:Z

    .line 158
    iget v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->bytes:I

    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    .line 159
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    .line 160
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget p0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->bytes:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected update(B)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    .line 135
    iget-object p0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method protected update(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 146
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    .line 147
    iget-object p0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected update([BII)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    .line 141
    iget-object p0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
