.class final Lcom/google/common/hash/Murmur3_128HashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "Murmur3_128HashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;
    }
.end annotation


# static fields
.field static final GOOD_FAST_HASH_128:Lcom/google/common/hash/HashFunction;

.field static final MURMUR3_128:Lcom/google/common/hash/HashFunction;

.field private static final serialVersionUID:J


# instance fields
.field private final seed:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Murmur3_128HashFunction;->MURMUR3_128:Lcom/google/common/hash/HashFunction;

    .line 47
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    sget v1, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Murmur3_128HashFunction;->GOOD_FAST_HASH_128:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 54
    iput p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 0

    const/16 p0, 0x80

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    instance-of v0, p1, Lcom/google/common/hash/Murmur3_128HashFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/google/common/hash/Murmur3_128HashFunction;

    .line 76
    iget p0, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    iget p1, p1, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 1

    .line 64
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;

    iget p0, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashing.murmur3_128("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/common/hash/Murmur3_128HashFunction;->seed:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
