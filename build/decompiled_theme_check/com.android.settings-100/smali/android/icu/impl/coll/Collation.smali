.class public final Landroid/icu/impl/coll/Collation;
.super Ljava/lang/Object;
.source "Collation.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BEFORE_WEIGHT16:I = 0x100

.field static final BUILDER_DATA_TAG:I = 0x7

.field public static final CASE_AND_QUATERNARY_MASK:I = 0xc0c0

.field static final CASE_AND_TERTIARY_MASK:I = 0xff3f

.field public static final CASE_LEVEL:I = 0x3

.field static final CASE_LEVEL_FLAG:I = 0x8

.field public static final CASE_MASK:I = 0xc000

.field static final COMMON_BYTE:I = 0x5

.field static final COMMON_SECONDARY_CE:I = 0x5000000

.field public static final COMMON_SEC_AND_TER_CE:I = 0x5000500

.field static final COMMON_TERTIARY_CE:I = 0x500

.field public static final COMMON_WEIGHT16:I = 0x500

.field static final CONTRACTION_TAG:I = 0x9

.field static final CONTRACT_NEXT_CCC:I = 0x200

.field static final CONTRACT_SINGLE_CP_NO_MATCH:I = 0x100

.field static final CONTRACT_TRAILING_CCC:I = 0x400

.field static final DIGIT_TAG:I = 0xa

.field public static final EQUAL:I = 0x0

.field static final EXPANSION32_TAG:I = 0x5

.field static final EXPANSION_TAG:I = 0x6

.field static final FALLBACK_CE32:I = 0xc0

.field static final FALLBACK_TAG:I = 0x0

.field static final FFFD_CE32:I = -0x2fafb

.field public static final FFFD_PRIMARY:J = 0xfffd0000L

.field static final FIRST_TRAILING_PRIMARY:J = 0xff020200L

.field static final FIRST_UNASSIGNED_PRIMARY:J = 0xfe040200L

.field public static final GREATER:I = 0x1

.field static final HANGUL_NO_SPECIAL_JAMO:I = 0x100

.field static final HANGUL_TAG:I = 0xc

.field public static final IDENTICAL_LEVEL:I = 0x6

.field static final IDENTICAL_LEVEL_FLAG:I = 0x40

.field static final IMPLICIT_TAG:I = 0xf

.field static final LATIN_EXPANSION_TAG:I = 0x4

.field static final LEAD_ALL_FALLBACK:I = 0x100

.field static final LEAD_ALL_UNASSIGNED:I = 0x0

.field static final LEAD_MIXED:I = 0x200

.field static final LEAD_SURROGATE_TAG:I = 0xd

.field static final LEAD_TYPE_MASK:I = 0x300

.field public static final LESS:I = -0x1

.field public static final LEVEL_SEPARATOR_BYTE:I = 0x1

.field static final LONG_PRIMARY_CE32_LOW_BYTE:I = 0xc1

.field static final LONG_PRIMARY_TAG:I = 0x1

.field static final LONG_SECONDARY_TAG:I = 0x2

.field static final MAX_EXPANSION_LENGTH:I = 0x1f

.field static final MAX_INDEX:I = 0x7ffff

.field public static final MAX_PRIMARY:J = 0xffff0000L

.field static final MAX_REGULAR_CE32:I = -0xfafb

.field public static final MERGE_SEPARATOR_BYTE:I = 0x2

.field static final MERGE_SEPARATOR_CE32:I = 0x2000505

.field public static final MERGE_SEPARATOR_PRIMARY:J = 0x2000000L

.field public static final NO_CE:J = 0x101000100L

.field static final NO_CE32:I = 0x1

.field static final NO_CE_PRIMARY:J = 0x1L

.field static final NO_CE_WEIGHT16:I = 0x100

.field public static final NO_LEVEL:I = 0x0

.field static final NO_LEVEL_FLAG:I = 0x1

.field static final OFFSET_TAG:I = 0xe

.field static final ONLY_SEC_TER_MASK:I = -0xc0c1

