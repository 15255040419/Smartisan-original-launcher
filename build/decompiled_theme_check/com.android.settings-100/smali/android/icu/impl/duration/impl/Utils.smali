.class public Landroid/icu/impl/duration/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/duration/impl/Utils$ChineseDigits;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chineseNumber(JLandroid/icu/impl/duration/impl/Utils$ChineseDigits;)Ljava/lang/String;
    .locals 16

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    neg-long v0, v0

    :cond_0
    const-wide/16 v3, 0xa

    cmp-long v3, v0, v3

    if-gtz v3, :cond_2

    const-wide/16 v3, 0x2

    cmp-long v3, v0, v3

    if-nez v3, :cond_1

    .line 64
    iget-char v0, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :cond_1
    iget-object v2, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    long-to-int v0, v0

    aget-char v0, v2, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v3, 0x28

    new-array v3, v3, [C

    .line 71
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 78
    array-length v5, v3

    .line 79
    array-length v6, v4

    const/4 v7, -0x1

    const/4 v9, 0x1

    move v10, v5

    move v5, v7

    move v11, v5

    move v12, v9

    const/4 v13, 0x0

    :goto_0
    add-int/2addr v6, v7

    const/16 v14, 0x30

    const/4 v15, 0x3

    if-ltz v6, :cond_b

    if-ne v5, v7, :cond_4

    if-eq v11, v7, :cond_3

    add-int/lit8 v10, v10, -0x1

    .line 82
    iget-object v12, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->levels:[C

    aget-char v12, v12, v11

    aput-char v12, v3, v10

    move v12, v9

    const/4 v13, 0x0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v10, v10, -0x1

    .line 88
    iget-object v7, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    add-int/lit8 v8, v5, 0x1

    aget-char v5, v7, v5

    aput-char v5, v3, v10

    if-ne v8, v15, :cond_5

    add-int/lit8 v11, v11, 0x1

    move v8, v12

    const/4 v5, -0x1

    goto :goto_2

    :cond_5
    move v5, v8

    :goto_1
    move v8, v12

    .line 94
    :goto_2
    aget-char v7, v4, v6

    sub-int/2addr v7, v14

    if-nez v7, :cond_a

    .line 96
    array-length v7, v3

    sub-int/2addr v7, v9

    if-ge v10, v7, :cond_6

    if-eqz v5, :cond_6

    const/16 v7, 0x2a

    .line 97
    aput-char v7, v3, v10

    :cond_6
    if-nez v8, :cond_9

    if-eqz v13, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v10, -0x1

    .line 102
    iget-object v7, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v8, 0x0

    aget-char v7, v7, v8

    aput-char v7, v3, v10

    if-ne v5, v9, :cond_8

    move v7, v9

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    move v13, v7

    move v12, v9

    goto :goto_5

    :cond_9
    :goto_4
    add-int/lit8 v10, v10, -0x1

    const/16 v7, 0x2a

    .line 100
    aput-char v7, v3, v10

    move v12, v8

    goto :goto_5

    :cond_a
    add-int/lit8 v10, v10, -0x1

    .line 108
    iget-object v8, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v7, v8, v7

    aput-char v7, v3, v10

    const/4 v12, 0x0

    :goto_5
    const/4 v7, -0x1

    goto :goto_0

    :cond_b
    const-wide/32 v4, 0xf4240

    cmp-long v4, v0, v4

    if-lez v4, :cond_15

    .line 117
    array-length v4, v3

    sub-int/2addr v4, v15

    move v5, v9

    .line 119
    :cond_c
    aget-char v6, v3, v4

    if-ne v6, v14, :cond_d

    goto :goto_6

    :cond_d
    add-int/lit8 v4, v4, -0x8

    xor-int/lit8 v5, v5, 0x1

    if-gt v4, v10, :cond_c

    .line 126
    :goto_6
    array-length v4, v3

    add-int/lit8 v4, v4, -0x7

    .line 128
    :cond_e
    aget-char v6, v3, v4

    iget-object v7, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v8, 0x0

    aget-char v7, v7, v8

    if-ne v6, v7, :cond_f

    if-nez v5, :cond_f

    const/16 v6, 0x2a

    .line 129
    aput-char v6, v3, v4

    :cond_f
    add-int/lit8 v4, v4, -0x8

    xor-int/lit8 v5, v5, 0x1

    if-gt v4, v10, :cond_e

    const-wide/32 v4, 0x5f5e100

    cmp-long v0, v0, v4

    if-ltz v0, :cond_15

    .line 137
    array-length v0, v3

    add-int/lit8 v0, v0, -0x8

    :cond_10
    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v4, v10, -0x1

    add-int/lit8 v5, v0, -0x8

    .line 140
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_7
    if-le v1, v4, :cond_12

    .line 141
    aget-char v5, v3, v1

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_11

    const/4 v1, 0x0

    goto :goto_8

    :cond_11
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_12
    const/16 v6, 0x2a

    move v1, v9

    :goto_8
    if-eqz v1, :cond_14

    add-int/lit8 v1, v0, 0x1

    .line 147
    aget-char v4, v3, v1

    if-eq v4, v6, :cond_13

    aget-char v1, v3, v1

    iget-object v4, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v5, 0x0

    aget-char v4, v4, v5

    if-eq v1, v4, :cond_13

    .line 148
    iget-object v1, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v1, v1, v5

    aput-char v1, v3, v0

    goto :goto_9

    .line 150
    :cond_13
    aput-char v6, v3, v0

    :cond_14
    :goto_9
    add-int/lit8 v0, v0, -0x8

    if-gt v0, v10, :cond_10

    :cond_15
    move v0, v10

    .line 159
    :goto_a
    array-length v1, v3

    if-ge v0, v1, :cond_1b

    .line 160
    aget-char v1, v3, v0

    iget-object v4, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    const/4 v5, 0x2

    aget-char v4, v4, v5

    if-eq v1, v4, :cond_16

    goto :goto_b

    .line 161
    :cond_16
    array-length v1, v3

    sub-int/2addr v1, v9

    if-ge v0, v1, :cond_17

    add-int/lit8 v1, v0, 0x1

    aget-char v1, v3, v1

    iget-object v4, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    const/4 v5, 0x0

    aget-char v4, v4, v5

    if-ne v1, v4, :cond_18

    goto :goto_b

    :cond_17
    const/4 v5, 0x0

    :cond_18
    if-le v0, v10, :cond_19

    add-int/lit8 v1, v0, -0x1

    .line 162
    aget-char v4, v3, v1

    iget-object v6, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    aget-char v6, v6, v5

    if-eq v4, v6, :cond_1a

    aget-char v4, v3, v1

    iget-object v6, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v6, v6, v5

    if-eq v4, v6, :cond_1a

    aget-char v1, v3, v1

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_19

    goto :goto_b

    .line 164
    :cond_19
    iget-char v1, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    aput-char v1, v3, v0

    :cond_1a
    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 168
    :cond_1b
    aget-char v0, v3, v10

    iget-object v1, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    aget-char v1, v1, v9

    if-ne v0, v1, :cond_1d

    iget-boolean v0, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->ko:Z

    if-nez v0, :cond_1c

    add-int/lit8 v0, v10, 0x1

    aget-char v0, v3, v0

    iget-object v1, v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    const/4 v2, 0x0

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_1d

    :cond_1c
    add-int/lit8 v10, v10, 0x1

    :cond_1d
    move v0, v10

    move v1, v0

    .line 174
    :goto_c
    array-length v2, v3

    if-ge v0, v2, :cond_1f

    .line 175
    aget-char v2, v3, v0

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1e

    add-int/lit8 v2, v1, 0x1

    .line 176
    aget-char v5, v3, v0

    aput-char v5, v3, v1

    move v1, v2

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 179
    :cond_1f
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v1, v10

    invoke-direct {v0, v3, v10, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static final localeFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6

    const-string v0, "_"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, ""

    if-eq v1, v3, :cond_0

    add-int/lit8 v5, v1, 0x1

    .line 26
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 27
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 29
    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 31
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 32
    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 34
    :cond_1
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0, v5, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
