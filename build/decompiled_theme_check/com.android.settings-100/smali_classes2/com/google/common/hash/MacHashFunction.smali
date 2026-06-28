.class final Lcom/google/common/hash/MacHashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "MacHashFunction.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/MacHashFunction$MacHasher;
    }
.end annotation


# instance fields
.field private final bits:I

.field private final key:Ljava/security/Key;

.field private final prototype:Ljavax/crypto/Mac;

.field private final supportsClone:Z

.field private final toString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 44
    invoke-static {p1, p2}, Lcom/google/common/hash/MacHashFunction;->getMac(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    .line 45
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/Key;

    iput-object p1, p0, Lcom/google/common/hash/MacHashFunction;->key:Ljava/security/Key;

    .line 46
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/hash/MacHashFunction;->toString:Ljava/lang/String;

    .line 47
    iget-object p1, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/common/hash/MacHashFunction;->bits:I

    .line 48
    iget-object p1, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    invoke-static {p1}, Lcom/google/common/hash/MacHashFunction;->supportsClone(Ljavax/crypto/Mac;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/common/hash/MacHashFunction;->supportsClone:Z

    return-void
.end method

.method private static getMac(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;
    .locals 0

    .line 67
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    .line 68
    invoke-virtual {p0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static supportsClone(Ljavax/crypto/Mac;)Z
    .locals 0

    .line 58
    :try_start_0
    invoke-virtual {p0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bits()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/google/common/hash/MacHashFunction;->bits:I

    return p0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 3

    .line 79
    iget-boolean v0, p0, Lcom/google/common/hash/MacHashFunction;->supportsClone:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    new-instance v0, Lcom/google/common/hash/MacHashFunction$MacHasher;

    iget-object v2, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Mac;

    invoke-direct {v0, v2, v1}, Lcom/google/common/hash/MacHashFunction$MacHasher;-><init>(Ljavax/crypto/Mac;Lcom/google/common/hash/MacHashFunction$1;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 86
    :catch_0
    :cond_0
    new-instance v0, Lcom/google/common/hash/MacHashFunction$MacHasher;

    iget-object v2, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/google/common/hash/MacHashFunction;->key:Ljava/security/Key;

    invoke-static {v2, p0}, Lcom/google/common/hash/MacHashFunction;->getMac(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/google/common/hash/MacHashFunction$MacHasher;-><init>(Ljavax/crypto/Mac;Lcom/google/common/hash/MacHashFunction$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/common/hash/MacHashFunction;->toString:Ljava/lang/String;

    return-object p0
.end method
