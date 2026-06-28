.class final Landroid/icu/text/BidiWriter;
.super Ljava/lang/Object;
.source "BidiWriter.java"


# static fields
.field static final LRM_CHAR:C = '\u200e'

.field static final MASK_R_AL:I = 0x2002

.field static final RLM_CHAR:C = '\u200f'


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsCombining(I)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    and-int/lit16 p0, p0, 0x1c0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static doWriteForward(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    and-int/lit8 p1, p1, 0xa

    if-eqz p1, :cond_7

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 79
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 85
    :cond_0
    invoke-static {p0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 86
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 87
    invoke-static {v0}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 90
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 65
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    add-int/lit8 v0, v1, 0x1

    .line 71
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 72
    invoke-static {v1}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    move v1, v0

    goto :goto_0

    .line 51
    :cond_5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 58
    :cond_6
    invoke-static {p0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 59
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 60
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_6

    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method private static doWriteForward([CIII)Ljava/lang/String;
    .locals 1

    .line 99
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, p3}, Landroid/icu/text/BidiWriter;->doWriteForward(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static doWriteReverse([CIII)Ljava/lang/String;
    .locals 1

    .line 236
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, p3}, Landroid/icu/text/BidiWriter;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static writeReordered(Landroid/icu/text/Bidi;I)Ljava/lang/String;
    .locals 14

    .line 243
    iget-object v0, p0, Landroid/icu/text/Bidi;->text:[C

    .line 244
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v1

    .line 250
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, -0x9

    .line 258
    :cond_0
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    or-int/lit8 p1, p1, 0x8

    and-int/lit8 p1, p1, -0x5

    .line 266
    :cond_1
    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    and-int/lit8 p1, p1, -0x5

    .line 272
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    .line 273
    iget v4, p0, Landroid/icu/text/Bidi;->length:I

    mul-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_3
    iget v4, p0, Landroid/icu/text/Bidi;->length:I

    :goto_0
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v4, p1, 0x10

    const/16 v5, 0x2002

    const/16 v6, 0x200e

    const/16 v7, 0x200f

    if-nez v4, :cond_17

    const/4 v4, 0x0

    if-nez v3, :cond_5

    :goto_1
    if-ge v4, v1, :cond_1e

    .line 288
    invoke-virtual {p0, v4}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    move-result-object v3

    .line 289
    invoke-virtual {v3}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 290
    iget v5, v3, Landroid/icu/text/BidiRun;->start:I

    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    and-int/lit8 v6, p1, -0x3

    invoke-static {v0, v5, v3, v6}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 294
    :cond_4
    iget v5, v3, Landroid/icu/text/BidiRun;->start:I

    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    invoke-static {v0, v5, v3, p1}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 300
    :cond_5
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    move v8, v4

    :goto_3
    if-ge v8, v1, :cond_1e

    .line 305
    invoke-virtual {p0, v8}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    move-result-object v9

    .line 308
    iget-object v10, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v10, v10, v8

    iget v10, v10, Landroid/icu/text/BidiRun;->insertRemove:I

    if-gez v10, :cond_6

    move v10, v4

    .line 312
    :cond_6
    invoke-virtual {v9}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 313
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, v9, Landroid/icu/text/BidiRun;->start:I

    aget-byte v11, v3, v11

    if-eqz v11, :cond_7

    or-int/lit8 v10, v10, 0x1

    :cond_7
    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_8

    move v11, v6

    goto :goto_4

    :cond_8
    and-int/lit8 v11, v10, 0x4

    if-eqz v11, :cond_9

    move v11, v7

    goto :goto_4

    :cond_9
    move v11, v4

    :goto_4
    if-eqz v11, :cond_a

    .line 325
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    :cond_a
    iget v11, v9, Landroid/icu/text/BidiRun;->start:I

    iget v12, v9, Landroid/icu/text/BidiRun;->limit:I

    and-int/lit8 v13, p1, -0x3

    invoke-static {v0, v11, v12, v13}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    move-result v11

    if-eqz v11, :cond_b

    iget v9, v9, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v3, v9

    if-eqz v9, :cond_b

    or-int/lit8 v10, v10, 0x2

    :cond_b
    and-int/lit8 v9, v10, 0x2

    if-eqz v9, :cond_c

    move v9, v6

    goto :goto_5

    :cond_c
    and-int/lit8 v9, v10, 0x8

    if-eqz v9, :cond_d

    move v9, v7

    goto :goto_5

    :cond_d
    move v9, v4

    :goto_5
    if-eqz v9, :cond_16

    .line 343
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 346
    :cond_e
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    move-result v11

    if-eqz v11, :cond_f

    iget v11, v9, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v11, v11, -0x1

    .line 347
    invoke-virtual {p0, v5, v11}, Landroid/icu/text/Bidi;->testDirPropFlagAt(II)Z

    move-result v11

    if-nez v11, :cond_f

    or-int/lit8 v10, v10, 0x4

    :cond_f
    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_10

    move v11, v6

    goto :goto_6

    :cond_10
    and-int/lit8 v11, v10, 0x4

    if-eqz v11, :cond_11

    move v11, v7

    goto :goto_6

    :cond_11
    move v11, v4

    :goto_6
    if-eqz v11, :cond_12

    .line 359
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :cond_12
    iget v11, v9, Landroid/icu/text/BidiRun;->start:I

    iget v12, v9, Landroid/icu/text/BidiRun;->limit:I

    invoke-static {v0, v11, v12, p1}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isInverse()Z

    move-result v11

    if-eqz v11, :cond_13

    iget v9, v9, Landroid/icu/text/BidiRun;->start:I

    aget-byte v9, v3, v9

    .line 365
    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    and-int/2addr v9, v5

    if-nez v9, :cond_13

    or-int/lit8 v10, v10, 0x8

    :cond_13
    and-int/lit8 v9, v10, 0x2

    if-eqz v9, :cond_14

    move v9, v6

    goto :goto_7

    :cond_14
    and-int/lit8 v9, v10, 0x8

    if-eqz v9, :cond_15

    move v9, v7

    goto :goto_7

    :cond_15
    move v9, v4

    :goto_7
    if-eqz v9, :cond_16

    .line 376
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_17
    if-nez v3, :cond_19

    :goto_9
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1e

    .line 386
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    move-result-object v3

    .line 387
    invoke-virtual {v3}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 388
    iget v4, v3, Landroid/icu/text/BidiRun;->start:I

    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    and-int/lit8 v5, p1, -0x3

    invoke-static {v0, v4, v3, v5}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 392
    :cond_18
    iget v4, v3, Landroid/icu/text/BidiRun;->start:I

    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    invoke-static {v0, v4, v3, p1}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 399
    :cond_19
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    :cond_1a
    :goto_a
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1e

    .line 403
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->getVisualRun(I)Landroid/icu/text/BidiRun;

    move-result-object v4

    .line 404
    invoke-virtual {v4}, Landroid/icu/text/BidiRun;->isEvenRun()Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 405
    iget v8, v4, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v3, v8

    if-eqz v8, :cond_1b

    .line 406
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    :cond_1b
    iget v8, v4, Landroid/icu/text/BidiRun;->start:I

    iget v9, v4, Landroid/icu/text/BidiRun;->limit:I

    and-int/lit8 v10, p1, -0x3

    invoke-static {v0, v8, v9, v10}, Landroid/icu/text/BidiWriter;->doWriteReverse([CIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget v4, v4, Landroid/icu/text/BidiRun;->start:I

    aget-byte v4, v3, v4

    if-eqz v4, :cond_1a

    .line 413
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 416
    :cond_1c
    iget v8, v4, Landroid/icu/text/BidiRun;->start:I

    aget-byte v8, v3, v8

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    and-int/2addr v8, v5

    if-nez v8, :cond_1d

    .line 417
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    :cond_1d
    iget v8, v4, Landroid/icu/text/BidiRun;->start:I

    iget v9, v4, Landroid/icu/text/BidiRun;->limit:I

    invoke-static {v0, v8, v9, p1}, Landroid/icu/text/BidiWriter;->doWriteForward([CIII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget v4, v4, Landroid/icu/text/BidiRun;->limit:I

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v3, v4

    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    and-int/2addr v4, v5

    if-nez v4, :cond_1a

    .line 424
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 431
    :cond_1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static writeReverse(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 121
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit8 v1, p1, 0xb

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x1

    .line 202
    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 203
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    sub-int v3, v1, v3

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_0

    :goto_1
    if-lez v3, :cond_0

    .line 206
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/text/BidiWriter;->IsCombining(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v3, -0x1

    .line 207
    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 208
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_0
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_1

    .line 213
    invoke-static {v2}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_2

    .line 222
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getMirror(I)I

    move-result v2

    .line 223
    invoke-static {v0, v2}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 224
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_2

    :cond_2
    move v2, v3

    .line 226
    :goto_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    if-gtz v3, :cond_3

    goto :goto_6

    :cond_3
    move v1, v3

    goto :goto_0

    .line 164
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :goto_4
    move v1, p1

    :cond_5
    add-int/lit8 v2, v1, -0x1

    .line 176
    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 177
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    sub-int/2addr v1, v3

    if-lez v1, :cond_6

    .line 178
    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v2

    invoke-static {v2}, Landroid/icu/text/BidiWriter;->IsCombining(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 181
    :cond_6
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gtz v1, :cond_7

    goto :goto_6

    :cond_7
    move p1, v1

    goto :goto_4

    .line 139
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :goto_5
    add-int/lit8 v1, p1, -0x1

    .line 148
    invoke-static {p0, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    sub-int v1, p1, v1

    .line 152
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gtz v1, :cond_9

    .line 231
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    move p1, v1

    goto :goto_5
.end method
