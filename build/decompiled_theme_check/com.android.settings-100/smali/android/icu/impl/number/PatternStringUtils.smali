.class public Landroid/icu/impl/number/PatternStringUtils;
.super Ljava/lang/Object;
.source "PatternStringUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertLocalized(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Z)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v1, 0x15

    const/4 v2, 0x2

    .line 266
    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    xor-int/lit8 v3, p2, 0x1

    const/4 v4, 0x0

    .line 269
    aget-object v5, v1, v4

    const-string v6, "%"

    aput-object v6, v5, v3

    .line 270
    aget-object v5, v1, v4

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p2

    const/4 v5, 0x1

    .line 271
    aget-object v6, v1, v5

    const-string/jumbo v7, "\u2030"

    aput-object v7, v6, v3

    .line 272
    aget-object v6, v1, v5

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p2

    .line 273
    aget-object v6, v1, v2

    const-string v7, "."

    aput-object v7, v6, v3

    .line 274
    aget-object v6, v1, v2

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p2

    const/4 v6, 0x3

    .line 275
    aget-object v7, v1, v6

    const-string v8, ","

    aput-object v8, v7, v3

    .line 276
    aget-object v7, v1, v6

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, p2

    const/4 v7, 0x4

    .line 277
    aget-object v8, v1, v7

    const-string v9, "-"

    aput-object v9, v8, v3

    .line 278
    aget-object v8, v1, v7

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, p2

    const/4 v8, 0x5

    .line 279
    aget-object v9, v1, v8

    const-string v10, "+"

    aput-object v10, v9, v3

    .line 280
    aget-object v9, v1, v8

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, p2

    const/4 v9, 0x6

    .line 281
    aget-object v10, v1, v9

    const-string v11, ";"

    aput-object v11, v10, v3

    .line 282
    aget-object v9, v1, v9

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, p2

    const/4 v9, 0x7

    .line 283
    aget-object v10, v1, v9

    const-string v11, "@"

    aput-object v11, v10, v3

    .line 284
    aget-object v9, v1, v9

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getSignificantDigit()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, p2

    const/16 v9, 0x8

    .line 285
    aget-object v10, v1, v9

    const-string v11, "E"

    aput-object v11, v10, v3

    .line 286
    aget-object v9, v1, v9

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, p2

    const/16 v9, 0x9

    .line 287
    aget-object v10, v1, v9

    const-string v11, "*"

    aput-object v11, v10, v3

    .line 288
    aget-object v9, v1, v9

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getPadEscape()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, p2

    const/16 v9, 0xa

    .line 289
    aget-object v10, v1, v9

    const-string v11, "#"

    aput-object v11, v10, v3

    .line 290
    aget-object v10, v1, v9

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, p2

    move v10, v4

    :goto_0
    if-ge v10, v9, :cond_1

    add-int/lit8 v11, v10, 0xb

    .line 292
    aget-object v12, v1, v11

    add-int/lit8 v13, v10, 0x30

    int-to-char v13, v13

    invoke-static {v13}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v3

    .line 293
    aget-object v11, v1, v11

    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v10

    aput-object v12, v11, p2

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 298
    :goto_1
    array-length v9, v1

    const/16 v10, 0x27

    if-ge v3, v9, :cond_2

    .line 299
    aget-object v9, v1, v3

    aget-object v11, v1, v3

    aget-object v11, v11, p2

    const/16 v12, 0x2019

    invoke-virtual {v11, v10, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 312
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v9, v4

    move v11, v9

    .line 314
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v9, v12, :cond_14

    .line 315
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v10, :cond_8

    if-nez v11, :cond_3

    .line 320
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move v11, v5

    goto/16 :goto_d

    :cond_3
    if-ne v11, v5, :cond_4

    .line 324
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v11, v4

    goto/16 :goto_d

    :cond_4
    if-ne v11, v2, :cond_5

    move v11, v6

    goto/16 :goto_d

    :cond_5
    if-ne v11, v6, :cond_6

    .line 331
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    if-ne v11, v7, :cond_7

    move v11, v8

    goto/16 :goto_d

    .line 340
    :cond_7
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v11, v7

    goto/16 :goto_d

    :cond_8
    if-eqz v11, :cond_a

    if-eq v11, v6, :cond_a

    if-ne v11, v7, :cond_9

    goto :goto_5

    .line 380
    :cond_9
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    move v11, v2

    goto/16 :goto_d

    .line 348
    :cond_a
    :goto_5
    array-length v13, v1

    move v14, v4

    :goto_6
    if-ge v14, v13, :cond_e

    aget-object v15, v1, v14

    .line 350
    aget-object v2, v15, v4

    aget-object v16, v15, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v9, v2, v4, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 352
    aget-object v2, v15, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    add-int/2addr v9, v2

    if-eq v11, v6, :cond_c

    if-ne v11, v7, :cond_b

    goto :goto_7

    :cond_b
    move v2, v11

    goto :goto_8

    .line 354
    :cond_c
    :goto_7
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v4

    .line 357
    :goto_8
    aget-object v8, v15, v5

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x2

    const/4 v8, 0x5

    goto :goto_6

    .line 362
    :cond_e
    array-length v2, v1

    move v8, v4

    :goto_9
    if-ge v8, v2, :cond_11

    aget-object v13, v1, v8

    .line 363
    aget-object v14, v13, v5

    aget-object v13, v13, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v0, v9, v14, v4, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v13

    if-eqz v13, :cond_10

    if-nez v11, :cond_f

    .line 365
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v7

    goto :goto_a

    :cond_f
    move v2, v11

    .line 368
    :goto_a
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_11
    if-eq v11, v6, :cond_13

    if-ne v11, v7, :cond_12

    goto :goto_b

    :cond_12
    move v2, v11

    goto :goto_c

    .line 374
    :cond_13
    :goto_b
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v4

    .line 377
    :goto_c
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :goto_d
    add-int/2addr v9, v5

    const/4 v2, 0x2

    const/4 v8, 0x5

    goto/16 :goto_2

    :cond_14
    if-eq v11, v6, :cond_16

    if-ne v11, v7, :cond_15

    goto :goto_e

    :cond_15
    move v4, v11

    goto :goto_f

    .line 386
    :cond_16
    :goto_e
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_f
    if-nez v4, :cond_17

    .line 392
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 390
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed localized pattern: unterminated quote"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I
    .locals 7

    if-eqz p0, :cond_0

    .line 208
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, " "

    .line 210
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 211
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "\'\'"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const-string v1, "\'"

    .line 212
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {p1, p2, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 215
    :cond_2
    invoke-virtual {p1, p2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v1, 0x27

    .line 218
    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 220
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 222
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_4

    add-int v5, p2, v3

    .line 224
    invoke-virtual {p1, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_4
    add-int v6, p2, v3

    .line 227
    invoke-virtual {p1, v6, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    add-int/2addr p2, v3

    .line 231
    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 233
    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public static propertiesToPatternString(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/lang/String;
    .locals 28

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSecondaryGroupingSize()I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getFormatWidth()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadPosition()Landroid/icu/impl/number/Padder$PadPosition;

    move-result-object v5

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadString()Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v9

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v10

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v11

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v12

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v13

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v14

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v15

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getExponentSignAlwaysShown()Z

    move-result v16

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositivePrefix()Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v6

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v5

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v5

    move/from16 v19, v4

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativePrefix()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v4

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v4

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_0
    invoke-static {v8, v0}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v8, -0x1

    move/from16 v24, v2

    move-object/from16 v23, v4

    const/16 v4, 0x64

    .line 66
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eq v3, v2, :cond_1

    if-eq v1, v3, :cond_1

    move v2, v1

    goto :goto_1

    .line 71
    :cond_1
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eq v1, v2, :cond_2

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 75
    :cond_2
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eq v3, v2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    add-int/2addr v1, v3

    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v4

    move-object/from16 v25, v6

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v5

    move/from16 v27, v15

    const/16 v5, 0x64

    .line 90
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/16 v5, 0x2d

    const/16 v8, 0x23

    if-eq v13, v15, :cond_5

    .line 92
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v12, :cond_4

    const/16 v4, 0x40

    .line 93
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 95
    :cond_4
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v13, :cond_7

    .line 96
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_7

    .line 100
    invoke-virtual {v4}, Ljava/math/BigDecimal;->scale()I

    move-result v12

    neg-int v12, v12

    .line 102
    invoke-virtual {v4}, Ljava/math/BigDecimal;->scale()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    .line 103
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-ne v15, v5, :cond_6

    .line 105
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x1

    invoke-virtual {v6, v4, v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 107
    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    .line 110
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v12

    const/16 v13, 0x30

    if-ge v4, v7, :cond_8

    const/4 v4, 0x0

    .line 111
    invoke-virtual {v6, v4, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    :goto_5
    neg-int v4, v12

    if-ge v4, v10, :cond_9

    .line 114
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    .line 119
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v12

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v4, 0x64

    if-eq v9, v4, :cond_a

    .line 120
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_a
    const/4 v7, 0x1

    sub-int/2addr v1, v7

    if-eq v11, v4, :cond_b

    neg-int v4, v11

    .line 121
    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_6

    :cond_b
    move v4, v12

    :goto_6
    if-lt v1, v4, :cond_12

    .line 123
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v7, v12

    sub-int/2addr v7, v1

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    if-ltz v7, :cond_d

    .line 124
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lt v7, v9, :cond_c

    goto :goto_7

    .line 127
    :cond_c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 125
    :cond_d
    :goto_7
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_8
    const/16 v7, 0x2c

    if-le v1, v3, :cond_e

    if-lez v2, :cond_e

    sub-int v9, v1, v3

    .line 129
    rem-int/2addr v9, v2

    if-nez v9, :cond_e

    .line 130
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_e
    if-lez v1, :cond_f

    if-ne v1, v3, :cond_f

    .line 132
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_f
    if-nez v1, :cond_11

    if-nez v14, :cond_10

    if-gez v4, :cond_11

    :cond_10
    const/16 v7, 0x2e

    .line 134
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_11
    :goto_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_12
    const/4 v1, -0x1

    const/16 v7, 0x64

    .line 139
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v1, v27

    if-eq v1, v2, :cond_14

    const/16 v2, 0x45

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_13

    const/16 v2, 0x2b

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    .line 145
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 150
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v26, :cond_15

    move-object/from16 v2, v26

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    move-object/from16 v2, v25

    .line 154
    invoke-static {v2, v0}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    move/from16 v2, v19

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    .line 158
    :goto_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int v4, v2, v3

    if-lez v4, :cond_16

    move/from16 v3, v24

    .line 159
    invoke-virtual {v0, v3, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_16
    move/from16 v3, v24

    .line 163
    sget-object v2, Landroid/icu/impl/number/PatternStringUtils$1;->$SwitchMap$android$icu$impl$number$Padder$PadPosition:[I

    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/number/Padder$PadPosition;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/16 v4, 0x2a

    const/4 v6, 0x1

    if-eq v2, v6, :cond_1a

    const/4 v6, 0x2

    if-eq v2, v6, :cond_19

    const/4 v6, 0x3

    if-eq v2, v6, :cond_18

    const/4 v6, 0x4

    if-eq v2, v6, :cond_17

    goto :goto_c

    .line 181
    :cond_17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    move-object/from16 v6, v17

    invoke-static {v6, v0, v2}, Landroid/icu/impl/number/PatternStringUtils;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    goto :goto_c

    :cond_18
    move-object/from16 v6, v17

    .line 177
    invoke-static {v6, v0, v1}, Landroid/icu/impl/number/PatternStringUtils;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    .line 178
    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_19
    move-object/from16 v6, v17

    .line 171
    invoke-static {v6, v0, v3}, Landroid/icu/impl/number/PatternStringUtils;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    move-result v2

    .line 172
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    add-int/2addr v2, v7

    add-int/2addr v3, v2

    add-int/2addr v1, v2

    goto :goto_c

    :cond_1a
    move v7, v6

    move-object/from16 v6, v17

    const/4 v2, 0x0

    .line 165
    invoke-static {v6, v0, v2}, Landroid/icu/impl/number/PatternStringUtils;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    move-result v6

    .line 166
    invoke-virtual {v0, v2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/2addr v6, v7

    add-int v2, v3, v6

    add-int/2addr v1, v6

    move v3, v2

    goto :goto_c

    :cond_1b
    move/from16 v3, v24

    :goto_c
    if-nez v20, :cond_1d

    if-nez v22, :cond_1d

    if-nez v21, :cond_1c

    if-nez v23, :cond_1d

    :cond_1c
    if-eqz v21, :cond_21

    .line 190
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    move-object/from16 v2, v21

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_1e

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_21

    goto :goto_d

    :cond_1d
    move-object/from16 v2, v21

    :cond_1e
    :goto_d
    const/16 v4, 0x3b

    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1f

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    move-object/from16 v2, v20

    .line 194
    invoke-static {v2, v0}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 197
    invoke-virtual {v0, v0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-eqz v23, :cond_20

    move-object/from16 v1, v23

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    move-object/from16 v1, v22

    .line 200
    invoke-static {v1, v0}, Landroid/icu/impl/number/AffixUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 203
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
