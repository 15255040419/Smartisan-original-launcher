.class public final Landroid/icu/impl/BMPSet;
.super Ljava/lang/Object;
.source "BMPSet.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static U16_SURROGATE_OFFSET:I = 0x35fdc00


# instance fields
.field private bmpBlockBits:[I

.field private latin1Contains:[Z

.field private final list:[I

.field private list4kStarts:[I

.field private final listLength:I

.field private table7FF:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/BMPSet;[II)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Landroid/icu/impl/BMPSet;->list:[I

    .line 95
    iput p3, p0, Landroid/icu/impl/BMPSet;->listLength:I

    .line 96
    iget-object p2, p1, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    invoke-virtual {p2}, [Z->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Z

    iput-object p2, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    .line 97
    iget-object p2, p1, Landroid/icu/impl/BMPSet;->table7FF:[I

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    iput-object p2, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    .line 98
    iget-object p2, p1, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    iput-object p2, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    .line 99
    iget-object p1, p1, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    return-void
.end method

.method public constructor <init>([II)V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/icu/impl/BMPSet;->list:[I

    .line 72
    iput p2, p0, Landroid/icu/impl/BMPSet;->listLength:I

    const/16 p1, 0x100

    new-array p1, p1, [Z

    .line 73
    iput-object p1, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    const/16 p1, 0x40

    new-array p2, p1, [I

    .line 74
    iput-object p2, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    new-array p1, p1, [I

    .line 75
    iput-object p1, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    const/16 p1, 0x12

    new-array p1, p1, [I

    .line 76
    iput-object p1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    .line 83
    iget-object p1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    iget p2, p0, Landroid/icu/impl/BMPSet;->listLength:I

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    const/16 v2, 0x800

    invoke-direct {p0, v2, v1, p2}, Landroid/icu/impl/BMPSet;->findCodePoint(III)I

    move-result p2

    aput p2, p1, v1

    move p1, v0

    :goto_0
    const/16 p2, 0x10

    if-gt p1, p2, :cond_0

    .line 86
    iget-object p2, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    shl-int/lit8 v1, p1, 0xc

    add-int/lit8 v2, p1, -0x1

    aget v2, p2, v2

    iget v3, p0, Landroid/icu/impl/BMPSet;->listLength:I

    sub-int/2addr v3, v0

    invoke-direct {p0, v1, v2, v3}, Landroid/icu/impl/BMPSet;->findCodePoint(III)I

    move-result v1

    aput v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 p2, 0x11

    iget v1, p0, Landroid/icu/impl/BMPSet;->listLength:I

    sub-int/2addr v1, v0

    aput v1, p1, p2

    .line 90
    invoke-direct {p0}, Landroid/icu/impl/BMPSet;->initBits()V

    return-void
.end method

.method private final containsSlow(III)Z
    .locals 0

    .line 513
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/BMPSet;->findCodePoint(III)I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private findCodePoint(III)I
    .locals 2

    .line 491
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->list:[I

    aget v1, v0, p2

    if-ge p1, v1, :cond_0

    return p2

    :cond_0
    if-ge p2, p3, :cond_4

    add-int/lit8 v1, p3, -0x1

    .line 495
    aget v0, v0, v1

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    return p3

    .line 503
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_3

    move p3, v0

    goto :goto_0

    :cond_3
    move p2, v0

    goto :goto_0

    :cond_4
    :goto_1
    return p3
.end method

.method private initBits()V
    .locals 11

    const/4 v0, 0x0

    .line 385
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v2, v0, 0x1

    aget v0, v1, v0

    .line 386
    iget v3, p0, Landroid/icu/impl/BMPSet;->listLength:I

    const/high16 v4, 0x110000

    if-ge v2, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 387
    aget v1, v1, v2

    move v2, v3

    goto :goto_1

    :cond_0
    move v1, v4

    :goto_1
    const/16 v3, 0x100

    const/4 v5, 0x1

    if-lt v0, v3, :cond_1

    goto :goto_4

    .line 395
    :cond_1
    :goto_2
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    add-int/lit8 v7, v0, 0x1

    aput-boolean v5, v6, v0

    if-ge v7, v1, :cond_3

    if-lt v7, v3, :cond_2

    goto :goto_3

    :cond_2
    move v0, v7

    goto :goto_2

    :cond_3
    :goto_3
    if-le v1, v3, :cond_10

    move v0, v7

    :goto_4
    const/16 v3, 0x800

    if-ge v0, v3, :cond_7

    .line 401
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    if-gt v1, v3, :cond_4

    move v7, v1

    goto :goto_5

    :cond_4
    move v7, v3

    :goto_5
    invoke-static {v6, v0, v7}, Landroid/icu/impl/BMPSet;->set32x64Bits([III)V

    if-le v1, v3, :cond_5

    move v0, v3

    goto :goto_6

    .line 407
    :cond_5
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v1, v2, 0x1

    aget v2, v0, v2

    .line 408
    iget v3, p0, Landroid/icu/impl/BMPSet;->listLength:I

    if-ge v1, v3, :cond_6

    add-int/lit8 v3, v1, 0x1

    .line 409
    aget v1, v0, v1

    move v0, v2

    move v2, v3

    goto :goto_4

    :cond_6
    move v0, v2

    move v2, v1

    move v1, v4

    goto :goto_4

    :cond_7
    :goto_6
    const/high16 v6, 0x10000

    if-ge v0, v6, :cond_f

    if-le v1, v6, :cond_8

    move v1, v6

    :cond_8
    if-ge v0, v3, :cond_9

    move v0, v3

    :cond_9
    if-ge v0, v1, :cond_c

    and-int/lit8 v7, v0, 0x3f

    const v8, 0x10001

    if-eqz v7, :cond_a

    shr-int/lit8 v0, v0, 0x6

    .line 429
    iget-object v3, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    and-int/lit8 v7, v0, 0x3f

    aget v9, v3, v7

    shr-int/lit8 v10, v0, 0x6

    shl-int v10, v8, v10

    or-int/2addr v9, v10

    aput v9, v3, v7

    add-int/2addr v0, v5

    shl-int/lit8 v3, v0, 0x6

    move v0, v3

    :cond_a
    if-ge v0, v1, :cond_c

    and-int/lit8 v7, v1, -0x40

    if-ge v0, v7, :cond_b

    .line 436
    iget-object v7, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v0, v0, 0x6

    shr-int/lit8 v9, v1, 0x6

    invoke-static {v7, v0, v9}, Landroid/icu/impl/BMPSet;->set32x64Bits([III)V

    :cond_b
    and-int/lit8 v0, v1, 0x3f

    if-eqz v0, :cond_c

    shr-int/lit8 v0, v1, 0x6

    .line 442
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    and-int/lit8 v3, v0, 0x3f

    aget v7, v1, v3

    shr-int/lit8 v9, v0, 0x6

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, v1, v3

    add-int/2addr v0, v5

    shl-int/lit8 v1, v0, 0x6

    move v3, v1

    :cond_c
    if-ne v1, v6, :cond_d

    goto :goto_7

    .line 453
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v1, v2, 0x1

    aget v2, v0, v2

    .line 454
    iget v6, p0, Landroid/icu/impl/BMPSet;->listLength:I

    if-ge v1, v6, :cond_e

    add-int/lit8 v6, v1, 0x1

    .line 455
    aget v1, v0, v1

    move v0, v2

    move v2, v6

    goto :goto_6

    :cond_e
    move v0, v2

    move v2, v1

    move v1, v4

    goto :goto_6

    :cond_f
    :goto_7
    return-void

    :cond_10
    move v0, v2

    goto/16 :goto_0
.end method

.method private static set32x64Bits([III)V
    .locals 7

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v1, p1, 0x3f

    const/4 v2, 0x1

    shl-int v3, v2, v0

    add-int/2addr p1, v2

    if-ne p1, p2, :cond_0

    .line 337
    aget p1, p0, v1

    or-int/2addr p1, v3

    aput p1, p0, v1

    return-void

    :cond_0
    shr-int/lit8 p1, p2, 0x6

    and-int/lit8 p2, p2, 0x3f

    if-ne v0, p1, :cond_1

    :goto_0
    if-ge v1, p2, :cond_6

    add-int/lit8 p1, v1, 0x1

    .line 347
    aget v0, p0, v1

    or-int/2addr v0, v3

    aput v0, p0, v1

    move v1, p1

    goto :goto_0

    :cond_1
    const/16 v4, 0x40

    if-lez v1, :cond_3

    :goto_1
    add-int/lit8 v5, v1, 0x1

    .line 355
    aget v6, p0, v1

    or-int/2addr v6, v3

    aput v6, p0, v1

    if-lt v5, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v1, 0x0

    if-ge v0, p1, :cond_5

    shl-int v0, v2, v0

    sub-int/2addr v0, v2

    not-int v0, v0

    const/16 v3, 0x20

    if-ge p1, v3, :cond_4

    shl-int v3, v2, p1

    sub-int/2addr v3, v2

    and-int/2addr v0, v3

    :cond_4
    move v3, v1

    :goto_3
    if-ge v3, v4, :cond_5

    .line 365
    aget v5, p0, v3

    or-int/2addr v5, v0

    aput v5, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    shl-int p1, v2, p1

    :goto_4
    if-ge v1, p2, :cond_6

    .line 374
    aget v0, p0, v1

    or-int/2addr v0, p1

    aput v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 5

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 104
    iget-object p0, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean p0, p0, p1

    return p0

    :cond_0
    const/16 v0, 0x7ff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p1, v0, :cond_2

    .line 106
    iget-object p0, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v0, p1, 0x3f

    aget p0, p0, v0

    shr-int/lit8 p1, p1, 0x6

    shl-int p1, v2, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    const v0, 0xd800

    if-lt p1, v0, :cond_5

    const v0, 0xe000

    if-lt p1, v0, :cond_3

    const v0, 0xffff

    if-gt p1, v0, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    .line 120
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v1, 0xd

    aget v1, v0, v1

    const/16 v2, 0x11

    aget v0, v0, v2

    invoke-direct {p0, p1, v1, v0}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result p0

    return p0

    :cond_4
    return v1

    :cond_5
    :goto_0
    shr-int/lit8 v0, p1, 0xc

    .line 109
    iget-object v3, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget v3, v3, v4

    shr-int/2addr v3, v0

    const v4, 0x10001

    and-int/2addr v3, v4

    if-gt v3, v2, :cond_7

    if-eqz v3, :cond_6

    move v1, v2

    :cond_6
    return v1

    .line 116
    :cond_7
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v3, v1, v0

    add-int/2addr v0, v2

    aget v0, v1, v0

    invoke-direct {p0, p1, v3, v0}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result p0

    return p0
.end method

.method public final span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 144
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 146
    sget-object v4, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/16 v5, 0x11

    const/16 v6, 0x10

    const v7, 0xe000

    const v8, 0x10001

    const v9, 0xd800

    const/16 v10, 0x7ff

    const/16 v11, 0xff

    const v12, 0xdc00

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v15, p3

    if-eq v4, v15, :cond_7

    move/from16 v4, p2

    :goto_0
    if-ge v4, v3, :cond_10

    .line 149
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-gt v15, v11, :cond_0

    .line 151
    iget-object v11, v0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v11, v11, v15

    if-nez v11, :cond_6

    goto/16 :goto_7

    :cond_0
    if-gt v15, v10, :cond_1

    .line 155
    iget-object v11, v0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v16, v15, 0x3f

    aget v11, v11, v16

    shr-int/lit8 v15, v15, 0x6

    shl-int v15, v13, v15

    and-int/2addr v11, v15

    if-nez v11, :cond_6

    goto/16 :goto_7

    :cond_1
    if-lt v15, v9, :cond_4

    if-ge v15, v12, :cond_4

    add-int/lit8 v11, v4, 0x1

    if-eq v11, v3, :cond_4

    .line 159
    invoke-interface {v1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-lt v9, v12, :cond_4

    if-lt v9, v7, :cond_2

    goto :goto_1

    .line 176
    :cond_2
    invoke-static {v15, v9}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v9

    .line 177
    iget-object v15, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v7, v15, v6

    aget v15, v15, v5

    invoke-direct {v0, v9, v7, v15}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    shr-int/lit8 v7, v15, 0xc

    .line 161
    iget-object v9, v0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v11, v15, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget v9, v9, v11

    shr-int/2addr v9, v7

    and-int/2addr v9, v8

    if-gt v9, v13, :cond_5

    if-nez v9, :cond_6

    goto/16 :goto_7

    .line 170
    :cond_5
    iget-object v9, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v11, v9, v7

    add-int/lit8 v7, v7, 0x1

    aget v7, v9, v7

    invoke-direct {v0, v15, v11, v7}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_7

    :cond_6
    move v11, v4

    :goto_2
    add-int/lit8 v4, v11, 0x1

    const v7, 0xe000

    const v9, 0xd800

    const/16 v11, 0xff

    goto :goto_0

    :cond_7
    move/from16 v4, p2

    :goto_3
    if-ge v4, v3, :cond_10

    .line 188
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v9, 0xff

    if-gt v7, v9, :cond_9

    .line 190
    iget-object v11, v0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v7, v11, v7

    if-eqz v7, :cond_8

    goto/16 :goto_7

    :cond_8
    const v11, 0xd800

    goto :goto_5

    :cond_9
    if-gt v7, v10, :cond_a

    .line 194
    iget-object v11, v0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v15, v7, 0x3f

    aget v11, v11, v15

    shr-int/lit8 v7, v7, 0x6

    shl-int v7, v13, v7

    and-int/2addr v7, v11

    if-eqz v7, :cond_8

    goto :goto_7

    :cond_a
    const v11, 0xd800

    if-lt v7, v11, :cond_d

    if-ge v7, v12, :cond_d

    add-int/lit8 v15, v4, 0x1

    if-eq v15, v3, :cond_d

    .line 198
    invoke-interface {v1, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-lt v9, v12, :cond_d

    const v10, 0xe000

    if-lt v9, v10, :cond_b

    goto :goto_4

    .line 215
    :cond_b
    invoke-static {v7, v9}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    .line 216
    iget-object v9, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v10, v9, v6

    aget v9, v9, v5

    invoke-direct {v0, v7, v10, v9}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_d
    :goto_4
    shr-int/lit8 v9, v7, 0xc

    .line 200
    iget-object v10, v0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v15, v7, 0x6

    and-int/lit8 v15, v15, 0x3f

    aget v10, v10, v15

    shr-int/2addr v10, v9

    and-int/2addr v10, v8

    if-gt v10, v13, :cond_e

    if-eqz v10, :cond_f

    goto :goto_7

    .line 209
    :cond_e
    iget-object v10, v0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v15, v10, v9

    add-int/lit8 v9, v9, 0x1

    aget v9, v10, v9

    invoke-direct {v0, v7, v15, v9}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_7

    :cond_f
    :goto_5
    move v15, v4

    :goto_6
    add-int/lit8 v4, v15, 0x1

    const/16 v10, 0x7ff

    goto :goto_3

    :cond_10
    :goto_7
    if-eqz v2, :cond_11

    sub-int v0, v4, p2

    sub-int/2addr v0, v14

    .line 227
    iput v0, v2, Landroid/icu/util/OutputInt;->value:I

    :cond_11
    return v4
.end method

.method public final spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 12

    .line 242
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/16 v1, 0x11

    const/16 v2, 0x10

    const/4 v3, 0x0

    const v4, 0x10001

    const/16 v5, 0x7ff

    const/16 v6, 0xff

    const v7, 0xdc00

    const v8, 0xd800

    const/4 v9, 0x1

    if-eq v0, p3, :cond_8

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 245
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    if-gt p3, v6, :cond_1

    .line 247
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean p3, v0, p3

    if-nez p3, :cond_7

    goto/16 :goto_3

    :cond_1
    if-gt p3, v5, :cond_2

    .line 251
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v10, p3, 0x3f

    aget v0, v0, v10

    shr-int/lit8 p3, p3, 0x6

    shl-int p3, v9, p3

    and-int/2addr p3, v0

    if-nez p3, :cond_7

    goto/16 :goto_3

    :cond_2
    if-lt p3, v8, :cond_5

    if-lt p3, v7, :cond_5

    if-eqz p2, :cond_5

    add-int/lit8 v0, p2, -0x1

    .line 255
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v8, :cond_5

    if-lt v0, v7, :cond_3

    goto :goto_0

    .line 272
    :cond_3
    invoke-static {v0, p3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p3

    .line 273
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v10, v0, v2

    aget v0, v0, v1

    invoke-direct {p0, p3, v10, v0}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result p3

    if-nez p3, :cond_4

    goto/16 :goto_3

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_5
    :goto_0
    shr-int/lit8 v0, p3, 0xc

    .line 257
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v11, p3, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget v10, v10, v11

    shr-int/2addr v10, v0

    and-int/2addr v10, v4

    if-gt v10, v9, :cond_6

    if-nez v10, :cond_7

    goto/16 :goto_3

    .line 266
    :cond_6
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v11, v10, v0

    add-int/lit8 v0, v0, 0x1

    aget v0, v10, v0

    invoke-direct {p0, p3, v11, v0}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result p3

    if-nez p3, :cond_7

    goto/16 :goto_3

    :cond_7
    :goto_1
    if-nez p2, :cond_0

    return v3

    :cond_8
    add-int/lit8 p2, p2, -0x1

    .line 285
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    if-gt p3, v6, :cond_9

    .line 287
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean p3, v0, p3

    if-eqz p3, :cond_f

    goto :goto_3

    :cond_9
    if-gt p3, v5, :cond_a

    .line 291
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v10, p3, 0x3f

    aget v0, v0, v10

    shr-int/lit8 p3, p3, 0x6

    shl-int p3, v9, p3

    and-int/2addr p3, v0

    if-eqz p3, :cond_f

    goto :goto_3

    :cond_a
    if-lt p3, v8, :cond_d

    if-lt p3, v7, :cond_d

    if-eqz p2, :cond_d

    add-int/lit8 v0, p2, -0x1

    .line 295
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-lt v0, v8, :cond_d

    if-lt v0, v7, :cond_b

    goto :goto_2

    .line 312
    :cond_b
    invoke-static {v0, p3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p3

    .line 313
    iget-object v0, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v10, v0, v2

    aget v0, v0, v1

    invoke-direct {p0, p3, v10, v0}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result p3

    if-eqz p3, :cond_c

    goto :goto_3

    :cond_c
    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_d
    :goto_2
    shr-int/lit8 v0, p3, 0xc

    .line 297
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v11, p3, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget v10, v10, v11

    shr-int/2addr v10, v0

    and-int/2addr v10, v4

    if-gt v10, v9, :cond_e

    if-eqz v10, :cond_f

    goto :goto_3

    .line 306
    :cond_e
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v11, v10, v0

    add-int/lit8 v0, v0, 0x1

    aget v0, v10, v0

    invoke-direct {p0, p3, v11, v0}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result p3

    if-eqz p3, :cond_f

    :goto_3
    add-int/2addr p2, v9

    return p2

    :cond_f
    :goto_4
    if-nez p2, :cond_8

    return v3
.end method
