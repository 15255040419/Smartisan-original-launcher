.class public final Landroid/icu/text/DigitList_Android;
.super Ljava/lang/Object;
.source "DigitList_Android.java"


# static fields
.field public static final DBL_DIG:I = 0x11

.field private static LONG_MIN_REP:[B = null

.field public static final MAX_LONG_DIGITS:I = 0x13


# instance fields
.field public count:I

.field public decimalAt:I

.field private didRound:Z

.field public digits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    .line 764
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    new-array v2, v1, [B

    .line 765
    sput-object v2, Landroid/icu/text/DigitList_Android;->LONG_MIN_REP:[B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 768
    sget-object v3, Landroid/icu/text/DigitList_Android;->LONG_MIN_REP:[B

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    .line 82
    iput v0, p0, Landroid/icu/text/DigitList_Android;->count:I

    const/16 v1, 0x13

    new-array v1, v1, [B

    .line 83
    iput-object v1, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    .line 538
    iput-boolean v0, p0, Landroid/icu/text/DigitList_Android;->didRound:Z

    return-void
.end method

.method private final ensureCapacity(II)V
    .locals 2

    .line 86
    iget-object v0, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    array-length v1, v0

    if-le p1, v1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 87
    new-array p1, p1, [B

    const/4 v1, 0x0

    .line 88
    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 89
    iput-object p1, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    :cond_0
    return-void
.end method

.method private getStringRep(Z)Ljava/lang/String;
    .locals 5

    .line 217
    invoke-virtual {p0}, Landroid/icu/text/DigitList_Android;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    return-object p0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez p1, :cond_1

    const/16 p1, 0x2d

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_1
    iget p1, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    const/16 v1, 0x30

    const/16 v2, 0x2e

    if-gez p1, :cond_3

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-gez p1, :cond_2

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :cond_3
    const/4 v3, 0x0

    .line 231
    :goto_1
    iget v4, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v3, v4, :cond_5

    if-ne p1, v3, :cond_4

    .line 233
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    :cond_4
    iget-object v4, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v2, p1, -0x1

    .line 237
    iget v3, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-le p1, v3, :cond_6

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v2

    goto :goto_2

    .line 240
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isLongMIN_VALUE()Z
    .locals 4

    .line 748
    iget v0, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/16 v0, 0x13

    if-eq v1, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 751
    :goto_0
    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v0, v1, :cond_2

    .line 753
    iget-object v1, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v1, v1, v0

    sget-object v3, Landroid/icu/text/DigitList_Android;->LONG_MIN_REP:[B

    aget-byte v3, v3, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v2
.end method

.method private set(Ljava/lang/String;I)V
    .locals 10

    const/4 v0, -0x1

    .line 414
    iput v0, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    const/4 v1, 0x0

    .line 415
    iput v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    .line 423
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_0

    move v4, v1

    move v5, v4

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    move v4, v2

    move v5, v4

    .line 426
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 427
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_1

    .line 429
    iget v6, p0, Landroid/icu/text/DigitList_Android;->count:I

    iput v6, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    goto :goto_2

    :cond_1
    const/16 v7, 0x65

    if-eq v6, v7, :cond_6

    const/16 v7, 0x45

    if-ne v6, v7, :cond_2

    goto :goto_3

    .line 438
    :cond_2
    iget v7, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v7, p2, :cond_5

    if-nez v5, :cond_4

    const/16 v5, 0x30

    if-eq v6, v5, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    if-nez v5, :cond_4

    .line 441
    iget v7, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    if-eq v7, v0, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    if-eqz v5, :cond_5

    .line 447
    iget v7, p0, Landroid/icu/text/DigitList_Android;->count:I

    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0, v8, v7}, Landroid/icu/text/DigitList_Android;->ensureCapacity(II)V

    .line 448
    iget-object v7, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    iget v8, p0, Landroid/icu/text/DigitList_Android;->count:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Landroid/icu/text/DigitList_Android;->count:I

    int-to-byte v6, v6

    aput-byte v6, v7, v8

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v2, v3

    .line 433
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x2b

    if-ne p2, v1, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 436
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 452
    :cond_8
    iget p1, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    if-ne p1, v0, :cond_9

    .line 453
    iget p1, p0, Landroid/icu/text/DigitList_Android;->count:I

    iput p1, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    .line 455
    :cond_9
    iget p1, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    sub-int/2addr v1, v4

    add-int/2addr p1, v1

    iput p1, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    return-void
.end method

.method private setBigDecimalDigits(Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 696
    iput-boolean v0, p0, Landroid/icu/text/DigitList_Android;->didRound:Z

    .line 699
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/DigitList_Android;->set(Ljava/lang/String;I)V

    if-eqz p3, :cond_0

    .line 709
    iget p1, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    add-int/2addr p2, p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, -0x1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Landroid/icu/text/DigitList_Android;->round(I)V

    return-void
.end method

.method private shouldRoundUp(I)Z
    .locals 5

    .line 476
    iget v0, p0, Landroid/icu/text/DigitList_Android;->count:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_3

    .line 477
    iget-object v0, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v2, v0, p1

    const/16 v3, 0x35

    const/4 v4, 0x1

    if-le v2, v3, :cond_0

    return v4

    .line 479
    :cond_0
    aget-byte v0, v0, p1

    if-ne v0, v3, :cond_3

    add-int/lit8 v0, p1, 0x1

    .line 480
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v0, v2, :cond_2

    .line 481
    iget-object v2, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v2, v2, v0

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    .line 485
    iget-object p0, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    sub-int/2addr p1, v4

    aget-byte p0, p0, p1

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method


# virtual methods
.method public append(I)V
    .locals 3

    .line 119
    iget v0, p0, Landroid/icu/text/DigitList_Android;->count:I

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, v0}, Landroid/icu/text/DigitList_Android;->ensureCapacity(II)V

    .line 120
    iget-object v0, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/DigitList_Android;->count:I

    int-to-byte p0, p1

    aput-byte p0, v0, v1

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 809
    :cond_0
    instance-of v1, p1, Landroid/icu/text/DigitList_Android;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 811
    :cond_1
    check-cast p1, Landroid/icu/text/DigitList_Android;

    .line 812
    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    iget v3, p1, Landroid/icu/text/DigitList_Android;->count:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    iget v3, p1, Landroid/icu/text/DigitList_Android;->decimalAt:I

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 815
    :goto_0
    iget v3, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v1, v3, :cond_4

    .line 816
    iget-object v3, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v3, v3, v1

    iget-object v4, p1, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v2
.end method

.method public getBigDecimalICU(Z)Landroid/icu/math/BigDecimal;
    .locals 9

    .line 251
    invoke-virtual {p0}, Landroid/icu/text/DigitList_Android;->isZero()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 252
    invoke-static {v1, v2}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 258
    :cond_0
    iget v0, p0, Landroid/icu/text/DigitList_Android;->count:I

    int-to-long v3, v0

    iget v5, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_5

    const-wide/32 v1, 0x7fffffff

    cmp-long v5, v3, v1

    const/4 v6, 0x0

    if-lez v5, :cond_2

    sub-long v1, v3, v1

    int-to-long v7, v0

    cmp-long v5, v1, v7

    if-gez v5, :cond_1

    int-to-long v7, v0

    sub-long/2addr v7, v1

    long-to-int v0, v7

    goto :goto_0

    .line 268
    :cond_1
    new-instance p0, Landroid/icu/math/BigDecimal;

    invoke-direct {p0, v6}, Landroid/icu/math/BigDecimal;-><init>(I)V

    return-object p0

    .line 271
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez p1, :cond_3

    const/16 p1, 0x2d

    .line 273
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    if-ge v6, v0, :cond_4

    .line 276
    iget-object p1, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte p1, p1, v6

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 278
    :cond_4
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 279
    new-instance p1, Landroid/icu/math/BigDecimal;

    long-to-int v0, v3

    invoke-direct {p1, p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p1

    .line 281
    :cond_5
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {p0, p1}, Landroid/icu/text/DigitList_Android;->getStringRep(Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getBigInteger(Z)Ljava/math/BigInteger;
    .locals 3

    .line 175
    invoke-virtual {p0}, Landroid/icu/text/DigitList_Android;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    iget v0, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 195
    :cond_2
    new-array v0, v0, [C

    const/4 v1, 0x0

    if-nez p1, :cond_3

    const/16 p1, 0x2d

    .line 198
    aput-char p1, v0, v1

    .line 199
    :goto_1
    iget p1, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v1, p1, :cond_5

    add-int/lit8 p1, v1, 0x1

    .line 200
    iget-object v2, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v1, v2, v1

    int-to-char v1, v1

    aput-char v1, v0, p1

    move v1, p1

    goto :goto_1

    .line 204
    :cond_3
    :goto_2
    iget p1, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v1, p1, :cond_4

    .line 205
    iget-object p1, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte p1, p1, v1

    int-to-char p1, p1

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 209
    :cond_4
    :goto_3
    array-length p0, v0

    if-ge p1, p0, :cond_6

    const/16 p0, 0x30

    .line 210
    aput-char p0, v0, p1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 212
    :cond_6
    new-instance p0, Ljava/math/BigInteger;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getDigitValue(I)B
    .locals 0

    .line 124
    iget-object p0, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte p0, p0, p1

    add-int/lit8 p0, p0, -0x30

    int-to-byte p0, p0

    return p0
.end method

.method public final getDouble()D
    .locals 3

    .line 133
    iget v0, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x2e

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 136
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x45

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    iget p0, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getLong()J
    .locals 3

    .line 151
    iget v0, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 156
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/DigitList_Android;->isLongMIN_VALUE()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 159
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    if-ge v1, v2, :cond_3

    .line 161
    iget v2, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    goto :goto_1

    :cond_2
    const/16 v2, 0x30

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 826
    iget v0, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    const/4 v1, 0x0

    .line 828
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x25

    .line 829
    iget-object v2, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method isIntegral()Z
    .locals 3

    .line 292
    :goto_0
    iget v0, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    add-int/lit8 v2, v0, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/DigitList_Android;->count:I

    goto :goto_0

    .line 293
    :cond_0
    iget v0, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-eqz v0, :cond_2

    iget p0, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    if-lt p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method isZero()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 98
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v2, v2, v1

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final round(I)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_3

    .line 501
    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge p1, v1, :cond_3

    .line 502
    invoke-direct {p0, p1}, Landroid/icu/text/DigitList_Android;->shouldRoundUp(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    if-gez p1, :cond_1

    .line 513
    iget-object p1, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    const/16 v2, 0x31

    aput-byte v2, p1, v1

    .line 514
    iget p1, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    .line 516
    iput-boolean v0, p0, Landroid/icu/text/DigitList_Android;->didRound:Z

    move p1, v1

    goto :goto_0

    .line 520
    :cond_1
    iget-object v1, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v2, v1, p1

    add-int/2addr v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    .line 521
    iput-boolean v0, p0, Landroid/icu/text/DigitList_Android;->didRound:Z

    .line 522
    aget-byte v1, v1, p1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    :goto_0
    add-int/2addr p1, v0

    .line 527
    :cond_2
    iput p1, p0, Landroid/icu/text/DigitList_Android;->count:I

    .line 532
    :cond_3
    :goto_1
    iget p1, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-le p1, v0, :cond_4

    iget-object v1, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    add-int/lit8 v2, p1, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x30

    if-ne v1, v2, :cond_4

    add-int/lit8 p1, p1, -0x1

    .line 533
    iput p1, p0, Landroid/icu/text/DigitList_Android;->count:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method final set(DIZ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    move-wide p1, v0

    .line 371
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 373
    iput-boolean p2, p0, Landroid/icu/text/DigitList_Android;->didRound:Z

    const/16 v0, 0x13

    .line 375
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DigitList_Android;->set(Ljava/lang/String;I)V

    const/4 p1, 0x1

    if-eqz p4, :cond_3

    .line 383
    iget v0, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    neg-int v1, v0

    if-le v1, p3, :cond_1

    .line 384
    iput p2, p0, Landroid/icu/text/DigitList_Android;->count:I

    return-void

    :cond_1
    neg-int v0, v0

    if-ne v0, p3, :cond_3

    .line 387
    invoke-direct {p0, p2}, Landroid/icu/text/DigitList_Android;->shouldRoundUp(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 388
    iput p1, p0, Landroid/icu/text/DigitList_Android;->count:I

    .line 389
    iget p3, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    add-int/2addr p3, p1

    iput p3, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    .line 390
    iget-object p0, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    const/16 p1, 0x31

    aput-byte p1, p0, p2

    goto :goto_0

    .line 392
    :cond_2
    iput p2, p0, Landroid/icu/text/DigitList_Android;->count:I

    :goto_0
    return-void

    .line 400
    :cond_3
    :goto_1
    iget p2, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-le p2, p1, :cond_4

    iget-object v0, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    add-int/lit8 v1, p2, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x30

    if-ne v0, v1, :cond_4

    add-int/lit8 p2, p2, -0x1

    .line 401
    iput p2, p0, Landroid/icu/text/DigitList_Android;->count:I

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    .line 405
    iget p1, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    add-int/2addr p3, p1

    goto :goto_2

    :cond_5
    if-nez p3, :cond_6

    const/4 p3, -0x1

    :cond_6
    :goto_2
    invoke-virtual {p0, p3}, Landroid/icu/text/DigitList_Android;->round(I)V

    return-void
.end method

.method public final set(J)V
    .locals 1

    const/4 v0, 0x0

    .line 554
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/DigitList_Android;->set(JI)V

    return-void
.end method

.method public final set(JI)V
    .locals 12

    const/4 v0, 0x0

    .line 574
    iput-boolean v0, p0, Landroid/icu/text/DigitList_Android;->didRound:Z

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/16 v4, 0x13

    if-gtz v3, :cond_1

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long p1, p1, v1

    if-nez p1, :cond_0

    .line 578
    iput v4, p0, Landroid/icu/text/DigitList_Android;->count:I

    iput v4, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    .line 579
    sget-object p1, Landroid/icu/text/DigitList_Android;->LONG_MIN_REP:[B

    iget-object p2, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_2

    .line 581
    :cond_0
    iput v0, p0, Landroid/icu/text/DigitList_Android;->count:I

    .line 582
    iput v0, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    goto :goto_2

    :cond_1
    move v3, v4

    :goto_0
    cmp-long v5, p1, v1

    if-lez v5, :cond_2

    .line 588
    iget-object v5, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    add-int/lit8 v3, v3, -0x1

    const-wide/16 v6, 0x30

    const-wide/16 v8, 0xa

    rem-long v10, p1, v8

    add-long/2addr v10, v6

    long-to-int v6, v10

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 589
    div-long/2addr p1, v8

    goto :goto_0

    :cond_2
    sub-int/2addr v4, v3

    .line 591
    iput v4, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    const/16 p1, 0x12

    .line 595
    :goto_1
    iget-object p2, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v1, p2, p1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_3

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_3
    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, 0x1

    .line 596
    iput p1, p0, Landroid/icu/text/DigitList_Android;->count:I

    .line 597
    iget p1, p0, Landroid/icu/text/DigitList_Android;->count:I

    invoke-static {p2, v3, p2, v0, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_2
    if-lez p3, :cond_4

    .line 599
    invoke-virtual {p0, p3}, Landroid/icu/text/DigitList_Android;->round(I)V

    :cond_4
    return-void
.end method

.method public final set(Landroid/icu/math/BigDecimal;IZ)V
    .locals 0

    .line 739
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/DigitList_Android;->setBigDecimalDigits(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final set(Ljava/math/BigDecimal;IZ)V
    .locals 0

    .line 724
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/DigitList_Android;->setBigDecimalDigits(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final set(Ljava/math/BigInteger;I)V
    .locals 4

    .line 611
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p1

    .line 613
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    iput v0, p0, Landroid/icu/text/DigitList_Android;->count:I

    const/4 v0, 0x0

    .line 614
    iput-boolean v0, p0, Landroid/icu/text/DigitList_Android;->didRound:Z

    .line 617
    :goto_0
    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_0

    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_1

    .line 622
    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    .line 623
    iget v1, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    goto :goto_1

    :cond_1
    move v2, v0

    .line 626
    :goto_1
    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    invoke-direct {p0, v1, v0}, Landroid/icu/text/DigitList_Android;->ensureCapacity(II)V

    .line 627
    :goto_2
    iget v1, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v0, v1, :cond_2

    .line 628
    iget-object v1, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    add-int v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    if-lez p2, :cond_3

    .line 631
    invoke-virtual {p0, p2}, Landroid/icu/text/DigitList_Android;->round(I)V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 837
    invoke-virtual {p0}, Landroid/icu/text/DigitList_Android;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    return-object p0

    .line 838
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 839
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "x10^"

    .line 840
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    iget p0, p0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public wasRounded()Z
    .locals 0

    .line 546
    iget-boolean p0, p0, Landroid/icu/text/DigitList_Android;->didRound:Z

    return p0
.end method
