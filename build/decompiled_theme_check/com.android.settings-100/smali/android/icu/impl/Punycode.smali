.class public final Landroid/icu/impl/Punycode;
.super Ljava/lang/Object;
.source "Punycode.java"


# static fields
.field private static final BASE:I = 0x24

.field private static final CAPITAL_A:I = 0x41

.field private static final CAPITAL_Z:I = 0x5a

.field private static final DAMP:I = 0x2bc

.field private static final DELIMITER:C = '-'

.field private static final HYPHEN:C = '-'

.field private static final INITIAL_BIAS:I = 0x48

.field private static final INITIAL_N:I = 0x80

.field private static final SKEW:I = 0x26

.field private static final SMALL_A:I = 0x61

.field private static final SMALL_Z:I = 0x7a

.field private static final TMAX:I = 0x1a

.field private static final TMIN:I = 0x1

.field private static final ZERO:I = 0x30

.field static final basicToDigit:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 66
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/Punycode;->basicToDigit:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adaptBias(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 47
    div-int/lit16 p0, p0, 0x2bc

    goto :goto_0

    .line 49
    :cond_0
    div-int/lit8 p0, p0, 0x2

    .line 51
    :goto_0
    div-int p1, p0, p1

    add-int/2addr p0, p1

    const/4 p1, 0x0

    :goto_1
    const/16 p2, 0x1c7

    if-le p0, p2, :cond_1

    .line 55
    div-int/lit8 p0, p0, 0x23

    add-int/lit8 p1, p1, 0x24

    goto :goto_1

    :cond_1
    mul-int/lit8 p2, p0, 0x24

    add-int/lit8 p0, p0, 0x26

    .line 58
    div-int/2addr p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method private static asciiCaseMap(CZ)C
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x61

    if-gt p1, p0, :cond_1

    const/16 p1, 0x7a

    if-gt p0, p1, :cond_1

    add-int/lit8 p0, p0, -0x20

    goto :goto_0

    :cond_0
    const/16 p1, 0x41

    if-gt p1, p0, :cond_1

    const/16 p1, 0x5a

    if-gt p0, p1, :cond_1

    add-int/lit8 p0, p0, 0x20

    :goto_0
    int-to-char p0, p0

    :cond_1
    return p0
.end method

.method public static decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 276
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v2

    :cond_0
    if-lez v4, :cond_1

    add-int/lit8 v4, v4, -0x1

    .line 291
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    :cond_1
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const-string v7, "Illegal char found"

    if-ge v6, v4, :cond_4

    .line 298
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 299
    invoke-static {v8}, Landroid/icu/impl/Punycode;->isBasic(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 302
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    .line 304
    array-length v7, v1

    if-ge v6, v7, :cond_2

    .line 305
    invoke-static {v8}, Landroid/icu/impl/Punycode;->isBasicUpperCase(I)Z

    move-result v7

    aput-boolean v7, v1, v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 300
    :cond_3
    new-instance v0, Landroid/icu/text/StringPrepParseException;

    invoke-direct {v0, v7, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    const/16 v6, 0x80

    const/16 v8, 0x48

    const v9, 0x3b9aca00

    if-lez v4, :cond_5

    add-int/lit8 v10, v4, 0x1

    goto :goto_1

    :cond_5
    move v10, v5

    :goto_1
    move v11, v9

    move v9, v6

    move v6, v4

    move v4, v5

    :goto_2
    if-ge v10, v2, :cond_15

    const/4 v13, 0x1

    move v14, v4

    move v15, v13

    const/16 v12, 0x24

    :goto_3
    if-ge v10, v2, :cond_14

    .line 335
    sget-object v16, Landroid/icu/impl/Punycode;->basicToDigit:[I

    add-int/lit8 v17, v10, 0x1

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v16, v10

    if-ltz v10, :cond_13

    const v16, 0x7fffffff

    sub-int v18, v16, v14

    .line 339
    div-int v5, v18, v15

    if-gt v10, v5, :cond_12

    mul-int v5, v10, v15

    add-int/2addr v14, v5

    sub-int v5, v12, v8

    if-ge v5, v13, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v13, v8, 0x1a

    if-lt v12, v13, :cond_7

    const/16 v13, 0x1a

    goto :goto_4

    :cond_7
    move v13, v5

    :goto_4
    if-ge v10, v13, :cond_10

    const/4 v5, 0x1

    add-int/2addr v6, v5

    sub-int v5, v14, v4

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    .line 368
    :goto_5
    invoke-static {v5, v6, v4}, Landroid/icu/impl/Punycode;->adaptBias(IIZ)I

    move-result v8

    .line 374
    div-int v4, v14, v6

    sub-int v5, v16, v9

    if-gt v4, v5, :cond_f

    add-int/2addr v9, v4

    .line 380
    rem-int/2addr v14, v6

    const v4, 0x10ffff

    if-gt v9, v4, :cond_e

    .line 384
    invoke-static {v9}, Landroid/icu/impl/Punycode;->isSurrogate(I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 390
    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    if-gt v14, v11, :cond_a

    const/4 v5, 0x1

    if-le v4, v5, :cond_9

    move v5, v14

    move v11, v5

    goto :goto_6

    :cond_9
    add-int/lit8 v11, v11, 0x1

    move v5, v14

    goto :goto_6

    :cond_a
    sub-int v5, v14, v11

    .line 411
    invoke-virtual {v3, v11, v5}, Ljava/lang/StringBuilder;->offsetByCodePoints(II)I

    move-result v5

    :goto_6
    if-eqz v1, :cond_c

    .line 415
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/2addr v10, v4

    array-length v12, v1

    if-gt v10, v12, :cond_c

    .line 416
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-ge v5, v10, :cond_b

    add-int v10, v5, v4

    .line 419
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    sub-int/2addr v12, v5

    .line 417
    invoke-static {v1, v5, v1, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    add-int/lit8 v10, v17, -0x1

    .line 422
    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10}, Landroid/icu/impl/Punycode;->isBasicUpperCase(I)Z

    move-result v10

    aput-boolean v10, v1, v5

    const/4 v10, 0x2

    if-ne v4, v10, :cond_c

    add-int/lit8 v10, v5, 0x1

    const/4 v12, 0x0

    .line 424
    aput-boolean v12, v1, v10

    :cond_c
    const/4 v10, 0x1

    if-ne v4, v10, :cond_d

    int-to-char v4, v9

    .line 429
    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 432
    :cond_d
    invoke-static {v9}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    .line 433
    invoke-static {v9}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v4, v14, 0x1

    move/from16 v10, v17

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 386
    :cond_e
    new-instance v0, Landroid/icu/text/StringPrepParseException;

    const/4 v5, 0x1

    invoke-direct {v0, v7, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_f
    const/4 v5, 0x1

    .line 376
    new-instance v0, Landroid/icu/text/StringPrepParseException;

    invoke-direct {v0, v7, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_10
    const/4 v5, 0x1

    const/16 v10, 0x24

    rsub-int/lit8 v13, v13, 0x24

    .line 355
    div-int v10, v16, v13

    if-gt v15, v10, :cond_11

    mul-int/2addr v15, v13

    add-int/lit8 v12, v12, 0x24

    move v13, v5

    move/from16 v10, v17

    const/4 v5, 0x0

    goto/16 :goto_3

    .line 357
    :cond_11
    new-instance v0, Landroid/icu/text/StringPrepParseException;

    invoke-direct {v0, v7, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_12
    move v5, v13

    .line 341
    new-instance v0, Landroid/icu/text/StringPrepParseException;

    invoke-direct {v0, v7, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 337
    :cond_13
    new-instance v0, Landroid/icu/text/StringPrepParseException;

    const-string v1, "Invalid char found"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_14
    move v5, v13

    .line 332
    new-instance v0, Landroid/icu/text/StringPrepParseException;

    invoke-direct {v0, v7, v5}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_15
    return-object v3
.end method

.method private static digitToBasic(IZ)C
    .locals 1

    const/16 v0, 0x1a

    if-ge p0, v0, :cond_1

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, 0x41

    :goto_0
    int-to-char p0, p0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x61

    goto :goto_0

    :cond_1
    add-int/lit8 p0, p0, 0x16

    goto :goto_0
.end method

.method public static encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 137
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 138
    new-array v2, v1, [I

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v1, :cond_5

    .line 147
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 148
    invoke-static {v8}, Landroid/icu/impl/Punycode;->isBasic(I)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v9, v6, 0x1

    .line 149
    aput v4, v2, v6

    if-eqz p1, :cond_0

    .line 150
    aget-boolean v6, p1, v5

    invoke-static {v8, v6}, Landroid/icu/impl/Punycode;->asciiCaseMap(CZ)C

    move-result v8

    :cond_0
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move v6, v9

    goto :goto_5

    :cond_1
    if-eqz p1, :cond_2

    .line 152
    aget-boolean v9, p1, v5

    if-eqz v9, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v4

    :goto_2
    shl-int/lit8 v9, v9, 0x1f

    .line 153
    invoke-static {v8}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v10

    if-nez v10, :cond_3

    :goto_3
    or-int/2addr v8, v9

    goto :goto_4

    .line 155
    :cond_3
    invoke-static {v8}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_4

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 158
    invoke-static {v8, v10}, Landroid/icu/lang/UCharacter;->getCodePoint(CC)I

    move-result v8

    goto :goto_3

    :goto_4
    add-int/lit8 v9, v6, 0x1

    .line 163
    aput v8, v2, v6

    goto :goto_1

    :goto_5
    add-int/2addr v5, v7

    goto :goto_0

    .line 161
    :cond_4
    new-instance v0, Landroid/icu/text/StringPrepParseException;

    const-string v1, "Illegal char found"

    invoke-direct {v0, v1, v7}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 168
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    const/16 v1, 0x2d

    .line 170
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x80

    const/16 v5, 0x48

    move v8, v4

    move v9, v5

    move v5, v1

    move v1, v0

    :goto_6
    if-ge v1, v6, :cond_12

    const v10, 0x7fffffff

    move v11, v4

    move v12, v10

    :goto_7
    if-ge v11, v6, :cond_8

    .line 191
    aget v13, v2, v11

    and-int/2addr v13, v10

    if-gt v5, v13, :cond_7

    if-ge v13, v12, :cond_7

    move v12, v13

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_8
    sub-int v5, v12, v5

    sub-int v11, v10, v8

    add-int/lit8 v13, v1, 0x1

    .line 201
    div-int/2addr v11, v13

    if-gt v5, v11, :cond_11

    mul-int/2addr v5, v13

    add-int/2addr v8, v5

    move v5, v1

    move v1, v4

    :goto_8
    if-ge v1, v6, :cond_10

    .line 209
    aget v11, v2, v1

    and-int/2addr v11, v10

    if-ge v11, v12, :cond_9

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_9
    if-ne v11, v12, :cond_f

    const/16 v11, 0x24

    move v14, v8

    move v13, v11

    :goto_9
    sub-int v15, v13, v9

    if-ge v15, v7, :cond_a

    goto :goto_a

    :cond_a
    add-int/lit8 v7, v9, 0x1a

    if-lt v13, v7, :cond_b

    const/16 v7, 0x1a

    goto :goto_a

    :cond_b
    move v7, v15

    :goto_a
    if-ge v14, v7, :cond_e

    .line 241
    aget v7, v2, v1

    if-gez v7, :cond_c

    const/4 v7, 0x1

    goto :goto_b

    :cond_c
    move v7, v4

    :goto_b
    invoke-static {v14, v7}, Landroid/icu/impl/Punycode;->digitToBasic(IZ)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, 0x1

    if-ne v5, v0, :cond_d

    const/4 v5, 0x1

    goto :goto_c

    :cond_d
    move v5, v4

    .line 242
    :goto_c
    invoke-static {v8, v7, v5}, Landroid/icu/impl/Punycode;->adaptBias(IIZ)I

    move-result v9

    move v8, v4

    move v5, v7

    goto :goto_d

    :cond_e
    sub-int/2addr v14, v7

    rsub-int/lit8 v15, v7, 0x24

    .line 237
    rem-int v16, v14, v15

    add-int v7, v7, v16

    invoke-static {v7, v4}, Landroid/icu/impl/Punycode;->digitToBasic(IZ)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    div-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x24

    const/4 v7, 0x1

    goto :goto_9

    :cond_f
    :goto_d
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x1

    goto :goto_8

    :cond_10
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v12, 0x1

    const/4 v7, 0x1

    move/from16 v17, v5

    move v5, v1

    move/from16 v1, v17

    goto :goto_6

    .line 202
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal program error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-object v3
.end method

.method private static isBasic(I)Z
    .locals 1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBasicUpperCase(I)Z
    .locals 1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSurrogate(I)Z
    .locals 1

    and-int/lit16 p0, p0, -0x800

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
