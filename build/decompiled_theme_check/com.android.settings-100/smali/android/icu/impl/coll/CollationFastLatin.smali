.class public final Landroid/icu/impl/coll/CollationFastLatin;
.super Ljava/lang/Object;
.source "CollationFastLatin.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BAIL_OUT:I = 0x1

.field public static final BAIL_OUT_RESULT:I = -0x2

.field static final CASE_AND_TERTIARY_MASK:I = 0x1f

.field static final CASE_MASK:I = 0x18

.field static final COMMON_SEC:I = 0xa0

.field static final COMMON_SEC_PLUS_OFFSET:I = 0xc0

.field static final COMMON_TER:I = 0x0

.field static final COMMON_TER_PLUS_OFFSET:I = 0x20

.field static final CONTRACTION:I = 0x400

.field static final CONTR_CHAR_MASK:I = 0x1ff

.field static final CONTR_LENGTH_SHIFT:I = 0x9

.field static final EOS:I = 0x2

.field static final EXPANSION:I = 0x800

.field static final INDEX_MASK:I = 0x3ff

.field public static final LATIN_LIMIT:I = 0x180

.field public static final LATIN_MAX:I = 0x17f

.field static final LATIN_MAX_UTF8_LEAD:I = 0xc5

.field static final LONG_INC:I = 0x8

.field static final LONG_PRIMARY_MASK:I = 0xfff8

.field static final LOWER_CASE:I = 0x8

.field static final MAX_LONG:I = 0xff8

.field static final MAX_SEC_AFTER:I = 0x160

.field static final MAX_SEC_BEFORE:I = 0x80

.field static final MAX_SEC_HIGH:I = 0x3e0

.field static final MAX_SHORT:I = 0xfc00

.field static final MAX_TER_AFTER:I = 0x7

.field static final MERGE_WEIGHT:I = 0x3

.field static final MIN_LONG:I = 0xc00

.field static final MIN_SEC_AFTER:I = 0xc0

.field static final MIN_SEC_BEFORE:I = 0x0

.field static final MIN_SEC_HIGH:I = 0x180

.field static final MIN_SHORT:I = 0x1000

.field static final NUM_FAST_CHARS:I = 0x1c0

.field static final PUNCT_LIMIT:I = 0x2040

.field static final PUNCT_START:I = 0x2000

.field static final SECONDARY_MASK:I = 0x3e0

.field static final SEC_INC:I = 0x20

.field static final SEC_OFFSET:I = 0x20

.field static final SHORT_INC:I = 0x400

.field static final SHORT_PRIMARY_MASK:I = 0xfc00

.field static final TERTIARY_MASK:I = 0x7

.field static final TER_OFFSET:I = 0x20

.field static final TWO_CASES_MASK:I = 0x180018

.field static final TWO_COMMON_SEC_PLUS_OFFSET:I = 0xc000c0

.field static final TWO_COMMON_TER_PLUS_OFFSET:I = 0x200020

.field static final TWO_LONG_PRIMARIES_MASK:I = -0x70008

.field static final TWO_LOWER_CASES:I = 0x80008

.field static final TWO_SECONDARIES_MASK:I = 0x3e003e0

.field static final TWO_SEC_OFFSETS:I = 0x200020

.field static final TWO_SHORT_PRIMARIES_MASK:I = -0x3ff0400

.field static final TWO_TERTIARIES_MASK:I = 0x70007

