.class final Lcom/google/common/hash/Murmur3_32HashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "Murmur3_32HashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;
    }
.end annotation


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final CHUNK_SIZE:I = 0x4

.field static final GOOD_FAST_HASH_32:Lcom/google/common/hash/HashFunction;

.field static final MURMUR3_32:Lcom/google/common/hash/HashFunction;

.field private static final serialVersionUID:J


# instance fields
.field private final seed:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    .line 57
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    sget v1, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->GOOD_FAST_HASH_32:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 68
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(II)I
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$200([BI)I
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->getIntLittleEndian([BI)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(C)J
    .locals 2

    .line 54
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToTwoUtf8Bytes(C)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(C)J
    .locals 2

    .line 54
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToThreeUtf8Bytes(C)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(I)J
    .locals 2

    .line 54
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->codePointToFourUtf8Bytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(II)Lcom/google/common/hash/HashCode;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method private static charToThreeUtf8Bytes(C)J
    .locals 2

    ushr-int/lit8 v0, p0, 0xc

    or-int/lit16 v0, v0, 0x1e0

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static charToTwoUtf8Bytes(C)J
    .locals 2

    ushr-int/lit8 v0, p0, 0x6

    or-int/lit16 v0, v0, 0x3c0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static codePointToFourUtf8Bytes(I)J
    .locals 7

    ushr-int/lit8 v0, p0, 0x12

    int-to-long v0, v0

    const-wide/16 v2, 0xf0

    or-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    or-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    and-int/lit8 p0, p0, 0x3f

    int-to-long v2, p0

    or-long/2addr v2, v4

    const/16 p0, 0x18

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static fmix(II)Lcom/google/common/hash/HashCode;
    .locals 0

    xor-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    const p1, -0x7a143595

    mul-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xd

    xor-int/2addr p0, p1

    const p1, -0x3d4d51cb

    mul-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    .line 256
    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method private static getIntLittleEndian([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x3

    .line 231
    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte p0, p0, p1

    invoke-static {v0, v1, v2, p0}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result p0

    return p0
.end method

.method private static mixH1(II)I
    .locals 0

    xor-int/2addr p0, p1

    const/16 p1, 0xd

    .line 243
    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    const p1, -0x19ab949c

    add-int/2addr p0, p1

    return p0
.end method

.method private static mixK1(I)I
    .locals 1

    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr p0, v0

    const/16 v0, 0xf

    .line 236
    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public bits()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 88
    instance-of v0, p1, Lcom/google/common/hash/Murmur3_32HashFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 89
    check-cast p1, Lcom/google/common/hash/Murmur3_32HashFunction;

    .line 90
    iget p0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    iget p1, p1, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .locals 4

    add-int v0, p2, p3

    .line 214
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 215
    iget p0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    const/4 v0, 0x0

    move v1, p0

    move p0, v0

    :goto_0
    add-int/lit8 v2, p0, 0x4

    if-gt v2, p3, :cond_0

    add-int/2addr p0, p2

    .line 218
    invoke-static {p1, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->getIntLittleEndian([BI)I

    move-result p0

    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p0

    .line 219
    invoke-static {v1, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v1

    move p0, v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-ge p0, p3, :cond_1

    add-int v3, p2, p0

    .line 224
    aget-byte v3, p1, v3

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v3

    shl-int/2addr v3, v2

    xor-int/2addr v0, v3

    add-int/lit8 p0, p0, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    .line 226
    :cond_1
    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p0

    xor-int/2addr p0, v1

    .line 227
    invoke-static {p0, p3}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget p0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public hashInt(I)Lcom/google/common/hash/HashCode;
    .locals 0

    .line 102
    invoke-static {p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p1

    .line 103
    iget p0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result p0

    const/4 p1, 0x4

    .line 105
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public hashLong(J)Lcom/google/common/hash/HashCode;
    .locals 2

    long-to-int v0, p1

    const/16 v1, 0x20

    ushr-long/2addr p1, v1

    long-to-int p1, p1

    .line 113
    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p2

    .line 114
    iget p0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {p0, p2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result p0

    .line 116
    invoke-static {p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p1

    .line 117
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result p0

    const/16 p1, 0x8

    .line 119
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;
    .locals 11

    .line 146
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 147
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 148
    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    move v4, v1

    :goto_0
    add-int/lit8 v5, v1, 0x4

    const/16 v6, 0x80

    if-gt v5, v0, :cond_0

    .line 154
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v1, 0x1

    .line 155
    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v1, 0x2

    .line 156
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    add-int/lit8 v10, v1, 0x3

    .line 157
    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ge v7, v6, :cond_0

    if-ge v8, v6, :cond_0

    if-ge v9, v6, :cond_0

    if-ge v10, v6, :cond_0

    shl-int/lit8 v1, v8, 0x8

    or-int/2addr v1, v7

    shl-int/lit8 v6, v9, 0x10

    or-int/2addr v1, v6

    shl-int/lit8 v6, v10, 0x18

    or-int/2addr v1, v6

    .line 160
    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v1

    .line 161
    invoke-static {v3, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x4

    move v1, v5

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 172
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ge v5, v6, :cond_1

    int-to-long v9, v5

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    const/16 v9, 0x800

    if-ge v5, v9, :cond_2

    .line 178
    invoke-static {v5}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToTwoUtf8Bytes(C)J

    move-result-wide v9

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    :cond_2
    const v9, 0xd800

    if-lt v5, v9, :cond_5

    const v9, 0xdfff

    if-le v5, v9, :cond_3

    goto :goto_2

    .line 186
    :cond_3
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v9

    if-ne v9, v5, :cond_4

    .line 189
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 192
    invoke-static {v9}, Lcom/google/common/hash/Murmur3_32HashFunction;->codePointToFourUtf8Bytes(I)J

    move-result-wide v9

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    add-int/lit8 v4, v4, 0x4

    goto :goto_3

    .line 182
    :cond_5
    :goto_2
    invoke-static {v5}, Lcom/google/common/hash/Murmur3_32HashFunction;->charToThreeUtf8Bytes(C)J

    move-result-wide v9

    shl-long/2addr v9, v2

    or-long/2addr v7, v9

    add-int/lit8 v2, v2, 0x18

    add-int/lit8 v4, v4, 0x3

    :goto_3
    const/16 v5, 0x20

    if-lt v2, v5, :cond_6

    long-to-int v9, v7

    .line 197
    invoke-static {v9}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v9

    .line 198
    invoke-static {v3, v9}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v3

    ushr-long/2addr v7, v5

    add-int/lit8 v2, v2, -0x20

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    long-to-int p0, v7

    .line 204
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p0

    xor-int/2addr p0, v3

    .line 206
    invoke-static {p0, v4}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0

    .line 208
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .locals 4

    .line 124
    iget p0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    const/4 v0, 0x1

    move v1, p0

    move p0, v0

    .line 127
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    add-int/lit8 v2, p0, -0x1

    .line 128
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    .line 129
    invoke-static {v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v2

    .line 130
    invoke-static {v1, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v1

    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 134
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    .line 135
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    .line 136
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result p0

    xor-int/2addr v1, p0

    .line 140
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {v1, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 1

    .line 78
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;

    iget p0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hashing.murmur3_32("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