.field public static final ONLY_TERTIARY_MASK:I = 0x3f3f

.field static final PREFIX_TAG:I = 0x8

.field public static final PRIMARY_COMPRESSION_HIGH_BYTE:I = 0xff

.field public static final PRIMARY_COMPRESSION_LOW_BYTE:I = 0x3

.field public static final PRIMARY_LEVEL:I = 0x1

.field static final PRIMARY_LEVEL_FLAG:I = 0x2

.field public static final QUATERNARY_LEVEL:I = 0x5

.field static final QUATERNARY_LEVEL_FLAG:I = 0x20

.field public static final QUATERNARY_MASK:I = 0xc0

.field static final RESERVED_TAG_3:I = 0x3

.field static final SECONDARY_AND_CASE_MASK:I = -0x4000

.field public static final SECONDARY_LEVEL:I = 0x2

.field static final SECONDARY_LEVEL_FLAG:I = 0x4

.field static final SECONDARY_MASK:I = -0x10000

.field public static final SENTINEL_CP:I = -0x1

.field static final SPECIAL_CE32_LOW_BYTE:I = 0xc0

.field public static final TERMINATOR_BYTE:I = 0x0

.field public static final TERTIARY_LEVEL:I = 0x4

.field static final TERTIARY_LEVEL_FLAG:I = 0x10

.field static final TRAIL_WEIGHT_BYTE:I = 0xff

.field static final U0000_TAG:I = 0xb

.field static final UNASSIGNED_CE32:I = -0x1

.field static final UNASSIGNED_IMPLICIT_BYTE:I = 0xfe

.field public static final ZERO_LEVEL:I = 0x7

