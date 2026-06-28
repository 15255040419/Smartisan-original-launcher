.class final Lcom/google/common/hash/FarmHashFingerprint64;
.super Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.source "FarmHashFingerprint64.java"


# static fields
.field static final FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

.field private static final K0:J = -0x3c5a37a36834ced9L

.field private static final K1:J = -0x4b6d499041670d8dL

.field private static final K2:J = -0x651e95c4d06fbfb1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/google/common/hash/FarmHashFingerprint64;

    invoke-direct {v0}, Lcom/google/common/hash/FarmHashFingerprint64;-><init>()V

    sput-object v0, Lcom/google/common/hash/FarmHashFingerprint64;->FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;-><init>()V

    return-void
.end method

.method static fingerprint([BII)J
    .locals 1

    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    const/16 v0, 0x10

    if-gt p2, v0, :cond_0

    .line 71
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength0to16([BII)J

    move-result-wide p0

    return-wide p0

    .line 73
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength17to32([BII)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const/16 v0, 0x40

    if-gt p2, v0, :cond_2

    .line 76
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength33To64([BII)J

    move-result-wide p0

    return-wide p0

    .line 78
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength65Plus([BII)J

    move-result-wide p0

    return-wide p0
.end method

.method private static hashLength0to16([BII)J
    .locals 12

    const/16 v0, 0x8

    const-wide v1, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    if-lt p2, v0, :cond_0

    mul-int/lit8 v3, p2, 0x2

    int-to-long v3, v3

    add-long v9, v3, v1

    .line 120
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v3

    add-long/2addr v3, v1

    add-int/2addr p1, p2

    sub-int/2addr p1, v0

    .line 121
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide p0

    const/16 p2, 0x25

    .line 122
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long/2addr v0, v9

    add-long v5, v0, v3

    const/16 p2, 0x19

    .line 123
    invoke-static {v3, v4, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v0, p0

    mul-long v7, v0, v9

    .line 124
    invoke-static/range {v5 .. v10}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 v3, 0x4

    if-lt p2, v3, :cond_1

    mul-int/lit8 v0, p2, 0x2

    int-to-long v4, v0

    add-long v10, v4, v1

    .line 128
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load32([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    int-to-long v6, p2

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    add-long/2addr v6, v0

    add-int/2addr p1, p2

    sub-int/2addr p1, v3

    .line 129
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load32([BI)I

    move-result p0

    int-to-long p0, p0

    and-long v8, p0, v4

    invoke-static/range {v6 .. v11}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    if-lez p2, :cond_2

    .line 132
    aget-byte v3, p0, p1

    shr-int/lit8 v4, p2, 0x1

    add-int/2addr v4, p1

    .line 133
    aget-byte v4, p0, v4

    add-int/lit8 v5, p2, -0x1

    add-int/2addr p1, v5

    .line 134
    aget-byte p0, p0, p1

    and-int/lit16 p1, v3, 0xff

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v0, v3, 0x8

    add-int/2addr p1, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    int-to-long p0, p1

    mul-long/2addr p0, v1

    int-to-long v3, p2

    const-wide v5, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    mul-long/2addr v3, v5

    xor-long/2addr p0, v3

    .line 137
    invoke-static {p0, p1}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide p0

    mul-long/2addr p0, v1

    return-wide p0

    :cond_2
    return-wide v1
.end method

.method private static hashLength16(JJJ)J
    .locals 3

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    const/16 v0, 0x2f

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    ushr-long p2, p0, v0

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    return-wide p0
.end method

.method private static hashLength17to32([BII)J
    .locals 17

    move-object/from16 v0, p0

    mul-int/lit8 v1, p2, 0x2

    int-to-long v1, v1

    const-wide v3, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long v9, v1, v3

    .line 144
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v1

    const-wide v5, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x8

    .line 145
    invoke-static {v0, v5}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v5

    add-int v7, p1, p2

    add-int/lit8 v8, v7, -0x8

    .line 146
    invoke-static {v0, v8}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v11

    mul-long/2addr v11, v9

    add-int/lit8 v7, v7, -0x10

    .line 147
    invoke-static {v0, v7}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v7

    mul-long/2addr v7, v3

    add-long v13, v1, v5

    const/16 v0, 0x2b

    .line 149
    invoke-static {v13, v14, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v13

    const/16 v0, 0x1e

    invoke-static {v11, v12, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v15

    add-long/2addr v13, v15

    add-long/2addr v7, v13

    add-long/2addr v5, v3

    const/16 v0, 0x12

    invoke-static {v5, v6, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    add-long/2addr v1, v3

    add-long v0, v1, v11

    move-wide v5, v7

    move-wide v7, v0

    .line 148
    invoke-static/range {v5 .. v10}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static hashLength33To64([BII)J
    .locals 20

    move-object/from16 v0, p0

    mul-int/lit8 v1, p2, 0x2

    int-to-long v1, v1

    const-wide v3, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long/2addr v1, v3

    .line 154
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v5

    mul-long v11, v5, v3

    add-int/lit8 v5, p1, 0x8

    .line 155
    invoke-static {v0, v5}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v5

    add-int v13, p1, p2

    add-int/lit8 v7, v13, -0x8

    .line 156
    invoke-static {v0, v7}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v7

    mul-long/2addr v7, v1

    add-int/lit8 v9, v13, -0x10

    .line 157
    invoke-static {v0, v9}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v9

    mul-long/2addr v9, v3

    add-long v14, v11, v5

    const/16 v3, 0x2b

    .line 158
    invoke-static {v14, v15, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v14

    const/16 v4, 0x1e

    invoke-static {v7, v8, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v18

    add-long v14, v14, v18

    add-long/2addr v14, v9

    const-wide v9, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long/2addr v5, v9

    const/16 v9, 0x12

    .line 159
    invoke-static {v5, v6, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    add-long/2addr v5, v11

    add-long/2addr v7, v5

    move-wide v5, v14

    move-wide v9, v1

    invoke-static/range {v5 .. v10}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v5

    add-int/lit8 v7, p1, 0x10

    .line 160
    invoke-static {v0, v7}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v7

    mul-long/2addr v7, v1

    add-int/lit8 v9, p1, 0x18

    .line 161
    invoke-static {v0, v9}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v9

    add-int/lit8 v4, v13, -0x20

    .line 162
    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v16

    add-long v14, v14, v16

    mul-long/2addr v14, v1

    add-int/lit8 v13, v13, -0x18

    .line 163
    invoke-static {v0, v13}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v16

    add-long v5, v5, v16

    mul-long/2addr v5, v1

    move-wide/from16 v16, v1

    add-long v0, v7, v9

    .line 165
    invoke-static {v0, v1, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    const/16 v2, 0x1e

    invoke-static {v14, v15, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-long/2addr v5, v0

    add-long/2addr v9, v11

    const/16 v0, 0x12

    invoke-static {v9, v10, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v7, v0

    add-long/2addr v7, v14

    move-wide/from16 v9, v16

    .line 164
    invoke-static/range {v5 .. v10}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static hashLength65Plus([BII)J
    .locals 24

    move-object/from16 v7, p0

    const-wide v0, -0x6e6c7825ddf69423L    # -5.27643297140616E-224

    .line 177
    invoke-static {v0, v1}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v0

    const-wide v2, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-long/2addr v0, v2

    const/4 v2, 0x2

    new-array v8, v2, [J

    new-array v9, v2, [J

    .line 180
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    const-wide v4, 0x1529cba0ca458ffL

    add-long/2addr v4, v2

    const/4 v10, 0x1

    add-int/lit8 v2, p2, -0x1

    .line 183
    div-int/lit8 v3, v2, 0x40

    mul-int/lit8 v3, v3, 0x40

    add-int v11, p1, v3

    and-int/lit8 v12, v2, 0x3f

    add-int v2, v11, v12

    add-int/lit8 v13, v2, -0x3f

    const-wide v2, 0x226bb95b4e64b6d4L    # 7.104748899679321E-143

    move/from16 v14, p1

    :goto_0
    add-long/2addr v4, v2

    const/4 v15, 0x0

    .line 186
    aget-wide v16, v8, v15

    add-long v4, v4, v16

    add-int/lit8 v6, v14, 0x8

    invoke-static {v7, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v16

    add-long v4, v4, v16

    const/16 v6, 0x25

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    const-wide v16, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long v4, v4, v16

    .line 187
    aget-wide v18, v8, v10

    add-long v2, v2, v18

    add-int/lit8 v6, v14, 0x30

    invoke-static {v7, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v18

    add-long v2, v2, v18

    const/16 v6, 0x2a

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v2, v2, v16

    .line 188
    aget-wide v18, v9, v10

    xor-long v18, v4, v18

    .line 189
    aget-wide v4, v8, v15

    add-int/lit8 v6, v14, 0x28

    invoke-static {v7, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v20

    add-long v4, v4, v20

    add-long v20, v2, v4

    .line 190
    aget-wide v2, v9, v15

    add-long/2addr v0, v2

    const/16 v6, 0x21

    invoke-static {v0, v1, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v22, v0, v16

    .line 191
    aget-wide v0, v8, v10

    mul-long v2, v0, v16

    aget-wide v0, v9, v15

    add-long v4, v18, v0

    move-object/from16 v0, p0

    move v1, v14

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    add-int/lit8 v1, v14, 0x20

    .line 192
    aget-wide v2, v9, v10

    add-long v2, v22, v2

    add-int/lit8 v0, v14, 0x10

    invoke-static {v7, v0}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long v4, v20, v4

    move-object/from16 v0, p0

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    add-int/lit8 v14, v14, 0x40

    if-ne v14, v11, :cond_0

    const-wide/16 v0, 0xff

    and-long v0, v18, v0

    shl-long/2addr v0, v10

    add-long v16, v0, v16

    .line 201
    aget-wide v0, v9, v15

    int-to-long v2, v12

    add-long/2addr v0, v2

    aput-wide v0, v9, v15

    .line 202
    aget-wide v0, v8, v15

    aget-wide v2, v9, v15

    add-long/2addr v0, v2

    aput-wide v0, v8, v15

    .line 203
    aget-wide v0, v9, v15

    aget-wide v2, v8, v15

    add-long/2addr v0, v2

    aput-wide v0, v9, v15

    add-long v22, v22, v20

    .line 204
    aget-wide v0, v8, v15

    add-long v22, v22, v0

    add-int/lit8 v0, v13, 0x8

    invoke-static {v7, v0}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v0

    add-long v0, v22, v0

    const/16 v2, 0x25

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v0, v0, v16

    .line 205
    aget-wide v2, v8, v10

    add-long v20, v20, v2

    add-int/lit8 v2, v13, 0x30

    invoke-static {v7, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    add-long v2, v20, v2

    const/16 v4, 0x2a

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long v2, v2, v16

    .line 206
    aget-wide v4, v9, v10

    const-wide/16 v11, 0x9

    mul-long/2addr v4, v11

    xor-long v20, v0, v4

    .line 207
    aget-wide v0, v8, v15

    mul-long/2addr v0, v11

    add-int/lit8 v4, v13, 0x28

    invoke-static {v7, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-long v11, v2, v0

    .line 208
    aget-wide v0, v9, v15

    add-long v0, v18, v0

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v18, v0, v16

    .line 209
    aget-wide v0, v8, v10

    mul-long v2, v0, v16

    aget-wide v0, v9, v15

    add-long v4, v20, v0

    move-object/from16 v0, p0

    move v1, v13

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    add-int/lit8 v1, v13, 0x20

    .line 210
    aget-wide v2, v9, v10

    add-long v2, v18, v2

    add-int/lit8 v13, v13, 0x10

    invoke-static {v7, v13}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v4, v11

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    .line 211
    aget-wide v2, v8, v15

    aget-wide v4, v9, v15

    move-wide/from16 v6, v16

    .line 212
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    invoke-static {v11, v12}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v2

    const-wide v4, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v0, v0, v20

    aget-wide v2, v8, v10

    aget-wide v4, v9, v10

    .line 213
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v2

    add-long v4, v2, v18

    move-wide v2, v0

    .line 211
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    move-wide/from16 v4, v22

    goto/16 :goto_0
.end method

.method private static shiftMix(J)J
    .locals 2

    const/16 v0, 0x2f

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static weakHashLength32WithSeeds([BIJJ[J)V
    .locals 6

    .line 102
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v0

    add-int/lit8 v2, p1, 0x8

    .line 103
    invoke-static {p0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    add-int/lit8 v4, p1, 0x10

    .line 104
    invoke-static {p0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-int/lit8 p1, p1, 0x18

    .line 105
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide p0

    add-long/2addr p2, v0

    add-long/2addr p4, p2

    add-long/2addr p4, p0

    const/16 v0, 0x15

    .line 108
    invoke-static {p4, p5, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p4

    add-long/2addr v2, p2

    add-long/2addr v2, v4

    const/16 v0, 0x2c

    .line 112
    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr p4, v0

    add-long/2addr v2, p0

    const/4 p0, 0x0

    .line 113
    aput-wide v2, p6, p0

    add-long/2addr p4, p2

    const/4 p0, 0x1

    .line 114
    aput-wide p4, p6, p0

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .locals 1

    add-int p0, p2, p3

    .line 51
    array-length v0, p1

    invoke-static {p2, p0, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 52
    invoke-static {p1, p2, p3}, Lcom/google/common/hash/FarmHashFingerprint64;->fingerprint([BII)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Hashing.farmHashFingerprint64()"

    return-object p0
.end method
