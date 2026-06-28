.class public final Landroid/icu/impl/coll/CollationKeys;
.super Ljava/lang/Object;
.source "CollationKeys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;,
        Landroid/icu/impl/coll/CollationKeys$LevelCallback;,
        Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CASE_LOWER_FIRST_COMMON_HIGH:I = 0xd

.field private static final CASE_LOWER_FIRST_COMMON_LOW:I = 0x1

.field private static final CASE_LOWER_FIRST_COMMON_MAX_COUNT:I = 0x7

.field private static final CASE_LOWER_FIRST_COMMON_MIDDLE:I = 0x7

.field private static final CASE_UPPER_FIRST_COMMON_HIGH:I = 0xf

.field private static final CASE_UPPER_FIRST_COMMON_LOW:I = 0x3

.field private static final CASE_UPPER_FIRST_COMMON_MAX_COUNT:I = 0xd

.field private static final QUAT_COMMON_HIGH:I = 0xfc

.field private static final QUAT_COMMON_LOW:I = 0x1c

.field private static final QUAT_COMMON_MAX_COUNT:I = 0x71

.field private static final QUAT_COMMON_MIDDLE:I = 0x8c

.field private static final QUAT_SHIFTED_LIMIT_BYTE:I = 0x1b

.field static final SEC_COMMON_HIGH:I = 0x45

.field private static final SEC_COMMON_LOW:I = 0x5

.field private static final SEC_COMMON_MAX_COUNT:I = 0x21

.field private static final SEC_COMMON_MIDDLE:I = 0x25

.field public static final SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

.field private static final TER_LOWER_FIRST_COMMON_HIGH:I = 0x45

.field private static final TER_LOWER_FIRST_COMMON_LOW:I = 0x5

.field private static final TER_LOWER_FIRST_COMMON_MAX_COUNT:I = 0x21

.field private static final TER_LOWER_FIRST_COMMON_MIDDLE:I = 0x25

.field private static final TER_ONLY_COMMON_HIGH:I = 0xc5

.field private static final TER_ONLY_COMMON_LOW:I = 0x5

.field private static final TER_ONLY_COMMON_MAX_COUNT:I = 0x61

.field private static final TER_ONLY_COMMON_MIDDLE:I = 0x65

.field private static final TER_UPPER_FIRST_COMMON_HIGH:I = 0xc5

.field private static final TER_UPPER_FIRST_COMMON_LOW:I = 0x85

.field private static final TER_UPPER_FIRST_COMMON_MAX_COUNT:I = 0x21

.field private static final TER_UPPER_FIRST_COMMON_MIDDLE:I = 0xa5

