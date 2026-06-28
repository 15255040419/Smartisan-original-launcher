.class public final Landroid/icu/text/UnicodeDecompressor;
.super Ljava/lang/Object;
.source "UnicodeDecompressor.java"

# interfaces
.implements Landroid/icu/text/SCSU;


# static fields
.field private static final BUFSIZE:I = 0x3


# instance fields
.field private fBuffer:[B

.field private fBufferLength:I

.field private fCurrentWindow:I

.field private fMode:I

.field private fOffsets:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 85
    iput-object v1, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    .line 88
    iput v0, p0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    const/4 v1, 0x3

    new-array v1, v1, [B

    .line 94
    iput-object v1, p0, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    .line 97
    iput v0, p0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 106
    invoke-virtual {p0}, Landroid/icu/text/UnicodeDecompressor;->reset()V

    return-void
.end method

.method public static decompress([B)Ljava/lang/String;
    .locals 2

    .line 116
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII)[C

    move-result-object p0

    .line 117
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static decompress([BII)[C
    .locals 9

    .line 129
    new-instance v0, Landroid/icu/text/UnicodeDecompressor;

    invoke-direct {v0}, Landroid/icu/text/UnicodeDecompressor;-><init>()V

    sub-int v1, p2, p1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    .line 134
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 135
    new-array v8, v7, [C

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v5, v8

    .line 137
    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII[I[CII)I

    move-result p0

    .line 140
    new-array p1, p0, [C

    const/4 p2, 0x0

    .line 141
    invoke-static {v8, p2, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method


# virtual methods
.method public decompress([BII[I[CII)I
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p5

    move/from16 v13, p7

    .line 183
    array-length v0, v12

    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    sub-int v0, v13, p6

    if-lt v0, v1, :cond_13

    .line 188
    iget v0, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    const/4 v14, 0x0

    if-lez v0, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 194
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    sub-int v0, v11, v10

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 200
    :goto_0
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    iget v2, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    invoke-static {v9, v10, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    move v15, v0

    goto :goto_1

    :cond_1
    move v15, v14

    .line 205
    :goto_1
    iput v14, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 208
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/UnicodeDecompressor;->decompress([BII[I[CII)I

    move-result v0

    add-int v0, p6, v0

    add-int v1, v10, v15

    goto :goto_2

    :cond_2
    move/from16 v0, p6

    move v1, v10

    :cond_3
    :goto_2
    if-ge v1, v11, :cond_11

    if-ge v0, v13, :cond_11

    .line 220
    iget v2, v8, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    const/high16 v3, 0x10000

    const/16 v4, 0x80

    const/4 v5, 0x1

    if-eqz v2, :cond_9

    if-eq v2, v5, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v1, v11, :cond_3

    if-ge v0, v13, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 429
    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    if-lt v2, v11, :cond_8

    add-int/lit8 v2, v2, -0x1

    .line 508
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 511
    iput v3, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 512
    iget v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto/16 :goto_8

    :pswitch_0
    add-int/lit8 v1, v2, 0x1

    if-lt v1, v11, :cond_5

    add-int/lit8 v2, v2, -0x1

    .line 459
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 462
    iput v3, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 463
    iget v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto/16 :goto_8

    .line 467
    :cond_5
    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v5, v2, 0xe0

    shr-int/lit8 v5, v5, 0x5

    .line 468
    iput v5, v8, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 469
    iget-object v5, v8, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v6, v8, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v1, 0x1

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    aput v1, v5, v6

    .line 472
    iput v14, v8, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    move v1, v7

    goto :goto_2

    :pswitch_1
    add-int/lit8 v1, v11, -0x1

    if-lt v2, v1, :cond_6

    add-int/lit8 v2, v2, -0x1

    .line 490
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 493
    iput v3, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 494
    iget v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto/16 :goto_8

    :cond_6
    add-int/lit8 v1, v2, 0x1

    .line 498
    aget-byte v2, v9, v2

    add-int/lit8 v5, v0, 0x1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v6, v1, 0x1

    .line 499
    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v12, v0

    goto :goto_4

    :pswitch_2
    if-lt v2, v11, :cond_7

    add-int/lit8 v2, v2, -0x1

    .line 438
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 441
    iput v3, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 442
    iget v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto/16 :goto_8

    :cond_7
    add-int/lit16 v1, v1, -0xe8

    .line 446
    iput v1, v8, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 447
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v3, v8, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    sget-object v4, Landroid/icu/text/UnicodeDecompressor;->sOffsetTable:[I

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v4, v2

    aput v2, v1, v3

    .line 449
    iput v14, v8, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    move v1, v5

    goto/16 :goto_2

    :pswitch_3
    add-int/lit16 v1, v1, -0xe0

    .line 479
    iput v1, v8, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 480
    iput v14, v8, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v5, v0, 0x1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v6, v2, 0x1

    .line 516
    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v12, v0

    :goto_4
    move v0, v5

    move v1, v6

    goto/16 :goto_3

    :cond_9
    :goto_5
    if-ge v1, v11, :cond_3

    if-ge v0, v13, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 225
    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_a

    .line 259
    :pswitch_5
    iget-object v6, v8, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v7, v8, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    aget v15, v6, v7

    const v5, 0xffff

    if-gt v15, v5, :cond_a

    add-int/lit8 v5, v0, 0x1

    .line 260
    aget v6, v6, v7

    add-int/2addr v1, v6

    sub-int/2addr v1, v4

    int-to-char v1, v1

    aput-char v1, v12, v0

    move v1, v2

    move v0, v5

    goto :goto_6

    :cond_a
    add-int/lit8 v5, v0, 0x1

    if-lt v5, v13, :cond_b

    add-int/lit8 v2, v2, -0x1

    .line 274
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 277
    iput v3, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 278
    iget v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto/16 :goto_8

    .line 282
    :cond_b
    aget v6, v6, v7

    sub-int/2addr v6, v3

    const v7, 0xd800

    shr-int/lit8 v15, v6, 0xa

    add-int/2addr v15, v7

    int-to-char v7, v15

    .line 284
    aput-char v7, v12, v0

    add-int/lit8 v0, v5, 0x1

    const v7, 0xdc00

    and-int/lit16 v6, v6, 0x3ff

    add-int/2addr v6, v7

    and-int/lit8 v1, v1, 0x7f

    add-int/2addr v6, v1

    int-to-char v1, v6

    .line 286
    aput-char v1, v12, v5

    move v1, v2

    goto :goto_6

    :pswitch_6
    if-lt v2, v11, :cond_c

    add-int/lit8 v2, v2, -0x1

    .line 383
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 386
    iput v3, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 387
    iget v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto/16 :goto_8

    :cond_c
    add-int/lit8 v1, v1, -0x18

    .line 391
    iput v1, v8, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 392
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v5, v8, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    sget-object v6, Landroid/icu/text/UnicodeDecompressor;->sOffsetTable:[I

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    aput v2, v1, v5

    move v1, v7

    :goto_6
    const/4 v5, 0x1

    goto :goto_5

    :pswitch_7
    add-int/lit8 v1, v1, -0x10

    .line 373
    iput v1, v8, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    const/4 v5, 0x1

    goto/16 :goto_a

    .line 341
    :pswitch_8
    iput v5, v8, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    :goto_7
    move v1, v2

    goto/16 :goto_2

    :pswitch_9
    add-int/lit8 v1, v2, 0x1

    if-lt v1, v11, :cond_d

    add-int/lit8 v2, v2, -0x1

    .line 326
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 329
    iput v3, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 330
    iget v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto :goto_8

    .line 334
    :cond_d
    aget-byte v2, v9, v2

    add-int/lit8 v6, v0, 0x1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v1, 0x1

    .line 335
    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v12, v0

    move v0, v6

    move v1, v7

    goto/16 :goto_5

    :pswitch_a
    add-int/lit8 v1, v2, 0x1

    if-lt v1, v11, :cond_e

    add-int/lit8 v2, v2, -0x1

    .line 402
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 405
    iput v3, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 406
    iget v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    goto :goto_8

    .line 410
    :cond_e
    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v6, v2, 0xe0

    shr-int/lit8 v6, v6, 0x5

    .line 411
    iput v6, v8, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 412
    iget-object v6, v8, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    iget v7, v8, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v15, v1, 0x1

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    aput v1, v6, v7

    move v1, v15

    goto/16 :goto_5

    :pswitch_b
    if-lt v2, v11, :cond_f

    add-int/lit8 v2, v2, -0x1

    .line 352
    iget-object v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBuffer:[B

    sub-int v3, v11, v2

    invoke-static {v9, v2, v1, v14, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 355
    iput v3, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    .line 356
    iget v1, v8, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    :goto_8
    add-int/2addr v1, v2

    goto :goto_b

    :cond_f
    add-int/lit8 v6, v2, 0x1

    .line 362
    aget-byte v2, v9, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v7, v0, 0x1

    if-ltz v2, :cond_10

    if-ge v2, v4, :cond_10

    .line 365
    sget-object v15, Landroid/icu/text/UnicodeDecompressor;->sOffsets:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v15, v1

    goto :goto_9

    .line 366
    :cond_10
    iget-object v15, v8, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v15, v1

    sub-int/2addr v1, v4

    :goto_9
    add-int/2addr v2, v1

    int-to-char v1, v2

    aput-char v1, v12, v0

    move v1, v6

    move v0, v7

    goto/16 :goto_5

    :pswitch_c
    add-int/lit8 v6, v0, 0x1

    int-to-char v1, v1

    .line 317
    aput-char v1, v12, v0

    move v1, v2

    move v0, v6

    goto/16 :goto_5

    :goto_a
    move v1, v2

    goto/16 :goto_5

    :cond_11
    :goto_b
    if-eqz p4, :cond_12

    sub-int/2addr v1, v10

    .line 529
    aput v1, p4, v14

    :cond_12
    sub-int v0, v0, p6

    return v0

    .line 184
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charBuffer.length < 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xe0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_4
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .line 541
    iget-object v0, p0, Landroid/icu/text/UnicodeDecompressor;->fOffsets:[I

    const/4 v1, 0x0

    const/16 v2, 0x80

    aput v2, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0xc0

    .line 542
    aput v3, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x400

    .line 543
    aput v3, v0, v2

    const/4 v2, 0x3

    const/16 v3, 0x600

    .line 544
    aput v3, v0, v2

    const/4 v2, 0x4

    const/16 v3, 0x900

    .line 545
    aput v3, v0, v2

    const/4 v2, 0x5

    const/16 v3, 0x3040

    .line 546
    aput v3, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x30a0

    .line 547
    aput v3, v0, v2

    const/4 v2, 0x7

    const v3, 0xff00

    .line 548
    aput v3, v0, v2

    .line 551
    iput v1, p0, Landroid/icu/text/UnicodeDecompressor;->fCurrentWindow:I

    .line 552
    iput v1, p0, Landroid/icu/text/UnicodeDecompressor;->fMode:I

    .line 553
    iput v1, p0, Landroid/icu/text/UnicodeDecompressor;->fBufferLength:I

    return-void
.end method