.field static final TWO_TER_OFFSETS:I = 0x200020

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareUTF16([C[CILjava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    shr-int/lit8 v3, p2, 0x10

    const v4, 0xffff

    and-int v5, p2, v4

    move/from16 v8, p5

    move v9, v8

    :goto_0
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_1
    const/16 v11, 0x39

    const/16 v12, 0x1000

    const/16 v13, 0x2040

    const/4 v14, -0x2

    const/16 v15, 0x2000

    const-wide/16 v16, 0x0

    const/16 v6, 0x17f

    const/4 v4, 0x1

    if-nez v7, :cond_9

    .line 310
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v8, v7, :cond_0

    const/4 v7, 0x2

    goto :goto_4

    :cond_0
    add-int/lit8 v7, v8, 0x1

    .line 314
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-gt v8, v6, :cond_3

    .line 316
    aget-char v18, p1, v8

    if-eqz v18, :cond_1

    move v8, v7

    move/from16 v7, v18

    goto :goto_4

    :cond_1
    if-gt v8, v11, :cond_2

    const/16 v11, 0x30

    if-lt v8, v11, :cond_2

    and-int/lit8 v11, v5, 0x2

    if-eqz v11, :cond_2

    return v14

    .line 321
    :cond_2
    aget-char v11, v0, v8

    goto :goto_2

    :cond_3
    if-gt v15, v8, :cond_4

    if-ge v8, v13, :cond_4

    add-int/lit16 v11, v8, -0x2000

    add-int/lit16 v11, v11, 0x180

    .line 323
    aget-char v11, v0, v11

    goto :goto_2

    .line 325
    :cond_4
    invoke-static {v0, v8}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v11

    :goto_2
    if-lt v11, v12, :cond_5

    const v8, 0xfc00

    :goto_3
    and-int/2addr v8, v11

    move/from16 v19, v8

    move v8, v7

    move/from16 v7, v19

    goto :goto_4

    :cond_5
    if-le v11, v3, :cond_6

    const v8, 0xfff8

    goto :goto_3

    .line 334
    :cond_6
    invoke-static {v0, v8, v11, v1, v7}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v11

    cmp-long v6, v11, v16

    if-gez v6, :cond_7

    add-int/lit8 v7, v7, 0x1

    not-long v11, v11

    :cond_7
    move v8, v7

    long-to-int v6, v11

    if-ne v6, v4, :cond_8

    return v14

    .line 341
    :cond_8
    invoke-static {v3, v6}, Landroid/icu/impl/coll/CollationFastLatin;->getPrimaries(II)I

    move-result v7

    const v4, 0xffff

    goto :goto_1

    :cond_9
    :goto_4
    if-nez v10, :cond_13

    .line 346
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v9, v10, :cond_a

    move v10, v9

    const/4 v9, 0x2

    goto :goto_7

    :cond_a
    add-int/lit8 v10, v9, 0x1

    .line 350
    invoke-interface {v2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-gt v9, v6, :cond_d

    .line 352
    aget-char v11, p1, v9

    if-eqz v11, :cond_b

    move v9, v11

    goto :goto_7

    :cond_b
    const/16 v11, 0x39

    if-gt v9, v11, :cond_c

    const/16 v11, 0x30

    if-lt v9, v11, :cond_c

    and-int/lit8 v11, v5, 0x2

    if-eqz v11, :cond_c

    return v14

    .line 357
    :cond_c
    aget-char v11, v0, v9

    goto :goto_5

    :cond_d
    if-gt v15, v9, :cond_e

    if-ge v9, v13, :cond_e

    add-int/lit16 v11, v9, -0x2000

    add-int/lit16 v11, v11, 0x180

    .line 359
    aget-char v11, v0, v11

    goto :goto_5

    .line 361
    :cond_e
    invoke-static {v0, v9}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v11

    :goto_5
    if-lt v11, v12, :cond_f

    const v9, 0xfc00

    :goto_6
    and-int/2addr v9, v11

    goto :goto_7

    :cond_f
    if-le v11, v3, :cond_10

    const v9, 0xfff8

    goto :goto_6

    .line 370
    :cond_10
    invoke-static {v0, v9, v11, v2, v10}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v12

    cmp-long v9, v12, v16

    if-gez v9, :cond_11

    add-int/lit8 v10, v10, 0x1

    not-long v12, v12

    :cond_11
    move v9, v10

    long-to-int v10, v12

    if-ne v10, v4, :cond_12

    return v14

    .line 377
    :cond_12
    invoke-static {v3, v10}, Landroid/icu/impl/coll/CollationFastLatin;->getPrimaries(II)I

    move-result v10

    const/16 v12, 0x1000

    const/16 v13, 0x2040

    goto :goto_4

    :cond_13
    move/from16 v19, v10

    move v10, v9

    move/from16 v9, v19

    :goto_7
    if-ne v7, v9, :cond_15

    const/4 v12, 0x2

    if-ne v7, v12, :cond_14

    goto :goto_8

    :cond_14
    move v9, v10

    const v4, 0xffff

    goto/16 :goto_0

    :cond_15
    const/4 v12, 0x2

    const v13, 0xffff

    and-int v11, v7, v13

    and-int v14, v9, v13

    if-eq v11, v14, :cond_17

    if-ge v11, v14, :cond_16

    const/4 v4, -0x1

    :cond_16
    return v4

    :cond_17
    if-ne v7, v12, :cond_62

    .line 402
    :goto_8
    invoke-static {v5}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v7

    if-lt v7, v4, :cond_2c

    move/from16 v8, p5

    move v9, v8

    :goto_9
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_a
    if-nez v7, :cond_1e

    .line 407
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v8, v7, :cond_18

    move v7, v8

    const/4 v8, 0x2

    goto :goto_d

    :cond_18
    add-int/lit8 v7, v8, 0x1

    .line 411
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-gt v8, v6, :cond_19

    .line 413
    aget-char v11, v0, v8

    :goto_b
    const/16 v12, 0x1000

    goto :goto_c

    :cond_19
    if-gt v15, v8, :cond_1a

    const/16 v11, 0x2040

    if-ge v8, v11, :cond_1a

    add-int/lit16 v11, v8, -0x2000

    add-int/lit16 v11, v11, 0x180

    .line 415
    aget-char v11, v0, v11

    goto :goto_b

    .line 417
    :cond_1a
    invoke-static {v0, v8}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v11

    goto :goto_b

    :goto_c
    if-lt v11, v12, :cond_1b

    .line 420
    invoke-static {v11}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    move-result v8

    goto :goto_d

    :cond_1b
    if-le v11, v3, :cond_1c

    const/16 v8, 0xc0

    goto :goto_d

    .line 426
    :cond_1c
    invoke-static {v0, v8, v11, v1, v7}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v11

    cmp-long v8, v11, v16

    if-gez v8, :cond_1d

    add-int/lit8 v7, v7, 0x1

    not-long v11, v11

    :cond_1d
    move v8, v7

    long-to-int v7, v11

    .line 431
    invoke-static {v3, v7}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondaries(II)I

    move-result v7

    goto :goto_a

    :cond_1e
    move/from16 v19, v8

    move v8, v7

    move/from16 v7, v19

    :goto_d
    if-nez v10, :cond_25

    .line 436
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v9, v10, :cond_1f

    move v10, v9

    const/4 v9, 0x2

    const/16 v13, 0x1000

    goto :goto_10

    :cond_1f
    add-int/lit8 v10, v9, 0x1

    .line 440
    invoke-interface {v2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-gt v9, v6, :cond_20

    .line 442
    aget-char v11, v0, v9

    move v12, v11

    const/16 v11, 0x2040

    :goto_e
    const/16 v13, 0x1000

    goto :goto_f

    :cond_20
    const/16 v11, 0x2040

    if-gt v15, v9, :cond_21

    if-ge v9, v11, :cond_21

    add-int/lit16 v12, v9, -0x2000

    add-int/lit16 v12, v12, 0x180

    .line 444
    aget-char v12, v0, v12

    goto :goto_e

    .line 446
    :cond_21
    invoke-static {v0, v9}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v12

    goto :goto_e

    :goto_f
    if-lt v12, v13, :cond_22

    .line 449
    invoke-static {v12}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    move-result v9

    goto :goto_10

    :cond_22
    if-le v12, v3, :cond_23

    const/16 v9, 0xc0

    goto :goto_10

    .line 455
    :cond_23
    invoke-static {v0, v9, v12, v2, v10}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v11

    cmp-long v9, v11, v16

    if-gez v9, :cond_24

    add-int/lit8 v10, v10, 0x1

    not-long v11, v11

    :cond_24
    move v9, v10

    long-to-int v10, v11

    .line 460
    invoke-static {v3, v10}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondaries(II)I

    move-result v10

    goto :goto_d

    :cond_25
    const/16 v13, 0x1000

    move/from16 v19, v10

    move v10, v9

    move/from16 v9, v19

    :goto_10
    if-ne v8, v9, :cond_27

    const/4 v11, 0x2

    if-ne v8, v11, :cond_26

    goto :goto_11

    :cond_26
    move v8, v7

    move v9, v10

    goto/16 :goto_9

    :cond_27
    const v11, 0xffff

    and-int v12, v8, v11

    and-int v14, v9, v11

    if-eq v12, v14, :cond_2a

    and-int/lit16 v0, v5, 0x800

    if-eqz v0, :cond_28

    const/4 v11, -0x2

    return v11

    :cond_28
    if-ge v12, v14, :cond_29

    const/4 v4, -0x1

    :cond_29
    return v4

    :cond_2a
    const/4 v11, -0x2

    const/4 v12, 0x2

    if-ne v8, v12, :cond_2b

    goto :goto_11

    :cond_2b
    ushr-int/lit8 v8, v8, 0x10

    ushr-int/lit8 v9, v9, 0x10

    move/from16 v19, v8

    move v8, v7

    move/from16 v7, v19

    move/from16 v20, v10

    move v10, v9

    move/from16 v9, v20

    goto/16 :goto_a

    :cond_2c
    :goto_11
    and-int/lit16 v7, v5, 0x400

    const/16 v11, 0xc00

    if-eqz v7, :cond_3f

    .line 486
    invoke-static {v5}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v7

    if-nez v7, :cond_2d

    move v7, v4

    goto :goto_12

    :cond_2d
    const/4 v7, 0x0

    :goto_12
    move/from16 v9, p5

    move v10, v9

    :cond_2e
    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_13
    if-nez v8, :cond_33

    .line 491
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ne v9, v8, :cond_2f

    const/4 v8, 0x2

    goto :goto_15

    :cond_2f
    add-int/lit8 v8, v9, 0x1

    .line 495
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-gt v9, v6, :cond_30

    .line 496
    aget-char v13, v0, v9

    goto :goto_14

    :cond_30
    invoke-static {v0, v9}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v13

    :goto_14
    if-ge v13, v11, :cond_32

    .line 498
    invoke-static {v0, v9, v13, v1, v8}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v13

    cmp-long v9, v13, v16

    if-gez v9, :cond_31

    add-int/lit8 v8, v8, 0x1

    not-long v13, v13

    :cond_31
    long-to-int v13, v13

    :cond_32
    move v9, v8

    .line 505
    invoke-static {v3, v7, v13}, Landroid/icu/impl/coll/CollationFastLatin;->getCases(IZI)I

    move-result v8

    goto :goto_13

    :cond_33
    :goto_15
    if-nez v12, :cond_38

    .line 509
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ne v10, v12, :cond_34

    const/4 v12, 0x2

    goto :goto_17

    :cond_34
    add-int/lit8 v12, v10, 0x1

    .line 513
    invoke-interface {v2, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-gt v10, v6, :cond_35

    .line 514
    aget-char v13, v0, v10

    goto :goto_16

    :cond_35
    invoke-static {v0, v10}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v13

    :goto_16
    if-ge v13, v11, :cond_37

    .line 516
    invoke-static {v0, v10, v13, v2, v12}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v13

    cmp-long v10, v13, v16

    if-gez v10, :cond_36

    add-int/lit8 v12, v12, 0x1

    not-long v13, v13

    :cond_36
    long-to-int v13, v13

    :cond_37
    move v10, v12

    .line 523
    invoke-static {v3, v7, v13}, Landroid/icu/impl/coll/CollationFastLatin;->getCases(IZI)I

    move-result v12

    goto :goto_15

    :cond_38
    :goto_17
    if-ne v8, v12, :cond_39

    const/4 v13, 0x2

    if-ne v8, v13, :cond_2e

    goto :goto_19

    :cond_39
    const v13, 0xffff

    and-int v14, v8, v13

    and-int v15, v12, v13

    if-eq v14, v15, :cond_3d

    and-int/lit16 v0, v5, 0x100

    if-nez v0, :cond_3b

    if-ge v14, v15, :cond_3a

    const/4 v4, -0x1

    :cond_3a
    return v4

    :cond_3b
    if-ge v14, v15, :cond_3c

    move/from16 v18, v4

    goto :goto_18

    :cond_3c
    const/16 v18, -0x1

    :goto_18
    return v18

    :cond_3d
    const/4 v13, 0x2

    if-ne v8, v13, :cond_3e

    goto :goto_19

    :cond_3e
    ushr-int/lit8 v8, v8, 0x10

    ushr-int/lit8 v12, v12, 0x10

    goto/16 :goto_13

    .line 545
    :cond_3f
    :goto_19
    invoke-static {v5}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v7

    if-gt v7, v4, :cond_40

    const/4 v7, 0x0

    return v7

    .line 548
    :cond_40
    invoke-static {v5}, Landroid/icu/impl/coll/CollationSettings;->isTertiaryWithCaseBits(I)Z

    move-result v12

    move/from16 v8, p5

    move v9, v8

    :cond_41
    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_1a
    if-nez v7, :cond_46

    .line 554
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v8, v7, :cond_42

    const/4 v7, 0x2

    goto :goto_1c

    :cond_42
    add-int/lit8 v7, v8, 0x1

    .line 558
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-gt v8, v6, :cond_43

    .line 559
    aget-char v13, v0, v8

    goto :goto_1b

    :cond_43
    invoke-static {v0, v8}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v13

    :goto_1b
    if-ge v13, v11, :cond_45

    .line 561
    invoke-static {v0, v8, v13, v1, v7}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v13

    cmp-long v8, v13, v16

    if-gez v8, :cond_44

    add-int/lit8 v7, v7, 0x1

    not-long v13, v13

    :cond_44
    long-to-int v13, v13

    :cond_45
    move v8, v7

    .line 568
    invoke-static {v3, v12, v13}, Landroid/icu/impl/coll/CollationFastLatin;->getTertiaries(IZI)I

    move-result v7

    goto :goto_1a

    :cond_46
    :goto_1c
    if-nez v10, :cond_4b

    .line 572
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v9, v10, :cond_47

    const/4 v10, 0x2

    goto :goto_1e

    :cond_47
    add-int/lit8 v10, v9, 0x1

    .line 576
    invoke-interface {v2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-gt v9, v6, :cond_48

    .line 577
    aget-char v13, v0, v9

    goto :goto_1d

    :cond_48
    invoke-static {v0, v9}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v13

    :goto_1d
    if-ge v13, v11, :cond_4a

    .line 579
    invoke-static {v0, v9, v13, v2, v10}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v13

    cmp-long v9, v13, v16

    if-gez v9, :cond_49

    add-int/lit8 v10, v10, 0x1

    not-long v13, v13

    :cond_49
    long-to-int v13, v13

    :cond_4a
    move v9, v10

    .line 586
    invoke-static {v3, v12, v13}, Landroid/icu/impl/coll/CollationFastLatin;->getTertiaries(IZI)I

    move-result v10

    goto :goto_1c

    :cond_4b
    :goto_1e
    if-ne v7, v10, :cond_4c

    const/4 v13, 0x2

    if-ne v7, v13, :cond_41

    goto :goto_1f

    :cond_4c
    const v13, 0xffff

    and-int v14, v7, v13

    and-int v15, v10, v13

    if-eq v14, v15, :cond_50

    .line 597
    invoke-static {v5}, Landroid/icu/impl/coll/CollationSettings;->sortsTertiaryUpperCaseFirst(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v0, 0x3

    if-le v14, v0, :cond_4d

    xor-int/lit8 v14, v14, 0x18

    :cond_4d
    const/4 v0, 0x3

    if-le v15, v0, :cond_4e

    xor-int/lit8 v15, v15, 0x18

    :cond_4e
    if-ge v14, v15, :cond_4f

    const/4 v4, -0x1

    :cond_4f
    return v4

    :cond_50
    const/4 v13, 0x2

    if-ne v7, v13, :cond_61

    .line 614
    :goto_1f
    invoke-static {v5}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v5

    if-gt v5, v13, :cond_51

    const/4 v5, 0x0

    return v5

    :cond_51
    move/from16 v7, p5

    move v8, v7

    :cond_52
    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_20
    if-nez v5, :cond_57

    .line 620
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v7, v5, :cond_53

    const/4 v5, 0x2

    goto :goto_22

    :cond_53
    add-int/lit8 v5, v7, 0x1

    .line 624
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_54

    .line 625
    aget-char v10, v0, v7

    goto :goto_21

    :cond_54
    invoke-static {v0, v7}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v10

    :goto_21
    if-ge v10, v11, :cond_56

    .line 627
    invoke-static {v0, v7, v10, v1, v5}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v12

    cmp-long v7, v12, v16

    if-gez v7, :cond_55

    add-int/lit8 v5, v5, 0x1

    not-long v12, v12

    :cond_55
    long-to-int v10, v12

    :cond_56
    move v7, v5

    .line 634
    invoke-static {v3, v10}, Landroid/icu/impl/coll/CollationFastLatin;->getQuaternaries(II)I

    move-result v5

    goto :goto_20

    :cond_57
    :goto_22
    if-nez v9, :cond_5c

    .line 638
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ne v8, v9, :cond_58

    const/4 v9, 0x2

    goto :goto_24

    :cond_58
    add-int/lit8 v9, v8, 0x1

    .line 642
    invoke-interface {v2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-gt v8, v6, :cond_59

    .line 643
    aget-char v10, v0, v8

    goto :goto_23

    :cond_59
    invoke-static {v0, v8}, Landroid/icu/impl/coll/CollationFastLatin;->lookup([CI)I

    move-result v10

    :goto_23
    if-ge v10, v11, :cond_5b

    .line 645
    invoke-static {v0, v8, v10, v2, v9}, Landroid/icu/impl/coll/CollationFastLatin;->nextPair([CIILjava/lang/CharSequence;I)J

    move-result-wide v12

    cmp-long v8, v12, v16

    if-gez v8, :cond_5a

    add-int/lit8 v9, v9, 0x1

    not-long v12, v12

    :cond_5a
    long-to-int v10, v12

    :cond_5b
    move v8, v9

    .line 652
    invoke-static {v3, v10}, Landroid/icu/impl/coll/CollationFastLatin;->getQuaternaries(II)I

    move-result v9

    goto :goto_22

    :cond_5c
    :goto_24
    if-ne v5, v9, :cond_5d

    const/4 v13, 0x2

    if-ne v5, v13, :cond_52

    :goto_25
    const/4 v15, 0x0

    goto :goto_26

    :cond_5d
    const/4 v13, 0x2

    const v14, 0xffff

    and-int v10, v5, v14

    and-int v12, v9, v14

    if-eq v10, v12, :cond_5f

    if-ge v10, v12, :cond_5e

    const/4 v4, -0x1

    :cond_5e
    return v4

    :cond_5f
    if-ne v5, v13, :cond_60

    goto :goto_25

    :goto_26
    return v15

    :cond_60
    const/4 v15, 0x0

    ushr-int/lit8 v5, v5, 0x10

    ushr-int/lit8 v9, v9, 0x10

    goto :goto_20

    :cond_61
    const v14, 0xffff

    const/4 v15, 0x0

    ushr-int/lit8 v7, v7, 0x10

    ushr-int/lit8 v10, v10, 0x10

    goto/16 :goto_1a

    :cond_62
    const v14, 0xffff

    const/4 v15, 0x0

    ushr-int/lit8 v7, v7, 0x10

    ushr-int/lit8 v4, v9, 0x10

    move v9, v10

    move v10, v4

    move v4, v14

    goto/16 :goto_1
.end method

.method private static getCases(IZI)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x1000

    const v2, 0xffff

    if-gt p2, v2, :cond_3

    if-lt p2, v1, :cond_1

    and-int/lit8 p0, p2, 0x18

    if-nez p1, :cond_0

    and-int/lit16 p1, p2, 0x3e0

    const/16 p2, 0x180

    if-lt p1, p2, :cond_0

    const/high16 p1, 0x80000

    or-int/2addr p0, p1

    :cond_0
    move p2, p0

    goto :goto_1

    :cond_1
    if-le p2, p0, :cond_2

    const/16 p2, 0x8

    goto :goto_1

    :cond_2
    const/16 p0, 0xc00

    if-lt p2, p0, :cond_7

    goto :goto_0

    :cond_3
    and-int/2addr v2, p2

    if-lt v2, v1, :cond_5

    if-eqz p1, :cond_4

    const/high16 p0, -0x4000000

    and-int/2addr p0, p2

    if-nez p0, :cond_4

    and-int/lit8 p2, p2, 0x18

    goto :goto_1

    :cond_4
    const p0, 0x180018

    and-int/2addr p2, p0

    goto :goto_1

    :cond_5
    if-le v2, p0, :cond_6

    const p2, 0x80008

    goto :goto_1

    :cond_6
    :goto_0
    move p2, v0

    :cond_7
    :goto_1
    return p2
.end method

.method static getCharIndex(C)I
    .locals 1

    const/16 v0, 0x17f

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x2000

    if-gt v0, p0, :cond_1

    const/16 v0, 0x2040

    if-ge p0, v0, :cond_1

    add-int/lit16 p0, p0, -0x1e80

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 208
    iget-object v3, v0, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    const/4 v4, -0x1

    if-nez v3, :cond_0

    return v4

    .line 211
    :cond_0
    array-length v5, v2

    const/16 v6, 0x180

    if-eq v5, v6, :cond_1

    return v4

    .line 217
    :cond_1
    iget v5, v1, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v5, v5, 0xc

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v5, :cond_2

    const/16 v3, 0xbff

    goto :goto_0

    .line 222
    :cond_2
    aget-char v5, v3, v8

    and-int/lit16 v5, v5, 0xff

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v9

    add-int/2addr v9, v7

    if-lt v9, v5, :cond_3

    return v4

    .line 227
    :cond_3
    aget-char v3, v3, v9

    .line 231
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v5

    if-eqz v5, :cond_c

    const-wide/16 v10, 0x0

    move-wide v12, v10

    move-wide v14, v12

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    const/16 v5, 0x1000

    :goto_1
    const/16 v7, 0x1008

    if-ge v5, v7, :cond_8

    .line 239
    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v8

    .line 240
    invoke-virtual {v1, v8, v9}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v8

    const/16 v7, 0x1004

    if-ne v5, v7, :cond_4

    move-wide/from16 v18, v8

    move-wide/from16 v16, v12

    goto :goto_2

    :cond_4
    cmp-long v7, v8, v10

    if-eqz v7, :cond_7

    cmp-long v7, v8, v12

    if-gez v7, :cond_5

    return v4

    :cond_5
    cmp-long v7, v18, v10

    if-eqz v7, :cond_6

    cmp-long v7, v14, v10

    if-nez v7, :cond_6

    cmp-long v7, v12, v16

    if-nez v7, :cond_6

    move-wide v14, v8

    :cond_6
    move-wide v12, v8

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    const/16 v5, 0x19

    .line 256
    invoke-virtual {v0, v5}, Landroid/icu/impl/coll/CollationData;->getFirstPrimaryForGroup(I)J

    move-result-wide v7

    .line 257
    invoke-virtual {v1, v7, v8}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v7

    cmp-long v5, v7, v12

    if-gez v5, :cond_9

    return v4

    :cond_9
    cmp-long v4, v14, v10

    if-nez v4, :cond_a

    move-wide v14, v7

    :cond_a
    cmp-long v4, v16, v18

    if-gez v4, :cond_b

    cmp-long v4, v18, v14

    if-ltz v4, :cond_c

    :cond_b
    const/16 v20, 0x1

    goto :goto_3

    :cond_c
    const/16 v20, 0x0

    .line 269
    :goto_3
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_f

    .line 271
    aget-char v5, v0, v4

    const/16 v7, 0x1000

    if-lt v5, v7, :cond_d

    const v8, 0xfc00

    :goto_5
    and-int/2addr v8, v5

    goto :goto_6

    :cond_d
    if-le v5, v3, :cond_e

    const v8, 0xfff8

    goto :goto_5

    :cond_e
    const/4 v8, 0x0

    :goto_6
    int-to-char v5, v8

    .line 279
    aput-char v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_f
    if-nez v20, :cond_10

    .line 281
    iget v0, v1, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    :cond_10
    const/16 v0, 0x30

    :goto_7
    const/16 v4, 0x39

    if-gt v0, v4, :cond_11

    const/4 v4, 0x0

    .line 283
    aput-char v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    shl-int/lit8 v0, v3, 0x10

    .line 287
    iget v1, v1, Landroid/icu/impl/coll/CollationSettings;->options:I

    or-int/2addr v0, v1

    return v0
.end method

.method private static getPrimaries(II)I
    .locals 2

    const v0, 0xffff

    and-int/2addr v0, p1

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_0

    const p0, -0x3ff0400

    :goto_0
    and-int/2addr p0, p1

    return p0

    :cond_0
    if-le v0, p0, :cond_1

    const p0, -0x70008

    goto :goto_0

    :cond_1
    const/16 p0, 0xc00

    if-lt v0, p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return p1
.end method

.method private static getQuaternaries(II)I
    .locals 3

    const v0, 0xfc00

    const v1, -0x3ff0400

    const v2, 0xffff

    if-gt p1, v2, :cond_3

    const/16 v2, 0x1000

    if-lt p1, v2, :cond_0

    and-int/lit16 p0, p1, 0x3e0

    const/16 p1, 0x180

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_2

    :cond_1
    move p1, v0

    goto :goto_2

    :cond_2
    const/16 p0, 0xc00

    if-lt p1, p0, :cond_5

    const p0, 0xfff8

    goto :goto_1

    :cond_3
    and-int v0, p1, v2

    if-le v0, p0, :cond_4

    :goto_0
    move p1, v1

    goto :goto_2

    :cond_4
    const p0, -0x70008

    :goto_1
    and-int/2addr p1, p0

    :cond_5
    :goto_2
    return p1
.end method

.method private static getSecondaries(II)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x1000

    const v2, 0xffff

    if-gt p1, v2, :cond_2

    if-lt p1, v1, :cond_0

    .line 766
    invoke-static {p1}, Landroid/icu/impl/coll/CollationFastLatin;->getSecondariesFromOneShortCE(I)I

    move-result p1

    goto :goto_1

    :cond_0
    if-le p1, p0, :cond_1

    const/16 p1, 0xc0

    goto :goto_1

    :cond_1
    const/16 p0, 0xc00

    if-lt p1, p0, :cond_5

    goto :goto_0

    :cond_2
    and-int/2addr v2, p1

    if-lt v2, v1, :cond_3

    const p0, 0x3e003e0

    and-int/2addr p0, p1

    const p1, 0x200020

    add-int/2addr p1, p0

    goto :goto_1

    :cond_3
    if-le v2, p0, :cond_4

    const p1, 0xc000c0

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v0

    :cond_5
    :goto_1
    return p1
.end method

.method private static getSecondariesFromOneShortCE(I)I
    .locals 1

    and-int/lit16 p0, p0, 0x3e0

    const/16 v0, 0x180

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x20

    shl-int/lit8 p0, p0, 0x10

    or-int/lit16 p0, p0, 0xc0

    return p0
.end method

.method private static getTertiaries(IZI)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x1000

    const v2, 0xffff

    if-gt p2, v2, :cond_4

    if-lt p2, v1, :cond_2

    const/16 p0, 0x180

    if-eqz p1, :cond_0

    and-int/lit8 p1, p2, 0x1f

    add-int/lit8 p1, p1, 0x20

    and-int/lit16 p2, p2, 0x3e0

    if-lt p2, p0, :cond_1

    const/high16 p0, 0x280000

    goto :goto_0

    :cond_0
    and-int/lit8 p1, p2, 0x7

    add-int/lit8 p1, p1, 0x20

    and-int/lit16 p2, p2, 0x3e0

    if-lt p2, p0, :cond_1

    const/high16 p0, 0x200000

    :goto_0
    or-int/2addr p0, p1

    move p2, p0

    goto :goto_3

    :cond_1
    move p2, p1

    goto :goto_3

    :cond_2
    if-le p2, p0, :cond_3

    and-int/lit8 p0, p2, 0x7

    add-int/lit8 p2, p0, 0x20

    if-eqz p1, :cond_8

    or-int/lit8 p2, p2, 0x8

    goto :goto_3

    :cond_3
    const/16 p0, 0xc00

    if-lt p2, p0, :cond_8

    goto :goto_2

    :cond_4
    and-int/2addr v2, p2

    const v3, 0x200020

    const v4, 0x70007

    if-lt v2, v1, :cond_6

    if-eqz p1, :cond_5

    const p0, 0x1f001f

    and-int/2addr p0, p2

    goto :goto_1

    :cond_5
    and-int p0, p2, v4

    :goto_1
    add-int p2, p0, v3

    goto :goto_3

    :cond_6
    if-le v2, p0, :cond_7

    and-int p0, p2, v4

    add-int p2, p0, v3

    if-eqz p1, :cond_8

    const p0, 0x80008

    or-int/2addr p2, p0

    goto :goto_3

    :cond_7
    :goto_2
    move p2, v0

    :cond_8
    :goto_3
    return p2
.end method

.method private static lookup([CI)I
    .locals 2

    const/16 v0, 0x2000

    if-gt v0, p1, :cond_0

    const/16 v1, 0x2040

    if-ge p1, v1, :cond_0

    sub-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x180

    .line 675
    aget-char p0, p0, p1

    return p0

    :cond_0
    const p0, 0xfffe

    if-ne p1, p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const p0, 0xffff

    if-ne p1, p0, :cond_2

    const p0, 0xfca8

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static nextPair([CIILjava/lang/CharSequence;I)J
    .locals 6

    const/16 p1, 0xc00

    if-ge p2, p1, :cond_b

    const/16 p1, 0x400

    if-ge p2, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 p1, 0x800

    const/16 v0, 0x10

    if-lt p2, p1, :cond_1

    and-int/lit16 p1, p2, 0x3ff

    add-int/lit16 p1, p1, 0x1c0

    add-int/lit8 p2, p1, 0x1

    .line 694
    aget-char p2, p0, p2

    int-to-long p2, p2

    shl-long/2addr p2, v0

    aget-char p0, p0, p1

    int-to-long p0, p0

    or-long/2addr p0, p2

    return-wide p0

    :cond_1
    and-int/lit16 p1, p2, 0x3ff

    add-int/lit16 p1, p1, 0x1c0

    const/4 p2, 0x0

    .line 700
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-eq p4, v1, :cond_7

    .line 704
    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    const/16 p4, 0x17f

    if-le p3, p4, :cond_5

    const/16 p4, 0x2000

    if-gt p4, p3, :cond_2

    const/16 p4, 0x2040

    if-ge p3, p4, :cond_2

    add-int/lit16 p3, p3, -0x2000

    add-int/lit16 p3, p3, 0x180

    goto :goto_1

    :cond_2
    const p4, 0xfffe

    if-eq p3, p4, :cond_4

    const p4, 0xffff

    if-ne p3, p4, :cond_3

    goto :goto_0

    :cond_3
    return-wide v2

    :cond_4
    :goto_0
    const/4 p3, -0x1

    .line 717
    :cond_5
    :goto_1
    aget-char p4, p0, p1

    move v1, p4

    move p4, p1

    :cond_6
    shr-int/lit8 v1, v1, 0x9

    add-int/2addr p4, v1

    .line 721
    aget-char v1, p0, p4

    and-int/lit16 v5, v1, 0x1ff

    if-lt v5, p3, :cond_6

    if-ne v5, p3, :cond_7

    move p1, p4

    move p2, v4

    .line 730
    :cond_7
    aget-char p3, p0, p1

    shr-int/lit8 p3, p3, 0x9

    if-ne p3, v4, :cond_8

    return-wide v2

    :cond_8
    add-int/lit8 p4, p1, 0x1

    .line 734
    aget-char p4, p0, p4

    const/4 v1, 0x2

    if-ne p3, v1, :cond_9

    int-to-long p0, p4

    goto :goto_2

    :cond_9
    add-int/2addr p1, v1

    .line 739
    aget-char p0, p0, p1

    int-to-long p0, p0

    shl-long/2addr p0, v0

    int-to-long p3, p4

    or-long/2addr p0, p3

    :goto_2
    if-eqz p2, :cond_a

    not-long p0, p0

    :cond_a
    return-wide p0

    :cond_b
    :goto_3
    int-to-long p0, p2

    return-wide p0
.end method