.field private static final levelMasks:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 147
    new-instance v0, Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    invoke-direct {v0}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;-><init>()V

    sput-object v0, Landroid/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 318
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/coll/CollationKeys;->levelMasks:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x6
        0x16
        0x36
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x36
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    .line 262
    new-instance p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static writeSortKeyUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;[ZLandroid/icu/impl/coll/CollationSettings;Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;ILandroid/icu/impl/coll/CollationKeys$LevelCallback;Z)V
    .locals 37

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 338
    iget v3, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 340
    sget-object v4, Landroid/icu/impl/coll/CollationKeys;->levelMasks:[I

    invoke-static {v3}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v5

    aget v4, v4, v5

    and-int/lit16 v5, v3, 0x400

    if-eqz v5, :cond_0

    or-int/lit8 v4, v4, 0x8

    :cond_0
    const/4 v5, 0x1

    shl-int v6, v5, p4

    sub-int/2addr v6, v5

    not-int v6, v6

    and-int/2addr v4, v6

    if-nez v4, :cond_1

    return-void

    :cond_1
    and-int/lit8 v6, v3, 0xc

    if-nez v6, :cond_2

    const-wide/16 v9, 0x0

    goto :goto_0

    .line 355
    :cond_2
    iget-wide v9, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    .line 358
    :goto_0
    invoke-static {v3}, Landroid/icu/impl/coll/CollationSettings;->getTertiaryMask(I)I

    move-result v11

    const/4 v12, 0x3

    new-array v13, v12, [B

    const/16 v14, 0x8

    .line 361
    invoke-static {v4, v14}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v15

    const/4 v5, 0x4

    .line 362
    invoke-static {v4, v5}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v14

    const/16 v5, 0x10

    .line 363
    invoke-static {v4, v5}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v12

    const/16 v5, 0x20

    .line 364
    invoke-static {v4, v5}, Landroid/icu/impl/coll/CollationKeys;->getSortKeyLevel(II)Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    move-result-object v7

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 377
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->clearCEsIfNoneRemaining()V

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v26

    ushr-long v28, v26, v5

    cmp-long v30, v28, v9

    const-wide/32 v31, 0x2000000

    if-gez v30, :cond_b

    cmp-long v30, v28, v31

    if-lez v30, :cond_b

    if-eqz v18, :cond_4

    add-int/lit8 v18, v18, -0x1

    move/from16 v8, v18

    :goto_2
    const/16 v5, 0x71

    if-lt v8, v5, :cond_3

    const/16 v5, 0x8c

    .line 386
    invoke-virtual {v7, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v8, v8, -0x71

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1c

    .line 390
    invoke-virtual {v7, v8}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    move v8, v6

    move-wide/from16 v5, v28

    const/16 v33, 0x0

    goto :goto_3

    :cond_4
    move v8, v6

    move/from16 v33, v18

    move-wide/from16 v5, v28

    :goto_3
    and-int/lit8 v18, v4, 0x20

    if-eqz v18, :cond_7

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 396
    invoke-virtual {v0, v5, v6}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v5

    :cond_5
    long-to-int v2, v5

    ushr-int/lit8 v2, v2, 0x18

    move/from16 v34, v8

    const/16 v8, 0x1b

    if-lt v2, v8, :cond_6

    const/16 v2, 0x1b

    .line 401
    invoke-virtual {v7, v2}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 403
    :cond_6
    invoke-virtual {v7, v5, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight32(J)V

    goto :goto_4

    :cond_7
    move/from16 v34, v8

    .line 406
    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationIterator;->nextCE()J

    move-result-wide v26

    const/16 v2, 0x20

    ushr-long v5, v26, v2

    const-wide/16 v16, 0x0

    cmp-long v8, v5, v16

    if-eqz v8, :cond_8

    cmp-long v8, v5, v9

    if-gez v8, :cond_a

    cmp-long v8, v5, v31

    if-gtz v8, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v2, p5

    move/from16 v8, v34

    goto :goto_3

    :cond_a
    :goto_5
    move v8, v3

    move-wide/from16 v2, v26

    move/from16 v18, v33

    goto :goto_6

    :cond_b
    move v2, v5

    move/from16 v34, v6

    move v8, v3

    move-wide/from16 v2, v26

    move-wide/from16 v5, v28

    :goto_6
    const-wide/16 v26, 0x1

    cmp-long v26, v5, v26

    move-wide/from16 v27, v9

    if-lez v26, :cond_16

    and-int/lit8 v10, v4, 0x2

    if-eqz v10, :cond_16

    long-to-int v10, v5

    ushr-int/lit8 v10, v10, 0x18

    .line 417
    aget-boolean v10, p1, v10

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationSettings;->hasReordering()Z

    move-result v26

    if-eqz v26, :cond_c

    .line 419
    invoke-virtual {v0, v5, v6}, Landroid/icu/impl/coll/CollationSettings;->reorder(J)J

    move-result-wide v5

    :cond_c
    long-to-int v9, v5

    ushr-int/lit8 v0, v9, 0x18

    move/from16 v29, v11

    move-object/from16 v33, v12

    move-wide/from16 v11, v19

    move-object/from16 v19, v7

    if-eqz v10, :cond_e

    long-to-int v7, v11

    ushr-int/lit8 v7, v7, 0x18

    if-eq v0, v7, :cond_d

    goto :goto_8

    :cond_d
    move-wide/from16 v35, v11

    :goto_7
    const/16 v0, 0x10

    goto :goto_a

    :cond_e
    :goto_8
    const-wide/16 v16, 0x0

    cmp-long v7, v11, v16

    if-eqz v7, :cond_10

    cmp-long v7, v5, v11

    if-gez v7, :cond_f

    const/4 v7, 0x2

    if-le v0, v7, :cond_10

    const/4 v7, 0x3

    .line 428
    invoke-virtual {v1, v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    goto :goto_9

    :cond_f
    const/16 v7, 0xff

    .line 431
    invoke-virtual {v1, v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 434
    :cond_10
    :goto_9
    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    if-eqz v10, :cond_11

    move-wide/from16 v35, v5

    goto :goto_7

    :cond_11
    const/16 v0, 0x10

    const-wide/16 v35, 0x0

    :goto_a
    ushr-long v10, v5, v0

    long-to-int v7, v10

    int-to-byte v7, v7

    if-eqz v7, :cond_14

    const/4 v10, 0x0

    aput-byte v7, v13, v10

    const/16 v7, 0x8

    ushr-long v11, v5, v7

    long-to-int v11, v11

    int-to-byte v11, v11

    const/4 v12, 0x1

    aput-byte v11, v13, v12

    int-to-byte v9, v9

    const/4 v11, 0x2

    aput-byte v9, v13, v11

    .line 446
    aget-byte v9, v13, v12

    if-nez v9, :cond_12

    const/4 v9, 0x1

    goto :goto_b

    :cond_12
    aget-byte v9, v13, v11

    if-nez v9, :cond_13

    const/4 v9, 0x2

    goto :goto_b

    :cond_13
    const/4 v9, 0x3

    :goto_b
    invoke-virtual {v1, v13, v9}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append([BI)V

    goto :goto_c

    :cond_14
    const/16 v7, 0x8

    const/4 v10, 0x0

    :goto_c
    if-nez p6, :cond_15

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Overflowed()Z

    move-result v9

    if-eqz v9, :cond_15

    return-void

    :cond_15
    move-wide/from16 v11, v35

    goto :goto_d

    :cond_16
    move/from16 v29, v11

    move-object/from16 v33, v12

    move-wide/from16 v11, v19

    const/16 v0, 0x10

    const/4 v10, 0x0

    move-object/from16 v19, v7

    const/16 v7, 0x8

    :goto_d
    long-to-int v2, v2

    if-nez v2, :cond_17

    move-object/from16 v0, p2

    move-object/from16 v2, p5

    move v3, v8

    move-object/from16 v7, v19

    move-wide/from16 v9, v27

    move/from16 v6, v34

    const/16 v5, 0x20

    move-wide/from16 v19, v11

    move/from16 v11, v29

    move-object/from16 v12, v33

    goto/16 :goto_1

    :cond_17
    and-int/lit8 v3, v4, 0x4

    const/16 v9, 0x500

    if-eqz v3, :cond_24

    ushr-int/lit8 v0, v2, 0x10

    if-nez v0, :cond_18

    goto/16 :goto_14

    :cond_18
    if-ne v0, v9, :cond_1a

    and-int/lit16 v7, v8, 0x800

    if-eqz v7, :cond_19

    cmp-long v7, v5, v31

    if-eqz v7, :cond_1a

    :cond_19
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_15

    :cond_1a
    and-int/lit16 v7, v8, 0x800

    if-nez v7, :cond_1e

    if-eqz v21, :cond_1d

    add-int/lit8 v21, v21, -0x1

    move/from16 v7, v21

    :goto_e
    const/16 v10, 0x21

    if-lt v7, v10, :cond_1b

    const/16 v10, 0x25

    .line 479
    invoke-virtual {v14, v10}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v7, v7, -0x21

    goto :goto_e

    :cond_1b
    if-ge v0, v9, :cond_1c

    add-int/lit8 v7, v7, 0x5

    goto :goto_f

    :cond_1c
    rsub-int/lit8 v7, v7, 0x45

    .line 488
    :goto_f
    invoke-virtual {v14, v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/16 v21, 0x0

    .line 491
    :cond_1d
    invoke-virtual {v14, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto/16 :goto_15

    :cond_1e
    if-eqz v21, :cond_20

    add-int/lit8 v21, v21, -0x1

    .line 496
    rem-int/lit8 v7, v21, 0x21

    move/from16 v10, v22

    if-ge v10, v9, :cond_1f

    add-int/lit8 v10, v7, 0x5

    goto :goto_10

    :cond_1f
    rsub-int/lit8 v10, v7, 0x45

    .line 503
    :goto_10
    invoke-virtual {v14, v10}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    sub-int v21, v21, v7

    :goto_11
    if-lez v21, :cond_20

    const/16 v7, 0x25

    .line 507
    invoke-virtual {v14, v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v21, v21, -0x21

    goto :goto_11

    :cond_20
    const-wide/16 v16, 0x0

    cmp-long v7, v16, v5

    if-gez v7, :cond_23

    cmp-long v7, v5, v31

    if-gtz v7, :cond_23

    .line 515
    invoke-virtual {v14}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->data()[B

    move-result-object v0

    .line 516
    invoke-virtual {v14}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    move-result v7

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    move v10, v7

    move/from16 v7, v23

    :goto_12
    if-ge v7, v10, :cond_21

    .line 518
    aget-byte v20, v0, v7

    add-int/lit8 v22, v7, 0x1

    .line 519
    aget-byte v23, v0, v10

    aput-byte v23, v0, v7

    add-int/lit8 v7, v10, -0x1

    .line 520
    aput-byte v20, v0, v10

    move v10, v7

    move/from16 v7, v22

    goto :goto_12

    :cond_21
    const-wide/16 v22, 0x1

    cmp-long v0, v5, v22

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_13

    :cond_22
    const/4 v0, 0x2

    .line 522
    :goto_13
    invoke-virtual {v14, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    .line 525
    invoke-virtual {v14}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    move-result v0

    move/from16 v23, v0

    const/16 v22, 0x0

    goto :goto_15

    .line 527
    :cond_23
    invoke-virtual {v14, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendReverseWeight16(I)V

    move/from16 v22, v0

    goto :goto_15

    :cond_24
    :goto_14
    move/from16 v10, v22

    move/from16 v22, v10

    :goto_15
    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_31

    .line 534
    invoke-static {v8}, Landroid/icu/impl/coll/CollationSettings;->getStrength(I)I

    move-result v7

    const-wide/16 v16, 0x0

    if-nez v7, :cond_25

    cmp-long v5, v5, v16

    if-nez v5, :cond_26

    goto/16 :goto_1c

    :cond_25
    ushr-int/lit8 v5, v2, 0x10

    if-nez v5, :cond_26

    goto/16 :goto_1c

    :cond_26
    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, v5, 0xc0

    if-nez v6, :cond_27

    const/4 v6, 0x1

    if-le v5, v6, :cond_28

    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1c

    :cond_27
    const/4 v6, 0x1

    :cond_28
    and-int/lit16 v7, v8, 0x100

    if-nez v7, :cond_2d

    if-eqz v24, :cond_2c

    if-gt v5, v6, :cond_29

    .line 552
    invoke-virtual {v15}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2c

    :cond_29
    add-int/lit8 v24, v24, -0x1

    move/from16 v6, v24

    :goto_16
    const/4 v7, 0x7

    if-lt v6, v7, :cond_2a

    const/16 v7, 0x70

    .line 555
    invoke-virtual {v15, v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v6, v6, -0x7

    goto :goto_16

    :cond_2a
    const/4 v7, 0x1

    if-gt v5, v7, :cond_2b

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_2b
    rsub-int/lit8 v6, v6, 0xd

    :goto_17
    const/4 v7, 0x4

    shl-int/2addr v6, v7

    .line 564
    invoke-virtual {v15, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/4 v6, 0x1

    const/16 v24, 0x0

    goto :goto_18

    :cond_2c
    const/4 v7, 0x4

    const/4 v6, 0x1

    :goto_18
    if-le v5, v6, :cond_30

    ushr-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0xd

    goto :goto_1b

    :cond_2d
    if-eqz v24, :cond_2f

    add-int/lit8 v24, v24, -0x1

    move/from16 v6, v24

    :goto_19
    const/16 v7, 0xd

    if-lt v6, v7, :cond_2e

    const/16 v7, 0x30

    .line 578
    invoke-virtual {v15, v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v6, v6, -0xd

    goto :goto_19

    :cond_2e
    add-int/lit8 v6, v6, 0x3

    const/4 v7, 0x4

    shl-int/2addr v6, v7

    .line 581
    invoke-virtual {v15, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/4 v6, 0x1

    const/16 v24, 0x0

    goto :goto_1a

    :cond_2f
    const/4 v7, 0x4

    const/4 v6, 0x1

    :goto_1a
    if-le v5, v6, :cond_30

    ushr-int/lit8 v5, v5, 0x6

    const/4 v6, 0x3

    rsub-int/lit8 v5, v5, 0x3

    :goto_1b
    shl-int/2addr v5, v7

    .line 590
    :cond_30
    invoke-virtual {v15, v5}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    goto :goto_1c

    :cond_31
    const-wide/16 v16, 0x0

    :goto_1c
    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_43

    and-int v7, v2, v29

    if-ne v7, v9, :cond_32

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_26

    :cond_32
    const v10, 0x8000

    and-int v10, v29, v10

    if-nez v10, :cond_37

    if-eqz v25, :cond_35

    add-int/lit8 v25, v25, -0x1

    move/from16 v10, v25

    :goto_1d
    const/16 v6, 0x61

    if-lt v10, v6, :cond_33

    const/16 v6, 0x65

    move-object/from16 v9, v33

    .line 606
    invoke-virtual {v9, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v10, v10, -0x61

    const/16 v9, 0x500

    goto :goto_1d

    :cond_33
    move v6, v9

    move-object/from16 v9, v33

    if-ge v7, v6, :cond_34

    add-int/lit8 v10, v10, 0x5

    goto :goto_1e

    :cond_34
    rsub-int v10, v10, 0xc5

    .line 615
    :goto_1e
    invoke-virtual {v9, v10}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/16 v25, 0x0

    goto :goto_1f

    :cond_35
    move v6, v9

    move-object/from16 v9, v33

    :goto_1f
    if-le v7, v6, :cond_36

    const v6, 0xc000

    add-int/2addr v7, v6

    .line 621
    :cond_36
    invoke-virtual {v9, v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto/16 :goto_27

    :cond_37
    move-object/from16 v9, v33

    and-int/lit16 v6, v8, 0x100

    if-nez v6, :cond_3c

    if-eqz v25, :cond_3a

    add-int/lit8 v25, v25, -0x1

    move/from16 v6, v25

    :goto_20
    const/16 v10, 0x21

    if-lt v6, v10, :cond_38

    const/16 v10, 0x25

    .line 628
    invoke-virtual {v9, v10}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v6, v6, -0x21

    goto :goto_20

    :cond_38
    const/16 v10, 0x500

    if-ge v7, v10, :cond_39

    add-int/lit8 v6, v6, 0x5

    goto :goto_21

    :cond_39
    rsub-int/lit8 v6, v6, 0x45

    .line 637
    :goto_21
    invoke-virtual {v9, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/16 v25, 0x0

    goto :goto_22

    :cond_3a
    const/16 v10, 0x500

    :goto_22
    if-le v7, v10, :cond_3b

    add-int/lit16 v7, v7, 0x4000

    .line 643
    :cond_3b
    invoke-virtual {v9, v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto :goto_27

    :cond_3c
    const/16 v6, 0x100

    if-gt v7, v6, :cond_3d

    goto :goto_23

    :cond_3d
    ushr-int/lit8 v6, v2, 0x10

    if-eqz v6, :cond_3e

    const v6, 0xc000

    xor-int/2addr v7, v6

    const v6, 0xc500

    if-ge v7, v6, :cond_3f

    add-int/lit16 v7, v7, -0x4000

    goto :goto_23

    :cond_3e
    add-int/lit16 v7, v7, 0x4000

    :cond_3f
    :goto_23
    if-eqz v25, :cond_42

    add-int/lit8 v25, v25, -0x1

    move/from16 v6, v25

    :goto_24
    const/16 v10, 0x21

    if-lt v6, v10, :cond_40

    const/16 v10, 0xa5

    .line 674
    invoke-virtual {v9, v10}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v6, v6, -0x21

    goto :goto_24

    :cond_40
    const v10, 0x8500

    if-ge v7, v10, :cond_41

    add-int/lit16 v6, v6, 0x85

    goto :goto_25

    :cond_41
    rsub-int v6, v6, 0xc5

    .line 683
    :goto_25
    invoke-virtual {v9, v6}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/16 v25, 0x0

    .line 686
    :cond_42
    invoke-virtual {v9, v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendWeight16(I)V

    goto :goto_27

    :cond_43
    :goto_26
    move-object/from16 v9, v33

    :goto_27
    and-int/lit8 v6, v4, 0x20

    if-eqz v6, :cond_44

    const v7, 0xffff

    and-int/2addr v7, v2

    and-int/lit16 v10, v7, 0xc0

    if-nez v10, :cond_45

    const/16 v10, 0x100

    if-le v7, v10, :cond_46

    add-int/lit8 v18, v18, 0x1

    :cond_44
    move/from16 v20, v8

    move-object/from16 v10, v19

    move/from16 v19, v4

    goto :goto_2c

    :cond_45
    const/16 v10, 0x100

    :cond_46
    if-ne v7, v10, :cond_47

    if-nez v34, :cond_47

    .line 696
    invoke-virtual/range {v19 .. v19}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_47

    move-object/from16 v10, v19

    move/from16 v19, v4

    const/4 v4, 0x1

    .line 706
    invoke-virtual {v10, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    move/from16 v20, v8

    goto :goto_2c

    :cond_47
    move-object/from16 v10, v19

    move/from16 v19, v4

    const/16 v4, 0x100

    if-ne v7, v4, :cond_48

    const/4 v4, 0x1

    goto :goto_28

    :cond_48
    ushr-int/lit8 v4, v7, 0x6

    const/4 v7, 0x3

    and-int/2addr v4, v7

    add-int/lit16 v4, v4, 0xfc

    :goto_28
    if-eqz v18, :cond_4b

    add-int/lit8 v18, v18, -0x1

    move/from16 v20, v8

    move/from16 v7, v18

    :goto_29
    const/16 v8, 0x71

    if-lt v7, v8, :cond_49

    const/16 v8, 0x8c

    .line 716
    invoke-virtual {v10, v8}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    add-int/lit8 v7, v7, -0x71

    goto :goto_29

    :cond_49
    const/16 v8, 0x1c

    if-ge v4, v8, :cond_4a

    add-int/lit8 v7, v7, 0x1c

    goto :goto_2a

    :cond_4a
    rsub-int v7, v7, 0xfc

    .line 725
    :goto_2a
    invoke-virtual {v10, v7}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    const/16 v18, 0x0

    goto :goto_2b

    :cond_4b
    move/from16 v20, v8

    .line 728
    :goto_2b
    invoke-virtual {v10, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendByte(I)V

    :goto_2c
    ushr-int/lit8 v2, v2, 0x18

    const/4 v4, 0x1

    if-ne v2, v4, :cond_56

    move-object/from16 v2, p5

    if-eqz v3, :cond_4d

    const/4 v3, 0x2

    .line 740
    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v3

    if-nez v3, :cond_4c

    return-void

    .line 744
    :cond_4c
    invoke-virtual {v1, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 745
    invoke-virtual {v14, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    :cond_4d
    if-eqz v0, :cond_51

    const/4 v0, 0x3

    .line 749
    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v0

    if-nez v0, :cond_4e

    return-void

    .line 753
    :cond_4e
    invoke-virtual {v1, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 755
    invoke-virtual {v15}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->length()I

    move-result v0

    sub-int/2addr v0, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2d
    if-ge v3, v0, :cond_50

    .line 758
    invoke-virtual {v15, v3}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->getAt(I)B

    move-result v7

    if-nez v4, :cond_4f

    move v4, v7

    goto :goto_2e

    :cond_4f
    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v4, v7

    .line 763
    invoke-virtual {v1, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    const/4 v4, 0x0

    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_50
    if-eqz v4, :cond_51

    .line 768
    invoke-virtual {v1, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    :cond_51
    if-eqz v5, :cond_53

    const/4 v3, 0x4

    .line 773
    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v0

    if-nez v0, :cond_52

    return-void

    :cond_52
    const/4 v4, 0x1

    .line 777
    invoke-virtual {v1, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 778
    invoke-virtual {v9, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    goto :goto_2f

    :cond_53
    const/4 v4, 0x1

    :goto_2f
    if-eqz v6, :cond_55

    const/4 v0, 0x5

    .line 782
    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/CollationKeys$LevelCallback;->needToWrite(I)Z

    move-result v0

    if-nez v0, :cond_54

    return-void

    .line 786
    :cond_54
    invoke-virtual {v1, v4}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append(I)V

    .line 787
    invoke-virtual {v10, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V

    :cond_55
    return-void

    :cond_56
    move-object/from16 v0, p2

    move-object/from16 v2, p5

    move-object v7, v10

    move/from16 v4, v19

    move/from16 v3, v20

    move/from16 v6, v34

    const/16 v5, 0x20

    move-wide/from16 v19, v11

    move/from16 v11, v29

    move-object v12, v9

    move-wide/from16 v9, v27

    goto/16 :goto_1
.end method
