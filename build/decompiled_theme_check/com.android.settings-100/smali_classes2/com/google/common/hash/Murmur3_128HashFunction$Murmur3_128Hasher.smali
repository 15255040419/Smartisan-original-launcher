.class final Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;
.super Lcom/google/common/hash/AbstractStreamingHasher;
.source "Murmur3_128HashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Murmur3_128HashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Murmur3_128Hasher"
.end annotation


# static fields
.field private static final C1:J = -0x783c846eeebdac2bL

.field private static final C2:J = 0x4cf5ad432745937fL

.field private static final CHUNK_SIZE:I = 0x10


# instance fields
.field private h1:J

.field private h2:J

.field private length:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    const/16 v0, 0x10

    .line 95
    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractStreamingHasher;-><init>(I)V

    int-to-long v0, p1

    .line 96
    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 97
    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    return-void
.end method

.method private bmix64(JJ)V
    .locals 6

    .line 110
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    invoke-static {p1, p2}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK1(J)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 112
    iget-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    const/16 v0, 0x1b

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 113
    iget-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 114
    iget-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    const-wide/16 v2, 0x5

    mul-long/2addr p1, v2

    const-wide/32 v4, 0x52dce729

    add-long/2addr p1, v4

    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 116
    invoke-static {p3, p4}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK2(J)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 118
    iget-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    const/16 p3, 0x1f

    invoke-static {p1, p2, p3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 119
    iget-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    iget-wide p3, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 120
    iget-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    mul-long/2addr p1, v2

    const-wide/32 p3, 0x38495ab5

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    return-void
.end method

.method private static fmix64(J)J
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long/2addr p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static mixK1(J)J
    .locals 2

    const-wide v0, -0x783c846eeebdac2bL

    mul-long/2addr p0, v0

    const/16 v0, 0x1f

    .line 201
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private static mixK2(J)J
    .locals 2

    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr p0, v0

    const/16 v0, 0x21

    .line 208
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    const-wide v0, -0x783c846eeebdac2bL

    mul-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public makeHash()Lcom/google/common/hash/HashCode;
    .locals 5

    .line 170
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    iget v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    int-to-long v3, v2

    xor-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 171
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 173
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 174
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 176
    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->fmix64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 177
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->fmix64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 179
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 180
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 183
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 184
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 185
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 182
    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method protected process(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 105
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->bmix64(JJ)V

    .line 106
    iget p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    return-void
.end method

.method protected processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 11

    .line 127
    iget v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x28

    const/16 v3, 0x20

    const/16 v4, 0x18

    const/16 v5, 0x10

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    packed-switch v0, :pswitch_data_0

    .line 162
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Should never get here."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    const/16 v0, 0xe

    .line 130
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v9, v0

    shl-long v0, v9, v1

    xor-long/2addr v0, v6

    goto :goto_0

    :pswitch_1
    move-wide v0, v6

    :goto_0
    const/16 v9, 0xd

    .line 132
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    invoke-static {v9}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v9

    int-to-long v9, v9

    shl-long/2addr v9, v2

    xor-long/2addr v0, v9

    goto :goto_1

    :pswitch_2
    move-wide v0, v6

    :goto_1
    const/16 v2, 0xc

    .line 134
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v9, v2

    shl-long v2, v9, v3

    xor-long/2addr v0, v2

    goto :goto_2

    :pswitch_3
    move-wide v0, v6

    :goto_2
    const/16 v2, 0xb

    .line 136
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    goto :goto_3

    :pswitch_4
    move-wide v0, v6

    :goto_3
    const/16 v2, 0xa

    .line 138
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v5

    xor-long/2addr v0, v2

    goto :goto_4

    :pswitch_5
    move-wide v0, v6

    :goto_4
    const/16 v2, 0x9

    .line 140
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    xor-long/2addr v0, v2

    goto :goto_5

    :pswitch_6
    move-wide v0, v6

    .line 142
    :goto_5
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    goto :goto_6

    :pswitch_7
    move-wide v0, v6

    .line 144
    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    xor-long/2addr v2, v6

    goto :goto_d

    :pswitch_8
    const/4 v0, 0x6

    .line 147
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v9, v0

    shl-long v0, v9, v1

    xor-long/2addr v0, v6

    goto :goto_7

    :pswitch_9
    move-wide v0, v6

    :goto_7
    const/4 v9, 0x5

    .line 149
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    invoke-static {v9}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v9

    int-to-long v9, v9

    shl-long/2addr v9, v2

    xor-long/2addr v0, v9

    goto :goto_8

    :pswitch_a
    move-wide v0, v6

    :goto_8
    const/4 v2, 0x4

    .line 151
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v9, v2

    shl-long v2, v9, v3

    xor-long/2addr v0, v2

    goto :goto_9

    :pswitch_b
    move-wide v0, v6

    :goto_9
    const/4 v2, 0x3

    .line 153
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    goto :goto_a

    :pswitch_c
    move-wide v0, v6

    :goto_a
    const/4 v2, 0x2

    .line 155
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v5

    xor-long/2addr v0, v2

    goto :goto_b

    :pswitch_d
    move-wide v0, v6

    :goto_b
    const/4 v2, 0x1

    .line 157
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    xor-long/2addr v0, v2

    goto :goto_c

    :pswitch_e
    move-wide v0, v6

    :goto_c
    const/4 v2, 0x0

    .line 159
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result p1

    int-to-long v2, p1

    xor-long/2addr v2, v0

    move-wide v0, v6

    .line 164
    :goto_d
    iget-wide v4, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    invoke-static {v2, v3}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK1(J)J

    move-result-wide v2

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 165
    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK2(J)J

    move-result-wide v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