.field static final ZERO_LEVEL_FLAG:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ce32HasContext(I)Z
    .locals 2

    .line 380
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 382
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static ceFromCE32(I)J
    .locals 5

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x20

    const/16 v2, 0xc0

    if-ge v0, v2, :cond_0

    const/high16 v2, -0x10000

    and-int/2addr v2, p0

    int-to-long v2, v2

    shl-long v1, v2, v1

    const v3, 0xff00

    and-int/2addr p0, v3

    int-to-long v3, p0

    const/16 p0, 0x10

    shl-long/2addr v3, p0

    or-long/2addr v1, v3

    shl-int/lit8 p0, v0, 0x8

    int-to-long v3, p0

    or-long v0, v1, v3

    return-wide v0

    :cond_0
    sub-int/2addr p0, v0

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    int-to-long v2, p0

    shl-long v0, v2, v1

    const-wide/32 v2, 0x5000500

    or-long/2addr v0, v2

    return-wide v0

    :cond_1
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static ceFromLongPrimaryCE32(I)J
    .locals 4

    and-int/lit16 p0, p0, -0x100

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide/32 v2, 0x5000500

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static ceFromLongSecondaryCE32(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffff00L

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static ceFromSimpleCE32(I)J
    .locals 5

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const v2, 0xff00

    and-int/2addr v2, p0

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static decThreeBytePrimaryByOneStep(JZI)J
    .locals 8

    const/16 v0, 0x8

    shr-long v1, p0, v0

    long-to-int v1, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    sub-int/2addr v1, p3

    const/4 p3, 0x2

    if-lt v1, p3, :cond_0

    const-wide p2, 0xffff0000L

    and-long/2addr p0, p2

    :goto_0
    shl-int/lit8 p2, v1, 0x8

    int-to-long p2, p2

    or-long/2addr p0, p2

    return-wide p0

    :cond_0
    const/16 v3, 0xfe

    add-int/2addr v1, v3

    const/16 v4, 0x10

    shr-long v5, p0, v4

    long-to-int v5, v5

    and-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    const-wide/32 v6, 0x1000000

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    if-ge v5, p2, :cond_2

    sub-long/2addr p0, v6

    move v2, v3

    goto :goto_1

    :cond_1
    if-ge v5, p3, :cond_2

    sub-long/2addr p0, v6

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    const-wide p2, 0xff000000L

    and-long/2addr p0, p2

    shl-int/lit8 p2, v2, 0x10

    int-to-long p2, p2

    or-long/2addr p0, p2

    goto :goto_0
.end method

.method static decTwoBytePrimaryByOneStep(JZI)J
    .locals 4

    const/16 v0, 0x10

    shr-long v1, p0, v0

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, p3

    const-wide/32 v2, 0x1000000

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    if-ge v1, p2, :cond_1

    add-int/lit16 v1, v1, 0xfb

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ge v1, p2, :cond_1

    add-int/lit16 v1, v1, 0xfe

    :goto_0
    sub-long/2addr p0, v2

    :cond_1
    const-wide p2, 0xff000000L

    and-long/2addr p0, p2

    shl-int/lit8 p2, v1, 0x10

    int-to-long p2, p2

    or-long/2addr p0, p2

    return-wide p0
.end method

.method static digitFromCE32(I)C
    .locals 0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit8 p0, p0, 0xf

    int-to-char p0, p0

    return p0
.end method

.method static getThreeBytePrimaryForOffsetData(IJ)J
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int p1, p1

    shr-int/lit8 p2, p1, 0x8

    sub-int/2addr p0, p2

    and-int/lit8 p2, p1, 0x7f

    mul-int/2addr p0, p2

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 569
    :goto_0
    invoke-static {v0, v1, p1, p0}, Landroid/icu/impl/coll/Collation;->incThreeBytePrimaryByOffset(JZI)J

    move-result-wide p0

    return-wide p0
.end method

.method static hasCE32Tag(II)Z
    .locals 1

    .line 348
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static incThreeBytePrimaryByOffset(JZI)J
    .locals 5

    const/16 v0, 0x8

    shr-long v1, p0, v0

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v1, v1, -0x2

    add-int/2addr p3, v1

    .line 490
    rem-int/lit16 v1, p3, 0xfe

    add-int/lit8 v1, v1, 0x2

    shl-int/lit8 v0, v1, 0x8

    int-to-long v0, v0

    .line 491
    div-int/lit16 p3, p3, 0xfe

    const/16 v2, 0x10

    if-eqz p2, :cond_0

    shr-long v3, p0, v2

    long-to-int p2, v3

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 p2, p2, -0x4

    add-int/2addr p3, p2

    .line 496
    rem-int/lit16 p2, p3, 0xfb

    add-int/lit8 p2, p2, 0x4

    shl-int/2addr p2, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    .line 497
    div-int/lit16 p3, p3, 0xfb

    goto :goto_0

    :cond_0
    shr-long v3, p0, v2

    long-to-int p2, v3

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 p2, p2, -0x2

    add-int/2addr p3, p2

    .line 500
    rem-int/lit16 p2, p3, 0xfe

    add-int/lit8 p2, p2, 0x2

    shl-int/2addr p2, v2

    int-to-long v2, p2

    or-long/2addr v0, v2

    .line 501
    div-int/lit16 p3, p3, 0xfe

    :goto_0
    const-wide v2, 0xff000000L

    and-long/2addr p0, v2

    int-to-long p2, p3

    const/16 v2, 0x18

    shl-long/2addr p2, v2

    add-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static incTwoBytePrimaryByOffset(JZI)J
    .locals 4

    const/16 v0, 0x10

    if-eqz p2, :cond_0

    shr-long v1, p0, v0

    long-to-int p2, v1

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 p2, p2, -0x4

    add-int/2addr p3, p2

    .line 471
    rem-int/lit16 p2, p3, 0xfb

    add-int/lit8 p2, p2, 0x4

    shl-int/2addr p2, v0

    int-to-long v0, p2

    .line 472
    div-int/lit16 p3, p3, 0xfb

    goto :goto_0

    :cond_0
    shr-long v1, p0, v0

    long-to-int p2, v1

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 p2, p2, -0x2

    add-int/2addr p3, p2

    .line 475
    rem-int/lit16 p2, p3, 0xfe

    add-int/lit8 p2, p2, 0x2

    shl-int/2addr p2, v0

    int-to-long v0, p2

    .line 476
    div-int/lit16 p3, p3, 0xfe

    :goto_0
    const-wide v2, 0xff000000L

    and-long/2addr p0, v2

    int-to-long p2, p3

    const/16 v2, 0x18

    shl-long/2addr p2, v2

    add-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static indexFromCE32(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0xd

    return p0
.end method

.method static isAssignedCE32(I)Z
    .locals 1

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isContractionCE32(I)Z
    .locals 1

    const/16 v0, 0x9

    .line 376
    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p0

    return p0
.end method

.method static isLongPrimaryCE32(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 352
    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p0

    return p0
.end method

.method static isPrefixCE32(I)Z
    .locals 1

    const/16 v0, 0x8

    .line 372
    invoke-static {p0, v0}, Landroid/icu/impl/coll/Collation;->hasCE32Tag(II)Z

    move-result p0

    return p0
.end method

.method static isSelfContainedCE32(I)Z
    .locals 3

    .line 365
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 366
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 367
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 368
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static isSimpleOrLongCE32(I)Z
    .locals 2

    .line 356
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 357
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 358
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static isSpecialCE32(I)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xc0

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static latinCE0FromCE32(I)J
    .locals 4

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/32 v2, 0x5000000

    or-long/2addr v0, v2

    const/high16 v2, 0xff0000

    and-int/2addr p0, v2

    shr-int/lit8 p0, p0, 0x8

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static latinCE1FromCE32(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0xff00

    and-long/2addr v0, v2

    const/16 p0, 0x10

    shl-long/2addr v0, p0

    const-wide/16 v2, 0x500

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static lengthFromCE32(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x8

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static makeCE(J)J
    .locals 2

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    const-wide/32 v0, 0x5000500

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static makeCE(JIII)J
    .locals 2

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    int-to-long v0, p2

    const/16 p2, 0x10

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    int-to-long p2, p3

    or-long/2addr p0, p2

    shl-int/lit8 p2, p4, 0x6

    int-to-long p2, p2

    or-long/2addr p0, p2

    return-wide p0
.end method

.method static makeCE32FromTagAndIndex(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0xd

    or-int/lit16 p1, p1, 0xc0

    or-int/2addr p0, p1

    return p0
.end method

.method static makeCE32FromTagIndexAndLength(III)I
    .locals 0

    shl-int/lit8 p1, p1, 0xd

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    or-int/lit16 p1, p1, 0xc0

    or-int/2addr p0, p1

    return p0
.end method

.method static makeLongPrimaryCE32(J)I
    .locals 2

    const-wide/16 v0, 0xc1

    or-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method static makeLongSecondaryCE32(I)I
    .locals 0

    or-int/lit16 p0, p0, 0xc0

    or-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static primaryFromLongPrimaryCE32(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffff00L

    and-long/2addr v0, v2

    return-wide v0
.end method

.method static tagFromCE32(I)I
    .locals 0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method static unassignedCEFromCodePoint(I)J
    .locals 2

    .line 591
    invoke-static {p0}, Landroid/icu/impl/coll/Collation;->unassignedPrimaryFromCodePoint(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/icu/impl/coll/Collation;->makeCE(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static unassignedPrimaryFromCodePoint(I)J
    .locals 4

    add-int/lit8 p0, p0, 0x1

    .line 579
    rem-int/lit8 v0, p0, 0x12

    mul-int/lit8 v0, v0, 0xe

    add-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    .line 580
    div-int/lit8 p0, p0, 0x12

    .line 582
    rem-int/lit16 v2, p0, 0xfe

    add-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 583
    div-int/lit16 p0, p0, 0xfe

    .line 585
    rem-int/lit16 p0, p0, 0xfb

    add-int/lit8 p0, p0, 0x4

    shl-int/lit8 p0, p0, 0x10

    int-to-long v2, p0

    or-long/2addr v0, v2

    const-wide v2, 0xfe000000L

    or-long/2addr v0, v2

    return-wide v0
.end method
