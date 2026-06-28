.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;,
        Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;,
        Lcom/google/common/hash/Hashing$ChecksumType;,
        Lcom/google/common/hash/Hashing$Sha512Holder;,
        Lcom/google/common/hash/Hashing$Sha384Holder;,
        Lcom/google/common/hash/Hashing$Sha256Holder;,
        Lcom/google/common/hash/Hashing$Sha1Holder;,
        Lcom/google/common/hash/Hashing$Md5Holder;
    }
.end annotation


# static fields
.field static final GOOD_FAST_HASH_SEED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adler32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 385
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->ADLER_32:Lcom/google/common/hash/Hashing$ChecksumType;

    iget-object v0, v0, Lcom/google/common/hash/Hashing$ChecksumType;->hashFunction:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method static checkPositiveAndMakeMultipleOf32(I)I
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Number of bits must be positive"

    .line 566
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1f

    and-int/lit8 p0, p0, -0x20

    return p0
.end method

.method public static combineOrdered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .line 525
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 526
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Must be at least 1 hash code to combine."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 527
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v0

    .line 528
    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 529
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashCode;

    .line 530
    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v1

    .line 531
    array-length v2, v1

    array-length v3, v0

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    const-string v3, "All hashcodes must have the same bit length."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 533
    :goto_1
    array-length v2, v1

    if-ge v4, v2, :cond_0

    .line 534
    aget-byte v2, v0, v4

    mul-int/lit8 v2, v2, 0x25

    aget-byte v3, v1, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 537
    :cond_2
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public static combineUnordered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .line 550
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 551
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Must be at least 1 hash code to combine."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 552
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 553
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashCode;

    .line 554
    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v1

    .line 555
    array-length v2, v1

    array-length v3, v0

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    const-string v3, "All hashcodes must have the same bit length."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 557
    :goto_1
    array-length v2, v1

    if-ge v4, v2, :cond_0

    .line 558
    aget-byte v2, v0, v4

    aget-byte v3, v1, v4

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 561
    :cond_2
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public static varargs concatenating(Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/HashFunction;[Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 587
    new-instance p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/common/hash/HashFunction;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/common/hash/HashFunction;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object p0
.end method

.method public static concatenating(Ljava/lang/Iterable;)Lcom/google/common/hash/HashFunction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/hash/HashFunction;",
            ">;)",
            "Lcom/google/common/hash/HashFunction;"
        }
    .end annotation

    .line 601
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashFunction;

    .line 605
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 607
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "number of hash functions (%s) must be > 0"

    invoke-static {p0, v3, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 608
    new-instance p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    new-array v1, v1, [Lcom/google/common/hash/HashFunction;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/HashFunction;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object p0
.end method

.method public static consistentHash(JI)I
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "buckets must be positive: %s"

    .line 499
    invoke-static {v1, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 500
    new-instance v1, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;

    invoke-direct {v1, p0, p1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;-><init>(J)V

    :goto_1
    add-int/lit8 p0, v0, 0x1

    int-to-double p0, p0

    .line 506
    invoke-virtual {v1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;->nextDouble()D

    move-result-wide v2

    div-double/2addr p0, v2

    double-to-int p0, p0

    if-ltz p0, :cond_1

    if-ge p0, p2, :cond_1

    move v0, p0

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static consistentHash(Lcom/google/common/hash/HashCode;I)I
    .locals 2

    .line 464
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->padToLong()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/hash/Hashing;->consistentHash(JI)I

    move-result p0

    return p0
.end method

.method public static crc32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 369
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->CRC_32:Lcom/google/common/hash/Hashing$ChecksumType;

    iget-object v0, v0, Lcom/google/common/hash/Hashing$ChecksumType;->hashFunction:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static crc32c()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 353
    sget-object v0, Lcom/google/common/hash/Crc32cHashFunction;->CRC_32_C:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static farmHashFingerprint64()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 429
    sget-object v0, Lcom/google/common/hash/FarmHashFingerprint64;->FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static goodFastHash(I)Lcom/google/common/hash/HashFunction;
    .locals 4

    .line 65
    invoke-static {p0}, Lcom/google/common/hash/Hashing;->checkPositiveAndMakeMultipleOf32(I)I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    .line 68
    sget-object p0, Lcom/google/common/hash/Murmur3_32HashFunction;->GOOD_FAST_HASH_32:Lcom/google/common/hash/HashFunction;

    return-object p0

    :cond_0
    const/16 v0, 0x80

    if-gt p0, v0, :cond_1

    .line 71
    sget-object p0, Lcom/google/common/hash/Murmur3_128HashFunction;->GOOD_FAST_HASH_128:Lcom/google/common/hash/HashFunction;

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x7f

    .line 75
    div-int/2addr p0, v0

    .line 76
    new-array v0, p0, [Lcom/google/common/hash/HashFunction;

    const/4 v1, 0x0

    .line 77
    sget-object v2, Lcom/google/common/hash/Murmur3_128HashFunction;->GOOD_FAST_HASH_128:Lcom/google/common/hash/HashFunction;

    aput-object v2, v0, v1

    .line 78
    sget v1, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p0, :cond_2

    const v3, 0x596f0ddf

    add-int/2addr v1, v3

    .line 81
    invoke-static {v1}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    :cond_2
    new-instance p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object p0
.end method

.method public static hmacMd5(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 3

    .line 242
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "hmacMd5"

    invoke-static {v1, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacMD5"

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacMd5([B)Lcom/google/common/hash/HashFunction;
    .locals 2

    .line 255
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "HmacMD5"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->hmacMd5(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha1(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 3

    .line 268
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "hmacSha1"

    invoke-static {v1, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA1"

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha1([B)Lcom/google/common/hash/HashFunction;
    .locals 2

    .line 281
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "HmacSHA1"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->hmacSha1(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha256(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 3

    .line 294
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "hmacSha256"

    invoke-static {v1, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA256"

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256([B)Lcom/google/common/hash/HashFunction;
    .locals 2

    .line 307
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "HmacSHA256"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->hmacSha256(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object p0

    return-object p0
.end method

.method public static hmacSha512(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 3

    .line 320
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "hmacSha512"

    invoke-static {v1, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HmacSHA512"

    invoke-direct {v0, v2, p0, v1}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha512([B)Lcom/google/common/hash/HashFunction;
    .locals 2

    .line 333
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "HmacSHA512"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/hash/Hashing;->hmacSha512(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object p0

    return-object p0
.end method

.method private static hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 339
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "Hashing.%s(Key[algorithm=%s, format=%s])"

    .line 337
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5()Lcom/google/common/hash/HashFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    sget-object v0, Lcom/google/common/hash/Hashing$Md5Holder;->MD5:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 133
    sget-object v0, Lcom/google/common/hash/Murmur3_128HashFunction;->MURMUR3_128:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128(I)Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 122
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static murmur3_32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 111
    sget-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_32(I)Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 100
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static sha1()Lcom/google/common/hash/HashFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    sget-object v0, Lcom/google/common/hash/Hashing$Sha1Holder;->SHA_1:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha256()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 200
    sget-object v0, Lcom/google/common/hash/Hashing$Sha256Holder;->SHA_256:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha384()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 214
    sget-object v0, Lcom/google/common/hash/Hashing$Sha384Holder;->SHA_384:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha512()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 224
    sget-object v0, Lcom/google/common/hash/Hashing$Sha512Holder;->SHA_512:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24()Lcom/google/common/hash/HashFunction;
    .locals 1

    .line 143
    sget-object v0, Lcom/google/common/hash/SipHashFunction;->SIP_HASH_24:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24(JJ)Lcom/google/common/hash/HashFunction;
    .locals 8

    .line 153
    new-instance v7, Lcom/google/common/hash/SipHashFunction;

    const/4 v1, 0x2

    const/4 v2, 0x4

    move-object v0, v7

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/common/hash/SipHashFunction;-><init>(IIJJ)V

    return-object v7
.end method
