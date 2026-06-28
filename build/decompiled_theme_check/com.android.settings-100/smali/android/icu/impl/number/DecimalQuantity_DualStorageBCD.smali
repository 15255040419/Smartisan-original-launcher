.class public final Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
.super Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;
.source "DecimalQuantity_DualStorageBCD.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bcdBytes:[B

.field private bcdLong:J

.field private usingBytes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 35
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setBcdToZero()V

    .line 36
    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->flags:B

    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 48
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToDouble(D)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 44
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToInt(I)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToLong(J)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 60
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->copyFrom(Landroid/icu/impl/number/DecimalQuantity;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 64
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToLong(J)V

    goto :goto_0

    .line 66
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToInt(I)V

    goto :goto_0

    .line 68
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToDouble(D)V

    goto :goto_0

    .line 70
    :cond_2
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    .line 71
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigInteger(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 72
    :cond_3
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_4

    .line 73
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 74
    :cond_4
    instance-of v0, p1, Landroid/icu/math/BigDecimal;

    if-eqz v0, :cond_5

    .line 75
    check-cast p1, Landroid/icu/math/BigDecimal;

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    :goto_0
    return-void

    .line 77
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number is of an unsupported type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 56
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 52
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigInteger(Ljava/math/BigInteger;)V

    return-void
.end method

.method private ensureCapacity()V
    .locals 1

    const/16 v0, 0x28

    .line 286
    invoke-direct {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 291
    :cond_0
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    array-length v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 292
    :goto_0
    iget-boolean v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-nez v2, :cond_2

    .line 293
    new-array p1, p1, [B

    iput-object p1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    goto :goto_1

    :cond_2
    if-ge v0, p1, :cond_3

    mul-int/lit8 p1, p1, 0x2

    .line 295
    new-array p1, p1, [B

    .line 296
    iget-object v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 297
    iput-object p1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    return-void
.end method

.method private switchStorage()V
    .locals 7

    .line 304
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x0

    .line 306
    iput-wide v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 307
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 308
    iget-wide v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    shl-long/2addr v3, v1

    iput-wide v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 309
    iget-wide v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    iget-object v5, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v5, v5, v0

    int-to-long v5, v5

    or-long/2addr v3, v5

    iput-wide v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    .line 312
    iput-boolean v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    goto :goto_2

    .line 315
    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity()V

    .line 316
    :goto_1
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v2, v0, :cond_2

    .line 317
    iget-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget-wide v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const-wide/16 v5, 0xf

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    ushr-long/2addr v3, v1

    .line 318
    iput-wide v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method protected bcdToBigDecimal()Ljava/math/BigDecimal;
    .locals 5

    .line 224
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->toNumberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->isNegative()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 228
    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-wide/16 v0, 0x0

    .line 233
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    const-wide/16 v3, 0xa

    mul-long/2addr v0, v3

    .line 234
    invoke-virtual {p0, v2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 236
    :cond_2
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 237
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->isNegative()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public checkHealth()Ljava/lang/String;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/16 v1, 0xa

    const-string v2, "Least significant digit is zero in long mode"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_9

    .line 346
    iget-wide v6, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    cmp-long v0, v6, v3

    if-eqz v0, :cond_0

    const-string p0, "Value in bcdLong but we are in byte mode"

    return-object p0

    .line 347
    :cond_0
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-nez v0, :cond_1

    const-string p0, "Zero precision but we are in byte mode"

    return-object p0

    .line 348
    :cond_1
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    iget-object v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    array-length v3, v3

    if-le v0, v3, :cond_2

    const-string p0, "Precision exceeds length of byte array"

    return-object p0

    .line 349
    :cond_2
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "Most significant digit is zero in byte mode"

    return-object p0

    .line 350
    :cond_3
    invoke-virtual {p0, v5}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-nez v0, :cond_4

    return-object v2

    .line 351
    :cond_4
    :goto_0
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v5, v0, :cond_7

    .line 352
    invoke-virtual {p0, v5}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-lt v0, v1, :cond_5

    const-string p0, "Digit exceeding 10 in byte array"

    return-object p0

    .line 353
    :cond_5
    invoke-virtual {p0, v5}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-gez v0, :cond_6

    const-string p0, "Digit below 0 in byte array"

    return-object p0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 355
    :cond_7
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    :goto_1
    iget-object v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 356
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v1

    if-eqz v1, :cond_8

    const-string p0, "Nonzero digits outside of range in byte array"

    return-object p0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    :cond_9
    iget-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    if-eqz v0, :cond_b

    move v0, v5

    .line 360
    :goto_2
    iget-object v6, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    array-length v7, v6

    if-ge v0, v7, :cond_b

    .line 361
    aget-byte v6, v6, v0

    if-eqz v6, :cond_a

    const-string p0, "Nonzero digits in byte array but we are in long mode"

    return-object p0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 364
    :cond_b
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-nez v0, :cond_c

    iget-wide v6, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    cmp-long v0, v6, v3

    if-eqz v0, :cond_c

    const-string p0, "Value in bcdLong even though precision is zero"

    return-object p0

    .line 365
    :cond_c
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    const/16 v3, 0x10

    if-le v0, v3, :cond_d

    const-string p0, "Precision exceeds length of long"

    return-object p0

    .line 366
    :cond_d
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "Most significant digit is zero in long mode"

    return-object p0

    .line 368
    :cond_e
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-eqz v0, :cond_f

    invoke-virtual {p0, v5}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-nez v0, :cond_f

    return-object v2

    .line 370
    :cond_f
    :goto_3
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v5, v0, :cond_12

    .line 371
    invoke-virtual {p0, v5}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-lt v0, v1, :cond_10

    const-string p0, "Digit exceeding 10 in long"

    return-object p0

    .line 372
    :cond_10
    invoke-virtual {p0, v5}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-gez v0, :cond_11

    const-string p0, "Digit below 0 in long (?!)"

    return-object p0

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 374
    :cond_12
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    :goto_4
    if-ge v0, v3, :cond_14

    .line 375
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v1

    if-eqz v1, :cond_13

    const-string p0, "Nonzero digits outside of range in long"

    return-object p0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method protected compact()V
    .locals 6

    .line 245
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 247
    :goto_0
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ne v0, v2, :cond_1

    .line 250
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setBcdToZero()V

    return-void

    .line 254
    :cond_1
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->shiftRight(I)V

    .line 258
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    .line 259
    iget-object v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 260
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 263
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-gt v0, v1, :cond_5

    .line 264
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->switchStorage()V

    goto :goto_2

    .line 268
    :cond_3
    iget-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 270
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setBcdToZero()V

    return-void

    .line 275
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 276
    iget-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    mul-int/lit8 v4, v0, 0x4

    ushr-long/2addr v2, v4

    iput-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 277
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 280
    iget-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    :cond_5
    :goto_2
    return-void
.end method

.method protected copyBcdFrom(Landroid/icu/impl/number/DecimalQuantity;)V
    .locals 2

    .line 326
    check-cast p1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 327
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setBcdToZero()V

    .line 328
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_0

    .line 329
    iget v0, p1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    invoke-direct {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 330
    iget-object v0, p1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget-object p0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget p1, p1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v1, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .line 332
    :cond_0
    iget-wide v0, p1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    :goto_0
    return-void
.end method

.method public createCopy()Landroid/icu/impl/number/DecimalQuantity;
    .locals 1

    .line 84
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;)V

    return-object v0
.end method

.method protected getDigitPos(I)B
    .locals 2

    .line 89
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    .line 90
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte p0, p0, p1

    return p0

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-ltz p1, :cond_4

    const/16 v0, 0x10

    if-lt p1, v0, :cond_3

    goto :goto_1

    .line 94
    :cond_3
    iget-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    mul-int/lit8 p1, p1, 0x4

    ushr-long p0, v0, p1

    const-wide/16 v0, 0xf

    and-long/2addr p0, v0

    long-to-int p0, p0

    int-to-byte p0, p0

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public isUsingBytes()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    iget-boolean p0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    return p0
.end method

.method public maxRepresentableDigits()I
    .locals 0

    const p0, 0x7fffffff

    return p0
.end method

.method protected readBigIntegerToBcd(Ljava/math/BigInteger;)V
    .locals 5

    .line 210
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity()V

    const/4 v0, 0x0

    move v1, v0

    .line 212
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v2, v1, 0x1

    .line 214
    invoke-direct {p0, v2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 215
    iget-object v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->byteValue()B

    move-result v4

    aput-byte v4, v3, v1

    .line 216
    aget-object p1, p1, v0

    move v1, v2

    goto :goto_0

    .line 218
    :cond_0
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 219
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    return-void
.end method

.method protected readIntToBcd(I)V
    .locals 8

    const-wide/16 v0, 0x0

    const/16 v2, 0x10

    move v3, v2

    :goto_0
    if-eqz p1, :cond_0

    const/4 v4, 0x4

    ushr-long/2addr v0, v4

    int-to-long v4, p1

    const-wide/16 v6, 0xa

    .line 173
    rem-long/2addr v4, v6

    const/16 v6, 0x3c

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 172
    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, v3, 0x4

    ushr-long/2addr v0, p1

    .line 176
    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const/4 p1, 0x0

    .line 177
    iput p1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    sub-int/2addr v2, v3

    .line 178
    iput v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    return-void
.end method

.method protected readLongToBcd(J)V
    .locals 12

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    if-ltz v0, :cond_1

    .line 185
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity()V

    move v0, v1

    :goto_0
    cmp-long v6, p1, v2

    if-eqz v6, :cond_0

    .line 188
    iget-object v6, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    rem-long v7, p1, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 187
    div-long/2addr p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 192
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    goto :goto_2

    :cond_1
    const/16 v0, 0x10

    move v8, v0

    move-wide v6, v2

    :goto_1
    cmp-long v9, p1, v2

    if-eqz v9, :cond_2

    const/4 v9, 0x4

    ushr-long/2addr v6, v9

    .line 197
    rem-long v9, p1, v4

    const/16 v11, 0x3c

    shl-long/2addr v9, v11

    add-long/2addr v6, v9

    .line 196
    div-long/2addr p1, v4

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 p1, v8, 0x4

    ushr-long p1, v6, p1

    .line 201
    iput-wide p1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 202
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    sub-int/2addr v0, v8

    .line 203
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    :goto_2
    return-void
.end method

.method protected setBcdToZero()V
    .locals 4

    .line 154
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    .line 156
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    :cond_0
    const-wide/16 v2, 0x0

    .line 158
    iput-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 159
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 160
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 161
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->isApproximate:Z

    const-wide/16 v2, 0x0

    .line 162
    iput-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->origDouble:D

    .line 163
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->origDelta:I

    return-void
.end method

.method protected setDigitPos(IB)V
    .locals 4

    .line 101
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 102
    invoke-direct {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 103
    iget-object p0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aput-byte p2, p0, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    .line 105
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->switchStorage()V

    add-int/lit8 v0, p1, 0x1

    .line 106
    invoke-direct {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 107
    iget-object p0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aput-byte p2, p0, p1

    goto :goto_0

    :cond_1
    mul-int/lit8 p1, p1, 0x4

    .line 110
    iget-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const-wide/16 v2, 0xf

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    int-to-long v2, p2

    shl-long p1, v2, p1

    or-long/2addr p1, v0

    iput-wide p1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    :goto_0
    return-void
.end method

.method protected shiftLeft(I)V
    .locals 3

    .line 116
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 117
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->switchStorage()V

    .line 119
    :cond_0
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_2

    .line 120
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 121
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, p1, :cond_1

    .line 123
    iget-object v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    sub-int v2, v0, p1

    aget-byte v2, v1, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v0, :cond_3

    .line 126
    iget-object v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 129
    :cond_2
    iget-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    mul-int/lit8 v2, p1, 0x4

    shl-long/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 131
    :cond_3
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 132
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    return-void
.end method

.method protected shiftRight(I)V
    .locals 4

    .line 137
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 139
    :goto_0
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    sub-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    .line 140
    iget-object v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    add-int v3, v1, p1

    aget-byte v3, v2, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    :goto_1
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v1, v2, :cond_2

    .line 143
    iget-object v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 146
    :cond_1
    iget-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    mul-int/lit8 v2, p1, 0x4

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 148
    :cond_2
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 149
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    return-void
.end method

.method public toNumberString()Ljava/lang/String;
    .locals 3

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 408
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v1, :cond_0

    .line 409
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 410
    iget-object v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 413
    :cond_0
    iget-wide v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "E"

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    iget p0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 398
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->lOptPos:I

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    const-string v1, "999"

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->lOptPos:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->lReqPos:I

    .line 399
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->rReqPos:I

    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 401
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->rOptPos:I

    const/16 v3, -0x3e8

    if-ge v2, v3, :cond_1

    const-string v2, "-999"

    goto :goto_1

    :cond_1
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->rOptPos:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 402
    iget-boolean v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v2, :cond_2

    const-string v2, "bytes"

    goto :goto_2

    :cond_2
    const-string v2, "long"

    :goto_2
    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 403
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->toNumberString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "<DecimalQuantity %s:%d:%d:%s %s %s>"

    .line 396
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
