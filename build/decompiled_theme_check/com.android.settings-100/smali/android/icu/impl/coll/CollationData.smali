.class public final Landroid/icu/impl/coll/CollationData;
.super Ljava/lang/Object;
.source "CollationData.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_INT_ARRAY:[I

.field static final JAMO_CE32S_LENGTH:I = 0x43

.field static final MAX_NUM_SPECIAL_REORDER_CODES:I = 0x8

.field static final REORDER_RESERVED_AFTER_LATIN:I = 0x100f

.field static final REORDER_RESERVED_BEFORE_LATIN:I = 0x100e


# instance fields
.field public base:Landroid/icu/impl/coll/CollationData;

.field ce32s:[I

.field ces:[J

.field public compressibleBytes:[Z

.field contexts:Ljava/lang/String;

.field public fastLatinTable:[C

.field fastLatinTableHeader:[C

.field jamoCE32s:[I

.field public nfcImpl:Landroid/icu/impl/Normalizer2Impl;

.field numScripts:I

.field numericPrimary:J

.field public rootElements:[J

.field scriptStarts:[C

.field scriptsIndex:[C

.field trie:Landroid/icu/impl/Trie2_32;

.field unsafeBackwardSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 481
    sput-object v0, Landroid/icu/impl/coll/CollationData;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/Normalizer2Impl;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x43

    new-array v0, v0, [I

    .line 505
    iput-object v0, p0, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    const-wide/32 v0, 0x12000000

    .line 508
    iput-wide v0, p0, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    .line 42
    iput-object p1, p0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    return-void
.end method

.method private addHighScriptRange([SII)I
    .locals 3

    .line 465
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 v1, p2, 0x1

    aget-char v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, p3, 0xff

    if-le v1, v2, :cond_0

    add-int/lit16 p3, p3, -0x100

    .line 469
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char p0, p0, p2

    const v1, 0xff00

    and-int/2addr p3, v1

    and-int/2addr v0, v1

    and-int/2addr v1, p0

    sub-int/2addr v0, v1

    sub-int/2addr p3, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p3

    shr-int/lit8 p3, p0, 0x8

    int-to-short p3, p3

    .line 471
    aput-short p3, p1, p2

    return p0
.end method

.method private addLowScriptRange([SII)I
    .locals 3

    .line 454
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v0, v0, p2

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, p3, 0xff

    if-ge v1, v2, :cond_0

    add-int/lit16 p3, p3, 0x100

    :cond_0
    shr-int/lit8 v1, p3, 0x8

    int-to-short v1, v1

    .line 458
    aput-short v1, p1, p2

    .line 459
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 p2, p2, 0x1

    aget-char p0, p0, p2

    const p1, 0xff00

    and-int p2, p3, p1

    and-int p3, p0, p1

    and-int/2addr p1, v0

    sub-int/2addr p3, p1

    add-int/2addr p2, p3

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p2

    return p0
.end method

.method private getScriptIndex(I)I
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    .line 244
    :cond_0
    iget v1, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    if-ge p1, v1, :cond_1

    .line 245
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char p0, p0, p1

    return p0

    :cond_1
    const/16 v2, 0x1000

    if-ge p1, v2, :cond_2

    return v0

    :cond_2
    add-int/lit16 p1, p1, -0x1000

    const/16 v2, 0x8

    if-ge p1, v2, :cond_3

    .line 251
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    add-int/2addr v1, p1

    aget-char p0, p0, v1

    return p0

    :cond_3
    return v0
.end method

.method private makeReorderRanges([IZLandroid/icu/impl/coll/UVector32;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/coll/UVector32;->removeAllElements()V

    .line 302
    array-length v3, v1

    if-eqz v3, :cond_1d

    const/16 v4, 0x67

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 303
    aget v7, v1, v5

    if-ne v7, v4, :cond_0

    goto/16 :goto_e

    .line 308
    :cond_0
    iget-object v7, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v7, v7

    sub-int/2addr v7, v6

    new-array v7, v7, [S

    .line 312
    iget-object v8, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v9, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/lit16 v9, v9, 0x100e

    add-int/lit16 v9, v9, -0x1000

    aget-char v8, v8, v9

    const/16 v9, 0xff

    if-eqz v8, :cond_1

    .line 315
    aput-short v9, v7, v8

    .line 317
    :cond_1
    iget-object v8, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v10, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/lit16 v10, v10, 0x100f

    add-int/lit16 v10, v10, -0x1000

    aget-char v8, v8, v10

    if-eqz v8, :cond_2

    .line 320
    aput-short v9, v7, v8

    .line 327
    :cond_2
    iget-object v8, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v10, v8, v6

    .line 329
    array-length v11, v8

    sub-int/2addr v11, v6

    aget-char v8, v8, v11

    move v11, v5

    move v12, v11

    :goto_0
    const/16 v13, 0x8

    if-ge v11, v3, :cond_4

    .line 337
    aget v14, v1, v11

    add-int/lit16 v14, v14, -0x1000

    if-ltz v14, :cond_3

    if-ge v14, v13, :cond_3

    shl-int v13, v6, v14

    or-int/2addr v12, v13

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    move v11, v10

    move v10, v5

    :goto_1
    if-ge v10, v13, :cond_6

    .line 345
    iget-object v14, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v15, v0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/2addr v15, v10

    aget-char v14, v14, v15

    if-eqz v14, :cond_5

    shl-int v15, v6, v10

    and-int/2addr v15, v12

    if-nez v15, :cond_5

    .line 347
    invoke-direct {v0, v7, v14, v11}, Landroid/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    move-result v11

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    if-nez v12, :cond_7

    .line 354
    aget v10, v1, v5

    const/16 v12, 0x19

    if-ne v10, v12, :cond_7

    if-nez p2, :cond_7

    .line 355
    iget-object v10, v0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v10, v10, v12

    .line 357
    iget-object v12, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v10, v12, v10

    sub-int v11, v10, v11

    goto :goto_2

    :cond_7
    move v10, v11

    move v11, v5

    :goto_2
    move v12, v10

    move v10, v5

    :goto_3
    if-ge v10, v3, :cond_11

    add-int/lit8 v14, v10, 0x1

    .line 366
    aget v10, v1, v10

    const-string/jumbo v15, "setReorderCodes(): duplicate or equivalent script "

    const-string/jumbo v5, "setReorderCodes(): UScript.DEFAULT together with other scripts"

    const/4 v13, -0x1

    if-ne v10, v4, :cond_d

    :goto_4
    if-ge v14, v3, :cond_c

    add-int/lit8 v3, v3, -0x1

    .line 371
    aget v10, v1, v3

    if-eq v10, v4, :cond_b

    if-eq v10, v13, :cond_a

    .line 380
    invoke-direct {v0, v10}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v4

    if-nez v4, :cond_8

    :goto_5
    const/16 v4, 0x67

    goto :goto_4

    .line 382
    :cond_8
    aget-short v16, v7, v4

    if-nez v16, :cond_9

    .line 387
    invoke-direct {v0, v7, v4, v8}, Landroid/icu/impl/coll/CollationData;->addHighScriptRange([SII)I

    move-result v8

    goto :goto_5

    .line 383
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {v10}, Landroid/icu/impl/coll/CollationData;->scriptCodeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setReorderCodes(): duplicate UScript.UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move v3, v6

    goto :goto_7

    :cond_d
    if-eq v10, v13, :cond_10

    .line 397
    invoke-direct {v0, v10}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v4

    if-nez v4, :cond_e

    :goto_6
    move v10, v14

    const/16 v4, 0x67

    const/4 v5, 0x0

    const/16 v13, 0x8

    goto :goto_3

    .line 399
    :cond_e
    aget-short v5, v7, v4

    if-nez v5, :cond_f

    .line 404
    invoke-direct {v0, v7, v4, v12}, Landroid/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    move-result v12

    goto :goto_6

    .line 400
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-static {v10}, Landroid/icu/impl/coll/CollationData;->scriptCodeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v3, 0x0

    :goto_7
    move v4, v6

    .line 408
    :goto_8
    iget-object v5, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v10, v5

    sub-int/2addr v10, v6

    if-ge v4, v10, :cond_14

    .line 409
    aget-short v10, v7, v4

    if-eqz v10, :cond_12

    goto :goto_9

    .line 411
    :cond_12
    aget-char v5, v5, v4

    if-nez v3, :cond_13

    if-le v5, v12, :cond_13

    move v12, v5

    .line 416
    :cond_13
    invoke-direct {v0, v7, v4, v12}, Landroid/icu/impl/coll/CollationData;->addLowScriptRange([SII)I

    move-result v5

    move v12, v5

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_14
    if-le v12, v8, :cond_16

    const v3, 0xff00

    and-int/2addr v3, v11

    sub-int/2addr v12, v3

    if-gt v12, v8, :cond_15

    .line 421
    invoke-direct {v0, v1, v6, v2}, Landroid/icu/impl/coll/CollationData;->makeReorderRanges([IZLandroid/icu/impl/coll/UVector32;)V

    return-void

    .line 425
    :cond_15
    new-instance v0, Landroid/icu/util/ICUException;

    const-string/jumbo v1, "setReorderCodes(): reordering too many partial-primary-lead-byte scripts"

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move v3, v6

    const/4 v1, 0x0

    :goto_a
    move v4, v1

    .line 435
    :goto_b
    iget-object v5, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v8, v5

    sub-int/2addr v8, v6

    if-ge v3, v8, :cond_19

    .line 436
    aget-short v8, v7, v3

    if-ne v8, v9, :cond_17

    const/16 v5, 0x8

    goto :goto_c

    .line 440
    :cond_17
    aget-char v4, v5, v3

    const/16 v5, 0x8

    shr-int/2addr v4, v5

    sub-int/2addr v8, v4

    move v4, v8

    if-eq v8, v1, :cond_18

    goto :goto_d

    :cond_18
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    const/16 v5, 0x8

    :goto_d
    if-nez v1, :cond_1a

    .line 445
    iget-object v8, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v8, v8

    sub-int/2addr v8, v6

    if-ge v3, v8, :cond_1b

    .line 446
    :cond_1a
    iget-object v8, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char v8, v8, v3

    shl-int/lit8 v8, v8, 0x10

    const v10, 0xffff

    and-int/2addr v1, v10

    or-int/2addr v1, v8

    invoke-virtual {v2, v1}, Landroid/icu/impl/coll/UVector32;->addElement(I)V

    .line 448
    :cond_1b
    iget-object v1, v0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    array-length v1, v1

    sub-int/2addr v1, v6

    if-ne v3, v1, :cond_1c

    return-void

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_a

    :cond_1d
    :goto_e
    return-void
.end method

.method private static scriptCodeString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1000

    if-ge p0, v0, :cond_0

    .line 478
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getCE32(I)I
    .locals 0

    .line 46
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    move-result p0

    return p0
.end method

.method getCE32FromContexts(I)I
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method getCE32FromSupplementary(I)I
    .locals 0

    .line 50
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_32;->get(I)I

    move-result p0

    return p0
.end method

.method getCEFromOffsetCE32(II)J
    .locals 2

    .line 112
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-static {p2}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p2

    aget-wide v0, p0, p2

    .line 113
    invoke-static {p1, v0, v1}, Landroid/icu/impl/coll/Collation;->getThreeBytePrimaryForOffsetData(IJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getEquivalentScripts(I)[I
    .locals 6

    .line 259
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 260
    sget-object p0, Landroid/icu/impl/coll/CollationData;->EMPTY_INT_ARRAY:[I

    return-object p0

    :cond_0
    const/16 v1, 0x1000

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p1, v1, :cond_1

    new-array p0, v2, [I

    aput p1, p0, v3

    return-object p0

    :cond_1
    move v1, v3

    move v4, v1

    .line 267
    :goto_0
    iget v5, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    if-ge v1, v5, :cond_3

    .line 268
    iget-object v5, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v5, v5, v1

    if-ne v5, v0, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_3
    new-array v1, v4, [I

    if-ne v4, v2, :cond_4

    .line 274
    aput p1, v1, v3

    return-object v1

    :cond_4
    move p1, v3

    .line 278
    :goto_1
    iget v2, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    if-ge v3, v2, :cond_6

    .line 279
    iget-object v2, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v2, v2, v3

    if-ne v2, v0, :cond_5

    add-int/lit8 v2, p1, 0x1

    .line 280
    aput v3, v1, p1

    move p1, v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method getFCD16(I)I
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Normalizer2Impl;->getFCD16(I)I

    move-result p0

    return p0
.end method

.method getFinalCE32(I)I
    .locals 1

    .line 102
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getIndirectCE32(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method getFirstPrimaryForGroup(I)J
    .locals 1

    .line 198
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    aget-char p0, p0, p1

    int-to-long p0, p0

    const/16 v0, 0x10

    shl-long/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method public getGroupForPrimary(J)I
    .locals 6

    const/16 v0, 0x10

    shr-long/2addr p1, v0

    .line 223
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    const/4 v1, 0x1

    aget-char v2, v0, v1

    int-to-long v2, v2

    cmp-long v2, p1, v2

    const/4 v3, -0x1

    if-ltz v2, :cond_5

    array-length v2, v0

    sub-int/2addr v2, v1

    aget-char v0, v0, v2

    int-to-long v4, v0

    cmp-long v0, v4, p1

    if-gtz v0, :cond_0

    goto :goto_3

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 v2, v1, 0x1

    aget-char v0, v0, v2

    int-to-long v4, v0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move p2, p1

    .line 228
    :goto_1
    iget v0, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    if-ge p2, v0, :cond_3

    .line 229
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    aget-char v0, v0, p2

    if-ne v0, v1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/16 p2, 0x8

    if-ge p1, p2, :cond_5

    .line 234
    iget-object p2, p0, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget v0, p0, Landroid/icu/impl/coll/CollationData;->numScripts:I

    add-int/2addr v0, p1

    aget-char p2, p2, v0

    if-ne p2, v1, :cond_4

    add-int/lit16 p1, p1, 0x1000

    return p1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v3
.end method

.method getIndirectCE32(I)I
    .locals 2

    .line 84
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 87
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p1

    aget p1, p0, p1

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 92
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    const/4 p1, 0x0

    aget p1, p0, p1

    :cond_2
    :goto_0
    return p1
.end method

.method public getLastPrimaryForGroup(I)J
    .locals 2

    .line 209
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationData;->getScriptIndex(I)I

    move-result p1

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 213
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    add-int/lit8 p1, p1, 0x1

    aget-char p0, p0, p1

    int-to-long p0, p0

    const/16 v0, 0x10

    shl-long/2addr p0, v0

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method getSingleCE(I)J
    .locals 6

    .line 122
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    .line 124
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    .line 125
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v0

    .line 129
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v1

    const-string/jumbo v2, "there is not exactly one collation element for U+%04X (CE32 0x%08x)"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    invoke-static {p1}, Landroid/icu/impl/coll/Collation;->unassignedCEFromCodePoint(I)J

    move-result-wide p0

    return-wide p0

    .line 176
    :pswitch_1
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/coll/CollationData;->getCEFromOffsetCE32(II)J

    move-result-wide p0

    return-wide p0

    .line 173
    :pswitch_2
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    aget v0, v0, v4

    goto :goto_0

    .line 168
    :pswitch_3
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    aget v0, v1, v0

    goto :goto_0

    .line 158
    :pswitch_4
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 159
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->ces:[J

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result p1

    aget-wide p0, p0, p1

    return-wide p0

    .line 161
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-array v1, v3, [Ljava/lang/Object;

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    .line 161
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :pswitch_5
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 150
    iget-object v1, p0, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v0

    aget v0, v1, v0

    goto :goto_0

    .line 153
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-array v1, v3, [Ljava/lang/Object;

    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    .line 153
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 137
    :pswitch_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-array v1, v3, [Ljava/lang/Object;

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    .line 137
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :pswitch_7
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->ceFromLongSecondaryCE32(I)J

    move-result-wide p0

    return-wide p0

    .line 145
    :pswitch_8
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->ceFromLongPrimaryCE32(I)J

    move-result-wide p0

    return-wide p0

    .line 142
    :pswitch_9
    new-instance p0, Ljava/lang/AssertionError;

    new-array v1, v3, [Ljava/lang/Object;

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string/jumbo p1, "unexpected CE32 tag for U+%04X (CE32 0x%08x)"

    .line 142
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 181
    :cond_3
    invoke-static {v0}, Landroid/icu/impl/coll/Collation;->ceFromSimpleCE32(I)J

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isCompressibleLeadByte(I)Z
    .locals 0

    .line 63
    iget-object p0, p0, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public isCompressiblePrimary(J)Z
    .locals 0

    long-to-int p1, p1

    ushr-int/lit8 p1, p1, 0x18

    .line 67
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->isCompressibleLeadByte(I)Z

    move-result p0

    return p0
.end method

.method isDigit(I)Z
    .locals 1

    const/16 v0, 0x660

    if-ge p1, v0, :cond_1

    const/16 p0, 0x39

    if-gt p1, p0, :cond_0

    const/16 p0, 0x30

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result p0

    const/16 p1, 0xa

    invoke-static {p0, p1}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isUnsafeBackward(IZ)Z
    .locals 1

    .line 59
    iget-object v0, p0, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/impl/coll/CollationData;->isDigit(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method makeReorderRanges([ILandroid/icu/impl/coll/UVector32;)V
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/coll/CollationData;->makeReorderRanges([IZLandroid/icu/impl/coll/UVector32;)V

    return-void
.end method
