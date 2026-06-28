.class public final Landroid/icu/text/Normalizer;
.super Ljava/lang/Object;
.source "Normalizer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Normalizer$CharsAppendable;,
        Landroid/icu/text/Normalizer$CmpEquivLevel;,
        Landroid/icu/text/Normalizer$QuickCheckResult;,
        Landroid/icu/text/Normalizer$FCDMode;,
        Landroid/icu/text/Normalizer$NFKCMode;,
        Landroid/icu/text/Normalizer$NFCMode;,
        Landroid/icu/text/Normalizer$NFKDMode;,
        Landroid/icu/text/Normalizer$NFDMode;,
        Landroid/icu/text/Normalizer$NONEMode;,
        Landroid/icu/text/Normalizer$Mode;,
        Landroid/icu/text/Normalizer$FCD32ModeImpl;,
        Landroid/icu/text/Normalizer$NFKC32ModeImpl;,
        Landroid/icu/text/Normalizer$NFC32ModeImpl;,
        Landroid/icu/text/Normalizer$NFKD32ModeImpl;,
        Landroid/icu/text/Normalizer$NFD32ModeImpl;,
        Landroid/icu/text/Normalizer$Unicode32;,
        Landroid/icu/text/Normalizer$FCDModeImpl;,
        Landroid/icu/text/Normalizer$NFKCModeImpl;,
        Landroid/icu/text/Normalizer$NFCModeImpl;,
        Landroid/icu/text/Normalizer$NFKDModeImpl;,
        Landroid/icu/text/Normalizer$NFDModeImpl;,
        Landroid/icu/text/Normalizer$ModeImpl;
    }
.end annotation


# static fields
.field public static final COMPARE_CODE_POINT_ORDER:I = 0x8000

.field private static final COMPARE_EQUIV:I = 0x80000

.field public static final COMPARE_IGNORE_CASE:I = 0x10000

.field public static final COMPARE_NORM_OPTIONS_SHIFT:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMPOSE:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMPOSE_COMPAT:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DECOMP:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DECOMP_COMPAT:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DONE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FCD:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FOLD_CASE_DEFAULT:I = 0x0

.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1

.field public static final IGNORE_HANGUL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INPUT_IS_FCD:I = 0x20000

.field public static final MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

.field public static final NFC:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFD:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFKC:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFKD:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NO:Landroid/icu/text/Normalizer$QuickCheckResult;

.field public static final NONE:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NO_OP:Landroid/icu/text/Normalizer$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNICODE_3_2:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YES:Landroid/icu/text/Normalizer$QuickCheckResult;


# instance fields
.field private buffer:Ljava/lang/StringBuilder;

.field private bufferPos:I

.field private currentIndex:I

.field private mode:Landroid/icu/text/Normalizer$Mode;

.field private nextIndex:I

.field private norm2:Landroid/icu/text/Normalizer2;

.field private options:I

