.class final Lcom/google/common/hash/MacHashFunction$MacHasher;
.super Lcom/google/common/hash/AbstractByteHasher;
.source "MacHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/MacHashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MacHasher"
.end annotation


# instance fields
.field private done:Z

.field private final mac:Ljavax/crypto/Mac;


# direct methods
.method private constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/google/common/hash/AbstractByteHasher;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    return-void
.end method

.method synthetic constructor <init>(Ljavax/crypto/Mac;Lcom/google/common/hash/MacHashFunction$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/google/common/hash/MacHashFunction$MacHasher;-><init>(Ljavax/crypto/Mac;)V

    return-void
.end method

.method private checkNotDone()V
    .locals 1

    .line 129
    iget-boolean p0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->done:Z

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/google/common/hash/MacHashFunction$MacHasher;->checkNotDone()V

    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->done:Z

    .line 136
    iget-object p0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method protected update(B)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/google/common/hash/MacHashFunction$MacHasher;->checkNotDone()V

    .line 106
    iget-object p0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update(B)V

    return-void
.end method

.method protected update(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/google/common/hash/MacHashFunction$MacHasher;->checkNotDone()V

    .line 124
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object p0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected update([B)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/google/common/hash/MacHashFunction$MacHasher;->checkNotDone()V

    .line 112
    iget-object p0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->update([B)V

    return-void
.end method

.method protected update([BII)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/google/common/hash/MacHashFunction$MacHasher;->checkNotDone()V

    .line 118
    iget-object p0, p0, Lcom/google/common/hash/MacHashFunction$MacHasher;->mac:Ljavax/crypto/Mac;

    invoke-virtual {p0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    return-void
.end method
