.class public Landroid/icu/impl/coll/BOCSU;
.super Ljava/lang/Object;
.source "BOCSU.java"


# static fields
.field private static final SLOPE_LEAD_2_:I = 0x2a

.field private static final SLOPE_LEAD_3_:I = 0x3

.field private static final SLOPE_MAX_:I = 0xff

.field private static final SLOPE_MAX_BYTES_:I = 0x4

.field private static final SLOPE_MIDDLE_:I = 0x81

.field private static final SLOPE_MIN_:I = 0x3

.field private static final SLOPE_REACH_NEG_1_:I = -0x50

.field private static final SLOPE_REACH_NEG_2_:I = -0x29ac

.field private static final SLOPE_REACH_NEG_3_:I = -0x2f112

.field private static final SLOPE_REACH_POS_1_:I = 0x50

.field private static final SLOPE_REACH_POS_2_:I = 0x29ab

.field private static final SLOPE_REACH_POS_3_:I = 0x2f111

.field private static final SLOPE_SINGLE_:I = 0x50

.field private static final SLOPE_START_NEG_2_:I = 0x31

.field private static final SLOPE_START_NEG_3_:I = 0x7

.field private static final SLOPE_START_POS_2_:I = 0xd2

.field private static final SLOPE_START_POS_3_:I = 0xfc

.field private static final SLOPE_TAIL_COUNT_:I = 0xfd


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureAppendCapacity(Landroid/icu/util/ByteArrayWrapper;II)V
    .locals 2

    .line 138
    iget-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    array-length v0, v0

    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    if-ge p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 141
    :goto_0
    iget p2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/icu/util/ByteArrayWrapper;->ensureCapacity(I)Landroid/icu/util/ByteArrayWrapper;

    return-void
.end method

