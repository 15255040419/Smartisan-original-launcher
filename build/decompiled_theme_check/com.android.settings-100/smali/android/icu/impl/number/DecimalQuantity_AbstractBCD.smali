.class public abstract Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;
.super Ljava/lang/Object;
.source "DecimalQuantity_AbstractBCD.java"

# interfaces
.implements Landroid/icu/impl/number/DecimalQuantity;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DOUBLE_MULTIPLIERS:[D

.field protected static final INFINITY_FLAG:I = 0x2

.field protected static final NAN_FLAG:I = 0x4

.field protected static final NEGATIVE_FLAG:I = 0x1

.field private static final SECTION_LOWER_EDGE:I = -0x1

.field private static final SECTION_UPPER_EDGE:I = -0x2


# instance fields
.field public explicitExactDouble:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected flags:B

.field protected isApproximate:Z

.field protected lOptPos:I

.field protected lReqPos:I

.field protected origDelta:I

.field protected origDouble:D

.field protected precision:I

.field protected rOptPos:I

.field protected rReqPos:I

.field protected scale:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [D

    .line 405
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 107
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lOptPos:I

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    .line 109
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    const/high16 v1, -0x80000000

    .line 110
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rOptPos:I

    .line 502
    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->explicitExactDouble:Z

    return-void
.end method

.method private _setToBigDecimal(Ljava/math/BigDecimal;)V
    .locals 1

    .line 524
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 525
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 526
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 527
    invoke-direct {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToBigInteger(Ljava/math/BigInteger;)V

    .line 528
    iget p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    return-void
.end method

.method private _setToBigInteger(Ljava/math/BigInteger;)V
    .locals 2

    .line 373
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 374
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readIntToBcd(I)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 376
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readLongToBcd(J)V

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readBigIntegerToBcd(Ljava/math/BigInteger;)V

    :goto_0
    return-void
.end method

.method private _setToDoubleFast(D)V
    .locals 7

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    .line 416
    iput-wide p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    const/4 v0, 0x0

    .line 417
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    .line 420
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    const/16 v2, 0x34

    shr-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, -0x3ff

    if-gt v0, v2, :cond_0

    double-to-long v3, p1

    long-to-double v5, v3

    cmpl-double v1, v5, p1

    if-nez v1, :cond_0

    .line 425
    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    return-void

    :cond_0
    sub-int/2addr v2, v0

    int-to-double v0, v2

    const-wide v2, 0x400a934f0979baa5L    # 3.32192809489

    div-double/2addr v0, v2

    double-to-int v0, v0

    const-wide v1, 0x4480f0cf064dd592L    # 1.0E22

    if-ltz v0, :cond_2

    move-wide v3, p1

    move p1, v0

    :goto_0
    const/16 p2, 0x16

    if-lt p1, p2, :cond_1

    mul-double/2addr v3, v1

    add-int/lit8 p1, p1, -0x16

    goto :goto_0

    .line 435
    :cond_1
    sget-object p2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    aget-wide p1, p2, p1

    mul-double/2addr v3, p1

    goto :goto_2

    :cond_2
    move-wide v3, p1

    move p1, v0

    :goto_1
    const/16 p2, -0x16

    if-gt p1, p2, :cond_3

    div-double/2addr v3, v1

    add-int/lit8 p1, p1, 0x16

    goto :goto_1

    .line 440
    :cond_3
    sget-object p2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    neg-int p1, p1

    aget-wide p1, p2, p1

    div-double/2addr v3, p1

    .line 442
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_4

    .line 444
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 445
    iget p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    :cond_4
    return-void
.end method

.method private _setToInt(I)V
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    int-to-long v0, p1

    neg-long v0, v0

    .line 330
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readLongToBcd(J)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readIntToBcd(I)V

    :goto_0
    return-void
.end method

.method private _setToLong(J)V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 351
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readBigIntegerToBcd(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    long-to-int p1, p1

    .line 353
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readIntToBcd(I)V

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readLongToBcd(J)V

    :goto_0
    return-void
.end method

.method private convertToAccurateDouble()V
    .locals 8

    .line 455
    iget-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    .line 457
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    .line 458
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 461
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x45

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v4, :cond_0

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 468
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v7

    sub-int/2addr v0, v1

    add-int/2addr v0, v7

    add-int/2addr v3, v0

    iput v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_1

    .line 472
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 473
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v5, v0

    add-int/2addr v1, v5

    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    goto :goto_0

    .line 474
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x2e

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 486
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v7

    add-int/2addr v3, v1

    iput v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 489
    :goto_0
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 490
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    .line 491
    iput-boolean v7, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->explicitExactDouble:Z

    return-void
.end method

.method private fractionCount()I
    .locals 0

    .line 288
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getLowerDisplayMagnitude()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method private fractionCountWithoutTrailingZeros()I
    .locals 1

    .line 292
    iget p0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    neg-int p0, p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static safeSubtract(II)I
    .locals 1

    sub-int v0, p0, p1

    if-gez p1, :cond_0

    if-ge v0, p0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    if-lez p1, :cond_1

    if-le v0, p0, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public adjustMagnitude(I)V
    .locals 1

    .line 208
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-eqz v0, :cond_0

    .line 209
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 210
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    :cond_0
    return-void
.end method

.method public appendDigit(BIZ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 814
    iget p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-eqz p1, :cond_0

    .line 815
    iget p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/lit8 p2, p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    :cond_0
    return-void

    .line 821
    :cond_1
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    add-int/2addr p2, v0

    if-eqz p3, :cond_2

    .line 824
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 829
    invoke-virtual {p0, p2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->shiftLeft(I)V

    .line 830
    invoke-virtual {p0, v1, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setDigitPos(IB)V

    if-eqz p3, :cond_3

    .line 834
    iget p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    :cond_3
    return-void
.end method

.method protected abstract bcdToBigDecimal()Ljava/math/BigDecimal;
.end method

.method public clear()Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;
    .locals 2

    const v0, 0x7fffffff

    .line 129
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lOptPos:I

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    .line 131
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    const/high16 v1, -0x80000000

    .line 132
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rOptPos:I

    .line 133
    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 134
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    return-object p0
.end method

.method protected abstract compact()V
.end method

.method protected abstract copyBcdFrom(Landroid/icu/impl/number/DecimalQuantity;)V
.end method

.method public copyFrom(Landroid/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 114
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->copyBcdFrom(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 115
    check-cast p1, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;

    .line 116
    iget v0, p1, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lOptPos:I

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lOptPos:I

    .line 117
    iget v0, p1, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    .line 118
    iget v0, p1, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    .line 119
    iget v0, p1, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rOptPos:I

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rOptPos:I

    .line 120
    iget v0, p1, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 121
    iget v0, p1, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    .line 122
    iget-byte v0, p1, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 123
    iget-wide v0, p1, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    .line 124
    iget v0, p1, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    .line 125
    iget-boolean p1, p1, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    return-void
.end method

.method public getDigit(I)B
    .locals 1

    .line 284
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result p0

    return p0
.end method

.method protected abstract getDigitPos(I)B
.end method

.method public getLowerDisplayMagnitude()I
    .locals 2

    .line 273
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 274
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    if-ge v1, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rOptPos:I

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method

.method public getMagnitude()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 199
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-eqz v0, :cond_0

    .line 202
    iget p0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 200
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Magnitude is not well-defined for zero"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D
    .locals 2

    .line 232
    sget-object v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD$1;->$SwitchMap$android$icu$text$PluralRules$Operand:[I

    invoke-virtual {p1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0

    .line 242
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->fractionCountWithoutTrailingZeros()I

    move-result p0

    int-to-double p0, p0

    return-wide p0

    .line 240
    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->fractionCount()I

    move-result p0

    int-to-double p0, p0

    return-wide p0

    :cond_2
    const/4 p1, 0x0

    .line 238
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toFractionLong(Z)J

    move-result-wide p0

    long-to-double p0, p0

    return-wide p0

    .line 236
    :cond_3
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toFractionLong(Z)J

    move-result-wide p0

    long-to-double p0, p0

    return-wide p0

    .line 234
    :cond_4
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toLong()J

    move-result-wide p0

    long-to-double p0, p0

    return-wide p0
.end method

.method public getPositionFingerprint()J
    .locals 5

    .line 165
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lOptPos:I

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    xor-long/2addr v0, v2

    .line 166
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    xor-long/2addr v0, v2

    .line 167
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    .line 168
    iget p0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rOptPos:I

    int-to-long v2, p0

    const/16 p0, 0x30

    shl-long/2addr v2, p0

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public getStandardPlural(Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;
    .locals 0

    if-nez p1, :cond_0

    .line 218
    sget-object p0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    return-object p0

    .line 221
    :cond_0
    invoke-virtual {p1, p0}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p0

    .line 222
    invoke-static {p0}, Landroid/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object p0

    return-object p0
.end method

.method public getUpperDisplayMagnitude()I
    .locals 2

    .line 262
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/2addr v0, v1

    .line 263
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    if-le v1, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lOptPos:I

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public isInfinite()Z
    .locals 0

    .line 302
    iget-byte p0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNaN()Z
    .locals 0

    .line 307
    iget-byte p0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNegative()Z
    .locals 1

    .line 297
    iget-byte p0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 0

    .line 312
    iget p0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public multiplyBy(Ljava/math/BigDecimal;)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public populateUFieldPosition(Ljava/text/FieldPosition;)V
    .locals 3

    .line 250
    instance-of v0, p1, Landroid/icu/text/UFieldPosition;

    if-eqz v0, :cond_0

    .line 251
    check-cast p1, Landroid/icu/text/UFieldPosition;

    sget-object v0, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    .line 252
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v0

    double-to-int v0, v0

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {p0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    :cond_0
    return-void
.end method

.method protected abstract readBigIntegerToBcd(Ljava/math/BigInteger;)V
.end method

.method protected abstract readIntToBcd(I)V
.end method

.method protected abstract readLongToBcd(J)V
.end method

.method public roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V
    .locals 3

    .line 175
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    .line 177
    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 179
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p2

    if-nez p2, :cond_0

    .line 181
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    :goto_0
    return-void
.end method

.method public roundToInfinity()V
    .locals 1

    .line 785
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    .line 786
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->convertToAccurateDouble()V

    :cond_0
    return-void
.end method

.method public roundToMagnitude(ILjava/math/MathContext;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 643
    iget v2, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    invoke-static {v1, v2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v2

    .line 646
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    const v4, 0x7fffffff

    if-eq v1, v4, :cond_0

    if-lez v3, :cond_1

    .line 647
    iget v4, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    sub-int/2addr v4, v2

    if-le v4, v3, :cond_1

    .line 649
    :cond_0
    iget v2, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    sub-int/2addr v2, v3

    :cond_1
    if-gtz v2, :cond_2

    .line 652
    iget-boolean v3, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-nez v3, :cond_2

    goto/16 :goto_d

    .line 654
    :cond_2
    iget v3, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez v3, :cond_3

    goto/16 :goto_d

    :cond_3
    const/4 v3, 0x1

    .line 660
    invoke-static {v2, v3}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    .line 661
    invoke-virtual {v0, v2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v5

    .line 669
    iget-boolean v6, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    const/4 v7, 0x5

    const/16 v8, 0x9

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-nez v6, :cond_8

    if-ge v4, v7, :cond_4

    move v10, v3

    goto/16 :goto_9

    :cond_4
    if-le v4, v7, :cond_5

    goto/16 :goto_9

    .line 675
    :cond_5
    invoke-static {v2, v9}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v4

    :goto_0
    if-ltz v4, :cond_7

    .line 676
    invoke-virtual {v0, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v6

    if-eqz v6, :cond_6

    move v9, v10

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_7
    :goto_1
    move v10, v9

    goto/16 :goto_9

    .line 683
    :cond_8
    invoke-static {v2, v9}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v6

    .line 684
    iget v12, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/lit8 v12, v12, -0xe

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, -0x2

    const/4 v14, -0x1

    if-nez v4, :cond_b

    :goto_2
    if-lt v6, v12, :cond_a

    .line 688
    invoke-virtual {v0, v6}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_a
    move v4, v14

    goto :goto_8

    :cond_b
    const/4 v15, 0x4

    if-ne v4, v15, :cond_d

    :goto_3
    if-lt v6, v12, :cond_10

    .line 695
    invoke-virtual {v0, v6}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    if-eq v4, v8, :cond_c

    :goto_4
    move v4, v3

    goto :goto_8

    :cond_c
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_d
    if-ne v4, v7, :cond_11

    :goto_5
    if-lt v6, v12, :cond_10

    .line 702
    invoke-virtual {v0, v6}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    :goto_6
    move v4, v10

    goto :goto_8

    :cond_f
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_10
    move v4, v9

    goto :goto_8

    :cond_11
    if-ne v4, v8, :cond_14

    :goto_7
    if-lt v6, v12, :cond_13

    .line 710
    invoke-virtual {v0, v6}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    if-eq v4, v8, :cond_12

    goto :goto_6

    :cond_12
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_13
    move v4, v13

    goto :goto_8

    :cond_14
    if-ge v4, v7, :cond_e

    goto :goto_4

    .line 722
    :goto_8
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    invoke-static {v6}, Landroid/icu/impl/number/RoundingUtils;->roundsAtMidpoint(I)Z

    move-result v6

    .line 723
    invoke-static {v2, v3}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v7

    iget v12, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/lit8 v12, v12, -0xe

    if-lt v7, v12, :cond_1f

    if-eqz v6, :cond_15

    if-eq v4, v9, :cond_1f

    :cond_15
    if-nez v6, :cond_16

    if-gez v4, :cond_16

    goto :goto_e

    .line 734
    :cond_16
    iput-boolean v11, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    const-wide/16 v6, 0x0

    .line 735
    iput-wide v6, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    .line 736
    iput v11, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    if-gtz v2, :cond_17

    return-void

    :cond_17
    if-ne v4, v14, :cond_18

    move v4, v3

    :cond_18
    if-ne v4, v13, :cond_19

    goto :goto_9

    :cond_19
    move v10, v4

    .line 748
    :goto_9
    rem-int/lit8 v4, v5, 0x2

    if-nez v4, :cond_1a

    move v4, v3

    goto :goto_a

    :cond_1a
    move v4, v11

    .line 751
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v6

    .line 753
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    .line 749
    invoke-static {v4, v6, v10, v7, v0}, Landroid/icu/impl/number/RoundingUtils;->getRoundingDirection(ZZIILjava/lang/Object;)Z

    move-result v4

    .line 757
    iget v6, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-lt v2, v6, :cond_1b

    .line 758
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 759
    iput v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    goto :goto_b

    .line 761
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->shiftRight(I)V

    :goto_b
    if-nez v4, :cond_1e

    if-ne v5, v8, :cond_1d

    move v1, v11

    .line 770
    :goto_c
    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v2

    if-ne v2, v8, :cond_1c

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 771
    :cond_1c
    invoke-virtual {v0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->shiftRight(I)V

    .line 773
    :cond_1d
    invoke-virtual {v0, v11}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v1

    add-int/2addr v1, v3

    int-to-byte v1, v1

    .line 775
    invoke-virtual {v0, v11, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setDigitPos(IB)V

    .line 776
    iget v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    .line 779
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :goto_d
    return-void

    .line 728
    :cond_1f
    :goto_e
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->convertToAccurateDouble()V

    .line 729
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->roundToMagnitude(ILjava/math/MathContext;)V

    return-void
.end method

.method protected abstract setBcdToZero()V
.end method

.method protected abstract setDigitPos(IB)V
.end method

.method public setFractionLength(II)V
    .locals 0

    neg-int p1, p1

    .line 158
    iput p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    neg-int p1, p2

    .line 159
    iput p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rOptPos:I

    return-void
.end method

.method public setIntegerLength(II)V
    .locals 0

    .line 146
    iput p2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lOptPos:I

    .line 147
    iput p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    return-void
.end method

.method public setToBigDecimal(Ljava/math/BigDecimal;)V
    .locals 2

    .line 511
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 512
    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 513
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 514
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 515
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p1

    .line 517
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    invoke-direct {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToBigDecimal(Ljava/math/BigDecimal;)V

    .line 519
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_1
    return-void
.end method

.method public setToBigInteger(Ljava/math/BigInteger;)V
    .locals 2

    .line 360
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 361
    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 362
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 363
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 364
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    .line 366
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    invoke-direct {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToBigInteger(Ljava/math/BigInteger;)V

    .line 368
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_1
    return-void
.end method

.method public setToDouble(D)V
    .locals 3

    .line 388
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 389
    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    const-wide/16 v0, 0x0

    .line 391
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gez v2, :cond_0

    .line 392
    iget-byte v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    neg-double p1, p1

    .line 395
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    iget-byte p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    goto :goto_0

    .line 397
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 398
    iget-byte p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    goto :goto_0

    :cond_2
    cmpl-double v0, p1, v0

    if-eqz v0, :cond_3

    .line 400
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToDoubleFast(D)V

    .line 401
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setToInt(I)V
    .locals 1

    .line 316
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 317
    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    if-gez p1, :cond_0

    .line 319
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    neg-int p1, p1

    :cond_0
    if-eqz p1, :cond_1

    .line 323
    invoke-direct {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToInt(I)V

    .line 324
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_1
    return-void
.end method

.method public setToLong(J)V
    .locals 3

    .line 337
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    const/4 v0, 0x0

    .line 338
    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 340
    iget-byte v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    neg-long p1, p1

    :cond_0
    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 344
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 345
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    :cond_1
    return-void
.end method

.method protected abstract shiftLeft(I)V
.end method

.method protected abstract shiftRight(I)V
.end method

.method public toBigDecimal()Ljava/math/BigDecimal;
    .locals 1

    .line 604
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    .line 606
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->convertToAccurateDouble()V

    .line 608
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->bcdToBigDecimal()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public toDouble()D
    .locals 6

    .line 570
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toDoubleFromOriginal()D

    move-result-wide v0

    return-wide v0

    .line 574
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 576
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result p0

    if-eqz p0, :cond_2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    return-wide v0

    :cond_3
    const-wide/16 v0, 0x0

    .line 581
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    const/16 v3, 0x11

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    .line 582
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-lt v3, v2, :cond_4

    const-wide/16 v4, 0xa

    mul-long/2addr v0, v4

    .line 583
    invoke-virtual {p0, v3}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    long-to-double v0, v0

    .line 586
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v3, v2

    const-wide v4, 0x4480f0cf064dd592L    # 1.0E22

    if-ltz v3, :cond_6

    :goto_2
    const/16 v2, 0x16

    if-lt v3, v2, :cond_5

    mul-double/2addr v0, v4

    add-int/lit8 v3, v3, -0x16

    goto :goto_2

    .line 591
    :cond_5
    sget-object v2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    aget-wide v2, v2, v3

    mul-double/2addr v0, v2

    goto :goto_4

    :cond_6
    :goto_3
    const/16 v2, -0x16

    if-gt v3, v2, :cond_7

    div-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x16

    goto :goto_3

    .line 596
    :cond_7
    sget-object v2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    neg-int v3, v3

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    .line 598
    :goto_4
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result p0

    if-eqz p0, :cond_8

    neg-double v0, v0

    :cond_8
    return-wide v0
.end method

.method protected toDoubleFromOriginal()D
    .locals 6

    .line 612
    iget-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    .line 613
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    const-wide v3, 0x4480f0cf064dd592L    # 1.0E22

    if-ltz v2, :cond_1

    :goto_0
    const/16 v5, 0x16

    if-lt v2, v5, :cond_0

    mul-double/2addr v0, v3

    add-int/lit8 v2, v2, -0x16

    goto :goto_0

    .line 617
    :cond_0
    sget-object v3, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    aget-wide v2, v3, v2

    mul-double/2addr v0, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v5, -0x16

    if-gt v2, v5, :cond_2

    div-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x16

    goto :goto_1

    .line 621
    :cond_2
    sget-object v3, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    neg-int v2, v2

    aget-wide v2, v3, v2

    div-double/2addr v0, v2

    .line 623
    :goto_2
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result p0

    if-eqz p0, :cond_3

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v2

    :cond_3
    return-wide v0
.end method

.method protected toFractionLong(Z)J
    .locals 5

    const/4 v0, -0x1

    const-wide/16 v1, 0x0

    .line 555
    :goto_0
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    if-ge v0, v3, :cond_0

    if-eqz p1, :cond_1

    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    if-lt v0, v3, :cond_1

    :cond_0
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rOptPos:I

    if-lt v0, v3, :cond_1

    const-wide/16 v3, 0xa

    mul-long/2addr v1, v3

    .line 557
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method protected toLong()J
    .locals 5

    .line 539
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    const-wide/16 v3, 0xa

    mul-long/2addr v1, v3

    .line 540
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public toPlainString()Ljava/lang/String;
    .locals 3

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 842
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 845
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getUpperDisplayMagnitude()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getLowerDisplayMagnitude()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 846
    invoke-virtual {p0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigit(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const/16 v2, 0x2e

    .line 847
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 849
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
