.class Landroid/icu/number/NumberFormatterImpl;
.super Ljava/lang/Object;
.source "NumberFormatterImpl.java"


# static fields
.field private static final DEFAULT_CURRENCY:Landroid/icu/util/Currency;


# instance fields
.field final microPropsGenerator:Landroid/icu/impl/number/MicroPropsGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "XXX"

    .line 52
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v0

    sput-object v0, Landroid/icu/number/NumberFormatterImpl;->DEFAULT_CURRENCY:Landroid/icu/util/Currency;

    return-void
.end method

.method private constructor <init>(Landroid/icu/impl/number/MicroPropsGenerator;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/icu/number/NumberFormatterImpl;->microPropsGenerator:Landroid/icu/impl/number/MicroPropsGenerator;

    return-void
.end method

.method public static applyStatic(Landroid/icu/impl/number/MacroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)Landroid/icu/impl/number/MicroProps;
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-static {p0, v0}, Landroid/icu/number/NumberFormatterImpl;->macrosToMicroGenerator(Landroid/icu/impl/number/MacroProps;Z)Landroid/icu/impl/number/MicroPropsGenerator;

    move-result-object p0

    .line 47
    invoke-interface {p0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object p0

    .line 48
    invoke-static {p0, p1, p2}, Landroid/icu/number/NumberFormatterImpl;->microsToString(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)V

    return-object p0
.end method

.method public static fromMacros(Landroid/icu/impl/number/MacroProps;)Landroid/icu/number/NumberFormatterImpl;
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-static {p0, v0}, Landroid/icu/number/NumberFormatterImpl;->macrosToMicroGenerator(Landroid/icu/impl/number/MacroProps;Z)Landroid/icu/impl/number/MicroPropsGenerator;

    move-result-object p0

    .line 41
    new-instance v0, Landroid/icu/number/NumberFormatterImpl;

    invoke-direct {v0, p0}, Landroid/icu/number/NumberFormatterImpl;-><init>(Landroid/icu/impl/number/MicroPropsGenerator;)V

    return-object v0
.end method

.method private static macrosToMicroGenerator(Landroid/icu/impl/number/MacroProps;Z)Landroid/icu/impl/number/MicroPropsGenerator;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 101
    new-instance v2, Landroid/icu/impl/number/MicroProps;

    invoke-direct {v2, v1}, Landroid/icu/impl/number/MicroProps;-><init>(Z)V

    .line 108
    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v3}, Landroid/icu/number/NumberFormatterImpl;->unitIsCurrency(Landroid/icu/util/MeasureUnit;)Z

    move-result v3

    .line 109
    iget-object v4, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v4}, Landroid/icu/number/NumberFormatterImpl;->unitIsNoUnit(Landroid/icu/util/MeasureUnit;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 110
    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v7}, Landroid/icu/number/NumberFormatterImpl;->unitIsPercent(Landroid/icu/util/MeasureUnit;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-eqz v4, :cond_1

    .line 111
    iget-object v8, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v8}, Landroid/icu/number/NumberFormatterImpl;->unitIsPermille(Landroid/icu/util/MeasureUnit;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v5

    goto :goto_1

    :cond_1
    move v8, v6

    :goto_1
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v6

    .line 113
    :goto_2
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v10, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-eq v9, v10, :cond_4

    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v10, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-ne v9, v10, :cond_3

    goto :goto_3

    :cond_3
    move v9, v6

    goto :goto_4

    :cond_4
    :goto_3
    move v9, v5

    :goto_4
    if-eqz v3, :cond_5

    .line 114
    iget-object v10, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    check-cast v10, Landroid/icu/util/Currency;

    goto :goto_5

    :cond_5
    sget-object v10, Landroid/icu/number/NumberFormatterImpl;->DEFAULT_CURRENCY:Landroid/icu/util/Currency;

    .line 115
    :goto_5
    sget-object v11, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 116
    iget-object v12, v0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-eqz v12, :cond_6

    .line 117
    iget-object v11, v0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 119
    :cond_6
    iget-object v12, v0, Landroid/icu/impl/number/MacroProps;->rules:Landroid/icu/text/PluralRules;

    .line 123
    iget-object v13, v0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    instance-of v13, v13, Landroid/icu/text/NumberingSystem;

    if-eqz v13, :cond_7

    .line 124
    iget-object v13, v0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    check-cast v13, Landroid/icu/text/NumberingSystem;

    goto :goto_6

    .line 127
    :cond_7
    iget-object v13, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v13}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v13

    .line 129
    :goto_6
    invoke-virtual {v13}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v15

    if-nez v7, :cond_b

    if-eqz v8, :cond_8

    goto :goto_8

    :cond_8
    if-eqz v3, :cond_a

    .line 135
    sget-object v7, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne v11, v7, :cond_9

    goto :goto_7

    :cond_9
    if-eqz v9, :cond_c

    const/4 v5, 0x7

    goto :goto_9

    :cond_a
    :goto_7
    move v5, v6

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v5, 0x2

    .line 144
    :cond_c
    :goto_9
    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v7, v15, v5}, Landroid/icu/text/NumberFormat;->getPatternForStyleAndNumberingSystem(Landroid/icu/util/ULocale;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-static {v5}, Landroid/icu/impl/number/PatternStringParser;->parseToPatternInfo(Ljava/lang/String;)Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;

    move-result-object v5

    .line 152
    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    instance-of v7, v7, Landroid/icu/text/DecimalFormatSymbols;

    if-eqz v7, :cond_d

    .line 153
    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    check-cast v7, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v7, v2, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    goto :goto_a

    .line 155
    :cond_d
    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v7, v13}, Landroid/icu/text/DecimalFormatSymbols;->forNumberingSystem(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v7

    iput-object v7, v2, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 159
    :goto_a
    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->multiplier:Landroid/icu/impl/number/MultiplierImpl;

    if-eqz v7, :cond_e

    .line 160
    iget-object v7, v0, Landroid/icu/impl/number/MacroProps;->multiplier:Landroid/icu/impl/number/MultiplierImpl;

    invoke-virtual {v7, v2}, Landroid/icu/impl/number/MultiplierImpl;->copyAndChain(Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;

    move-result-object v7

    goto :goto_b

    :cond_e
    move-object v7, v2

    .line 164
    :goto_b
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    if-eqz v9, :cond_f

    .line 165
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->rounder:Landroid/icu/number/Rounder;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    goto :goto_c

    .line 166
    :cond_f
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    instance-of v9, v9, Landroid/icu/number/CompactNotation;

    if-eqz v9, :cond_10

    .line 167
    sget-object v9, Landroid/icu/number/Rounder;->COMPACT_STRATEGY:Landroid/icu/number/Rounder$FracSigRounderImpl;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    goto :goto_c

    :cond_10
    if-eqz v3, :cond_11

    .line 169
    sget-object v9, Landroid/icu/number/Rounder;->MONETARY_STANDARD:Landroid/icu/number/Rounder$CurrencyRounderImpl;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    goto :goto_c

    .line 171
    :cond_11
    sget-object v9, Landroid/icu/number/Rounder;->MAX_FRAC_6:Landroid/icu/number/Rounder$FractionRounderImpl;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    .line 173
    :goto_c
    iget-object v9, v2, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    invoke-virtual {v9, v10}, Landroid/icu/number/Rounder;->withLocaleData(Landroid/icu/util/Currency;)Landroid/icu/number/Rounder;

    move-result-object v9

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    .line 176
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->grouper:Landroid/icu/number/Grouper;

    if-eqz v9, :cond_12

    .line 177
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->grouper:Landroid/icu/number/Grouper;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/number/Grouper;

    goto :goto_d

    .line 178
    :cond_12
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    instance-of v9, v9, Landroid/icu/number/CompactNotation;

    if-eqz v9, :cond_13

    .line 180
    invoke-static {}, Landroid/icu/number/Grouper;->minTwoDigits()Landroid/icu/number/Grouper;

    move-result-object v9

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/number/Grouper;

    goto :goto_d

    .line 182
    :cond_13
    invoke-static {}, Landroid/icu/number/Grouper;->defaults()Landroid/icu/number/Grouper;

    move-result-object v9

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/number/Grouper;

    .line 184
    :goto_d
    iget-object v9, v2, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/number/Grouper;

    invoke-virtual {v9, v5}, Landroid/icu/number/Grouper;->withLocaleData(Landroid/icu/impl/number/PatternStringParser$ParsedPatternInfo;)Landroid/icu/number/Grouper;

    move-result-object v9

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/number/Grouper;

    .line 187
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    if-eqz v9, :cond_14

    .line 188
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->padder:Landroid/icu/impl/number/Padder;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->padding:Landroid/icu/impl/number/Padder;

    goto :goto_e

    .line 190
    :cond_14
    sget-object v9, Landroid/icu/impl/number/Padder;->NONE:Landroid/icu/impl/number/Padder;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->padding:Landroid/icu/impl/number/Padder;

    .line 194
    :goto_e
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    if-eqz v9, :cond_15

    .line 195
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    goto :goto_f

    .line 197
    :cond_15
    sget-object v9, Landroid/icu/number/IntegerWidth;->DEFAULT:Landroid/icu/number/IntegerWidth;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    .line 201
    :goto_f
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-eqz v9, :cond_16

    .line 202
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    goto :goto_10

    .line 204
    :cond_16
    sget-object v9, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 208
    :goto_10
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-eqz v9, :cond_17

    .line 209
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    goto :goto_11

    .line 211
    :cond_17
    sget-object v9, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    .line 215
    :goto_11
    iput-boolean v3, v2, Landroid/icu/impl/number/MicroProps;->useCurrency:Z

    .line 218
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    instance-of v9, v9, Landroid/icu/number/ScientificNotation;

    if-eqz v9, :cond_18

    .line 219
    iget-object v9, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    check-cast v9, Landroid/icu/number/ScientificNotation;

    iget-object v13, v2, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v9, v13, v1, v7}, Landroid/icu/number/ScientificNotation;->withLocaleData(Landroid/icu/text/DecimalFormatSymbols;ZLandroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;

    move-result-object v7

    goto :goto_12

    .line 222
    :cond_18
    sget-object v9, Landroid/icu/impl/number/ConstantAffixModifier;->EMPTY:Landroid/icu/impl/number/ConstantAffixModifier;

    iput-object v9, v2, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    .line 227
    :goto_12
    new-instance v9, Landroid/icu/impl/number/MutablePatternModifier;

    invoke-direct {v9, v6}, Landroid/icu/impl/number/MutablePatternModifier;-><init>(Z)V

    .line 228
    iget-object v6, v0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    if-eqz v6, :cond_19

    iget-object v5, v0, Landroid/icu/impl/number/MacroProps;->affixProvider:Landroid/icu/impl/number/AffixPatternProvider;

    :cond_19
    invoke-virtual {v9, v5}, Landroid/icu/impl/number/MutablePatternModifier;->setPatternInfo(Landroid/icu/impl/number/AffixPatternProvider;)V

    .line 229
    iget-object v5, v2, Landroid/icu/impl/number/MicroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v9, v5, v8}, Landroid/icu/impl/number/MutablePatternModifier;->setPatternAttributes(Landroid/icu/number/NumberFormatter$SignDisplay;Z)V

    .line 230
    invoke-virtual {v9}, Landroid/icu/impl/number/MutablePatternModifier;->needsPlurals()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1b

    if-nez v12, :cond_1a

    .line 233
    iget-object v5, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v5}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v12

    .line 235
    :cond_1a
    iget-object v5, v2, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v9, v5, v10, v11, v12}, Landroid/icu/impl/number/MutablePatternModifier;->setSymbols(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/util/Currency;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/text/PluralRules;)V

    goto :goto_13

    .line 237
    :cond_1b
    iget-object v5, v2, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v9, v5, v10, v11, v6}, Landroid/icu/impl/number/MutablePatternModifier;->setSymbols(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/util/Currency;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/text/PluralRules;)V

    :goto_13
    if-eqz v1, :cond_1c

    .line 240
    invoke-virtual {v9, v7}, Landroid/icu/impl/number/MutablePatternModifier;->createImmutableAndChain(Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MutablePatternModifier$ImmutablePatternModifier;

    move-result-object v5

    goto :goto_14

    .line 242
    :cond_1c
    invoke-virtual {v9, v7}, Landroid/icu/impl/number/MutablePatternModifier;->addToChain(Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;

    move-result-object v5

    :goto_14
    if-eqz v4, :cond_1e

    if-nez v12, :cond_1d

    .line 249
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v12

    .line 251
    :cond_1d
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    iget-object v3, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    invoke-static {v2, v3, v11, v12, v5}, Landroid/icu/impl/number/LongNameHandler;->forMeasureUnit(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameHandler;

    move-result-object v2

    :goto_15
    move-object/from16 v20, v2

    goto :goto_16

    :cond_1e
    if-eqz v3, :cond_20

    .line 252
    sget-object v3, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne v11, v3, :cond_20

    if-nez v12, :cond_1f

    .line 255
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v2

    move-object v12, v2

    .line 257
    :cond_1f
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v2, v10, v12, v5}, Landroid/icu/impl/number/LongNameHandler;->forCurrencyLongNames(Landroid/icu/util/ULocale;Landroid/icu/util/Currency;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/LongNameHandler;

    move-result-object v2

    goto :goto_15

    .line 260
    :cond_20
    sget-object v3, Landroid/icu/impl/number/ConstantAffixModifier;->EMPTY:Landroid/icu/impl/number/ConstantAffixModifier;

    iput-object v3, v2, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    move-object/from16 v20, v5

    .line 266
    :goto_16
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    instance-of v2, v2, Landroid/icu/number/CompactNotation;

    if-eqz v2, :cond_24

    if-nez v12, :cond_21

    .line 269
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    invoke-static {v2}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_17

    :cond_21
    move-object/from16 v18, v12

    .line 271
    :goto_17
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    instance-of v2, v2, Landroid/icu/util/Currency;

    if-eqz v2, :cond_22

    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v3, Landroid/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-eq v2, v3, :cond_22

    .line 272
    sget-object v2, Landroid/icu/impl/number/CompactData$CompactType;->CURRENCY:Landroid/icu/impl/number/CompactData$CompactType;

    goto :goto_18

    .line 273
    :cond_22
    sget-object v2, Landroid/icu/impl/number/CompactData$CompactType;->DECIMAL:Landroid/icu/impl/number/CompactData$CompactType;

    :goto_18
    move-object/from16 v17, v2

    .line 274
    iget-object v2, v0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    move-object v14, v2

    check-cast v14, Landroid/icu/number/CompactNotation;

    iget-object v0, v0, Landroid/icu/impl/number/MacroProps;->loc:Landroid/icu/util/ULocale;

    if-eqz v1, :cond_23

    move-object/from16 v19, v9

    goto :goto_19

    :cond_23
    move-object/from16 v19, v6

    :goto_19
    move-object v1, v15

    move-object v15, v0

    move-object/from16 v16, v1

    invoke-virtual/range {v14 .. v20}, Landroid/icu/number/CompactNotation;->withLocaleData(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/impl/number/CompactData$CompactType;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/MutablePatternModifier;Landroid/icu/impl/number/MicroPropsGenerator;)Landroid/icu/impl/number/MicroPropsGenerator;

    move-result-object v20

    :cond_24
    return-object v20
.end method

.method private static microsToString(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)V
    .locals 8

    .line 294
    iget-object v0, p0, Landroid/icu/impl/number/MicroProps;->rounding:Landroid/icu/number/Rounder;

    invoke-virtual {v0, p1}, Landroid/icu/number/Rounder;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 295
    iget-object v0, p0, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v0, v0, Landroid/icu/number/IntegerWidth;->maxInt:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v0, v0, Landroid/icu/number/IntegerWidth;->minInt:I

    const v1, 0x7fffffff

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->setIntegerLength(II)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v0, v0, Landroid/icu/number/IntegerWidth;->minInt:I

    iget-object v1, p0, Landroid/icu/impl/number/MicroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v1, v1, Landroid/icu/number/IntegerWidth;->maxInt:I

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->setIntegerLength(II)V

    .line 300
    :goto_0
    invoke-static {p0, p1, p2}, Landroid/icu/number/NumberFormatterImpl;->writeNumber(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)I

    move-result p1

    .line 304
    iget-object v0, p0, Landroid/icu/impl/number/MicroProps;->modInner:Landroid/icu/impl/number/Modifier;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1, p1}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    move-result v0

    add-int v7, p1, v0

    .line 305
    iget-object p1, p0, Landroid/icu/impl/number/MicroProps;->padding:Landroid/icu/impl/number/Padder;

    invoke-virtual {p1}, Landroid/icu/impl/number/Padder;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 306
    iget-object v2, p0, Landroid/icu/impl/number/MicroProps;->padding:Landroid/icu/impl/number/Padder;

    iget-object v3, p0, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    iget-object v4, p0, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    const/4 v6, 0x0

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/icu/impl/number/Padder;->padAndApply(Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/Modifier;Landroid/icu/impl/number/NumberStringBuilder;II)I

    goto :goto_1

    .line 308
    :cond_1
    iget-object p1, p0, Landroid/icu/impl/number/MicroProps;->modMiddle:Landroid/icu/impl/number/Modifier;

    invoke-interface {p1, p2, v1, v7}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    move-result p1

    add-int/2addr v7, p1

    .line 309
    iget-object p0, p0, Landroid/icu/impl/number/MicroProps;->modOuter:Landroid/icu/impl/number/Modifier;

    invoke-interface {p0, p2, v1, v7}, Landroid/icu/impl/number/Modifier;->apply(Landroid/icu/impl/number/NumberStringBuilder;II)I

    :goto_1
    return-void
.end method

.method private static unitIsCurrency(Landroid/icu/util/MeasureUnit;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "currency"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static unitIsNoUnit(Landroid/icu/util/MeasureUnit;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static unitIsPercent(Landroid/icu/util/MeasureUnit;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "percent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static unitIsPermille(Landroid/icu/util/MeasureUnit;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "permille"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static writeFractionDigits(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)I
    .locals 6

    .line 363
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getLowerDisplayMagnitude()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    neg-int v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 366
    invoke-interface {p1, v3}, Landroid/icu/impl/number/DecimalQuantity;->getDigit(I)B

    move-result v3

    .line 367
    iget-object v4, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 368
    iget-object v4, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v4

    add-int/2addr v4, v3

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v4, v3}, Landroid/icu/impl/number/NumberStringBuilder;->appendCodePoint(ILandroid/icu/text/NumberFormat$Field;)I

    move-result v3

    goto :goto_1

    .line 371
    :cond_0
    iget-object v4, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v3

    sget-object v4, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v3, v4}, Landroid/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static writeIntegerDigits(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)I
    .locals 7

    .line 340
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getUpperDisplayMagnitude()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 343
    iget-object v4, p0, Landroid/icu/impl/number/MicroProps;->grouping:Landroid/icu/number/Grouper;

    invoke-virtual {v4, v2, p1}, Landroid/icu/number/Grouper;->groupAtPosition(ILandroid/icu/impl/number/DecimalQuantity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    iget-boolean v4, p0, Landroid/icu/impl/number/MicroProps;->useCurrency:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparatorString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 345
    :cond_0
    iget-object v4, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    sget-object v5, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .line 344
    invoke-virtual {p2, v1, v4, v5}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result v4

    add-int/2addr v3, v4

    .line 349
    :cond_1
    invoke-interface {p1, v2}, Landroid/icu/impl/number/DecimalQuantity;->getDigit(I)B

    move-result v4

    .line 350
    iget-object v5, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 351
    iget-object v5, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getCodePointZero()I

    move-result v5

    add-int/2addr v5, v4

    sget-object v4, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v1, v5, v4}, Landroid/icu/impl/number/NumberStringBuilder;->insertCodePoint(IILandroid/icu/text/NumberFormat$Field;)I

    move-result v4

    goto :goto_2

    .line 354
    :cond_2
    iget-object v5, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v4

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v1, v4, v5}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private static writeNumber(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)I
    .locals 3

    .line 315
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isInfinite()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 316
    iget-object p0, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v1, p0, p1}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result p0

    :goto_0
    add-int/2addr p0, v1

    goto :goto_2

    .line 318
    :cond_0
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object p0, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual {p2, v1, p0, p1}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result p0

    goto :goto_0

    .line 323
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/icu/number/NumberFormatterImpl;->writeIntegerDigits(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)I

    move-result v0

    add-int/2addr v0, v1

    .line 326
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getLowerDisplayMagnitude()I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/number/MicroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    sget-object v2, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-ne v1, v2, :cond_4

    .line 327
    :cond_2
    iget-boolean v1, p0, Landroid/icu/impl/number/MicroProps;->useCurrency:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparatorString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 328
    :cond_3
    iget-object v1, p0, Landroid/icu/impl/number/MicroProps;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    .line 327
    invoke-virtual {p2, v0, v1, v2}, Landroid/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Landroid/icu/text/NumberFormat$Field;)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_4
    invoke-static {p0, p1, p2}, Landroid/icu/number/NumberFormatterImpl;->writeFractionDigits(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)I

    move-result p0

    add-int/2addr p0, v0

    :goto_2
    return p0
.end method


# virtual methods
.method public apply(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)Landroid/icu/impl/number/MicroProps;
    .locals 0

    .line 61
    iget-object p0, p0, Landroid/icu/number/NumberFormatterImpl;->microPropsGenerator:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {p0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object p0

    .line 62
    invoke-static {p0, p1, p2}, Landroid/icu/number/NumberFormatterImpl;->microsToString(Landroid/icu/impl/number/MicroProps;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/NumberStringBuilder;)V

    return-object p0
.end method