.method private static final getNegDivMod(II)J
    .locals 5

    .line 242
    rem-int v0, p0, p1

    .line 243
    div-int/2addr p0, p1

    int-to-long v1, p0

    if-gez v0, :cond_0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    add-int/2addr v0, p1

    :cond_0
    const/16 p0, 0x20

    shl-long p0, v1, p0

    int-to-long v0, v0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static final writeDiff(I[BI)I
    .locals 7

    const/16 v0, 0xfd

    const/4 v1, 0x3

    const/16 v2, -0x50

    if-lt p0, v2, :cond_3

    const/16 v2, 0x50

    if-gt p0, v2, :cond_0

    add-int/lit8 v0, p2, 0x1

    add-int/lit16 p0, p0, 0x81

    int-to-byte p0, p0

    .line 263
    aput-byte p0, p1, p2

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x29ab

    if-gt p0, v2, :cond_1

    add-int/lit8 v2, p2, 0x1

    .line 266
    div-int/lit16 v3, p0, 0xfd

    add-int/lit16 v3, v3, 0xd2

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    add-int/lit8 p2, v2, 0x1

    .line 268
    rem-int/2addr p0, v0

    add-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, p1, v2

    move v0, p2

    goto/16 :goto_2

    :cond_1
    const v2, 0x2f111

    if-gt p0, v2, :cond_2

    add-int/lit8 v2, p2, 0x2

    .line 272
    rem-int/lit16 v3, p0, 0xfd

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 274
    div-int/2addr p0, v0

    add-int/lit8 v2, p2, 0x1

    .line 275
    rem-int/lit16 v3, p0, 0xfd

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 277
    div-int/2addr p0, v0

    add-int/lit16 p0, p0, 0xfc

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p2, 0x3

    .line 282
    rem-int/lit16 v3, p0, 0xfd

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 284
    div-int/2addr p0, v0

    add-int/lit8 v2, p2, 0x2

    .line 285
    rem-int/lit16 v3, p0, 0xfd

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 287
    div-int/2addr p0, v0

    add-int/lit8 v2, p2, 0x1

    .line 288
    rem-int/2addr p0, v0

    add-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, p1, v2

    const/4 p0, -0x1

    .line 290
    aput-byte p0, p1, p2

    goto :goto_1

    .line 295
    :cond_3
    invoke-static {p0, v0}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v2

    long-to-int v4, v2

    const/16 v5, -0x29ac

    const/16 v6, 0x20

    if-lt p0, v5, :cond_4

    shr-long/2addr v2, v6

    long-to-int p0, v2

    add-int/lit8 v0, p2, 0x1

    add-int/lit8 p0, p0, 0x31

    int-to-byte p0, p0

    .line 299
    aput-byte p0, p1, p2

    add-int/lit8 p0, v0, 0x1

    add-int/2addr v4, v1

    int-to-byte p2, v4

    .line 300
    aput-byte p2, p1, v0

    move v0, p0

    goto :goto_2

    :cond_4
    const v5, -0x2f112

    if-lt p0, v5, :cond_5

    add-int/lit8 p0, p2, 0x2

    add-int/2addr v4, v1

    int-to-byte v4, v4

    .line 303
    aput-byte v4, p1, p0

    shr-long/2addr v2, v6

    long-to-int p0, v2

    .line 305
    invoke-static {p0, v0}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v2

    long-to-int p0, v2

    shr-long/2addr v2, v6

    long-to-int v0, v2

    add-int/lit8 v2, p2, 0x1

    add-int/2addr p0, v1

    int-to-byte p0, p0

    .line 308
    aput-byte p0, p1, v2

    add-int/lit8 v0, v0, 0x7

    int-to-byte p0, v0

    .line 309
    aput-byte p0, p1, p2

    :goto_0
    add-int/lit8 v0, p2, 0x3

    goto :goto_2

    :cond_5
    add-int/lit8 p0, p2, 0x3

    add-int/2addr v4, v1

    int-to-byte v4, v4

    .line 313
    aput-byte v4, p1, p0

    shr-long/2addr v2, v6

    long-to-int p0, v2

    .line 315
    invoke-static {p0, v0}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v2

    long-to-int p0, v2

    shr-long/2addr v2, v6

    long-to-int v2, v2

    add-int/lit8 v3, p2, 0x2

    add-int/2addr p0, v1

    int-to-byte p0, p0

    .line 318
    aput-byte p0, p1, v3

    .line 319
    invoke-static {v2, v0}, Landroid/icu/impl/coll/BOCSU;->getNegDivMod(II)J

    move-result-wide v2

    long-to-int p0, v2

    add-int/lit8 v0, p2, 0x1

    add-int/2addr p0, v1

    int-to-byte p0, p0

    .line 321
    aput-byte p0, p1, v0

    .line 322
    aput-byte v1, p1, p2

    :goto_1
    add-int/lit8 v0, p2, 0x4

    :goto_2
    return v0
.end method

.method public static writeIdenticalLevelRun(ILjava/lang/CharSequence;IILandroid/icu/util/ByteArrayWrapper;)I
    .locals 7

    :goto_0
    if-ge p2, p3, :cond_4

    const/16 v0, 0x10

    .line 108
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-static {p4, v0, v1}, Landroid/icu/impl/coll/BOCSU;->ensureAppendCapacity(Landroid/icu/util/ByteArrayWrapper;II)V

    .line 109
    iget-object v0, p4, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    .line 110
    array-length v1, v0

    .line 111
    iget v3, p4, Landroid/icu/util/ByteArrayWrapper;->size:I

    add-int/lit8 v1, v1, -0x4

    :goto_1
    if-ge p2, p3, :cond_3

    if-gt v3, v1, :cond_3

    const/16 v4, 0x4e00

    if-lt p0, v4, :cond_1

    const v4, 0xa000

    if-lt p0, v4, :cond_0

    goto :goto_2

    :cond_0
    const/16 p0, 0x7654

    goto :goto_3

    :cond_1
    :goto_2
    and-int/lit8 p0, p0, -0x80

    add-int/lit8 p0, p0, 0x50

    .line 122
    :goto_3
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 123
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr p2, v5

    const v5, 0xfffe

    if-ne v4, v5, :cond_2

    add-int/lit8 p0, v3, 0x1

    .line 125
    aput-byte v2, v0, v3

    const/4 v3, 0x0

    move v6, v3

    move v3, p0

    move p0, v6

    goto :goto_1

    :cond_2
    sub-int p0, v4, p0

    .line 128
    invoke-static {p0, v0, v3}, Landroid/icu/impl/coll/BOCSU;->writeDiff(I[BI)I

    move-result p0

    move v3, p0

    move p0, v4

    goto :goto_1

    .line 132
    :cond_3
    iput v3, p4, Landroid/icu/util/ByteArrayWrapper;->size:I

    goto :goto_0

    :cond_4
    return p0
.end method
