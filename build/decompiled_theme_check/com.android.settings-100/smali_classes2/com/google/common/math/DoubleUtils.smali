.class final Lcom/google/common/math/DoubleUtils;
.super Ljava/lang/Object;
.source "DoubleUtils.java"


# static fields
.field static final EXPONENT_BIAS:I = 0x3ff

.field static final EXPONENT_MASK:J = 0x7ff0000000000000L

.field static final IMPLICIT_BIT:J = 0x10000000000000L

.field static final ONE_BITS:J = 0x3ff0000000000000L

.field static final SIGNIFICAND_BITS:I = 0x34

.field static final SIGNIFICAND_MASK:J = 0xfffffffffffffL

.field static final SIGN_MASK:J = -0x8000000000000000L


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bigToDouble(Ljava/math/BigInteger;)D
    .locals 13

    .line 89
    invoke-virtual {p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0x3f

    if-ge v1, v3, :cond_0

    .line 93
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    :cond_0
    const/16 v3, 0x3ff

    if-le v1, v3, :cond_1

    .line 95
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    mul-double/2addr v0, v2

    return-wide v0

    :cond_1
    add-int/lit8 v4, v1, -0x34

    sub-int/2addr v4, v2

    .line 107
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    shr-long v7, v5, v2

    const-wide v9, 0xfffffffffffffL

    and-long/2addr v7, v9

    const-wide/16 v9, 0x1

    and-long/2addr v5, v9

    const-wide/16 v11, 0x0

    cmp-long v5, v5, v11

    if-eqz v5, :cond_2

    and-long v5, v7, v9

    cmp-long v5, v5, v11

    if-nez v5, :cond_3

    .line 117
    invoke-virtual {v0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    if-ge v0, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    add-long/2addr v7, v9

    :cond_4
    add-int/2addr v1, v3

    int-to-long v0, v1

    const/16 v2, 0x34

    shl-long/2addr v0, v2

    add-long/2addr v0, v7

    .line 127
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    int-to-long v2, p0

    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static ensureNonNegative(D)D
    .locals 3

    .line 133
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method static getSignificand(D)J
    .locals 3

    .line 63
    invoke-static {p0, p1}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    const-string v1, "not a normal value"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 64
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 65
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v1, 0xfffffffffffffL

    and-long/2addr p0, v1

    const/16 v1, -0x3ff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x10000000000000L

    or-long/2addr p0, v0

    :goto_0
    return-wide p0
.end method

.method static isFinite(D)Z
    .locals 0

    .line 71
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result p0

    const/16 p1, 0x3ff

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isNormal(D)Z
    .locals 0

    .line 75
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result p0

    const/16 p1, -0x3fe

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static nextDown(D)D
    .locals 0

    neg-double p0, p0

    .line 40
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide p0

    neg-double p0, p0

    return-wide p0
.end method

.method static scaleNormalize(D)D
    .locals 2

    .line 83
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    const-wide v0, 0xfffffffffffffL

    and-long/2addr p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    or-long/2addr p0, v0

    .line 84
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method