.field private text:Landroid/icu/text/UCharacterIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 299
    new-instance v0, Landroid/icu/text/Normalizer$NONEMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/Normalizer$NONEMode;-><init>(Landroid/icu/text/Normalizer$1;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NONE:Landroid/icu/text/Normalizer$Mode;

    .line 308
    new-instance v0, Landroid/icu/text/Normalizer$NFDMode;

    invoke-direct {v0, v1}, Landroid/icu/text/Normalizer$NFDMode;-><init>(Landroid/icu/text/Normalizer$1;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    .line 317
    new-instance v0, Landroid/icu/text/Normalizer$NFKDMode;

    invoke-direct {v0, v1}, Landroid/icu/text/Normalizer$NFKDMode;-><init>(Landroid/icu/text/Normalizer$1;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    .line 326
    new-instance v0, Landroid/icu/text/Normalizer$NFCMode;

    invoke-direct {v0, v1}, Landroid/icu/text/Normalizer$NFCMode;-><init>(Landroid/icu/text/Normalizer$1;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    .line 335
    sget-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->DEFAULT:Landroid/icu/text/Normalizer$Mode;

    .line 344
    new-instance v0, Landroid/icu/text/Normalizer$NFKCMode;

    invoke-direct {v0, v1}, Landroid/icu/text/Normalizer$NFKCMode;-><init>(Landroid/icu/text/Normalizer$1;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    .line 353
    new-instance v0, Landroid/icu/text/Normalizer$FCDMode;

    invoke-direct {v0, v1}, Landroid/icu/text/Normalizer$FCDMode;-><init>(Landroid/icu/text/Normalizer$1;)V

    sput-object v0, Landroid/icu/text/Normalizer;->FCD:Landroid/icu/text/Normalizer$Mode;

    .line 371
    sget-object v0, Landroid/icu/text/Normalizer;->NONE:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->NO_OP:Landroid/icu/text/Normalizer$Mode;

    .line 391
    sget-object v0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->COMPOSE:Landroid/icu/text/Normalizer$Mode;

    .line 411
    sget-object v0, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->COMPOSE_COMPAT:Landroid/icu/text/Normalizer$Mode;

    .line 431
    sget-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->DECOMP:Landroid/icu/text/Normalizer$Mode;

    .line 451
    sget-object v0, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    sput-object v0, Landroid/icu/text/Normalizer;->DECOMP_COMPAT:Landroid/icu/text/Normalizer$Mode;

    .line 488
    new-instance v0, Landroid/icu/text/Normalizer$QuickCheckResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(ILandroid/icu/text/Normalizer$1;)V

    sput-object v0, Landroid/icu/text/Normalizer;->NO:Landroid/icu/text/Normalizer$QuickCheckResult;

    .line 493
    new-instance v0, Landroid/icu/text/Normalizer$QuickCheckResult;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(ILandroid/icu/text/Normalizer$1;)V

    sput-object v0, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    .line 499
    new-instance v0, Landroid/icu/text/Normalizer$QuickCheckResult;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/icu/text/Normalizer$QuickCheckResult;-><init>(ILandroid/icu/text/Normalizer$1;)V

    sput-object v0, Landroid/icu/text/Normalizer;->MAYBE:Landroid/icu/text/Normalizer$QuickCheckResult;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/Normalizer$Mode;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/UCharacterIterator;

    iput-object p1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 625
    iput-object p2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    .line 626
    iput p3, p0, Landroid/icu/text/Normalizer;->options:I

    .line 627
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    .line 628
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 630
    new-instance p1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 578
    iput-object p2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    .line 579
    iput p3, p0, Landroid/icu/text/Normalizer;->options:I

    .line 580
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    .line 581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/text/CharacterIterator;Landroid/icu/text/Normalizer$Mode;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/CharacterIterator;

    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 603
    iput-object p2, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    .line 604
    iput p3, p0, Landroid/icu/text/Normalizer;->options:I

    .line 605
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    .line 606
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private clearBuffer()V
    .locals 2

    .line 1943
    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1944
    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    return-void
.end method

.method static cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 27

    move/from16 v0, p2

    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 2196
    invoke-static {}, Landroid/icu/impl/Norm2AllModes;->getNFCInstance()Landroid/icu/impl/Norm2AllModes;

    move-result-object v3

    iget-object v3, v3, Landroid/icu/impl/Norm2AllModes;->impl:Landroid/icu/impl/Normalizer2Impl;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    .line 2201
    sget-object v5, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 2202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2203
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2211
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 2213
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, -0x1

    move-object/from16 v12, p0

    move-object/from16 v17, p1

    move/from16 v16, v8

    move/from16 v21, v9

    move v8, v10

    move v9, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_2
    if-gez v8, :cond_4

    move/from16 v8, v16

    :goto_3
    if-ne v15, v8, :cond_3

    if-nez v13, :cond_2

    move v2, v13

    move-object v13, v12

    move v12, v8

    move v8, v15

    move v15, v10

    goto :goto_4

    :cond_2
    add-int/2addr v13, v10

    .line 2241
    aget-object v8, v14, v13

    iget-object v12, v8, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    if-eqz v12, :cond_2

    .line 2243
    aget-object v8, v14, v13

    iget v15, v8, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    .line 2244
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v8

    goto :goto_3

    :cond_3
    add-int/lit8 v16, v15, 0x1

    .line 2234
    invoke-interface {v12, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move v2, v13

    move-object v13, v12

    move v12, v8

    move/from16 v8, v16

    goto :goto_4

    :cond_4
    move v2, v13

    move-object v13, v12

    move/from16 v12, v16

    move/from16 v25, v15

    move v15, v8

    move/from16 v8, v25

    :goto_4
    if-gez v9, :cond_7

    move-object/from16 v22, v17

    move/from16 v9, v20

    move/from16 v11, v21

    :goto_5
    if-ne v9, v11, :cond_6

    if-nez v18, :cond_5

    move-object/from16 v17, v3

    move v3, v11

    move v11, v9

    move v9, v10

    move-object/from16 v10, v22

    goto :goto_6

    :cond_5
    add-int/lit8 v18, v18, -0x1

    .line 2264
    aget-object v9, v19, v18

    iget-object v9, v9, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    if-eqz v9, :cond_5

    .line 2266
    aget-object v11, v19, v18

    iget v11, v11, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    .line 2267
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move-object/from16 v22, v9

    move v9, v11

    move/from16 v11, v17

    goto :goto_5

    :cond_6
    add-int/lit8 v17, v9, 0x1

    move-object/from16 v10, v22

    .line 2257
    invoke-interface {v10, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move/from16 v25, v18

    move/from16 v18, v1

    move/from16 v1, v25

    move/from16 v26, v17

    move-object/from16 v17, v3

    move v3, v11

    move/from16 v11, v26

    goto :goto_7

    :cond_7
    move-object/from16 v10, v17

    move/from16 v11, v20

    move-object/from16 v17, v3

    move/from16 v3, v21

    :goto_6
    move/from16 v25, v18

    move/from16 v18, v1

    move/from16 v1, v25

    :goto_7
    if-ne v15, v9, :cond_9

    if-gez v15, :cond_8

    const/4 v9, 0x0

    return v9

    :cond_8
    move/from16 v21, v3

    move v15, v8

    move/from16 v20, v11

    move/from16 v16, v12

    move-object v12, v13

    move-object/from16 v3, v17

    const/4 v8, -0x1

    const/4 v9, -0x1

    move v13, v2

    move-object/from16 v17, v10

    const/4 v10, -0x1

    :goto_8
    move/from16 v25, v18

    move/from16 v18, v1

    move/from16 v1, v25

    goto/16 :goto_2

    :cond_9
    if-gez v15, :cond_a

    const/16 v20, -0x1

    return v20

    :cond_a
    const/16 v20, -0x1

    if-gez v9, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    move-object/from16 v21, v7

    int-to-char v7, v15

    .line 2290
    invoke-static {v7}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 2293
    invoke-static {v15}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v22

    if-eqz v22, :cond_c

    if-eq v8, v12, :cond_d

    move/from16 v22, v12

    .line 2294
    invoke-interface {v13, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 2296
    invoke-static {v7, v12}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v12

    goto :goto_9

    :cond_c
    move/from16 v22, v12

    add-int/lit8 v12, v8, -0x2

    if-ltz v12, :cond_e

    .line 2299
    invoke-interface {v13, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 2300
    invoke-static {v12, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v12

    :goto_9
    move/from16 p0, v1

    goto :goto_a

    :cond_d
    move/from16 v22, v12

    :cond_e
    move/from16 p0, v1

    move v12, v15

    :goto_a
    int-to-char v1, v9

    .line 2306
    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 2309
    invoke-static {v9}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v23

    if-eqz v23, :cond_f

    if-eq v11, v3, :cond_10

    move/from16 v23, v3

    .line 2310
    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 2312
    invoke-static {v1, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    goto :goto_b

    :cond_f
    move/from16 v23, v3

    add-int/lit8 v3, v11, -0x2

    if-ltz v3, :cond_11

    .line 2315
    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 2316
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    :goto_b
    move/from16 v24, v9

    goto :goto_c

    :cond_10
    move/from16 v23, v3

    :cond_11
    move v3, v9

    move/from16 v24, v3

    :goto_c
    if-nez v2, :cond_16

    if-eqz v4, :cond_16

    .line 2327
    invoke-virtual {v5, v12, v6, v0}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v9

    if-ltz v9, :cond_16

    .line 2330
    invoke-static {v7}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2331
    invoke-static {v15}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_12
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v1, v11, -0x1

    .line 2343
    invoke-interface {v10, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move/from16 v24, v1

    :cond_13
    :goto_d
    if-nez v14, :cond_14

    .line 2349
    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v1

    move-object v14, v1

    :cond_14
    const/4 v1, 0x0

    .line 2351
    aget-object v3, v14, v1

    iput-object v13, v3, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2352
    aget-object v3, v14, v1

    iput v8, v3, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    add-int/lit8 v13, v2, 0x1

    const/16 v2, 0x1f

    if-gt v9, v2, :cond_15

    .line 2358
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 2360
    :cond_15
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2361
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2367
    :goto_e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    move/from16 v16, v1

    move-object v12, v6

    move-object/from16 v3, v17

    move/from16 v1, v18

    move/from16 v8, v20

    move-object/from16 v7, v21

    move/from16 v21, v23

    move/from16 v9, v24

    const/4 v15, 0x0

    move/from16 v18, p0

    move-object/from16 v17, v10

    move v10, v8

    :goto_f
    move/from16 v20, v11

    goto/16 :goto_2

    :cond_16
    if-nez p0, :cond_1b

    if-eqz v4, :cond_1b

    move-object/from16 v9, v21

    move/from16 v21, v4

    .line 2375
    invoke-virtual {v5, v3, v9, v0}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v4

    if-ltz v4, :cond_1c

    .line 2378
    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2379
    invoke-static/range {v24 .. v24}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-eqz v1, :cond_17

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_17
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v1, v8, -0x1

    .line 2391
    invoke-interface {v13, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v15, v8

    move v8, v1

    goto :goto_11

    :cond_18
    :goto_10
    move/from16 v25, v15

    move v15, v8

    move/from16 v8, v25

    :goto_11
    if-nez v19, :cond_19

    .line 2397
    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v1

    move-object/from16 v19, v1

    :cond_19
    const/4 v1, 0x0

    .line 2399
    aget-object v3, v19, v1

    iput-object v10, v3, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2400
    aget-object v3, v19, v1

    iput v11, v3, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    add-int/lit8 v3, p0, 0x1

    const/16 v7, 0x1f

    if-gt v4, v7, :cond_1a

    .line 2406
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v9, v1, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 2408
    :cond_1a
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2409
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 2415
    :goto_12
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move-object v7, v9

    move-object v12, v13

    move/from16 v10, v20

    move/from16 v16, v22

    move v13, v2

    move v9, v10

    move/from16 v20, v1

    move/from16 v1, v18

    move/from16 v18, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    move/from16 v25, v21

    move/from16 v21, v4

    move/from16 v4, v25

    goto/16 :goto_2

    :cond_1b
    move-object/from16 v9, v21

    move/from16 v21, v4

    :cond_1c
    const/4 v4, 0x2

    if-ge v2, v4, :cond_21

    if-eqz v18, :cond_21

    move-object/from16 v4, v17

    .line 2423
    invoke-virtual {v4, v12}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_22

    .line 2426
    invoke-static {v7}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2427
    invoke-static {v15}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_1d
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v1, v11, -0x1

    .line 2439
    invoke-interface {v10, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move/from16 v24, v1

    :cond_1e
    :goto_13
    if-nez v14, :cond_1f

    .line 2445
    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v1

    move-object v14, v1

    .line 2447
    :cond_1f
    aget-object v1, v14, v2

    iput-object v13, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2448
    aget-object v1, v14, v2

    iput v8, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x2

    if-ge v2, v1, :cond_20

    add-int/lit8 v1, v2, 0x1

    .line 2453
    aget-object v2, v14, v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    move v13, v1

    goto :goto_14

    :cond_20
    move v13, v2

    .line 2459
    :goto_14
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    move/from16 v16, v1

    move-object v3, v4

    move-object v7, v9

    move-object/from16 v17, v10

    move/from16 v1, v18

    move/from16 v8, v20

    move v10, v8

    move/from16 v4, v21

    move/from16 v21, v23

    move/from16 v9, v24

    const/4 v15, 0x0

    move/from16 v18, p0

    goto/16 :goto_f

    :cond_21
    move-object/from16 v4, v17

    :cond_22
    move/from16 v12, p0

    move/from16 p0, v2

    const/4 v2, 0x2

    if-ge v12, v2, :cond_27

    if-eqz v18, :cond_27

    .line 2467
    invoke-virtual {v4, v3}, Landroid/icu/impl/Normalizer2Impl;->getDecomposition(I)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_27

    .line 2470
    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2471
    invoke-static/range {v24 .. v24}, Landroid/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-eqz v1, :cond_23

    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_23
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v1, v8, -0x1

    .line 2483
    invoke-interface {v13, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v15, v8

    move v8, v1

    goto :goto_16

    :cond_24
    :goto_15
    move/from16 v25, v15

    move v15, v8

    move/from16 v8, v25

    :goto_16
    if-nez v19, :cond_25

    .line 2489
    invoke-static {}, Landroid/icu/text/Normalizer;->createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;

    move-result-object v1

    move-object/from16 v19, v1

    .line 2491
    :cond_25
    aget-object v1, v19, v12

    iput-object v10, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    .line 2492
    aget-object v1, v19, v12

    iput v11, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->s:I

    add-int/lit8 v1, v12, 0x1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_26

    add-int/lit8 v2, v1, 0x1

    .line 2497
    aget-object v1, v19, v1

    const/4 v3, 0x0

    iput-object v3, v1, Landroid/icu/text/Normalizer$CmpEquivLevel;->cs:Ljava/lang/CharSequence;

    move v1, v2

    goto :goto_17

    :cond_26
    const/4 v3, 0x0

    .line 2503
    :goto_17
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    move-object v3, v4

    move-object v7, v9

    move-object v12, v13

    move/from16 v9, v20

    move v10, v9

    move/from16 v4, v21

    move/from16 v16, v22

    const/16 v20, 0x0

    move/from16 v13, p0

    move/from16 v21, v2

    goto/16 :goto_8

    :cond_27
    const v2, 0xd800

    move/from16 v9, v24

    if-lt v15, v2, :cond_2d

    if-lt v9, v2, :cond_2d

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_2d

    const v0, 0xdbff

    if-gt v15, v0, :cond_28

    move/from16 v2, v22

    if-eq v8, v2, :cond_28

    .line 2530
    invoke-interface {v13, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2531
    :cond_28
    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_29

    add-int/lit8 v2, v8, -0x1

    if-eqz v2, :cond_29

    const/4 v2, 0x2

    sub-int/2addr v8, v2

    invoke-interface {v13, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_18

    :cond_29
    add-int/lit16 v15, v15, -0x2800

    :cond_2a
    :goto_18
    if-gt v9, v0, :cond_2b

    move/from16 v0, v23

    if-eq v11, v0, :cond_2b

    .line 2540
    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2541
    :cond_2b
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2c

    add-int/lit8 v0, v11, -0x1

    if-eqz v0, :cond_2c

    const/4 v0, 0x2

    sub-int/2addr v11, v0

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_19

    :cond_2c
    add-int/lit16 v9, v9, -0x2800

    :cond_2d
    :goto_19
    sub-int/2addr v15, v9

    return v15
.end method

.method public static compare(III)I
    .locals 1

    .line 1283
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/high16 v0, 0x20000

    or-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static compare(ILjava/lang/String;I)I
    .locals 0

    .line 1294
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 1239
    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static compare([CII[CIII)I
    .locals 0

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-eqz p3, :cond_0

    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    if-lt p2, p1, :cond_0

    if-lt p5, p4, :cond_0

    sub-int/2addr p2, p1

    .line 1190
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    sub-int/2addr p5, p4

    .line 1191
    invoke-static {p3, p4, p5}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 1190
    invoke-static {p0, p1, p6}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    .line 1188
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static compare([C[CI)I
    .locals 0

    .line 1272
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static compose([CII[CIIZI)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p2, p1

    .line 755
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 756
    new-instance p1, Landroid/icu/text/Normalizer$CharsAppendable;

    invoke-direct {p1, p3, p4, p5}, Landroid/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    .line 757
    invoke-static {p6, p7}, Landroid/icu/text/Normalizer;->getComposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 758
    invoke-virtual {p1}, Landroid/icu/text/Normalizer$CharsAppendable;->length()I

    move-result p0

    return p0
.end method

.method public static compose([C[CZI)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 728
    array-length v2, p0

    array-length v5, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/icu/text/Normalizer;->compose([CII[CIIZI)I

    move-result p0

    return p0
.end method

.method public static compose(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 690
    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->compose(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compose(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 707
    invoke-static {p1, p2}, Landroid/icu/text/Normalizer;->getComposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static concatenate([CII[CII[CIILandroid/icu/text/Normalizer$Mode;I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p6, :cond_3

    if-ne p3, p6, :cond_1

    if-ge p4, p8, :cond_1

    if-lt p7, p5, :cond_0

    goto :goto_0

    .line 1353
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "overlapping right and dst ranges"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1357
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int/2addr p2, p1

    add-int v1, p2, p5

    sub-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1358
    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    sub-int/2addr p5, p4

    .line 1359
    invoke-static {p3, p4, p5}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 1360
    invoke-virtual {p9, p10}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p8, p7

    if-gt p0, p8, :cond_2

    const/4 p1, 0x0

    .line 1363
    invoke-virtual {v0, p1, p0, p6, p7}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    return p0

    .line 1366
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1348
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static concatenate(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1439
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static concatenate([C[CLandroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1401
    invoke-virtual {p2, p3}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p0

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/icu/text/Normalizer2;->append(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final createCmpEquivLevelStack()[Landroid/icu/text/Normalizer$CmpEquivLevel;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/Normalizer$CmpEquivLevel;

    .line 2149
    new-instance v1, Landroid/icu/text/Normalizer$CmpEquivLevel;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/text/Normalizer$CmpEquivLevel;-><init>(Landroid/icu/text/Normalizer$1;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/icu/text/Normalizer$CmpEquivLevel;

    invoke-direct {v1, v2}, Landroid/icu/text/Normalizer$CmpEquivLevel;-><init>(Landroid/icu/text/Normalizer$1;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static decompose([CII[CIIZI)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p2, p1

    .line 839
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 840
    new-instance p1, Landroid/icu/text/Normalizer$CharsAppendable;

    invoke-direct {p1, p3, p4, p5}, Landroid/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    .line 841
    invoke-static {p6, p7}, Landroid/icu/text/Normalizer;->getDecomposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 842
    invoke-virtual {p1}, Landroid/icu/text/Normalizer$CharsAppendable;->length()I

    move-result p0

    return p0
.end method

.method public static decompose([C[CZI)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 812
    array-length v2, p0

    array-length v5, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/icu/text/Normalizer;->decompose([CII[CIIZI)I

    move-result p0

    return p0
.end method

.method public static decompose(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 774
    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->decompose(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decompose(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 791
    invoke-static {p1, p2}, Landroid/icu/text/Normalizer;->getDecomposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getComposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;
    .locals 0

    if-eqz p0, :cond_0

    .line 671
    sget-object p0, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/icu/text/Normalizer;->NFC:Landroid/icu/text/Normalizer$Mode;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p0

    return-object p0
.end method

.method private static final getDecomposeNormalizer2(ZI)Landroid/icu/text/Normalizer2;
    .locals 0

    if-eqz p0, :cond_0

    .line 674
    sget-object p0, Landroid/icu/text/Normalizer;->NFKD:Landroid/icu/text/Normalizer$Mode;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p0

    return-object p0
.end method

.method public static getFC_NFKC_Closure(I[C)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1452
    invoke-static {p0}, Landroid/icu/text/Normalizer;->getFC_NFKC_Closure(I)Ljava/lang/String;

    move-result-object p0

    .line 1453
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1454
    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v1, 0x0

    .line 1455
    invoke-virtual {p0, v1, v0, p1, v1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_0
    return v0
.end method

.method public static getFC_NFKC_Closure(I)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1474
    invoke-static {}, Landroid/icu/text/Normalizer$NFKCModeImpl;->access$1000()Landroid/icu/text/Normalizer$ModeImpl;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/Normalizer$ModeImpl;->access$300(Landroid/icu/text/Normalizer$ModeImpl;)Landroid/icu/text/Normalizer2;

    move-result-object v0

    .line 1475
    sget-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;

    .line 1477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 1478
    invoke-virtual {v1, p0, v2, v3}, Landroid/icu/impl/UCaseProps;->toFullFolding(ILjava/lang/Appendable;I)I

    move-result v1

    const-string v4, ""

    if-gez v1, :cond_1

    .line 1480
    move-object v1, v0

    check-cast v1, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    iget-object v1, v1, Landroid/icu/impl/Norm2AllModes$Normalizer2WithImpl;->impl:Landroid/icu/impl/Normalizer2Impl;

    .line 1481
    invoke-virtual {v1, p0}, Landroid/icu/impl/Normalizer2Impl;->getNorm16(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/icu/impl/Normalizer2Impl;->getCompQuickCheck(I)I

    move-result v1

    if-eqz v1, :cond_0

    return-object v4

    .line 1484
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x1f

    if-le v1, p0, :cond_2

    .line 1487
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1490
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1492
    invoke-static {p0, v3}, Landroid/icu/lang/UCharacter;->foldCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1494
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v4

    :cond_3
    return-object v0
.end method

.method private static internalCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 6

    ushr-int/lit8 v0, p2, 0x14

    const/high16 v1, 0x80000

    or-int/2addr p2, v1

    const/high16 v1, 0x20000

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_3

    :cond_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    .line 2022
    sget-object v1, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    goto :goto_0

    .line 2024
    :cond_1
    sget-object v1, Landroid/icu/text/Normalizer;->FCD:Landroid/icu/text/Normalizer$Mode;

    invoke-virtual {v1, v0}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object v0

    .line 2028
    :goto_0
    invoke-virtual {v0, p0}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2029
    invoke-virtual {v0, p1}, Landroid/icu/text/Normalizer2;->spanQuickCheckYes(Ljava/lang/CharSequence;)I

    move-result v2

    .line 2040
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    .line 2041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2042
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {p0, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2044
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 2045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1, v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2046
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2050
    :cond_3
    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static isNormalized(ILandroid/icu/text/Normalizer$Mode;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1129
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z

    move-result p0

    return p0
.end method

.method public static isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1112
    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isNormalized([CIILandroid/icu/text/Normalizer$Mode;I)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p2, p1

    .line 1088
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 1089
    invoke-virtual {p3, p4}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private nextNormalize()Z
    .locals 4

    .line 1948
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    .line 1949
    iget v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    .line 1950
    iget-object v1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 1952
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 1956
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1957
    :goto_0
    iget-object v2, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v2

    if-ltz v2, :cond_2

    .line 1958
    iget-object v3, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v3, v2}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1959
    iget-object v2, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/icu/text/UCharacterIterator;->moveCodePointIndex(I)I

    goto :goto_1

    .line 1962
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1964
    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v2

    iput v2, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    .line 1965
    iget-object v2, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    iget-object v3, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v3}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1966
    iget-object p0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static normalize([CII[CIILandroid/icu/text/Normalizer$Mode;I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p2, p1

    .line 929
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 930
    new-instance p1, Landroid/icu/text/Normalizer$CharsAppendable;

    invoke-direct {p1, p3, p4, p5}, Landroid/icu/text/Normalizer$CharsAppendable;-><init>([CII)V

    .line 931
    invoke-virtual {p6, p7}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 932
    invoke-virtual {p1}, Landroid/icu/text/Normalizer$CharsAppendable;->length()I

    move-result p0

    return p0
.end method

.method public static normalize([C[CLandroid/icu/text/Normalizer$Mode;I)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 901
    array-length v2, p0

    array-length v5, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Landroid/icu/text/Normalizer;->normalize([CII[CIILandroid/icu/text/Normalizer$Mode;I)I

    move-result p0

    return p0
.end method

.method public static normalize(ILandroid/icu/text/Normalizer$Mode;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 968
    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->normalize(ILandroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(ILandroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 948
    sget-object v0, Landroid/icu/text/Normalizer;->NFD:Landroid/icu/text/Normalizer$Mode;

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 949
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFCInstance()Landroid/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/Normalizer2;->getDecomposition(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 951
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    .line 955
    :cond_1
    invoke-static {p0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 880
    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 863
    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private previousNormalize()Z
    .locals 4

    .line 1970
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    .line 1971
    iget v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    iput v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    .line 1972
    iget-object v1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1975
    :cond_0
    iget-object v1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    const v3, 0xffff

    if-gt v1, v3, :cond_1

    int-to-char v3, v1

    .line 1977
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1979
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 1981
    :goto_0
    iget-object v3, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v3, v1}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1985
    :cond_2
    iget-object v1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v1

    iput v1, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    .line 1986
    iget-object v1, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    iget-object v3, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v3}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1987
    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    .line 1988
    iget-object p0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public static quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 984
    invoke-static {p0, p1, v0}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object p0

    return-object p0
.end method

.method public static quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1010
    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object p0

    return-object p0
.end method

.method public static quickCheck([CIILandroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-int/2addr p2, p1

    .line 1059
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 1060
    invoke-virtual {p3, p4}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/Normalizer2;->quickCheck(Ljava/lang/CharSequence;)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object p0

    return-object p0
.end method

.method public static quickCheck([CLandroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1029
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1, p2}, Landroid/icu/text/Normalizer;->quickCheck([CIILandroid/icu/text/Normalizer$Mode;I)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 650
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/Normalizer;

    .line 651
    iget-object v1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UCharacterIterator;

    iput-object v1, v0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 652
    iget-object v1, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iput-object v1, v0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    .line 653
    iget v1, p0, Landroid/icu/text/Normalizer;->options:I

    iput v1, v0, Landroid/icu/text/Normalizer;->options:I

    .line 654
    iget-object v1, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    iput-object v1, v0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    .line 656
    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iput v1, v0, Landroid/icu/text/Normalizer;->bufferPos:I

    .line 657
    iget v1, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    iput v1, v0, Landroid/icu/text/Normalizer;->currentIndex:I

    .line 658
    iget p0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput p0, v0, Landroid/icu/text/Normalizer;->nextIndex:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 662
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public current()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1513
    iget v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->nextNormalize()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    return p0

    .line 1514
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result p0

    return p0
.end method

.method public endIndex()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1722
    iget-object p0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result p0

    return p0
.end method

.method public first()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1654
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    .line 1655
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->next()I

    move-result p0

    return p0
.end method

.method public getBeginIndex()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getEndIndex()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1643
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->endIndex()I

    move-result p0

    return p0
.end method

.method public getIndex()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1692
    iget v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1693
    iget p0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    return p0

    .line 1695
    :cond_0
    iget p0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    return p0
.end method

.method public getLength()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1839
    iget-object p0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result p0

    return p0
.end method

.method public getMode()Landroid/icu/text/Normalizer$Mode;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1769
    iget-object p0, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    return-object p0
.end method

.method public getOption(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1809
    iget p0, p0, Landroid/icu/text/Normalizer;->options:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getText([C)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1828
    iget-object p0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0, p1}, Landroid/icu/text/UCharacterIterator;->getText([C)I

    move-result p0

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1850
    iget-object p0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public last()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1668
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToLimit()V

    .line 1669
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    iput v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    .line 1670
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    .line 1671
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->previous()I

    move-result p0

    return p0
.end method

.method public next()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1530
    iget v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    iget-object v1, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->nextNormalize()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    return p0

    .line 1531
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    .line 1532
    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    return v0
.end method

.method public previous()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1550
    iget v0, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Landroid/icu/text/Normalizer;->previousNormalize()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    return p0

    .line 1551
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/icu/text/Normalizer;->buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointBefore(I)I

    move-result v0

    .line 1552
    iget v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/Normalizer;->bufferPos:I

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1567
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    const/4 v0, 0x0

    .line 1568
    iput v0, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput v0, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    .line 1569
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    return-void
.end method

.method public setIndex(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1614
    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer;->setIndexOnly(I)V

    .line 1615
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->current()I

    move-result p0

    return p0
.end method

.method public setIndexOnly(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1584
    iget-object v0, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 1585
    iput p1, p0, Landroid/icu/text/Normalizer;->nextIndex:I

    iput p1, p0, Landroid/icu/text/Normalizer;->currentIndex:I

    .line 1586
    invoke-direct {p0}, Landroid/icu/text/Normalizer;->clearBuffer()V

    return-void
.end method

.method public setMode(Landroid/icu/text/Normalizer$Mode;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1757
    iput-object p1, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    .line 1758
    iget-object p1, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iget v0, p0, Landroid/icu/text/Normalizer;->options:I

    invoke-virtual {p1, v0}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    return-void
.end method

.method public setOption(IZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 1793
    iget p2, p0, Landroid/icu/text/Normalizer;->options:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/icu/text/Normalizer;->options:I

    goto :goto_0

    .line 1795
    :cond_0
    iget p2, p0, Landroid/icu/text/Normalizer;->options:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/icu/text/Normalizer;->options:I

    .line 1797
    :goto_0
    iget-object p1, p0, Landroid/icu/text/Normalizer;->mode:Landroid/icu/text/Normalizer$Mode;

    iget p2, p0, Landroid/icu/text/Normalizer;->options:I

    invoke-virtual {p1, p2}, Landroid/icu/text/Normalizer$Mode;->getNormalizer2(I)Landroid/icu/text/Normalizer2;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/Normalizer;->norm2:Landroid/icu/text/Normalizer2;

    return-void
.end method

.method public setText(Landroid/icu/text/UCharacterIterator;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1931
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/UCharacterIterator;

    if-eqz p1, :cond_0

    .line 1935
    iput-object p1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 1936
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    return-void

    .line 1933
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not create a new UCharacterIterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 1938
    new-instance p1, Landroid/icu/util/ICUCloneNotSupportedException;

    const-string v0, "Could not clone the UCharacterIterator"

    invoke-direct {p1, v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1896
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1900
    iput-object p1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 1901
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    return-void

    .line 1898
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not create a new UCharacterIterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setText(Ljava/lang/StringBuffer;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1862
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1866
    iput-object p1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 1867
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    return-void

    .line 1864
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not create a new UCharacterIterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1913
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1917
    iput-object p1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 1918
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    return-void

    .line 1915
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not create a new UCharacterIterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setText([C)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1879
    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance([C)Landroid/icu/text/UCharacterIterator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1883
    iput-object p1, p0, Landroid/icu/text/Normalizer;->text:Landroid/icu/text/UCharacterIterator;

    .line 1884
    invoke-virtual {p0}, Landroid/icu/text/Normalizer;->reset()V

    return-void

    .line 1881
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not create a new UCharacterIterator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startIndex()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
