.class public final Landroid/icu/impl/coll/CollationRootElements;
.super Ljava/lang/Object;
.source "CollationRootElements.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final IX_COMMON_SEC_AND_TER_CE:I = 0x3

.field static final IX_COUNT:I = 0x5

.field static final IX_FIRST_PRIMARY_INDEX:I = 0x2

.field static final IX_FIRST_SECONDARY_INDEX:I = 0x1

.field public static final IX_FIRST_TERTIARY_INDEX:I = 0x0

.field static final IX_SEC_TER_BOUNDARIES:I = 0x4

.field public static final PRIMARY_SENTINEL:J = 0xffffff00L

.field public static final PRIMARY_STEP_MASK:I = 0x7f

.field public static final SEC_TER_DELTA_FLAG:I = 0x80


# instance fields
.field private elements:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([J)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    return-void
.end method

.method private findP(J)I
    .locals 13

    .line 450
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    long-to-int v1, v1

    .line 452
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    if-ge v2, v0, :cond_6

    int-to-long v2, v1

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    .line 458
    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 459
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v3, v3, v2

    const-wide/16 v5, 0x80

    and-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    add-int/lit8 v7, v2, 0x1

    :goto_1
    if-ne v7, v0, :cond_0

    goto :goto_2

    .line 465
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v3, v3, v7

    and-long v11, v3, v5

    cmp-long v8, v11, v9

    if-nez v8, :cond_3

    move v2, v7

    :goto_2
    and-long v7, v3, v5

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    add-int/lit8 v7, v2, -0x1

    :goto_3
    if-ne v7, v1, :cond_1

    goto :goto_4

    .line 477
    :cond_1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v3, v3, v7

    and-long v11, v3, v5

    cmp-long v8, v11, v9

    if-nez v8, :cond_2

    move v2, v7

    :goto_4
    and-long/2addr v5, v3

    cmp-long v5, v5, v9

    if-eqz v5, :cond_4

    goto :goto_5

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const-wide v5, 0xffffff00L

    and-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-gez v3, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    :goto_5
    return v1
.end method

.method private getFirstSecTerForPrimary(I)J
    .locals 5

    .line 426
    iget-object p0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide p0, p0, p1

    const-wide/16 v0, 0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/32 v1, 0x5000500

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const-wide/16 v3, -0x81

    and-long/2addr p0, v3

    cmp-long v0, p0, v1

    if-lez v0, :cond_1

    return-wide v1

    :cond_1
    return-wide p0
.end method

.method private static isEndOfPrimaryRange(J)Z
    .locals 4

    const-wide/16 v0, 0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x7f

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method findPrimary(J)I
    .locals 0

    .line 311
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findP(J)I

    move-result p0

    return p0
.end method

.method firstCEWithPrimaryAtLeast(J)J
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 201
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findP(J)I

    move-result v2

    .line 202
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v3, v3, v2

    const-wide v5, 0xffffff00L

    and-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-eqz v3, :cond_2

    .line 204
    :cond_1
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v2, v2, 0x1

    aget-wide p1, p1, v2

    const-wide/16 v3, 0x80

    and-long/2addr v3, p1

    cmp-long v3, v3, v0

    if-nez v3, :cond_1

    :cond_2
    const/16 p0, 0x20

    shl-long p0, p1, p0

    const-wide/32 v0, 0x5000500

    or-long/2addr p0, v0

    return-wide p0
.end method

.method getFirstPrimary()J
    .locals 2

    .line 136
    iget-object p0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v0, 0x2

    aget-wide v0, p0, v0

    long-to-int v0, v0

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method getFirstPrimaryCE()J
    .locals 2

    .line 143
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getFirstPrimary()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getFirstSecondaryCE()J
    .locals 4

    .line 122
    iget-object p0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    long-to-int v0, v0

    aget-wide v0, p0, v0

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    return-wide v0
.end method

.method getFirstTertiaryCE()J
    .locals 4

    .line 90
    iget-object p0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-int v0, v0

    aget-wide v0, p0, v0

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getLastCommonSecondary()I
    .locals 2

    .line 105
    iget-object p0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v0, 0x4

    aget-wide v0, p0, v0

    long-to-int p0, v0

    shr-int/lit8 p0, p0, 0x10

    const v0, 0xff00

    and-int/2addr p0, v0

    return p0
.end method

.method getLastSecondaryCE()J
    .locals 4

    .line 129
    iget-object p0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v0, 0x2

    aget-wide v0, p0, v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p0, v0

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    return-wide v0
.end method

.method getLastTertiaryCE()J
    .locals 4

    .line 97
    iget-object p0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    long-to-int v1, v1

    sub-int/2addr v1, v0

    aget-wide v0, p0, v1

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    return-wide v0
.end method

.method getPrimaryAfter(JIZ)J
    .locals 8

    .line 325
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 p3, p3, 0x1

    aget-wide v0, v0, p3

    const-wide/16 v2, 0x80

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    long-to-int v4, v0

    and-int/lit8 v4, v4, 0x7f

    if-eqz v4, :cond_1

    const-wide/32 v0, 0xffff

    and-long/2addr v0, p1

    cmp-long p0, v0, v6

    if-nez p0, :cond_0

    .line 330
    invoke-static {p1, p2, p4, v4}, Landroid/icu/impl/coll/Collation;->incTwoBytePrimaryByOffset(JZI)J

    move-result-wide p0

    return-wide p0

    .line 332
    :cond_0
    invoke-static {p1, p2, p4, v4}, Landroid/icu/impl/coll/Collation;->incThreeBytePrimaryByOffset(JZI)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    and-long p1, v0, v2

    cmp-long p1, p1, v6

    if-eqz p1, :cond_2

    .line 337
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 p3, p3, 0x1

    aget-wide v0, p1, p3

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method getPrimaryBefore(JZ)J
    .locals 9

    .line 221
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result v0

    .line 223
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v2, v1, v0

    const-wide v4, 0xffffff00L

    and-long v6, v2, v4

    cmp-long v6, p1, v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_1

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x7f

    if-nez v1, :cond_2

    .line 231
    :cond_0
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide p1, p1, v0

    const-wide/16 v1, 0x80

    and-long/2addr v1, p1

    cmp-long p3, v1, v7

    if-nez p3, :cond_0

    and-long p0, p1, v4

    return-wide p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 237
    aget-wide v0, v1, v0

    long-to-int p0, v0

    and-int/lit8 v1, p0, 0x7f

    :cond_2
    const-wide/32 v2, 0xffff

    and-long/2addr v2, p1

    cmp-long p0, v2, v7

    if-nez p0, :cond_3

    .line 243
    invoke-static {p1, p2, p3, v1}, Landroid/icu/impl/coll/Collation;->decTwoBytePrimaryByOneStep(JZI)J

    move-result-wide p0

    return-wide p0

    .line 245
    :cond_3
    invoke-static {p1, p2, p3, v1}, Landroid/icu/impl/coll/Collation;->decThreeBytePrimaryByOneStep(JZI)J

    move-result-wide p0

    return-wide p0
.end method

.method getSecondaryAfter(II)I
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 359
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v1, p1, v0

    long-to-int v1, v1

    .line 360
    aget-wide v2, p1, v1

    const/high16 p1, 0x10000

    move v8, v1

    move v1, p1

    move p1, v8

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 365
    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    move-result-wide v2

    .line 368
    invoke-virtual {p0}, Landroid/icu/impl/coll/CollationRootElements;->getSecondaryBoundary()I

    move-result v1

    :cond_1
    :goto_0
    const/16 v4, 0x10

    shr-long/2addr v2, v4

    long-to-int v2, v2

    if-le v2, p2, :cond_2

    return v2

    .line 373
    :cond_2
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/2addr p1, v0

    aget-wide v2, v2, p1

    const-wide/16 v4, 0x80

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    return v1
.end method

.method getSecondaryBefore(JI)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 254
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v2, p1, v2

    long-to-int p2, v2

    const/4 v0, 0x0

    .line 257
    aget-wide v2, p1, p2

    shr-long/2addr v2, v1

    long-to-int p1, v2

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    const/16 v0, 0x100

    .line 261
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    move-result-wide v2

    long-to-int p1, v2

    ushr-int/2addr p1, v1

    :goto_0
    move v4, v0

    move v0, p1

    move p1, v4

    if-le p3, v0, :cond_1

    .line 267
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v2, p2, 0x1

    aget-wide p1, p1, p2

    shr-long/2addr p1, v1

    long-to-int p1, p1

    move p2, v2

    goto :goto_0

    :cond_1
    return p1
.end method

.method public getSecondaryBoundary()I
    .locals 2

    .line 115
    iget-object p0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v0, 0x4

    aget-wide v0, p0, v0

    long-to-int p0, v0

    shr-int/lit8 p0, p0, 0x8

    const v0, 0xff00

    and-int/2addr p0, v0

    return p0
.end method

.method getTertiaryAfter(III)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-wide/16 v2, -0x81

    const/4 v4, 0x1

    if-nez p1, :cond_1

    if-nez v1, :cond_0

    .line 394
    iget-object v5, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    long-to-int v5, v5

    const/16 v6, 0x4000

    goto :goto_0

    .line 398
    :cond_0
    iget-object v5, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v5, v5, v4

    long-to-int v5, v5

    .line 400
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    move-result v6

    .line 402
    :goto_0
    iget-object v7, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v7, v7, v5

    and-long/2addr v7, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, p1, 0x1

    .line 405
    invoke-direct {v0, v5}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    move-result-wide v7

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationRootElements;->getTertiaryBoundary()I

    move-result v6

    move/from16 v5, p1

    :goto_1
    int-to-long v9, v1

    const-wide v11, 0xffffffffL

    and-long/2addr v11, v9

    const/16 v1, 0x10

    shl-long/2addr v11, v1

    move/from16 v13, p3

    int-to-long v13, v13

    or-long/2addr v11, v13

    :goto_2
    cmp-long v13, v7, v11

    if-lez v13, :cond_2

    long-to-int v0, v7

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0

    .line 415
    :cond_2
    iget-object v7, v0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/2addr v5, v4

    aget-wide v7, v7, v5

    const-wide/16 v13, 0x80

    and-long/2addr v13, v7

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_4

    shr-long v13, v7, v1

    cmp-long v13, v13, v9

    if-lez v13, :cond_3

    goto :goto_3

    :cond_3
    and-long/2addr v7, v2

    goto :goto_2

    :cond_4
    :goto_3
    return v6
.end method

.method getTertiaryBefore(JII)I
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, -0x81

    const/16 v3, 0x100

    const/4 v4, 0x1

    if-nez v0, :cond_1

    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 281
    iget-object p2, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v3, p2, p1

    long-to-int p2, v3

    move v3, p1

    goto :goto_0

    .line 285
    :cond_0
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide p1, p1, v4

    long-to-int p2, p1

    .line 288
    :goto_0
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v4, p1, p2

    and-long/2addr v4, v1

    goto :goto_1

    .line 290
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findPrimary(J)I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    .line 292
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRootElements;->getFirstSecTerForPrimary(I)J

    move-result-wide v4

    :goto_1
    int-to-long v6, p3

    const/16 p1, 0x10

    shl-long/2addr v6, p1

    int-to-long v8, p4

    or-long/2addr v6, v8

    :goto_2
    cmp-long p4, v6, v4

    if-lez p4, :cond_3

    shr-long v8, v4, p1

    long-to-int p4, v8

    if-ne p4, p3, :cond_2

    long-to-int p4, v4

    move v3, p4

    .line 298
    :cond_2
    iget-object p4, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v0, p2, 0x1

    aget-wide v4, p4, p2

    and-long/2addr v4, v1

    move p2, v0

    goto :goto_2

    :cond_3
    const p0, 0xffff

    and-int/2addr p0, v3

    return p0
.end method

.method public getTertiaryBoundary()I
    .locals 2

    .line 83
    iget-object p0, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    const/4 v0, 0x4

    aget-wide v0, p0, v0

    long-to-int p0, v0

    shl-int/lit8 p0, p0, 0x8

    const v0, 0xff00

    and-int/2addr p0, v0

    return p0
.end method

.method lastCEWithPrimaryBefore(J)J
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 153
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/coll/CollationRootElements;->findP(J)I

    move-result v2

    .line 154
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v4, v3, v2

    const-wide v6, 0xffffff00L

    and-long/2addr v4, v6

    cmp-long p1, p1, v4

    const-wide/32 v8, 0x5000500

    const-wide/16 v10, 0x80

    if-nez p1, :cond_3

    add-int/lit8 p1, v2, -0x1

    .line 160
    aget-wide p1, v3, p1

    and-long v3, p1, v10

    cmp-long v3, v3, v0

    if-nez v3, :cond_1

    and-long v4, p1, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x2

    .line 169
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    aget-wide v3, v3, v2

    and-long v8, v3, v10

    cmp-long v5, v8, v0

    if-nez v5, :cond_2

    and-long v4, v3, v6

    move-wide v8, p1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 183
    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/icu/impl/coll/CollationRootElements;->elements:[J

    add-int/lit8 v2, v2, 0x1

    aget-wide p1, p1, v2

    and-long v6, p1, v10

    cmp-long v3, v6, v0

    if-nez v3, :cond_4

    :goto_2
    const/16 p0, 0x20

    shl-long p0, v4, p0

    const-wide/16 v0, -0x81

    and-long/2addr v0, v8

    or-long/2addr p0, v0

    return-wide p0

    :cond_4
    move-wide v8, p1

    goto :goto_1
.end method
