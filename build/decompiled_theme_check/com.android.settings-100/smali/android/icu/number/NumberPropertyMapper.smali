.class final Landroid/icu/number/NumberPropertyMapper;
.super Ljava/lang/Object;
.source "NumberPropertyMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;,
        Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/number/UnlocalizedNumberFormatter;
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, p1, v0}, Landroid/icu/number/NumberPropertyMapper;->oldToNew(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/MacroProps;

    move-result-object p0

    .line 42
    invoke-static {}, Landroid/icu/number/NumberFormatter;->with()Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/number/UnlocalizedNumberFormatter;->macros(Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object p0

    check-cast p0, Landroid/icu/number/UnlocalizedNumberFormatter;

    return-object p0
.end method

.method public static create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/number/UnlocalizedNumberFormatter;
    .locals 0

    .line 50
    invoke-static {p0}, Landroid/icu/impl/number/PatternStringParser;->parseToProperties(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object p0

    .line 51
    invoke-static {p0, p1}, Landroid/icu/number/NumberPropertyMapper;->create(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static oldToNew(Landroid/icu/impl/number/DecimalFormatProperties;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/MacroProps;
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 69
    new-instance v2, Landroid/icu/impl/number/MacroProps;

    invoke-direct {v2}, Landroid/icu/impl/number/MacroProps;-><init>()V

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v3

    .line 76
    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPluralRules()Landroid/icu/text/PluralRules;

    move-result-object v4

    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v4

    if-nez v4, :cond_0

    .line 90
    new-instance v4, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Landroid/icu/number/NumberPropertyMapper$PropertiesAffixPatternProvider;-><init>(Landroid/icu/impl/number/DecimalFormatProperties;)V

    goto :goto_0

    :cond_0
    move-object/from16 v5, p0

    .line 92
    new-instance v4, Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/icu/number/NumberPropertyMapper$CurrencyPluralInfoAffixProvider;-><init>(Landroid/icu/text/CurrencyPluralInfo;)V

    .line 94
    :goto_0
    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;

    move-result-object v6

    if-nez v6, :cond_2

    .line 101
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-interface {v4}, Landroid/icu/impl/number/AffixPatternProvider;->hasCurrencySign()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 102
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v6

    invoke-static {v6, v3, v0}, Landroid/icu/impl/number/CustomSymbolCurrency;->resolve(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/util/Currency;

    move-result-object v0

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_4

    .line 106
    sget-object v3, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    :cond_4
    if-eqz v4, :cond_5

    .line 109
    iput-object v0, v2, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 116
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v9

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v10

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v11

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v12

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v13

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v14

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v15

    .line 123
    invoke-static/range {p0 .. p0}, Landroid/icu/impl/number/RoundingUtils;->getMathContextOrUnlimited(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/math/MathContext;

    move-result-object v7

    const/4 v8, -0x1

    if-ne v12, v8, :cond_7

    if-eq v11, v8, :cond_6

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/16 v17, 0x1

    :goto_5
    if-ne v13, v8, :cond_9

    if-eq v14, v8, :cond_8

    goto :goto_6

    :cond_8
    const/16 v18, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/16 v18, 0x1

    :goto_7
    if-eqz v4, :cond_c

    if-ne v12, v8, :cond_a

    if-ne v11, v8, :cond_a

    .line 131
    invoke-virtual {v0, v3}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v11

    .line 132
    invoke-virtual {v0, v3}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v12

    move/from16 v20, v12

    move v12, v11

    move/from16 v11, v20

    goto :goto_8

    :cond_a
    if-ne v12, v8, :cond_b

    .line 134
    invoke-virtual {v0, v3}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_8

    :cond_b
    if-ne v11, v8, :cond_c

    .line 136
    invoke-virtual {v0, v3}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v11

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_c
    :goto_8
    const v19, 0x7fffffff

    const/16 v8, 0x64

    if-nez v10, :cond_12

    if-eqz v11, :cond_12

    if-gtz v12, :cond_d

    const/4 v12, 0x1

    :cond_d
    if-gez v11, :cond_e

    move/from16 v11, v19

    goto :goto_9

    :cond_e
    if-ge v11, v12, :cond_f

    move v11, v12

    :cond_f
    :goto_9
    if-gez v9, :cond_10

    :goto_a
    const/4 v9, -0x1

    goto :goto_b

    :cond_10
    if-le v9, v8, :cond_11

    goto :goto_a

    :cond_11
    :goto_b
    const/4 v10, 0x0

    goto :goto_10

    :cond_12
    if-gez v12, :cond_13

    const/4 v12, 0x0

    :cond_13
    if-gez v11, :cond_14

    move/from16 v11, v19

    goto :goto_c

    :cond_14
    if-ge v11, v12, :cond_15

    move v11, v12

    :cond_15
    :goto_c
    if-gtz v10, :cond_16

    :goto_d
    const/4 v10, 0x1

    goto :goto_e

    :cond_16
    if-le v10, v8, :cond_17

    goto :goto_d

    :cond_17
    :goto_e
    if-gez v9, :cond_18

    :goto_f
    const/4 v9, -0x1

    goto :goto_10

    :cond_18
    if-ge v9, v10, :cond_19

    move v9, v10

    goto :goto_10

    :cond_19
    if-le v9, v8, :cond_1a

    goto :goto_f

    :cond_1a
    :goto_10
    if-eqz v6, :cond_1b

    .line 159
    invoke-static {v3}, Landroid/icu/number/Rounder;->constructCurrency(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/number/CurrencyRounder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/icu/number/CurrencyRounder;->withCurrency(Landroid/icu/util/Currency;)Landroid/icu/number/Rounder;

    move-result-object v3

    goto :goto_14

    :cond_1b
    if-eqz v15, :cond_1c

    .line 161
    invoke-static {v15}, Landroid/icu/number/Rounder;->constructIncrement(Ljava/math/BigDecimal;)Landroid/icu/number/Rounder;

    move-result-object v3

    goto :goto_14

    :cond_1c
    if-eqz v18, :cond_22

    const/4 v6, 0x1

    const/16 v3, 0x64

    if-ge v13, v6, :cond_1d

    const/4 v13, 0x1

    goto :goto_11

    :cond_1d
    if-le v13, v3, :cond_1e

    move v13, v3

    :cond_1e
    :goto_11
    if-gez v14, :cond_1f

    :goto_12
    move v14, v3

    goto :goto_13

    :cond_1f
    if-ge v14, v13, :cond_20

    move v14, v13

    goto :goto_13

    :cond_20
    if-le v14, v3, :cond_21

    goto :goto_12

    .line 167
    :cond_21
    :goto_13
    invoke-static {v13, v14}, Landroid/icu/number/Rounder;->constructSignificant(II)Landroid/icu/number/Rounder;

    move-result-object v3

    goto :goto_14

    :cond_22
    if-eqz v17, :cond_23

    .line 169
    invoke-static {v12, v11}, Landroid/icu/number/Rounder;->constructFraction(II)Landroid/icu/number/FractionRounder;

    move-result-object v3

    goto :goto_14

    :cond_23
    if-eqz v4, :cond_24

    .line 171
    invoke-static {v3}, Landroid/icu/number/Rounder;->constructCurrency(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/number/CurrencyRounder;

    move-result-object v3

    goto :goto_14

    :cond_24
    const/4 v3, 0x0

    :goto_14
    if-eqz v3, :cond_25

    .line 174
    invoke-virtual {v3, v7}, Landroid/icu/number/Rounder;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Rounder;

    move-result-object v3

    .line 175
    iput-object v3, v2, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    .line 182
    :cond_25
    invoke-static {v10}, Landroid/icu/number/IntegerWidth;->zeroFillTo(I)Landroid/icu/number/IntegerWidth;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/icu/number/IntegerWidth;->truncateAt(I)Landroid/icu/number/IntegerWidth;

    move-result-object v4

    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 188
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v4

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSecondaryGroupingSize()I

    move-result v6

    .line 190
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumGroupingDigits()I

    move-result v15

    if-lez v4, :cond_26

    goto :goto_15

    :cond_26
    if-lez v6, :cond_27

    move v4, v6

    :cond_27
    :goto_15
    if-lez v6, :cond_28

    goto :goto_16

    :cond_28
    move v6, v4

    :goto_16
    int-to-byte v4, v4

    int-to-byte v6, v6

    const/4 v8, 0x2

    if-ne v15, v8, :cond_29

    const/4 v8, 0x1

    goto :goto_17

    :cond_29
    const/4 v8, 0x0

    .line 195
    :goto_17
    invoke-static {v4, v6, v8}, Landroid/icu/number/Grouper;->getInstance(BBZ)Landroid/icu/number/Grouper;

    move-result-object v4

    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->grouper:Landroid/icu/number/Grouper;

    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getFormatWidth()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2a

    .line 202
    new-instance v4, Landroid/icu/impl/number/Padder;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getFormatWidth()I

    move-result v8

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getPadPosition()Landroid/icu/impl/number/Padder$PadPosition;

    move-result-object v15

    invoke-direct {v4, v6, v8, v15}, Landroid/icu/impl/number/Padder;-><init>(Ljava/lang/String;ILandroid/icu/impl/number/Padder$PadPosition;)V

    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    .line 210
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v4

    if-eqz v4, :cond_2b

    sget-object v4, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    goto :goto_18

    .line 211
    :cond_2b
    sget-object v4, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    :goto_18
    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getSignAlwaysShown()Z

    move-result v4

    if-eqz v4, :cond_2c

    sget-object v4, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    goto :goto_19

    :cond_2c
    sget-object v4, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    :goto_19
    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 223
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_34

    const/16 v4, 0x8

    if-le v9, v4, :cond_2d

    .line 231
    invoke-static {v10}, Landroid/icu/number/IntegerWidth;->zeroFillTo(I)Landroid/icu/number/IntegerWidth;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/icu/number/IntegerWidth;->truncateAt(I)Landroid/icu/number/IntegerWidth;

    move-result-object v4

    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    move v8, v10

    goto :goto_1a

    :cond_2d
    if-le v9, v10, :cond_2e

    const/4 v4, 0x1

    if-le v10, v4, :cond_2e

    .line 235
    invoke-static {v4}, Landroid/icu/number/IntegerWidth;->zeroFillTo(I)Landroid/icu/number/IntegerWidth;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/icu/number/IntegerWidth;->truncateAt(I)Landroid/icu/number/IntegerWidth;

    move-result-object v4

    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    move v8, v9

    const/4 v10, 0x1

    goto :goto_1a

    :cond_2e
    move v8, v9

    :goto_1a
    if-gez v8, :cond_2f

    const/4 v4, -0x1

    goto :goto_1b

    :cond_2f
    move v4, v8

    .line 238
    :goto_1b
    new-instance v6, Landroid/icu/number/ScientificNotation;

    if-ne v4, v10, :cond_30

    const/4 v9, 0x1

    goto :goto_1c

    :cond_30
    const/4 v9, 0x0

    .line 244
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v15

    .line 246
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getExponentSignAlwaysShown()Z

    move-result v16

    if-eqz v16, :cond_31

    sget-object v16, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    goto :goto_1d

    :cond_31
    sget-object v16, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    :goto_1d
    move-object/from16 v5, v16

    invoke-direct {v6, v4, v9, v15, v5}, Landroid/icu/number/ScientificNotation;-><init>(IZILandroid/icu/number/NumberFormatter$SignDisplay;)V

    iput-object v6, v2, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    .line 249
    iget-object v4, v2, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    instance-of v4, v4, Landroid/icu/number/FractionRounder;

    if-eqz v4, :cond_35

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v4

    .line 253
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v5

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v6

    if-nez v4, :cond_32

    if-nez v6, :cond_32

    .line 257
    invoke-static {}, Landroid/icu/number/Rounder;->constructInfinite()Landroid/icu/number/Rounder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/icu/number/Rounder;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Rounder;

    move-result-object v4

    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    goto :goto_1e

    :cond_32
    if-nez v4, :cond_33

    if-nez v5, :cond_33

    const/4 v9, 0x1

    add-int/2addr v6, v9

    .line 260
    invoke-static {v9, v6}, Landroid/icu/number/Rounder;->constructSignificant(II)Landroid/icu/number/Rounder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/icu/number/Rounder;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Rounder;

    move-result-object v4

    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    goto :goto_1e

    :cond_33
    add-int/2addr v5, v4

    add-int/2addr v4, v6

    .line 263
    invoke-static {v5, v4}, Landroid/icu/number/Rounder;->constructSignificant(II)Landroid/icu/number/Rounder;

    move-result-object v4

    .line 264
    invoke-virtual {v4, v7}, Landroid/icu/number/Rounder;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Rounder;

    move-result-object v4

    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    goto :goto_1e

    :cond_34
    move v8, v9

    .line 273
    :cond_35
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCompactStyle()Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCompactCustomData()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 275
    new-instance v4, Landroid/icu/number/CompactNotation;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCompactCustomData()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/icu/number/CompactNotation;-><init>(Ljava/util/Map;)V

    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    :goto_1f
    const/4 v4, 0x0

    goto :goto_20

    .line 276
    :cond_36
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getCompactStyle()Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    move-result-object v4

    sget-object v5, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    if-ne v4, v5, :cond_37

    .line 277
    invoke-static {}, Landroid/icu/number/Notation;->compactLong()Landroid/icu/number/CompactNotation;

    move-result-object v4

    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    goto :goto_1f

    .line 279
    :cond_37
    invoke-static {}, Landroid/icu/number/Notation;->compactShort()Landroid/icu/number/CompactNotation;

    move-result-object v4

    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    goto :goto_1f

    .line 282
    :goto_20
    iput-object v4, v2, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    goto :goto_21

    :cond_38
    const/4 v4, 0x0

    .line 289
    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMagnitudeMultiplier()I

    move-result v5

    if-eqz v5, :cond_39

    .line 290
    new-instance v5, Landroid/icu/impl/number/MultiplierImpl;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMagnitudeMultiplier()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/icu/impl/number/MultiplierImpl;-><init>(I)V

    iput-object v5, v2, Landroid/icu/impl/number/MacroProps;->multiplier:Landroid/icu/impl/number/MultiplierImpl;

    goto :goto_22

    .line 291
    :cond_39
    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 292
    new-instance v5, Landroid/icu/impl/number/MultiplierImpl;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/icu/impl/number/MultiplierImpl;-><init>(Ljava/math/BigDecimal;)V

    iput-object v5, v2, Landroid/icu/impl/number/MacroProps;->multiplier:Landroid/icu/impl/number/MultiplierImpl;

    :cond_3a
    :goto_22
    if-eqz v1, :cond_40

    .line 301
    invoke-virtual {v1, v7}, Landroid/icu/impl/number/DecimalFormatProperties;->setMathContext(Ljava/math/MathContext;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 302
    invoke-virtual {v7}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingMode(Ljava/math/RoundingMode;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 303
    invoke-virtual {v1, v10}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 v5, -0x1

    if-ne v8, v5, :cond_3b

    move/from16 v8, v19

    .line 304
    :cond_3b
    invoke-virtual {v1, v8}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 307
    instance-of v5, v3, Landroid/icu/number/CurrencyRounder;

    if-eqz v5, :cond_3c

    .line 308
    check-cast v3, Landroid/icu/number/CurrencyRounder;

    invoke-virtual {v3, v0}, Landroid/icu/number/CurrencyRounder;->withCurrency(Landroid/icu/util/Currency;)Landroid/icu/number/Rounder;

    move-result-object v3

    .line 317
    :cond_3c
    instance-of v0, v3, Landroid/icu/number/Rounder$FractionRounderImpl;

    if-eqz v0, :cond_3d

    .line 318
    check-cast v3, Landroid/icu/number/Rounder$FractionRounderImpl;

    iget v12, v3, Landroid/icu/number/Rounder$FractionRounderImpl;->minFrac:I

    .line 319
    iget v11, v3, Landroid/icu/number/Rounder$FractionRounderImpl;->maxFrac:I

    goto :goto_23

    .line 320
    :cond_3d
    instance-of v0, v3, Landroid/icu/number/Rounder$IncrementRounderImpl;

    if-eqz v0, :cond_3e

    .line 321
    check-cast v3, Landroid/icu/number/Rounder$IncrementRounderImpl;

    iget-object v8, v3, Landroid/icu/number/Rounder$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    .line 322
    invoke-virtual {v8}, Ljava/math/BigDecimal;->scale()I

    move-result v12

    .line 323
    invoke-virtual {v8}, Ljava/math/BigDecimal;->scale()I

    move-result v11

    move-object v4, v8

    goto :goto_23

    .line 324
    :cond_3e
    instance-of v0, v3, Landroid/icu/number/Rounder$SignificantRounderImpl;

    if-eqz v0, :cond_3f

    .line 325
    check-cast v3, Landroid/icu/number/Rounder$SignificantRounderImpl;

    iget v13, v3, Landroid/icu/number/Rounder$SignificantRounderImpl;->minSig:I

    .line 326
    iget v14, v3, Landroid/icu/number/Rounder$SignificantRounderImpl;->maxSig:I

    .line 329
    :cond_3f
    :goto_23
    invoke-virtual {v1, v12}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 330
    invoke-virtual {v1, v11}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 331
    invoke-virtual {v1, v13}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 332
    invoke-virtual {v1, v14}, Landroid/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 333
    invoke-virtual {v1, v4}, Landroid/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;

    :cond_40
    return-object v2
.end method
