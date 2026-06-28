.class public final Landroid/icu/impl/DateNumberFormat;
.super Landroid/icu/text/NumberFormat;
.source "DateNumberFormat.java"


# static fields
.field private static CACHE:Landroid/icu/impl/SimpleCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache<",
            "Landroid/icu/util/ULocale;",
            "[C>;"
        }
    .end annotation
.end field

.field private static final DECIMAL_BUF_SIZE:I = 0x14

.field private static final PARSE_THRESHOLD:J = 0xccccccccccccccbL

.field private static final serialVersionUID:J = -0x57a5d92a02d4dc49L


# instance fields
.field private transient decimalBuf:[C

.field private digits:[C

.field private maxIntDigits:I

.field private minIntDigits:I

.field private minusSign:C

.field private positiveOnly:Z

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/impl/DateNumberFormat;->CACHE:Landroid/icu/impl/SimpleCache;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;CLjava/lang/String;)V
    .locals 3

    .line 58
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    const/16 v1, 0x14

    new-array v1, v1, [C

    .line 44
    iput-object v1, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    .line 59
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    add-int v2, p2, v0

    int-to-char v2, v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/DateNumberFormat;->initialize(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    const/16 v0, 0x14

    new-array v0, v0, [C

    .line 44
    iput-object v0, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/DateNumberFormat;->initialize(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "DateNumberFormat does not support digits out of BMP."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initialize(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "-"

    .line 67
    sget-object v1, Landroid/icu/impl/DateNumberFormat;->CACHE:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v1, p1}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-nez v1, :cond_2

    const-string v1, "android/icu/impl/data/icudt60b"

    .line 71
    invoke-static {v1, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 73
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberElements/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/symbols/minusSign"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v4, "latn"

    .line 75
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    :try_start_1
    const-string p3, "NumberElements/latn/symbols/minusSign"

    .line 77
    invoke-virtual {v1, p3}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    :goto_0
    const/16 p3, 0xb

    new-array v1, p3, [C

    move p3, v2

    :goto_1
    if-ge p3, v3, :cond_1

    .line 87
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    aput-char p2, v1, v3

    .line 90
    sget-object p2, Landroid/icu/impl/DateNumberFormat;->CACHE:Landroid/icu/impl/SimpleCache;

    invoke-virtual {p2, p1, v1}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    new-array p1, v3, [C

    .line 93
    iput-object p1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    .line 94
    iget-object p1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object p1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    aget-char p1, p1, v2

    iput-char p1, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    .line 97
    aget-char p1, v1, v3

    iput-char p1, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 276
    iget-object p1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    if-nez p1, :cond_0

    .line 277
    iget-char p1, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    invoke-virtual {p0, p1}, Landroid/icu/impl/DateNumberFormat;->setZeroDigit(C)V

    :cond_0
    const/16 p1, 0x14

    new-array p1, p1, [C

    .line 280
    iput-object p1, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 285
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/DateNumberFormat;

    .line 286
    iget-object p0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    iput-object p0, v0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    const/16 p0, 0x14

    new-array p0, p0, [C

    .line 287
    iput-object p0, v0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 258
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Landroid/icu/impl/DateNumberFormat;

    if-nez v1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    check-cast p1, Landroid/icu/impl/DateNumberFormat;

    .line 262
    iget v1, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    iget v2, p1, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    iget v2, p1, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    if-ne v1, v2, :cond_1

    iget-char v1, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    iget-char v2, p1, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    iget-boolean v2, p1, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    iget-object p1, p1, Landroid/icu/impl/DateNumberFormat;->digits:[C

    .line 266
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 147
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "StringBuffer format(double, StringBuffer, FieldPostion) is not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 156
    iget-char v0, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-long p1, p1

    :cond_0
    long-to-int p1, p1

    .line 165
    iget-object p2, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    array-length v0, p2

    iget v1, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    if-ge v0, v1, :cond_1

    array-length v1, p2

    :cond_1
    add-int/lit8 p2, v1, -0x1

    .line 168
    :goto_0
    iget-object v0, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    iget-object v2, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    rem-int/lit8 v3, p1, 0xa

    aget-char v2, v2, v3

    aput-char v2, v0, p2

    .line 169
    div-int/lit8 p1, p1, 0xa

    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 175
    :cond_3
    :goto_1
    iget p1, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    sub-int v0, v1, p2

    sub-int/2addr p1, v0

    :goto_2
    const/4 v0, 0x0

    if-lez p1, :cond_4

    .line 177
    iget-object v2, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    add-int/lit8 p2, p2, -0x1

    iget-object v3, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    aget-char v0, v3, v0

    aput-char v0, v2, p2

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    sub-int/2addr v1, p2

    .line 180
    iget-object p0, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    invoke-virtual {p3, p0, p2, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {p4, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 182
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    move-result p0

    if-nez p0, :cond_5

    .line 183
    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_3

    .line 185
    :cond_5
    invoke-virtual {p4, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :goto_3
    return-object p3
.end method

.method public format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 205
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "StringBuffer format(BigDecimal, StringBuffer, FieldPostion) is not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 199
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "StringBuffer format(BigDecimal, StringBuffer, FieldPostion) is not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    .line 193
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "StringBuffer format(BigInteger, StringBuffer, FieldPostion) is not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDigits()[C
    .locals 0

    .line 141
    iget-object p0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public getMaximumIntegerDigits()I
    .locals 0

    .line 107
    iget p0, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    return p0
.end method

.method public getMinimumIntegerDigits()I
    .locals 0

    .line 117
    iget p0, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    return p0
.end method

.method public getZeroDigit()C
    .locals 0

    .line 126
    iget-char p0, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 271
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result p0

    return p0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 13

    .line 218
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v5, v1

    move v6, v5

    move-wide v3, v2

    move v2, v6

    :goto_0
    add-int v7, v0, v2

    .line 220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 221
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x1

    if-nez v2, :cond_1

    .line 222
    iget-char v10, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    if-ne v8, v10, :cond_1

    .line 223
    iget-boolean v8, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    if-eqz v8, :cond_0

    goto :goto_4

    :cond_0
    move v6, v9

    goto :goto_3

    .line 228
    :cond_1
    iget-object v10, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    aget-char v10, v10, v1

    sub-int v10, v8, v10

    const/16 v11, 0x9

    if-ltz v10, :cond_2

    if-ge v11, v10, :cond_3

    .line 230
    :cond_2
    invoke-static {v8}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v10

    :cond_3
    if-ltz v10, :cond_4

    if-ge v11, v10, :cond_6

    :cond_4
    move v10, v1

    :goto_1
    const/16 v12, 0xa

    if-ge v10, v12, :cond_6

    .line 234
    iget-object v12, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    aget-char v12, v12, v10

    if-ne v8, v12, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-ltz v10, :cond_7

    if-gt v10, v11, :cond_7

    const-wide v11, 0xccccccccccccccbL

    cmp-long v8, v3, v11

    if-gez v8, :cond_7

    const-wide/16 v7, 0xa

    mul-long/2addr v3, v7

    int-to-long v7, v10

    add-long/2addr v3, v7

    move v5, v9

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    const/4 p0, 0x0

    if-eqz v5, :cond_9

    if-eqz v6, :cond_8

    const-wide/16 p0, -0x1

    mul-long/2addr v3, p0

    .line 250
    :cond_8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 251
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_9
    return-object p0
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 0

    .line 102
    iput p1, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 0

    .line 112
    iput p1, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    return-void
.end method

.method public setParsePositiveOnly(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    return-void
.end method

.method public setZeroDigit(C)V
    .locals 4

    .line 130
    iput-char p1, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    .line 131
    iget-object v0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    const/16 v1, 0xa

    if-nez v0, :cond_0

    new-array v0, v1, [C

    .line 132
    iput-object v0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    const/4 v2, 0x0

    aput-char p1, v0, v2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 136
    iget-object v2, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    add-int v3, p1, v0

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
