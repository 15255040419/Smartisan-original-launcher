.class public Landroid/icu/text/DecimalFormat_ICU58_Android;
.super Landroid/icu/text/NumberFormat;
.source "DecimalFormat_ICU58_Android.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;,
        Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CURRENCY_SIGN:C = '\u00a4'

.field private static final CURRENCY_SIGN_COUNT_IN_ISO_FORMAT:I = 0x2

.field private static final CURRENCY_SIGN_COUNT_IN_PLURAL_FORMAT:I = 0x3

.field private static final CURRENCY_SIGN_COUNT_IN_SYMBOL_FORMAT:I = 0x1

.field private static final CURRENCY_SIGN_COUNT_ZERO:I = 0x0

.field static final DOUBLE_FRACTION_DIGITS:I = 0x154

.field static final DOUBLE_INTEGER_DIGITS:I = 0x135

.field static final MAX_INTEGER_DIGITS:I = 0x77359400

.field static final MAX_SCIENTIFIC_INTEGER_DIGITS:I = 0x8

.field static final NULL_UNIT:Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;

.field public static final PAD_AFTER_PREFIX:I = 0x1

.field public static final PAD_AFTER_SUFFIX:I = 0x3

.field public static final PAD_BEFORE_PREFIX:I = 0x0

.field public static final PAD_BEFORE_SUFFIX:I = 0x2

.field static final PATTERN_DECIMAL_SEPARATOR:C = '.'

.field static final PATTERN_DIGIT:C = '#'

.field static final PATTERN_EIGHT_DIGIT:C = '8'

.field static final PATTERN_EXPONENT:C = 'E'

.field static final PATTERN_FIVE_DIGIT:C = '5'

.field static final PATTERN_FOUR_DIGIT:C = '4'

.field static final PATTERN_GROUPING_SEPARATOR:C = ','

.field static final PATTERN_MINUS_SIGN:C = '-'

.field static final PATTERN_NINE_DIGIT:C = '9'

.field static final PATTERN_ONE_DIGIT:C = '1'

.field static final PATTERN_PAD_ESCAPE:C = '*'

.field private static final PATTERN_PERCENT:C = '%'

.field private static final PATTERN_PER_MILLE:C = '\u2030'

.field static final PATTERN_PLUS_SIGN:C = '+'

.field private static final PATTERN_SEPARATOR:C = ';'

.field static final PATTERN_SEVEN_DIGIT:C = '7'

.field static final PATTERN_SIGNIFICANT_DIGIT:C = '@'

.field static final PATTERN_SIX_DIGIT:C = '6'

.field static final PATTERN_THREE_DIGIT:C = '3'

.field static final PATTERN_TWO_DIGIT:C = '2'

.field static final PATTERN_ZERO_DIGIT:C = '0'

.field private static final QUOTE:C = '\''

.field private static final STATUS_INFINITE:I = 0x0

.field private static final STATUS_LENGTH:I = 0x3

.field private static final STATUS_POSITIVE:I = 0x1

.field private static final STATUS_UNDERFLOW:I = 0x2

.field private static final commaEquivalents:Landroid/icu/text/UnicodeSet;

.field static final currentSerialVersion:I = 0x4

.field private static final defaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

.field private static final dotEquivalents:Landroid/icu/text/UnicodeSet;

.field private static epsilon:D = 1.0E-11

.field static final minusSigns:Landroid/icu/text/UnicodeSet;

.field static final plusSigns:Landroid/icu/text/UnicodeSet;

.field static final roundingIncrementEpsilon:D = 1.0E-9

.field private static final serialVersionUID:J = 0xbff0362d872303aL

.field static final skipExtendedSeparatorParsing:Z

.field private static final strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

.field private static final strictDefaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

.field private static final strictDotEquivalents:Landroid/icu/text/UnicodeSet;


# instance fields
.field private PARSE_MAX_EXPONENT:I

.field private transient actualRoundingIncrement:Ljava/math/BigDecimal;

.field private transient actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

.field private transient affixPatternsForCurrency:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/text/FieldPosition;",
            ">;"
        }
    .end annotation
.end field

.field private currencyChoice:Ljava/text/ChoiceFormat;

.field private currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

.field private currencySignCount:I

.field private currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

.field private decimalSeparatorAlwaysShown:Z

.field private transient digitList:Landroid/icu/text/DigitList_Android;

.field private exponentSignAlwaysShown:Z

.field private formatPattern:Ljava/lang/String;

.field private formatWidth:I

.field private groupingSize:B

.field private groupingSize2:B

.field private transient isReadyForParsing:Z

.field private mathContext:Landroid/icu/math/MathContext;

.field private maxSignificantDigits:I

.field private minExponentDigits:B

.field private minSignificantDigits:I

.field private multiplier:I

.field private negPrefixPattern:Ljava/lang/String;

.field private negSuffixPattern:Ljava/lang/String;

.field private negativePrefix:Ljava/lang/String;

.field private negativeSuffix:Ljava/lang/String;

.field private pad:C

.field private padPosition:I

.field private parseBigDecimal:Z

.field parseRequireDecimalPoint:Z

.field private posPrefixPattern:Ljava/lang/String;

.field private posSuffixPattern:Ljava/lang/String;

.field private positivePrefix:Ljava/lang/String;

.field private positiveSuffix:Ljava/lang/String;

.field private transient roundingDouble:D

.field private transient roundingDoubleReciprocal:D

.field private roundingIncrement:Ljava/math/BigDecimal;

.field private transient roundingIncrementICU:Landroid/icu/math/BigDecimal;

.field private roundingMode:I

.field private serialVersionOnStream:I

.field private style:I

.field private symbols:Landroid/icu/text/DecimalFormatSymbols;

.field private useExponentialNotation:Z

.field private useSignificantDigits:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 2246
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/16 v1, 0xe

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    .line 2254
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->dotEquivalents:Landroid/icu/text/UnicodeSet;

    .line 2256
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x10

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    .line 2265
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->commaEquivalents:Landroid/icu/text/UnicodeSet;

    .line 2280
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/16 v2, 0xa

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    invoke-direct {v0, v3}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    .line 2286
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->strictDotEquivalents:Landroid/icu/text/UnicodeSet;

    .line 2288
    new-instance v0, Landroid/icu/text/UnicodeSet;

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    invoke-direct {v0, v2}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    .line 2294
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

    .line 2309
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x28

    new-array v2, v2, [I

    fill-array-data v2, :array_4

    invoke-direct {v0, v2}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    .line 2332
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->defaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    .line 2334
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x26

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    invoke-direct {v0, v2}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    .line 2356
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->strictDefaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    .line 2358
    new-instance v0, Landroid/icu/text/UnicodeSet;

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    invoke-direct {v0, v2}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    .line 2366
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minusSigns:Landroid/icu/text/UnicodeSet;

    .line 2368
    new-instance v0, Landroid/icu/text/UnicodeSet;

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    .line 2376
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->plusSigns:Landroid/icu/text/UnicodeSet;

    const-string v0, "android.icu.text.DecimalFormat.SkipExtendedSeparatorParsing"

    const-string v1, "false"

    .line 2379
    invoke-static {v0, v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 2381
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipExtendedSeparatorParsing:Z

    .line 6095
    new-instance v0, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->NULL_UNIT:Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;

    return-void

    nop

    :array_0
    .array-data 4
        0x2e
        0x2e
        0x2024
        0x2024
        0x3002
        0x3002
        0xfe12
        0xfe12
        0xfe52
        0xfe52
        0xff0e
        0xff0e
        0xff61
        0xff61
    .end array-data

    :array_1
    .array-data 4
        0x2c
        0x2c
        0x60c
        0x60c
        0x66b
        0x66b
        0x3001
        0x3001
        0xfe10
        0xfe11
        0xfe50
        0xfe51
        0xff0c
        0xff0c
        0xff64
        0xff64
    .end array-data

    :array_2
    .array-data 4
        0x2e
        0x2e
        0x2024
        0x2024
        0xfe52
        0xfe52
        0xff0e
        0xff0e
        0xff61
        0xff61
    .end array-data

    :array_3
    .array-data 4
        0x2c
        0x2c
        0x66b
        0x66b
        0xfe10
        0xfe10
        0xfe50
        0xfe50
        0xff0c
        0xff0c
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x20
        0x27
        0x27
        0x2c
        0x2c
        0x2e
        0x2e
        0xa0
        0xa0
        0x60c
        0x60c
        0x66b
        0x66c
        0x2000
        0x200a
        0x2018
        0x2019
        0x2024
        0x2024
        0x202f
        0x202f
        0x205f
        0x205f
        0x3000
        0x3002
        0xfe10
        0xfe12
        0xfe50
        0xfe52
        0xff07
        0xff07
        0xff0c
        0xff0c
        0xff0e
        0xff0e
        0xff61
        0xff61
        0xff64
        0xff64
    .end array-data

    :array_5
    .array-data 4
        0x20
        0x20
        0x27
        0x27
        0x2c
        0x2c
        0x2e
        0x2e
        0xa0
        0xa0
        0x66b
        0x66c
        0x2000
        0x200a
        0x2018
        0x2019
        0x2024
        0x2024
        0x202f
        0x202f
        0x205f
        0x205f
        0x3000
        0x3000
        0xfe10
        0xfe10
        0xfe50
        0xfe50
        0xfe52
        0xfe52
        0xff07
        0xff07
        0xff0c
        0xff0c
        0xff0e
        0xff0e
        0xff61
        0xff61
    .end array-data

    :array_6
    .array-data 4
        0x2d
        0x2d
        0x207b
        0x207b
        0x208b
        0x208b
        0x2212
        0x2212
        0x2796
        0x2796
        0xfe63
        0xfe63
        0xff0d
        0xff0d
    .end array-data

    :array_7
    .array-data 4
        0x2b
        0x2b
        0x207a
        0x207a
        0x208a
        0x208a
        0x2795
        0x2795
        0xfb29
        0xfb29
        0xfe62
        0xfe62
        0xff0b
        0xff0b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .line 640
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 2384
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseRequireDecimalPoint:Z

    const/16 v1, 0x3e8

    .line 2391
    iput v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->PARSE_MAX_EXPONENT:I

    .line 5536
    new-instance v1, Landroid/icu/text/DigitList_Android;

    invoke-direct {v1}, Landroid/icu/text/DigitList_Android;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    const-string v1, ""

    .line 5544
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    .line 5553
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    const-string v2, "-"

    .line 5561
    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    .line 5570
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    const/4 v2, 0x1

    .line 5632
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    const/4 v3, 0x3

    .line 5642
    iput-byte v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    .line 5650
    iput-byte v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    .line 5659
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    const/4 v4, 0x0

    .line 5670
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 5677
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useSignificantDigits:Z

    .line 5685
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minSignificantDigits:I

    const/4 v2, 0x6

    .line 5693
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->maxSignificantDigits:I

    .line 5728
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->exponentSignAlwaysShown:Z

    .line 5740
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrement:Ljava/math/BigDecimal;

    .line 5751
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    .line 5762
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    .line 5773
    new-instance v2, Landroid/icu/math/MathContext;

    invoke-direct {v2, v0, v0}, Landroid/icu/math/MathContext;-><init>(II)V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    .line 5781
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    const/16 v2, 0x20

    .line 5789
    iput-char v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->pad:C

    .line 5799
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    .line 5810
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseBigDecimal:Z

    .line 5816
    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v2, 0x4

    .line 5844
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->serialVersionOnStream:I

    .line 5964
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->attributes:Ljava/util/ArrayList;

    .line 5981
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    .line 5984
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->style:I

    .line 5992
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    .line 6045
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->affixPatternsForCurrency:Ljava/util/Set;

    .line 6049
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->isReadyForParsing:Z

    .line 6052
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 6116
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    .line 6117
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrement:Ljava/math/BigDecimal;

    const-wide/16 v1, 0x0

    .line 6122
    iput-wide v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDouble:D

    .line 6128
    iput-wide v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDoubleReciprocal:D

    .line 641
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 642
    invoke-static {v1, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v2

    .line 644
    new-instance v5, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v5, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v5, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 645
    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setCurrency(Landroid/icu/util/Currency;)V

    .line 646
    invoke-direct {p0, v2, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    .line 647
    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    if-ne v0, v3, :cond_0

    .line 648
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {v0, v1}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    goto :goto_0

    .line 652
    :cond_0
    invoke-direct {p0, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffixAdjustWidth(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 673
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 2384
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseRequireDecimalPoint:Z

    const/16 v1, 0x3e8

    .line 2391
    iput v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->PARSE_MAX_EXPONENT:I

    .line 5536
    new-instance v1, Landroid/icu/text/DigitList_Android;

    invoke-direct {v1}, Landroid/icu/text/DigitList_Android;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    const-string v1, ""

    .line 5544
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    .line 5553
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    const-string v2, "-"

    .line 5561
    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    .line 5570
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    const/4 v2, 0x1

    .line 5632
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    const/4 v3, 0x3

    .line 5642
    iput-byte v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    .line 5650
    iput-byte v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    .line 5659
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    const/4 v4, 0x0

    .line 5670
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 5677
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useSignificantDigits:Z

    .line 5685
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minSignificantDigits:I

    const/4 v2, 0x6

    .line 5693
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->maxSignificantDigits:I

    .line 5728
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->exponentSignAlwaysShown:Z

    .line 5740
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrement:Ljava/math/BigDecimal;

    .line 5751
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    .line 5762
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    .line 5773
    new-instance v2, Landroid/icu/math/MathContext;

    invoke-direct {v2, v0, v0}, Landroid/icu/math/MathContext;-><init>(II)V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    .line 5781
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    const/16 v2, 0x20

    .line 5789
    iput-char v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->pad:C

    .line 5799
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    .line 5810
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseBigDecimal:Z

    .line 5816
    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v2, 0x4

    .line 5844
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->serialVersionOnStream:I

    .line 5964
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->attributes:Ljava/util/ArrayList;

    .line 5981
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    .line 5984
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->style:I

    .line 5992
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    .line 6045
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->affixPatternsForCurrency:Ljava/util/Set;

    .line 6049
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->isReadyForParsing:Z

    .line 6052
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 6116
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    .line 6117
    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrement:Ljava/math/BigDecimal;

    const-wide/16 v1, 0x0

    .line 6122
    iput-wide v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDouble:D

    .line 6128
    iput-wide v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDoubleReciprocal:D

    .line 675
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    .line 676
    new-instance v2, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v2, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 677
    invoke-static {v1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setCurrency(Landroid/icu/util/Currency;)V

    .line 678
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    .line 679
    iget p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    if-ne p1, v3, :cond_0

    .line 680
    new-instance p1, Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {p1, v1}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    goto :goto_0

    .line 682
    :cond_0
    invoke-direct {p0, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffixAdjustWidth(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 4

    .line 704
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 2384
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseRequireDecimalPoint:Z

    const/16 v1, 0x3e8

    .line 2391
    iput v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->PARSE_MAX_EXPONENT:I

    .line 5536
    new-instance v1, Landroid/icu/text/DigitList_Android;

    invoke-direct {v1}, Landroid/icu/text/DigitList_Android;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    const-string v1, ""

    .line 5544
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    .line 5553
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    const-string v2, "-"

    .line 5561
    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    .line 5570
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    const/4 v2, 0x1

    .line 5632
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    const/4 v3, 0x3

    .line 5642
    iput-byte v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    .line 5650
    iput-byte v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    .line 5659
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    const/4 v3, 0x0

    .line 5670
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 5677
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useSignificantDigits:Z

    .line 5685
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minSignificantDigits:I

    const/4 v2, 0x6

    .line 5693
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->maxSignificantDigits:I

    .line 5728
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->exponentSignAlwaysShown:Z

    .line 5740
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrement:Ljava/math/BigDecimal;

    .line 5751
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    .line 5762
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    .line 5773
    new-instance v2, Landroid/icu/math/MathContext;

    invoke-direct {v2, v0, v0}, Landroid/icu/math/MathContext;-><init>(II)V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    .line 5781
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    const/16 v2, 0x20

    .line 5789
    iput-char v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->pad:C

    .line 5799
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    .line 5810
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseBigDecimal:Z

    .line 5816
    sget-object v2, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v2, 0x4

    .line 5844
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->serialVersionOnStream:I

    .line 5964
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->attributes:Ljava/util/ArrayList;

    .line 5981
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    .line 5984
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->style:I

    .line 5992
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    .line 6045
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->affixPatternsForCurrency:Ljava/util/Set;

    .line 6049
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->isReadyForParsing:Z

    .line 6052
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 6116
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    .line 6117
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrement:Ljava/math/BigDecimal;

    const-wide/16 v0, 0x0

    .line 6122
    iput-wide v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDouble:D

    .line 6128
    iput-wide v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDoubleReciprocal:D

    .line 705
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->createFromPatternAndSymbols(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;I)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 786
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 2384
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseRequireDecimalPoint:Z

    const/16 v1, 0x3e8

    .line 2391
    iput v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->PARSE_MAX_EXPONENT:I

    .line 5536
    new-instance v1, Landroid/icu/text/DigitList_Android;

    invoke-direct {v1}, Landroid/icu/text/DigitList_Android;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    const-string v1, ""

    .line 5544
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    .line 5553
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    const-string v2, "-"

    .line 5561
    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    .line 5570
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    const/4 v2, 0x1

    .line 5632
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    const/4 v3, 0x3

    .line 5642
    iput-byte v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    .line 5650
    iput-byte v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    .line 5659
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    const/4 v3, 0x0

    .line 5670
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 5677
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useSignificantDigits:Z

    .line 5685
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minSignificantDigits:I

    const/4 v2, 0x6

    .line 5693
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->maxSignificantDigits:I

    .line 5728
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->exponentSignAlwaysShown:Z

    .line 5740
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrement:Ljava/math/BigDecimal;

    .line 5751
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    .line 5762
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    .line 5773
    new-instance v4, Landroid/icu/math/MathContext;

    invoke-direct {v4, v0, v0}, Landroid/icu/math/MathContext;-><init>(II)V

    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    .line 5781
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    const/16 v4, 0x20

    .line 5789
    iput-char v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->pad:C

    .line 5799
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    .line 5810
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseBigDecimal:Z

    .line 5816
    sget-object v4, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v4, 0x4

    .line 5844
    iput v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->serialVersionOnStream:I

    .line 5964
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->attributes:Ljava/util/ArrayList;

    .line 5981
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    .line 5984
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->style:I

    .line 5992
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    .line 6045
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->affixPatternsForCurrency:Ljava/util/Set;

    .line 6049
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->isReadyForParsing:Z

    .line 6052
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 6116
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    .line 6117
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrement:Ljava/math/BigDecimal;

    const-wide/16 v0, 0x0

    .line 6122
    iput-wide v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDouble:D

    .line 6128
    iput-wide v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDoubleReciprocal:D

    if-ne p3, v2, :cond_0

    .line 789
    new-instance v3, Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    .line 791
    :cond_0
    invoke-direct {p0, p1, p2, v3, p3}, Landroid/icu/text/DecimalFormat_ICU58_Android;->create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V
    .locals 5

    .line 750
    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    .line 2384
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseRequireDecimalPoint:Z

    const/16 v1, 0x3e8

    .line 2391
    iput v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->PARSE_MAX_EXPONENT:I

    .line 5536
    new-instance v1, Landroid/icu/text/DigitList_Android;

    invoke-direct {v1}, Landroid/icu/text/DigitList_Android;-><init>()V

    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    const-string v1, ""

    .line 5544
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    .line 5553
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    const-string v2, "-"

    .line 5561
    iput-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    .line 5570
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    const/4 v2, 0x1

    .line 5632
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    const/4 v3, 0x3

    .line 5642
    iput-byte v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    .line 5650
    iput-byte v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    .line 5659
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    const/4 v3, 0x0

    .line 5670
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 5677
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useSignificantDigits:Z

    .line 5685
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minSignificantDigits:I

    const/4 v2, 0x6

    .line 5693
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->maxSignificantDigits:I

    .line 5728
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->exponentSignAlwaysShown:Z

    .line 5740
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrement:Ljava/math/BigDecimal;

    .line 5751
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    .line 5762
    iput v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    .line 5773
    new-instance v4, Landroid/icu/math/MathContext;

    invoke-direct {v4, v0, v0}, Landroid/icu/math/MathContext;-><init>(II)V

    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    .line 5781
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    const/16 v4, 0x20

    .line 5789
    iput-char v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->pad:C

    .line 5799
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    .line 5810
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseBigDecimal:Z

    .line 5816
    sget-object v4, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v4, 0x4

    .line 5844
    iput v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->serialVersionOnStream:I

    .line 5964
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->attributes:Ljava/util/ArrayList;

    .line 5981
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    .line 5984
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->style:I

    .line 5992
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    .line 6045
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->affixPatternsForCurrency:Ljava/util/Set;

    .line 6049
    iput-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->isReadyForParsing:Z

    .line 6052
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 6116
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    .line 6117
    iput-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrement:Ljava/math/BigDecimal;

    const-wide/16 v0, 0x0

    .line 6122
    iput-wide v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDouble:D

    .line 6128
    iput-wide v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDoubleReciprocal:D

    if-ne p4, v2, :cond_0

    .line 753
    invoke-virtual {p3}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/icu/text/CurrencyPluralInfo;

    .line 755
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V

    return-void
.end method

.method private _setMaximumFractionDigits(I)V
    .locals 1

    const/16 v0, 0x154

    .line 5399
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method private addAttribute(Landroid/icu/text/NumberFormat$Field;II)V
    .locals 1

    .line 4351
    new-instance v0, Ljava/text/FieldPosition;

    invoke-direct {v0, p1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 4352
    invoke-virtual {v0, p2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 4353
    invoke-virtual {v0, p3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 4354
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V
    .locals 5

    .line 1898
    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    if-lez v0, :cond_6

    .line 1899
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_6

    .line 1901
    new-array v1, v0, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 1903
    iget-char v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->pad:C

    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1905
    :cond_0
    iget v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v4, :cond_3

    const/4 p3, 0x2

    if-eq v3, p3, :cond_2

    const/4 p3, 0x3

    if-eq v3, p3, :cond_1

    goto :goto_1

    .line 1916
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1913
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p3

    sub-int/2addr p3, p4

    invoke-virtual {p1, p3, v1}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1907
    :cond_3
    invoke-virtual {p1, p3, v1}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1910
    :cond_4
    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    .line 1919
    :goto_1
    iget p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    if-eqz p0, :cond_5

    if-ne p0, v4, :cond_6

    .line 1920
    :cond_5
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p2, p0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1921
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {p2, p0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_6
    return-void
.end method

.method private appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I
    .locals 13

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p4

    .line 4228
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyChoice:Ljava/text/ChoiceFormat;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 4231
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 4233
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    .line 4235
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 4236
    invoke-direct {p0, v0, v2, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 4237
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 4238
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0

    :cond_3
    if-eqz p3, :cond_6

    if-eqz p2, :cond_4

    .line 4244
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_5

    .line 4245
    iget-object v1, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    goto :goto_3

    :cond_5
    iget-object v1, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    .line 4247
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    :goto_2
    if-eqz p2, :cond_8

    .line 4248
    iget-object v1, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    goto :goto_3

    :cond_8
    iget-object v1, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    :goto_3
    move-object v9, v0

    move-object v10, v1

    const-string/jumbo v11, "\u00a4\u00a4\u00a4"

    const/4 v12, -0x1

    if-eqz p5, :cond_d

    .line 4253
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v12, :cond_9

    .line 4255
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 4256
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move/from16 v1, p3

    move-object v3, p1

    .line 4255
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    .line 4258
    :cond_9
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v12, :cond_a

    .line 4260
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 4261
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move/from16 v1, p3

    move-object v3, p1

    .line 4260
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    .line 4263
    :cond_a
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v12, :cond_b

    .line 4265
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 4266
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move/from16 v1, p3

    move-object v3, p1

    .line 4265
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    .line 4268
    :cond_b
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v12, :cond_c

    .line 4270
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 4271
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move/from16 v1, p3

    move-object v3, p1

    .line 4270
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    .line 4273
    :cond_c
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v12, :cond_d

    .line 4275
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    .line 4276
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v5, v0, v4

    move-object v0, p0

    move/from16 v1, p3

    move-object v3, p1

    .line 4275
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V

    .line 4281
    :cond_d
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->SIGN:Landroid/icu/text/NumberFormat$Field;

    if-ne v0, v1, :cond_f

    .line 4282
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    if-eqz p2, :cond_e

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_e
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v0

    .line 4283
    :goto_4
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v12, :cond_14

    .line 4285
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 4286
    invoke-virtual {v8, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 4287
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {v8, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_5

    .line 4289
    :cond_f
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERCENT:Landroid/icu/text/NumberFormat$Field;

    if-ne v0, v1, :cond_10

    .line 4290
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v12, :cond_14

    .line 4292
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 4293
    invoke-virtual {v8, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 4294
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {v8, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_5

    .line 4296
    :cond_10
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->PERMILLE:Landroid/icu/text/NumberFormat$Field;

    if-ne v0, v1, :cond_11

    .line 4297
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v12, :cond_14

    .line 4299
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 4300
    invoke-virtual {v8, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 4301
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {v8, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_5

    .line 4306
    :cond_11
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    sget-object v1, Landroid/icu/text/NumberFormat$Field;->CURRENCY:Landroid/icu/text/NumberFormat$Field;

    if-ne v0, v1, :cond_14

    .line 4307
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v12, :cond_12

    .line 4308
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 4309
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 4310
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 4311
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 4312
    invoke-virtual {v8, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 4313
    invoke-virtual {v8, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_5

    .line 4314
    :cond_12
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v12, :cond_13

    .line 4315
    iget-object v0, v6, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 4316
    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 4317
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 4318
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 4319
    invoke-virtual {v8, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 4320
    invoke-virtual {v8, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_5

    .line 4321
    :cond_13
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v12, :cond_14

    .line 4323
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 4324
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 4325
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 4326
    invoke-virtual {v8, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 4327
    invoke-virtual {v8, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 4331
    :cond_14
    :goto_5
    invoke-virtual {p1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4332
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private appendAffixPattern(Ljava/lang/StringBuffer;ZZZ)V
    .locals 3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 4407
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 4409
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x27

    if-nez v0, :cond_8

    if-eqz p3, :cond_4

    if-eqz p2, :cond_3

    .line 4416
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 4418
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    .line 4421
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4422
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v1, p2, :cond_7

    .line 4423
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v2, :cond_6

    .line 4425
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4427
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4429
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_8
    if-nez p4, :cond_9

    .line 4434
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    .line 4437
    :cond_9
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v1, p2, :cond_11

    .line 4438
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 p3, 0x25

    if-eq p2, p3, :cond_e

    if-eq p2, v2, :cond_c

    const/16 p3, 0x2d

    if-eq p2, p3, :cond_b

    const/16 p3, 0x2030

    if-eq p2, p3, :cond_a

    goto :goto_4

    .line 4449
    :cond_a
    iget-object p2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result p2

    goto :goto_4

    .line 4455
    :cond_b
    iget-object p2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result p2

    goto :goto_4

    :cond_c
    add-int/lit8 p2, v1, 0x1

    .line 4441
    invoke-virtual {v0, v2, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    if-ltz p2, :cond_d

    add-int/lit8 p3, p2, 0x1

    .line 4445
    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 4443
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Malformed affix pattern: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4452
    :cond_e
    iget-object p2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result p2

    .line 4459
    :goto_4
    iget-object p3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p3}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result p3

    if-eq p2, p3, :cond_10

    iget-object p3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p3}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result p3

    if-ne p2, p3, :cond_f

    goto :goto_5

    .line 4464
    :cond_f
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 4460
    :cond_10
    :goto_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4461
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4462
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    move p2, v1

    :goto_7
    add-int/lit8 v1, p2, 0x1

    goto :goto_3

    :cond_11
    :goto_8
    return-void
.end method

.method private applyPattern(Ljava/lang/String;Z)V
    .locals 0

    .line 4674
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 4675
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffixAdjustWidth(Ljava/lang/String;)V

    return-void
.end method

.method private applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x45

    .line 4698
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 4703
    iget-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v2

    .line 4704
    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getSignificantDigit()C

    move-result v6

    .line 4705
    iget-object v7, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v7}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v7

    .line 4706
    iget-object v8, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v8}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v8

    .line 4707
    iget-object v9, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v9}, Landroid/icu/text/DecimalFormatSymbols;->getPercent()C

    move-result v9

    .line 4708
    iget-object v10, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v10}, Landroid/icu/text/DecimalFormatSymbols;->getPerMill()C

    move-result v10

    .line 4709
    iget-object v11, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v11}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v11

    .line 4710
    iget-object v12, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v12}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v12

    .line 4711
    iget-object v13, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v13}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v13

    .line 4712
    iget-object v14, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v14}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v14

    .line 4713
    iget-object v15, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v15}, Landroid/icu/text/DecimalFormatSymbols;->getPadEscape()C

    move-result v15

    .line 4714
    iget-object v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSign()C

    move-result v3

    goto :goto_0

    :cond_0
    const/16 v3, 0x30

    const/16 v6, 0x40

    const/16 v7, 0x2c

    const/16 v8, 0x2e

    const/16 v11, 0x23

    const/16 v12, 0x3b

    const/16 v14, 0x2b

    const/16 v15, 0x2a

    move-object v13, v2

    move v2, v3

    const/16 v3, 0x2d

    const/16 v9, 0x25

    const/16 v10, 0x2030

    :goto_0
    add-int/lit8 v4, v2, 0x9

    int-to-char v4, v4

    move-object/from16 v18, v13

    move/from16 v16, v14

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_1
    const/4 v13, 0x2

    if-ge v5, v13, :cond_64

    .line 4723
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v14, v13, :cond_64

    .line 4735
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 4736
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v20, 0x0

    const/16 v22, -0x1

    move-object/from16 v23, v13

    move/from16 v44, v3

    move v13, v14

    move/from16 v30, v15

    move-wide/from16 v34, v20

    move/from16 v29, v22

    move/from16 v31, v29

    move/from16 v32, v31

    move/from16 v33, v32

    move/from16 v39, v33

    move/from16 v40, v39

    move-object/from16 v15, v23

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move/from16 v22, v13

    const/4 v14, 0x1

    .line 4755
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v45, v10

    if-ge v13, v3, :cond_3f

    .line 4756
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v14, :cond_1f

    const/4 v10, 0x1

    if-eq v14, v10, :cond_4

    const/4 v10, 0x2

    if-eq v14, v10, :cond_4

    const/4 v10, 0x3

    if-eq v14, v10, :cond_1

    const/4 v10, 0x4

    if-eq v14, v10, :cond_1

    move/from16 v48, v9

    :goto_3
    move v3, v14

    move/from16 v14, v16

    move/from16 v10, v40

    move/from16 v16, v4

    move/from16 v40, v12

    move/from16 v4, v31

    move/from16 v31, v5

    move v12, v6

    move v5, v8

    move-object/from16 v6, v18

    move/from16 v8, v36

    move/from16 v36, v44

    move/from16 v18, v2

    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_20

    :cond_1
    const/16 v10, 0x27

    if-ne v3, v10, :cond_3

    add-int/lit8 v10, v13, 0x1

    move/from16 v48, v9

    .line 4984
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v10, v9, :cond_2

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v46, v10

    const/16 v10, 0x27

    if-ne v9, v10, :cond_2

    .line 4986
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v13, v46

    goto :goto_5

    :cond_2
    add-int/lit8 v14, v14, -0x2

    goto :goto_5

    :cond_3
    move/from16 v48, v9

    .line 4996
    :goto_5
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    move/from16 v48, v9

    const-string v9, "Unquoted special character \'"

    if-eq v3, v11, :cond_1b

    if-eq v3, v7, :cond_1b

    if-eq v3, v8, :cond_1b

    if-lt v3, v2, :cond_5

    if-le v3, v4, :cond_6

    :cond_5
    if-ne v3, v6, :cond_7

    :cond_6
    move/from16 v49, v8

    move/from16 v10, v40

    const/4 v8, 0x1

    move/from16 v40, v12

    move/from16 v12, v36

    move/from16 v36, v44

    goto/16 :goto_d

    :cond_7
    const/16 v10, 0xa4

    if-ne v3, v10, :cond_c

    add-int/lit8 v9, v13, 0x1

    .line 4913
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 4914
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v49, v8

    const/16 v8, 0xa4

    if-ne v10, v8, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    move/from16 v49, v8

    :cond_9
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_b

    .line 4920
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v9, 0x1

    .line 4921
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v13, v8, :cond_a

    .line 4922
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0xa4

    if-ne v8, v10, :cond_a

    .line 4924
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v43, 0x3

    goto :goto_7

    :cond_a
    move v13, v9

    const/16 v43, 0x2

    goto :goto_7

    :cond_b
    const/16 v43, 0x1

    goto :goto_7

    :cond_c
    move/from16 v49, v8

    const/16 v8, 0x27

    if-ne v3, v8, :cond_e

    add-int/lit8 v9, v13, 0x1

    .line 4937
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_d

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_d

    .line 4939
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v13, v9

    goto :goto_7

    :cond_d
    add-int/lit8 v14, v14, 0x2

    :goto_7
    move/from16 v10, v40

    move/from16 v40, v12

    :goto_8
    move/from16 v12, v36

    move/from16 v36, v44

    goto/16 :goto_f

    :cond_e
    if-ne v3, v12, :cond_11

    const/4 v8, 0x1

    if-eq v14, v8, :cond_f

    if-ne v5, v8, :cond_10

    .line 4948
    :cond_f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    add-int/lit8 v3, v13, 0x1

    move/from16 v8, v26

    move/from16 v9, v29

    move/from16 v15, v31

    move/from16 v29, v36

    move/from16 v10, v40

    move/from16 v36, v44

    move/from16 v31, v5

    move/from16 v40, v12

    move/from16 v26, v16

    move/from16 v5, v49

    move/from16 v16, v4

    move v12, v6

    move-object/from16 v6, v18

    move/from16 v18, v2

    move v4, v3

    move/from16 v3, v33

    const/4 v2, 0x3

    goto/16 :goto_21

    :cond_11
    move/from16 v8, v48

    if-eq v3, v8, :cond_17

    move/from16 v10, v45

    if-ne v3, v10, :cond_12

    move/from16 v45, v10

    move/from16 v10, v40

    const/4 v9, 0x1

    move/from16 v40, v12

    move/from16 v12, v36

    goto/16 :goto_a

    :cond_12
    move/from16 v9, v44

    if-ne v3, v9, :cond_13

    move/from16 v48, v8

    move/from16 v45, v10

    move/from16 v10, v40

    const/16 v3, 0x2d

    :goto_9
    move/from16 v40, v12

    move/from16 v12, v36

    move/from16 v36, v9

    goto/16 :goto_f

    :cond_13
    move/from16 v45, v10

    move/from16 v10, v30

    if-ne v3, v10, :cond_16

    move/from16 v10, v40

    if-ltz v10, :cond_14

    const-string v3, "Multiple pad specifiers"

    .line 4967
    invoke-direct {v0, v3, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    add-int/lit8 v3, v13, 0x1

    .line 4969
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v3, v10, :cond_15

    const-string v10, "Invalid pad specifier"

    .line 4970
    invoke-direct {v0, v10, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    .line 4973
    :cond_15
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v48, v8

    move/from16 v42, v10

    move/from16 v40, v12

    move v10, v13

    move/from16 v8, v36

    move v13, v3

    move v12, v6

    move/from16 v36, v9

    move v3, v14

    move/from16 v14, v16

    move-object/from16 v6, v18

    move/from16 v18, v2

    move/from16 v16, v4

    move/from16 v4, v31

    const/4 v2, 0x1

    move/from16 v31, v5

    goto/16 :goto_1a

    :cond_16
    move/from16 v10, v40

    move/from16 v48, v8

    goto :goto_9

    :cond_17
    move/from16 v10, v40

    move/from16 v40, v12

    move/from16 v12, v36

    const/4 v9, 0x1

    :goto_a
    if-eq v12, v9, :cond_18

    const-string v9, "Too many percent/permille characters"

    .line 4955
    invoke-direct {v0, v9, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    if-ne v3, v8, :cond_19

    const/16 v9, 0x64

    goto :goto_b

    :cond_19
    const/16 v9, 0x3e8

    :goto_b
    move/from16 v36, v9

    if-ne v3, v8, :cond_1a

    const/16 v3, 0x25

    goto :goto_c

    :cond_1a
    const/16 v3, 0x2030

    :goto_c
    move/from16 v48, v8

    goto/16 :goto_8

    :cond_1b
    move/from16 v49, v8

    move/from16 v10, v40

    move/from16 v40, v12

    move/from16 v12, v36

    move/from16 v36, v44

    const/4 v8, 0x1

    :goto_d
    if-ne v14, v8, :cond_1c

    add-int/lit8 v3, v13, -0x1

    move v8, v12

    move/from16 v37, v13

    move/from16 v14, v16

    move v13, v3

    move/from16 v16, v4

    move v12, v6

    move-object/from16 v6, v18

    move/from16 v4, v31

    const/4 v3, 0x0

    :goto_e
    move/from16 v18, v2

    move/from16 v31, v5

    move/from16 v5, v49

    goto/16 :goto_4

    :cond_1c
    const/16 v8, 0x27

    if-ne v3, v8, :cond_1e

    add-int/lit8 v9, v13, 0x1

    .line 4901
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v9, v8, :cond_1d

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v44, v9

    const/16 v9, 0x27

    if-ne v8, v9, :cond_1d

    .line 4903
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v12

    move v3, v14

    move/from16 v14, v16

    move/from16 v13, v44

    goto :goto_11

    :cond_1d
    add-int/lit8 v3, v14, 0x2

    move v8, v12

    goto :goto_10

    .line 4909
    :cond_1e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v9, 0x27

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    .line 4976
    :goto_f
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v12

    move v3, v14

    :goto_10
    move/from16 v14, v16

    :goto_11
    move/from16 v16, v4

    move v12, v6

    move-object/from16 v6, v18

    move/from16 v4, v31

    goto :goto_e

    :cond_1f
    move/from16 v49, v8

    move/from16 v48, v9

    move/from16 v10, v40

    move/from16 v40, v12

    move/from16 v12, v36

    move/from16 v36, v44

    if-ne v3, v11, :cond_23

    move/from16 v8, v26

    if-gtz v25, :cond_21

    if-lez v8, :cond_20

    goto :goto_12

    :cond_20
    add-int/lit8 v28, v28, 0x1

    goto :goto_13

    :cond_21
    :goto_12
    add-int/lit8 v27, v27, 0x1

    :goto_13
    move/from16 v9, v29

    move/from16 v3, v31

    if-ltz v9, :cond_22

    if-gez v3, :cond_22

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    :cond_22
    move/from16 v31, v5

    move/from16 v26, v8

    move/from16 v29, v9

    move v8, v12

    move/from16 v5, v49

    move v12, v6

    move-object/from16 v6, v18

    move/from16 v18, v2

    const/4 v2, 0x1

    :goto_14
    move/from16 v50, v4

    move v4, v3

    move v3, v14

    move/from16 v14, v16

    move/from16 v16, v50

    goto/16 :goto_20

    :cond_23
    move/from16 v8, v26

    move/from16 v9, v29

    move-object/from16 v26, v15

    move/from16 v15, v31

    if-lt v3, v2, :cond_24

    if-le v3, v4, :cond_25

    :cond_24
    if-ne v3, v6, :cond_2c

    :cond_25
    if-lez v27, :cond_26

    move/from16 v29, v12

    .line 4778
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v5

    const-string v5, "Unexpected \'"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x27

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_26
    move/from16 v31, v5

    move/from16 v29, v12

    :goto_15
    if-ne v3, v6, :cond_27

    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_18

    :cond_27
    add-int/lit8 v25, v25, 0x1

    if-eq v3, v2, :cond_2a

    add-int v5, v28, v25

    add-int v5, v5, v27

    if-ltz v32, :cond_29

    move/from16 v12, v32

    :goto_16
    if-ge v12, v5, :cond_28

    const-wide/16 v46, 0xa

    mul-long v34, v34, v46

    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_28
    move/from16 v32, v12

    goto :goto_17

    :cond_29
    move/from16 v32, v5

    :goto_17
    sub-int/2addr v3, v2

    move v12, v6

    int-to-long v5, v3

    add-long v34, v34, v5

    goto :goto_19

    :cond_2a
    :goto_18
    move v12, v6

    :goto_19
    if-ltz v9, :cond_2b

    if-gez v15, :cond_2b

    add-int/lit8 v3, v9, 0x1

    int-to-byte v5, v3

    move v3, v14

    move/from16 v14, v16

    move-object/from16 v6, v18

    move/from16 v18, v2

    move/from16 v16, v4

    move v4, v15

    move-object/from16 v15, v26

    const/4 v2, 0x1

    move/from16 v26, v8

    move/from16 v8, v29

    move/from16 v29, v5

    :goto_1a
    move/from16 v5, v49

    goto/16 :goto_20

    :cond_2b
    move v3, v14

    move/from16 v14, v16

    move-object/from16 v6, v18

    move/from16 v5, v49

    :goto_1b
    move/from16 v18, v2

    move/from16 v16, v4

    move v4, v15

    move-object/from16 v15, v26

    const/4 v2, 0x1

    move/from16 v26, v8

    move/from16 v8, v29

    move/from16 v29, v9

    goto/16 :goto_20

    :cond_2c
    move/from16 v31, v5

    move/from16 v29, v12

    move v12, v6

    if-ne v3, v7, :cond_32

    const/16 v5, 0x27

    if-ne v3, v5, :cond_30

    add-int/lit8 v3, v13, 0x1

    .line 4804
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_30

    .line 4805
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v11, :cond_30

    if-lt v5, v2, :cond_2d

    if-le v5, v4, :cond_30

    :cond_2d
    const/16 v6, 0x27

    if-ne v5, v6, :cond_2e

    move v13, v3

    goto :goto_1c

    :cond_2e
    if-gez v9, :cond_2f

    move/from16 v14, v16

    move-object/from16 v6, v18

    move/from16 v5, v49

    const/4 v3, 0x3

    goto :goto_1b

    :cond_2f
    add-int/lit8 v3, v13, -0x1

    move/from16 v26, v8

    move/from16 v38, v13

    move/from16 v14, v16

    move-object/from16 v6, v18

    move/from16 v8, v29

    move/from16 v5, v49

    move/from16 v18, v2

    move v13, v3

    move/from16 v16, v4

    move/from16 v29, v9

    move v4, v15

    move-object/from16 v15, v19

    const/4 v2, 0x1

    const/4 v3, 0x2

    goto/16 :goto_20

    :cond_30
    :goto_1c
    if-ltz v15, :cond_31

    const-string v3, "Grouping separator after decimal"

    .line 4828
    invoke-direct {v0, v3, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    move/from16 v39, v9

    move v3, v14

    move/from16 v14, v16

    move-object/from16 v6, v18

    move/from16 v5, v49

    move/from16 v18, v2

    move/from16 v16, v4

    move v4, v15

    move-object/from16 v15, v26

    const/4 v2, 0x1

    move/from16 v26, v8

    move/from16 v8, v29

    const/16 v29, 0x0

    goto/16 :goto_20

    :cond_32
    move/from16 v5, v49

    if-ne v3, v5, :cond_34

    if-ltz v15, :cond_33

    const-string v3, "Multiple decimal separators"

    .line 4834
    invoke-direct {v0, v3, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    add-int v3, v28, v25

    add-int v3, v3, v27

    move-object/from16 v6, v18

    move-object/from16 v15, v26

    move/from16 v18, v2

    move/from16 v26, v8

    move/from16 v8, v29

    const/4 v2, 0x1

    move/from16 v29, v9

    goto/16 :goto_14

    .line 4841
    :cond_34
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v6, v18

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v6, v14, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3d

    move/from16 v3, v33

    if-ltz v3, :cond_35

    const-string v3, "Multiple exponential symbols"

    .line 4843
    invoke-direct {v0, v3, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    if-ltz v9, :cond_36

    const-string v3, "Grouping separator in exponential"

    .line 4846
    invoke-direct {v0, v3, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    .line 4848
    :cond_36
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v13, v3

    .line 4850
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v13, v3, :cond_37

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v14, v16

    if-ne v3, v14, :cond_38

    add-int/lit8 v13, v13, 0x1

    const/16 v41, 0x1

    goto :goto_1d

    :cond_37
    move/from16 v14, v16

    :cond_38
    :goto_1d
    move/from16 v16, v4

    const/4 v3, 0x0

    .line 4857
    :goto_1e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v13, v4, :cond_39

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_39

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    :cond_39
    add-int v4, v28, v25

    move/from16 v18, v2

    const/4 v2, 0x1

    if-ge v4, v2, :cond_3a

    add-int v4, v8, v27

    if-lt v4, v2, :cond_3c

    :cond_3a
    if-lez v8, :cond_3b

    if-gtz v28, :cond_3c

    :cond_3b
    if-ge v3, v2, :cond_3e

    :cond_3c
    const-string v4, "Malformed exponential"

    .line 4868
    invoke-direct {v0, v4, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :cond_3d
    move/from16 v18, v2

    move/from16 v14, v16

    move/from16 v3, v33

    const/4 v2, 0x1

    move/from16 v16, v4

    :cond_3e
    :goto_1f
    add-int/lit8 v4, v13, -0x1

    move/from16 v33, v3

    move/from16 v26, v8

    move/from16 v38, v13

    move/from16 v8, v29

    const/4 v3, 0x2

    move v13, v4

    move/from16 v29, v9

    move v4, v15

    move-object/from16 v15, v19

    :goto_20
    add-int/2addr v13, v2

    move/from16 v2, v18

    move/from16 v44, v36

    move/from16 v9, v48

    move-object/from16 v18, v6

    move/from16 v36, v8

    move v6, v12

    move/from16 v12, v40

    move v8, v5

    move/from16 v40, v10

    move/from16 v5, v31

    move/from16 v10, v45

    move/from16 v31, v4

    move/from16 v4, v16

    move/from16 v16, v14

    move v14, v3

    goto/16 :goto_2

    :cond_3f
    move/from16 v48, v9

    move/from16 v9, v29

    move/from16 v15, v31

    move/from16 v3, v33

    move/from16 v29, v36

    move/from16 v10, v40

    move/from16 v36, v44

    move/from16 v31, v5

    move v5, v8

    move/from16 v40, v12

    move/from16 v8, v26

    move v12, v6

    move-object/from16 v6, v18

    move/from16 v18, v2

    move/from16 v2, v16

    move/from16 v16, v4

    move/from16 v26, v2

    move v4, v13

    const/4 v2, 0x3

    const/4 v13, 0x0

    :goto_21
    if-eq v14, v2, :cond_40

    const/4 v2, 0x4

    if-ne v14, v2, :cond_41

    :cond_40
    const-string v2, "Unterminated quote"

    .line 5002
    invoke-direct {v0, v2, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    if-nez v38, :cond_42

    .line 5006
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v38

    :cond_42
    move/from16 v2, v38

    if-nez v13, :cond_43

    .line 5010
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    :cond_43
    if-nez v25, :cond_45

    if-nez v8, :cond_45

    if-lez v28, :cond_45

    if-ltz v15, :cond_45

    if-nez v15, :cond_44

    add-int/lit8 v25, v15, 0x1

    goto :goto_22

    :cond_44
    move/from16 v25, v15

    :goto_22
    sub-int v27, v28, v25

    const/16 v24, 0x1

    add-int/lit8 v28, v25, -0x1

    move/from16 v25, v4

    move/from16 v4, v28

    move/from16 v28, v24

    goto :goto_23

    :cond_45
    const/16 v24, 0x1

    move/from16 v50, v25

    move/from16 v25, v4

    move/from16 v4, v28

    move/from16 v28, v50

    :goto_23
    if-gez v15, :cond_46

    if-lez v27, :cond_46

    if-eqz v8, :cond_47

    :cond_46
    if-ltz v15, :cond_48

    if-gtz v8, :cond_47

    if-lt v15, v4, :cond_47

    move/from16 v49, v5

    add-int v5, v4, v28

    if-gt v15, v5, :cond_4b

    goto :goto_24

    :cond_47
    move/from16 v49, v5

    goto :goto_25

    :cond_48
    move/from16 v49, v5

    :goto_24
    if-eqz v9, :cond_4b

    move/from16 v5, v39

    if-eqz v5, :cond_4a

    if-lez v8, :cond_49

    if-gtz v28, :cond_4a

    :cond_49
    move-object/from16 v33, v6

    const/4 v6, 0x2

    if-le v14, v6, :cond_4c

    goto :goto_27

    :cond_4a
    move-object/from16 v33, v6

    goto :goto_26

    :cond_4b
    :goto_25
    move-object/from16 v33, v6

    move/from16 v5, v39

    :goto_26
    const/4 v6, 0x2

    :goto_27
    const-string v14, "Malformed pattern"

    .line 5045
    invoke-direct {v0, v14, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    if-ltz v10, :cond_51

    move/from16 v14, v22

    if-ne v10, v14, :cond_4d

    move/from16 v6, v37

    const/4 v10, 0x0

    goto :goto_28

    :cond_4d
    add-int/lit8 v14, v10, 0x2

    move/from16 v6, v37

    if-ne v14, v6, :cond_4e

    move/from16 v10, v24

    goto :goto_28

    :cond_4e
    if-ne v10, v2, :cond_4f

    const/4 v10, 0x2

    goto :goto_28

    :cond_4f
    if-ne v14, v13, :cond_50

    const/4 v10, 0x3

    goto :goto_28

    :cond_50
    const-string v13, "Illegal pad position"

    .line 5059
    invoke-direct {v0, v13, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->patternError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_51
    move/from16 v6, v37

    :goto_28
    if-nez v31, :cond_63

    .line 5069
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    iput-object v13, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    .line 5070
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    iput-object v13, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    if-ltz v3, :cond_52

    move/from16 v13, v24

    goto :goto_29

    :cond_52
    const/4 v13, 0x0

    .line 5072
    :goto_29
    iput-boolean v13, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    .line 5073
    iget-boolean v13, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-eqz v13, :cond_53

    .line 5074
    iput-byte v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minExponentDigits:B

    move/from16 v3, v41

    .line 5075
    iput-boolean v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->exponentSignAlwaysShown:Z

    :cond_53
    add-int v28, v4, v28

    add-int v3, v28, v27

    if-ltz v15, :cond_54

    move v13, v15

    goto :goto_2a

    :cond_54
    move v13, v3

    :goto_2a
    if-lez v8, :cond_55

    move/from16 v14, v24

    goto :goto_2b

    :cond_55
    const/4 v14, 0x0

    .line 5083
    :goto_2b
    invoke-virtual {v0, v14}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setSignificantDigitsUsed(Z)V

    if-eqz v14, :cond_56

    .line 5085
    invoke-virtual {v0, v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMinimumSignificantDigits(I)V

    add-int v4, v8, v27

    .line 5086
    invoke-virtual {v0, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMaximumSignificantDigits(I)V

    goto :goto_2f

    :cond_56
    sub-int v8, v13, v4

    .line 5089
    invoke-virtual {v0, v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMinimumIntegerDigits(I)V

    .line 5093
    iget-boolean v14, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-eqz v14, :cond_57

    add-int/2addr v4, v8

    goto :goto_2c

    :cond_57
    const/16 v4, 0x135

    :goto_2c
    invoke-virtual {v0, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMaximumIntegerDigits(I)V

    if-ltz v15, :cond_58

    sub-int v4, v3, v15

    goto :goto_2d

    :cond_58
    const/4 v4, 0x0

    .line 5095
    :goto_2d
    invoke-direct {v0, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->_setMaximumFractionDigits(I)V

    if-ltz v15, :cond_59

    sub-int v4, v28, v15

    goto :goto_2e

    :cond_59
    const/4 v4, 0x0

    .line 5097
    :goto_2e
    invoke-virtual {v0, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMinimumFractionDigits(I)V

    :goto_2f
    if-lez v9, :cond_5a

    move/from16 v4, v24

    goto :goto_30

    :cond_5a
    const/4 v4, 0x0

    .line 5100
    :goto_30
    invoke-virtual {v0, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setGroupingUsed(Z)V

    if-lez v9, :cond_5b

    move v4, v9

    goto :goto_31

    :cond_5b
    const/4 v4, 0x0

    .line 5101
    :goto_31
    iput-byte v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    if-lez v5, :cond_5c

    if-eq v5, v9, :cond_5c

    goto :goto_32

    :cond_5c
    const/4 v5, 0x0

    .line 5103
    :goto_32
    iput-byte v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    move/from16 v8, v29

    .line 5104
    iput v8, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    if-eqz v15, :cond_5e

    if-ne v15, v3, :cond_5d

    goto :goto_33

    :cond_5d
    const/4 v3, 0x0

    goto :goto_34

    :cond_5e
    :goto_33
    move/from16 v3, v24

    .line 5105
    :goto_34
    invoke-virtual {v0, v3}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setDecimalSeparatorAlwaysShown(Z)V

    if-ltz v10, :cond_5f

    .line 5107
    iput v10, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    sub-int/2addr v2, v6

    .line 5108
    iput v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    move/from16 v2, v42

    .line 5109
    iput-char v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->pad:C

    goto :goto_35

    :cond_5f
    const/4 v2, 0x0

    .line 5111
    iput v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    :goto_35
    move-wide/from16 v2, v34

    cmp-long v4, v2, v20

    if-eqz v4, :cond_62

    sub-int v5, v32, v13

    if-lez v5, :cond_60

    move v4, v5

    goto :goto_36

    :cond_60
    const/4 v4, 0x0

    .line 5117
    :goto_36
    invoke-static {v2, v3, v4}, Landroid/icu/math/BigDecimal;->valueOf(JI)Landroid/icu/math/BigDecimal;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-gez v5, :cond_61

    .line 5119
    iget-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    neg-int v3, v5

    invoke-virtual {v2, v3}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    :cond_61
    const/4 v2, 0x6

    .line 5121
    iput v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    goto :goto_37

    :cond_62
    const/4 v2, 0x0

    .line 5123
    move-object v13, v2

    check-cast v13, Landroid/icu/math/BigDecimal;

    invoke-virtual {v0, v13}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    :goto_37
    move/from16 v2, v43

    .line 5127
    iput v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    goto :goto_38

    .line 5131
    :cond_63
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    .line 5132
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    move/from16 v17, v24

    :goto_38
    add-int/lit8 v5, v31, 0x1

    move v6, v12

    move/from16 v4, v16

    move/from16 v2, v18

    move/from16 v14, v25

    move/from16 v16, v26

    move/from16 v15, v30

    move-object/from16 v18, v33

    move/from16 v3, v36

    move/from16 v12, v40

    move/from16 v10, v45

    move/from16 v9, v48

    move/from16 v8, v49

    goto/16 :goto_1

    .line 5139
    :cond_64
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_65

    const-string v2, ""

    .line 5140
    iput-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    iput-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    const/4 v2, 0x0

    .line 5141
    invoke-virtual {v0, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMinimumIntegerDigits(I)V

    const/16 v3, 0x135

    .line 5142
    invoke-virtual {v0, v3}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMaximumIntegerDigits(I)V

    .line 5143
    invoke-virtual {v0, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMinimumFractionDigits(I)V

    const/16 v2, 0x154

    .line 5144
    invoke-direct {v0, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->_setMaximumFractionDigits(I)V

    :cond_65
    if-eqz v17, :cond_66

    .line 5153
    iget-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    .line 5154
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    .line 5155
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 5156
    :cond_66
    iget-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    iput-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    .line 5157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    :cond_67
    const/4 v2, 0x0

    .line 5159
    invoke-virtual {v0, v2, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 5161
    iput-object v1, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    .line 5164
    iget v1, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    if-eqz v1, :cond_69

    .line 5167
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 5169
    iget-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {v1, v2}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setRoundingIncrement(D)V

    .line 5170
    iget-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {v1, v2}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v1

    .line 5171
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMinimumFractionDigits(I)V

    .line 5172
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->_setMaximumFractionDigits(I)V

    .line 5176
    :cond_68
    iget v1, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_69

    iget-object v1, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    if-nez v1, :cond_69

    .line 5178
    new-instance v1, Landroid/icu/text/CurrencyPluralInfo;

    iget-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v1, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 5181
    :cond_69
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->resetActualRounding()V

    return-void
.end method

.method private compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I
    .locals 6

    if-nez p8, :cond_4

    .line 2888
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyChoice:Ljava/text/ChoiceFormat;

    if-nez v0, :cond_4

    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    if-eqz v0, :cond_0

    if-eqz p6, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p3, :cond_1

    .line 2892
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->compareSimpleAffix(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    if-eqz p3, :cond_3

    .line 2894
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->compareSimpleAffix(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_4
    :goto_2
    move-object v0, p0

    move-object v1, p5

    move-object v2, p1

    move v3, p2

    move v4, p7

    move-object v5, p8

    .line 2889
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->compareComplexAffix(Ljava/lang/String;Ljava/lang/String;II[Landroid/icu/util/Currency;)I

    move-result p0

    return p0
.end method

.method private compareComplexAffix(Ljava/lang/String;Ljava/lang/String;II[Landroid/icu/util/Currency;)I
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, p3

    move v2, v1

    .line 3081
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_13

    if-ltz v3, :cond_13

    add-int/lit8 v4, v2, 0x1

    .line 3082
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x27

    if-ne v2, v5, :cond_3

    .line 3085
    :goto_1
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 3087
    invoke-static {p2, v3, v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->match(Ljava/lang/String;II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-le v2, v4, :cond_2

    .line 3091
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v3, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->match(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    .line 3093
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 3094
    invoke-static {p2, v3, v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->match(Ljava/lang/String;II)I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    goto :goto_1

    .line 3103
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    const/4 v5, 0x0

    const/16 v6, 0x25

    if-eq v2, v6, :cond_10

    const/16 v6, 0x2b

    if-eq v2, v6, :cond_f

    const/16 v6, 0x2d

    if-eq v2, v6, :cond_e

    const/16 v6, 0xa4

    if-eq v2, v6, :cond_5

    const/16 v6, 0x2030

    if-eq v2, v6, :cond_4

    goto/16 :goto_6

    .line 3163
    :cond_4
    iget-object v5, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 3118
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x1

    if-ge v4, v2, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_6

    move v2, v5

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    if-eqz v2, :cond_7

    add-int/lit8 v4, v4, 0x1

    .line 3122
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v4, v2, :cond_8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_8

    goto :goto_3

    :cond_8
    move v5, v1

    :goto_3
    if-eqz v5, :cond_9

    add-int/lit8 v4, v4, 0x1

    :cond_9
    move v2, v4

    .line 3130
    sget-object v4, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v4

    if-nez v4, :cond_a

    .line 3133
    iget-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    sget-object v5, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v4, v5}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v4

    .line 3136
    :cond_a
    new-instance v5, Ljava/text/ParsePosition;

    invoke-direct {v5, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3138
    invoke-static {v4, p2, p4, v5}, Landroid/icu/util/Currency;->parse(Landroid/icu/util/ULocale;Ljava/lang/String;ILjava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    if-eqz p5, :cond_b

    .line 3143
    invoke-static {v3}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v3

    aput-object v3, p5, v1

    goto :goto_4

    .line 3148
    :cond_b
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getEffectiveCurrency()Landroid/icu/util/Currency;

    move-result-object v4

    .line 3149
    invoke-virtual {v4}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_5

    .line 3154
    :cond_c
    :goto_4
    invoke-virtual {v5}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    goto/16 :goto_0

    :cond_d
    :goto_5
    move v3, v0

    goto/16 :goto_0

    .line 3169
    :cond_e
    iget-object v5, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 3166
    :cond_f
    iget-object v5, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 3160
    :cond_10
    iget-object v5, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v5

    :goto_6
    if-eqz v5, :cond_12

    .line 3177
    invoke-static {p2, v3, v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->match(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    :cond_11
    move v2, v4

    goto/16 :goto_0

    .line 3181
    :cond_12
    invoke-static {p2, v3, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->match(Ljava/lang/String;II)I

    move-result v3

    .line 3182
    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3183
    invoke-static {p1, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_0

    :cond_13
    sub-int/2addr v3, p3

    return v3
.end method

.method private static compareSimpleAffix(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10

    .line 2950
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->trimMarksFromAffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    move v3, p2

    move v2, v0

    .line 2951
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 2952
    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v4

    .line 2953
    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    .line 2954
    invoke-static {v4}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_6

    move v6, v0

    .line 2960
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 2961
    invoke-static {p1, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v4, :cond_3

    add-int/2addr v2, v5

    add-int/2addr v3, v5

    .line 2966
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_1

    goto :goto_2

    .line 2969
    :cond_1
    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v4

    .line 2970
    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    .line 2971
    invoke-static {v4}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_2
    move v6, v1

    goto :goto_3

    :cond_2
    move v6, v1

    goto :goto_1

    .line 2974
    :cond_3
    invoke-static {v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isBidiMark(I)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2982
    :cond_4
    :goto_3
    invoke-static {p0, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    move-result v2

    .line 2987
    invoke-static {p1, v3}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipUWhiteSpace(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_5

    if-nez v6, :cond_5

    return v7

    .line 2994
    :cond_5
    invoke-static {p0, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipUWhiteSpace(Ljava/lang/String;I)I

    move-result v2

    move v3, v4

    goto :goto_0

    :cond_6
    move v6, v2

    move v2, v0

    .line 2997
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_8

    .line 2998
    invoke-static {p1, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v8

    if-nez v2, :cond_7

    .line 2999
    invoke-static {v8, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->equalWithSignCompatibility(II)Z

    move-result v9

    if-eqz v9, :cond_7

    add-int/2addr v6, v5

    add-int/2addr v3, v5

    move v2, v1

    goto :goto_4

    .line 3003
    :cond_7
    invoke-static {v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isBidiMark(I)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    if-nez v2, :cond_9

    return v7

    :cond_9
    move v2, v6

    goto :goto_0

    :cond_a
    sub-int/2addr v3, p2

    return v3
.end method

.method private create(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/text/CurrencyPluralInfo;I)V
    .locals 1

    const/4 v0, 0x6

    if-eq p4, v0, :cond_0

    .line 761
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->createFromPatternAndSymbols(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    goto :goto_0

    .line 764
    :cond_0
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/DecimalFormatSymbols;

    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 765
    iput-object p3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 771
    iget-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    const-string/jumbo p2, "other"

    .line 772
    invoke-virtual {p1, p2}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 773
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    .line 774
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setCurrencyForSymbols()V

    .line 776
    :goto_0
    iput p4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->style:I

    return-void
.end method

.method private createFromPatternAndSymbols(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 0

    .line 710
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/text/DecimalFormatSymbols;

    iput-object p2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    const/16 p2, 0xa4

    .line 711
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_0

    .line 714
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setCurrencyForSymbols()V

    :cond_0
    const/4 p2, 0x0

    .line 716
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    .line 717
    iget p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 718
    new-instance p1, Landroid/icu/text/CurrencyPluralInfo;

    iget-object p2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 720
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffixAdjustWidth(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static equalWithSignCompatibility(II)Z
    .locals 1

    if-eq p0, p1, :cond_2

    .line 3018
    sget-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minusSigns:Landroid/icu/text/UnicodeSet;

    .line 3019
    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minusSigns:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->plusSigns:Landroid/icu/text/UnicodeSet;

    .line 3020
    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->plusSigns:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3987
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 3990
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 6

    const/4 v0, 0x0

    .line 4134
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    move v1, v0

    .line 4135
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_e

    add-int/lit8 v2, v1, 0x1

    .line 4136
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x27

    if-ne v1, v3, :cond_3

    .line 4139
    :goto_1
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 4141
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-le v1, v2, :cond_2

    .line 4145
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    .line 4147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 4148
    invoke-virtual {p3, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    .line 4157
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    const/16 v3, 0x25

    if-eq v1, v3, :cond_d

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_c

    const/16 v3, 0xa4

    if-eq v1, v3, :cond_5

    const/16 v3, 0x2030

    if-eq v1, v3, :cond_4

    .line 4209
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 4203
    :cond_4
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    .line 4168
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    if-ge v2, v1, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    move v1, v4

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    if-eqz v1, :cond_7

    add-int/lit8 v2, v2, 0x1

    .line 4172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    move v4, v0

    .line 4179
    :goto_3
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    if-eqz p2, :cond_8

    .line 4185
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4, p2, v5}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_8
    if-nez v1, :cond_9

    .line 4188
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v3, v1, v0, v5}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 4190
    :cond_9
    invoke-virtual {v3}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_a
    if-eqz v1, :cond_b

    .line 4193
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 4194
    :cond_b
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    .line 4197
    :goto_4
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 4206
    :cond_c
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 4200
    :cond_d
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPercentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    move v1, v2

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private expandAffixAdjustWidth(Ljava/lang/String;)V
    .locals 2

    .line 4681
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffixes(Ljava/lang/String;)V

    .line 4684
    iget p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    if-lez p1, :cond_0

    .line 4685
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    :cond_0
    return-void
.end method

.method private expandAffixes(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 4082
    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyChoice:Ljava/text/ChoiceFormat;

    .line 4085
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4086
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4087
    invoke-direct {p0, v1, p1, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 4088
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    .line 4090
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4091
    invoke-direct {p0, v1, p1, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 4092
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    .line 4094
    :cond_1
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 4095
    invoke-direct {p0, v1, p1, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 4096
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    .line 4098
    :cond_2
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 4099
    invoke-direct {p0, v1, p1, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 4100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v1, 0x0

    .line 847
    invoke-virtual {v8, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 848
    invoke-virtual {v8, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 850
    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 851
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v2

    if-nez v2, :cond_0

    .line 852
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto :goto_0

    .line 853
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v2, v3, :cond_1

    .line 854
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 857
    :cond_1
    :goto_0
    iget-object v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_2

    .line 864
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    iget-object v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    .line 865
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 864
    invoke-direct {v0, v2, v3, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    .line 867
    :cond_2
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v2

    if-nez v2, :cond_3

    .line 868
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_1

    .line 869
    :cond_3
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    sget-object v3, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v2, v3, :cond_4

    .line 870
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 873
    :cond_4
    :goto_1
    invoke-direct {v0, v7, v8, v1, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    return-object v7

    .line 879
    :cond_5
    invoke-direct/range {p0 .. p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiply(D)D

    move-result-wide v2

    .line 880
    invoke-direct {v0, v2, v3}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isNegative(D)Z

    move-result v17

    .line 881
    invoke-direct {v0, v2, v3}, Landroid/icu/text/DecimalFormat_ICU58_Android;->round(D)D

    move-result-wide v9

    .line 883
    invoke-static {v9, v10}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, v17

    move-object/from16 v5, p4

    move/from16 v6, p5

    .line 884
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat_ICU58_Android;->appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I

    move-result v9

    .line 886
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v1

    if-nez v1, :cond_6

    .line 887
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto :goto_2

    .line 888
    :cond_6
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    sget-object v2, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v1, v2, :cond_7

    .line 889
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 893
    :cond_7
    :goto_2
    iget-object v1, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_8

    .line 895
    sget-object v1, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget-object v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 896
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 895
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    .line 898
    :cond_8
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    move-result v1

    if-nez v1, :cond_9

    .line 899
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_3

    .line 900
    :cond_9
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    sget-object v2, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v1, v2, :cond_a

    .line 901
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_a
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, v17

    move-object/from16 v5, p4

    move/from16 v6, p5

    .line 904
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat_ICU58_Android;->appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I

    move-result v1

    .line 906
    invoke-direct {v0, v7, v8, v9, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    return-object v7

    .line 910
    :cond_b
    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->precision(Z)I

    move-result v2

    .line 923
    iget-boolean v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_d

    if-lez v2, :cond_d

    const-wide/16 v5, 0x0

    cmpl-double v3, v9, v5

    if-eqz v3, :cond_d

    iget v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    const/4 v11, 0x6

    if-eq v3, v11, :cond_d

    rsub-int/lit8 v3, v2, 0x1

    .line 924
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log10(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    add-int/2addr v3, v11

    if-gez v3, :cond_c

    .line 928
    sget-object v11, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    neg-int v3, v3

    .line 929
    invoke-virtual {v11, v3}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v11

    move-wide v13, v11

    move-wide v11, v5

    goto :goto_4

    .line 931
    :cond_c
    sget-object v11, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    .line 932
    invoke-virtual {v11, v3}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v11

    move-wide v13, v5

    .line 934
    :goto_4
    iget v15, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    move/from16 v16, v17

    invoke-static/range {v9 .. v16}, Landroid/icu/text/DecimalFormat_ICU58_Android;->round(DDDIZ)D

    move-result-wide v5

    goto :goto_5

    :cond_d
    move-wide v5, v9

    .line 940
    :goto_5
    iget-object v9, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    monitor-enter v9

    .line 941
    :try_start_0
    iget-object v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget-boolean v10, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-nez v10, :cond_e

    .line 942
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->areSignificantDigitsUsed()Z

    move-result v10

    if-nez v10, :cond_e

    move v1, v4

    .line 941
    :cond_e
    invoke-virtual {v3, v5, v6, v2, v1}, Landroid/icu/text/DigitList_Android;->set(DIZ)V

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-wide v2, v5

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, v17

    move v7, v10

    move/from16 v8, p5

    .line 943
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    monitor-exit v9

    return-object v0

    :catchall_0
    move-exception v0

    .line 944
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 12

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object/from16 v5, p4

    const/4 v3, 0x0

    .line 1100
    invoke-virtual {v5, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1101
    invoke-virtual {v5, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1105
    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-eqz v6, :cond_0

    .line 1106
    invoke-static {p1, p2}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object v1

    invoke-virtual {p0, v1, p3, v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    const/4 v9, 0x1

    if-gez v8, :cond_1

    move v8, v9

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_0
    if-eqz v8, :cond_2

    neg-long v1, v1

    .line 1118
    :cond_2
    iget v10, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    if-eq v10, v9, :cond_6

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    const-wide/high16 v6, -0x8000000000000000L

    int-to-long v10, v10

    .line 1121
    div-long/2addr v6, v10

    cmp-long v6, v1, v6

    if-gtz v6, :cond_4

    :goto_1
    move v3, v9

    goto :goto_2

    :cond_3
    const-wide v6, 0x7fffffffffffffffL

    int-to-long v10, v10

    .line 1124
    div-long/2addr v6, v10

    cmp-long v6, v1, v6

    if-lez v6, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v3, :cond_6

    if-eqz v8, :cond_5

    neg-long v1, v1

    .line 1131
    :cond_5
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    move/from16 v10, p5

    invoke-direct {p0, v1, p3, v5, v10}, Landroid/icu/text/DecimalFormat_ICU58_Android;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0

    :cond_6
    move/from16 v10, p5

    .line 1136
    iget v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    int-to-long v6, v3

    mul-long/2addr v1, v6

    .line 1137
    iget-object v11, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    monitor-enter v11

    .line 1138
    :try_start_0
    iget-object v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-direct {p0, v9}, Landroid/icu/text/DecimalFormat_ICU58_Android;->precision(Z)I

    move-result v6

    invoke-virtual {v3, v1, v2, v6}, Landroid/icu/text/DigitList_Android;->set(JI)V

    .line 1140
    iget-object v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {v3}, Landroid/icu/text/DigitList_Android;->wasRounded()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    const/4 v6, 0x7

    if-eq v3, v6, :cond_7

    goto :goto_3

    .line 1141
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Rounding necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    long-to-double v2, v1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v4, p3

    move-object/from16 v5, p4

    move v6, v8

    move/from16 v8, p5

    .line 1143
    invoke-direct/range {v1 .. v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object v0

    monitor-exit v11

    return-object v0

    :catchall_0
    move-exception v0

    .line 1144
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 9

    .line 1193
    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    int-to-long v2, v0

    .line 1194
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1197
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrement:Ljava/math/BigDecimal;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1198
    iget v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    invoke-virtual {p1, v0, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrement:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1201
    :cond_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    monitor-enter v0

    .line 1202
    :try_start_0
    iget-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->precision(Z)I

    move-result v4

    iget-boolean v5, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-nez v5, :cond_2

    .line 1203
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->areSignificantDigitsUsed()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v2

    .line 1202
    :goto_0
    invoke-virtual {v3, p1, v4, v5}, Landroid/icu/text/DigitList_Android;->set(Ljava/math/BigDecimal;IZ)V

    .line 1205
    iget-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {v3}, Landroid/icu/text/DigitList_Android;->wasRounded()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 1206
    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Rounding necessary"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1208
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    if-gez p1, :cond_5

    move v6, v1

    goto :goto_2

    :cond_5
    move v6, v2

    :goto_2
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, v3

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;
    .locals 8

    .line 1160
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 1161
    new-instance p4, Landroid/icu/math/BigDecimal;

    invoke-direct {p4, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, p4, p2, p3}, Landroid/icu/text/DecimalFormat_ICU58_Android;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 1164
    :cond_0
    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    int-to-long v2, v0

    .line 1165
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 1170
    :cond_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    monitor-enter v0

    .line 1171
    :try_start_0
    iget-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-direct {p0, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->precision(Z)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/icu/text/DigitList_Android;->set(Ljava/math/BigInteger;I)V

    .line 1173
    iget-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {v2}, Landroid/icu/text/DigitList_Android;->wasRounded()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    goto :goto_0

    .line 1174
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Rounding necessary"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1176
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    move v5, v1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subformat(ILjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private formatAffix2Attribute(ZLandroid/icu/text/NumberFormat$Field;Ljava/lang/StringBuffer;II)V
    .locals 0

    if-nez p1, :cond_0

    .line 4341
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/2addr p4, p1

    :cond_0
    add-int/2addr p5, p4

    .line 4344
    invoke-direct {p0, p2, p4, p5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    return-void
.end method

.method private getEquivalentDecimals(Ljava/lang/String;Z)Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 2840
    sget-object p0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    if-eqz p2, :cond_1

    .line 2842
    sget-object p2, Landroid/icu/text/DecimalFormat_ICU58_Android;->strictDotEquivalents:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2843
    sget-object p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->strictDotEquivalents:Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 2844
    :cond_0
    sget-object p2, Landroid/icu/text/DecimalFormat_ICU58_Android;->strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2845
    sget-object p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->strictCommaEquivalents:Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 2848
    :cond_1
    sget-object p2, Landroid/icu/text/DecimalFormat_ICU58_Android;->dotEquivalents:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2849
    sget-object p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->dotEquivalents:Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 2850
    :cond_2
    sget-object p2, Landroid/icu/text/DecimalFormat_ICU58_Android;->commaEquivalents:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2851
    sget-object p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->commaEquivalents:Landroid/icu/text/UnicodeSet;

    :cond_3
    :goto_0
    return-object p0
.end method

.method private static isBidiMark(I)Z
    .locals 1

    const/16 v0, 0x200e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x61c

    if-ne p0, v0, :cond_0

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

.method private isGroupingPosition(I)Z
    .locals 4

    .line 1254
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isGroupingUsed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    iget-byte v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    if-lez v0, :cond_1

    .line 1255
    iget-byte v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    const/4 v3, 0x1

    if-lez v2, :cond_0

    if-le p1, v0, :cond_0

    sub-int/2addr p1, v0

    .line 1256
    rem-int/2addr p1, v2

    if-nez p1, :cond_1

    :goto_0
    move v1, v3

    goto :goto_1

    .line 1258
    :cond_0
    iget-byte p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    rem-int/2addr p1, p0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private isNegative(D)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double p0, p1, v0

    if-ltz p0, :cond_1

    cmpl-double p0, p1, v0

    if-nez p0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, p1

    cmpg-double p0, v2, v0

    if-gez p0, :cond_0

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

.method static final match(Ljava/lang/String;II)I
    .locals 2

    const/4 v0, -0x1

    if-ltz p1, :cond_4

    .line 3196
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 3199
    :cond_0
    invoke-static {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipBidiMarks(Ljava/lang/String;I)I

    move-result p1

    .line 3200
    invoke-static {p2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3204
    invoke-static {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return p0

    .line 3210
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_4

    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p2, :cond_3

    goto :goto_0

    .line 3213
    :cond_3
    invoke-static {p2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result p2

    add-int/2addr p1, p2

    invoke-static {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipBidiMarks(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method static final match(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 3223
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-ltz p1, :cond_2

    .line 3224
    invoke-static {p2, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 3225
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 3226
    invoke-static {v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isBidiMark(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 3229
    :cond_1
    invoke-static {p0, p1, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->match(Ljava/lang/String;II)I

    move-result p1

    .line 3230
    invoke-static {v1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3231
    invoke-static {p2, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipPatternWhiteSpace(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    return p1
.end method

.method private matchesDigit(Ljava/lang/String;I[I)I
    .locals 4

    .line 2814
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 2818
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 2819
    aget-object v3, p0, v1

    invoke-virtual {p1, p2, v3, v0, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2820
    aput v1, p3, v0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2826
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    .line 2827
    invoke-static {p0, v2}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result p1

    aput p1, p3, v0

    .line 2828
    aget p1, p3, v0

    if-ltz p1, :cond_2

    .line 2829
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method private multiply(D)D
    .locals 2

    .line 837
    iget p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    int-to-double v0, p0

    mul-double/2addr p1, v0

    :cond_0
    return-wide p1
.end method

.method private parse(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v12, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 1982
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v15

    .line 1987
    iget v0, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    const/4 v11, 0x1

    if-lez v0, :cond_1

    iget v0, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    if-eqz v0, :cond_0

    if-ne v0, v11, :cond_1

    .line 1989
    :cond_0
    invoke-direct {v12, v1, v15}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipPadding(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v15

    .line 1991
    :goto_0
    iget-object v2, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v2, v10, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    const/4 v9, 0x2

    const/4 v3, 0x3

    if-eqz v2, :cond_4

    .line 1992
    iget-object v2, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 1994
    iget v2, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    if-lez v2, :cond_3

    iget v2, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    if-eq v2, v9, :cond_2

    if-ne v2, v3, :cond_3

    .line 1996
    :cond_2
    invoke-direct {v12, v1, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipPadding(Ljava/lang/String;I)I

    move-result v0

    .line 1998
    :cond_3
    invoke-virtual {v13, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1999
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    return-object v0

    :cond_4
    new-array v8, v3, [Z

    .line 2006
    iget v0, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    const/16 v16, 0x0

    if-eqz v0, :cond_6

    .line 2007
    invoke-direct {v12, v1, v13, v14, v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseForCurrency(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;[Z)Z

    move-result v0

    if-nez v0, :cond_5

    return-object v16

    :cond_5
    move-object/from16 v21, v8

    move/from16 v20, v9

    move/from16 v19, v10

    move v14, v11

    goto :goto_1

    :cond_6
    if-eqz v14, :cond_7

    return-object v16

    .line 2013
    :cond_7
    iget-object v3, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget-object v6, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    iget-object v7, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    iget-object v5, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    iget-object v4, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v19, v4

    move-object v4, v8

    move-object/from16 v20, v5

    move-object/from16 v5, p3

    move-object/from16 v21, v8

    move-object/from16 v8, v20

    move/from16 v20, v9

    move-object/from16 v9, v19

    move/from16 v19, v10

    move/from16 v10, v17

    move v14, v11

    move/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList_Android;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2016
    invoke-virtual {v13, v15}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v16

    .line 2024
    :cond_8
    :goto_1
    aget-boolean v0, v21, v19

    if-eqz v0, :cond_a

    .line 2025
    new-instance v0, Ljava/lang/Double;

    aget-boolean v1, v21, v14

    if-eqz v1, :cond_9

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_2

    :cond_9
    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 2026
    :goto_2
    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_7

    .line 2030
    :cond_a
    aget-boolean v0, v21, v20

    const-string v1, "-0.0"

    if-eqz v0, :cond_c

    .line 2031
    aget-boolean v0, v21, v14

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/Double;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_b
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2035
    :cond_c
    aget-boolean v0, v21, v14

    if-nez v0, :cond_d

    iget-object v0, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {v0}, Landroid/icu/text/DigitList_Android;->isZero()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2036
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2042
    :cond_d
    iget v0, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    .line 2043
    :goto_3
    rem-int/lit8 v1, v0, 0xa

    if-nez v1, :cond_e

    .line 2044
    iget-object v1, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v2, v1, Landroid/icu/text/DigitList_Android;->decimalAt:I

    sub-int/2addr v2, v14

    iput v2, v1, Landroid/icu/text/DigitList_Android;->decimalAt:I

    .line 2045
    div-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 2049
    :cond_e
    iget-boolean v1, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseBigDecimal:Z

    if-nez v1, :cond_14

    if-ne v0, v14, :cond_14

    iget-object v1, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {v1}, Landroid/icu/text/DigitList_Android;->isIntegral()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2051
    iget-object v0, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v0, v0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_13

    const-wide/16 v0, 0x0

    .line 2053
    iget-object v2, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v2, v2, Landroid/icu/text/DigitList_Android;->count:I

    if-lez v2, :cond_12

    move-wide v1, v0

    move/from16 v0, v19

    .line 2055
    :goto_4
    iget-object v3, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v3, v3, Landroid/icu/text/DigitList_Android;->count:I

    const-wide/16 v4, 0xa

    if-ge v0, v3, :cond_f

    mul-long/2addr v1, v4

    .line 2056
    iget-object v3, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget-object v3, v3, Landroid/icu/text/DigitList_Android;->digits:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    int-to-char v0, v0

    int-to-long v5, v0

    add-long/2addr v1, v5

    const-wide/16 v5, 0x30

    sub-long/2addr v1, v5

    move v0, v4

    goto :goto_4

    :cond_f
    :goto_5
    add-int/lit8 v3, v0, 0x1

    .line 2058
    iget-object v6, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v6, v6, Landroid/icu/text/DigitList_Android;->decimalAt:I

    if-ge v0, v6, :cond_10

    mul-long/2addr v1, v4

    move v0, v3

    goto :goto_5

    .line 2061
    :cond_10
    aget-boolean v0, v21, v14

    if-nez v0, :cond_11

    neg-long v0, v1

    goto :goto_6

    :cond_11
    move-wide v0, v1

    .line 2065
    :cond_12
    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7

    .line 2067
    :cond_13
    iget-object v0, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    aget-boolean v1, v21, v14

    invoke-virtual {v0, v1}, Landroid/icu/text/DigitList_Android;->getBigInteger(Z)Ljava/math/BigInteger;

    move-result-object v0

    .line 2068
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_16

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7

    .line 2073
    :cond_14
    iget-object v1, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    aget-boolean v2, v21, v14

    invoke-virtual {v1, v2}, Landroid/icu/text/DigitList_Android;->getBigDecimalICU(Z)Landroid/icu/math/BigDecimal;

    move-result-object v1

    if-eq v0, v14, :cond_15

    int-to-long v2, v0

    .line 2076
    invoke-static {v2, v3}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object v0

    iget-object v2, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    invoke-virtual {v1, v0, v2}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    goto :goto_7

    :cond_15
    move-object v0, v1

    :cond_16
    :goto_7
    if-eqz p3, :cond_17

    .line 2082
    new-instance v1, Landroid/icu/util/CurrencyAmount;

    aget-object v2, p3, v19

    invoke-direct {v1, v0, v2}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    move-object v0, v1

    :cond_17
    return-object v0
.end method

.method private parseForCurrency(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;[Z)Z
    .locals 27

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    .line 2087
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v14

    .line 2088
    iget-boolean v0, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->isReadyForParsing:Z

    const/4 v15, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x3

    if-nez v0, :cond_1

    .line 2089
    iget v0, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    .line 2090
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setupCurrencyAffixForAllPatterns()V

    if-ne v0, v10, :cond_0

    .line 2093
    iget-object v0, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    invoke-direct {v12, v0, v15}, Landroid/icu/text/DecimalFormat_ICU58_Android;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2095
    :cond_0
    iget-object v0, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    invoke-direct {v12, v0, v15}, Landroid/icu/text/DecimalFormat_ICU58_Android;->applyPattern(Ljava/lang/String;Z)V

    .line 2097
    :goto_0
    iput-boolean v11, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->isReadyForParsing:Z

    :cond_1
    const/16 v16, 0x0

    new-array v9, v10, [Z

    .line 2107
    new-instance v8, Ljava/text/ParsePosition;

    invoke-direct {v8, v14}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2108
    new-instance v7, Landroid/icu/text/DigitList_Android;

    invoke-direct {v7}, Landroid/icu/text/DigitList_Android;-><init>()V

    .line 2110
    iget v0, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->style:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 2111
    iget-object v6, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    iget-object v5, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    iget-object v4, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    iget-object v3, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object/from16 v19, v3

    move-object v3, v7

    move-object/from16 v20, v4

    move-object v4, v9

    move-object/from16 v21, v5

    move-object/from16 v5, p3

    move-object/from16 v22, v7

    move-object/from16 v7, v21

    move-object/from16 v21, v8

    move-object/from16 v8, v20

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    move v15, v10

    move/from16 v10, v17

    move/from16 v17, v11

    move/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList_Android;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    goto :goto_1

    :cond_2
    move-object/from16 v22, v7

    move-object/from16 v21, v8

    move-object/from16 v20, v9

    move v15, v10

    move/from16 v17, v11

    .line 2115
    iget-object v6, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    iget-object v7, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    iget-object v8, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    iget-object v9, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v20

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v11}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList_Android;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    :goto_1
    const/4 v11, -0x1

    if-eqz v0, :cond_4

    .line 2120
    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-le v1, v14, :cond_3

    .line 2121
    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    move-object/from16 v2, v22

    .line 2123
    iput-object v2, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    move v2, v11

    move-object/from16 v16, v20

    goto :goto_3

    :cond_3
    move v2, v11

    goto :goto_2

    .line 2126
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v1

    move v2, v1

    :goto_2
    move v1, v14

    .line 2130
    :goto_3
    iget-object v3, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->affixPatternsForCurrency:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move v9, v1

    move v10, v2

    move-object/from16 v20, v16

    move/from16 v16, v0

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;

    new-array v8, v15, [Z

    .line 2132
    new-instance v7, Ljava/text/ParsePosition;

    invoke-direct {v7, v14}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2133
    new-instance v6, Landroid/icu/text/DigitList_Android;

    invoke-direct {v6}, Landroid/icu/text/DigitList_Android;-><init>()V

    .line 2135
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->getNegPrefix()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->getNegSuffix()Ljava/lang/String;

    move-result-object v22

    .line 2136
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->getPosPrefix()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->getPosSuffix()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    .line 2137
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;->getPatternType()I

    move-result v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v3, v6

    move-object v4, v8

    move-object/from16 v5, p3

    move-object v15, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v23

    move v13, v9

    move-object/from16 v9, v24

    move/from16 v23, v14

    move v14, v10

    move/from16 v10, v25

    move/from16 v11, v26

    .line 2134
    invoke-direct/range {v0 .. v11}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList_Android;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2140
    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-le v0, v13, :cond_5

    .line 2141
    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 2143
    iput-object v15, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    move v9, v0

    move v10, v14

    move/from16 v16, v17

    move-object/from16 v20, v22

    goto :goto_5

    :cond_5
    move v9, v13

    move v10, v14

    move/from16 v16, v17

    goto :goto_5

    .line 2146
    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    if-le v0, v14, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v10

    move v14, v10

    :cond_7
    move v9, v13

    move v10, v14

    :goto_5
    move-object/from16 v13, p2

    move/from16 v14, v23

    const/4 v11, -0x1

    const/4 v15, 0x3

    goto :goto_4

    :cond_8
    move v13, v9

    move/from16 v23, v14

    move v0, v15

    move v14, v10

    new-array v15, v0, [Z

    .line 2162
    new-instance v11, Ljava/text/ParsePosition;

    move/from16 v0, v23

    invoke-direct {v11, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2163
    new-instance v10, Landroid/icu/text/DigitList_Android;

    invoke-direct {v10}, Landroid/icu/text/DigitList_Android;-><init>()V

    .line 2166
    iget-object v6, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    iget-object v7, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    iget-object v8, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    iget-object v9, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object v3, v10

    move-object v4, v15

    move-object/from16 v5, p3

    move-object/from16 v22, v15

    move-object v15, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v21

    invoke-direct/range {v0 .. v11}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList_Android;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2170
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-le v0, v13, :cond_9

    .line 2171
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    .line 2173
    iput-object v15, v12, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    move-object/from16 v20, v22

    goto :goto_6

    :cond_9
    move v9, v13

    :goto_6
    move v13, v9

    move/from16 v16, v17

    goto :goto_8

    .line 2177
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    if-le v0, v14, :cond_b

    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v10

    goto :goto_7

    :cond_b
    move v10, v14

    :goto_7
    move v14, v10

    :goto_8
    if-nez v16, :cond_c

    move-object/from16 v0, p2

    .line 2183
    invoke-virtual {v0, v14}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_a

    :cond_c
    move-object/from16 v0, p2

    .line 2185
    invoke-virtual {v0, v13}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v1, -0x1

    .line 2186
    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    :goto_9
    if-ge v0, v1, :cond_d

    .line 2188
    aget-boolean v2, v20, v0

    aput-boolean v2, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_d
    :goto_a
    return v16
.end method

.method private patternError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5186
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in pattern \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private precision(Z)I
    .locals 1

    .line 1270
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->areSignificantDigitsUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumSignificantDigits()I

    move-result p0

    return p0

    .line 1272
    :cond_0
    iget-boolean v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-eqz v0, :cond_1

    .line 1273
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumIntegerDigits()I

    move-result p1

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumFractionDigits()I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    .line 1275
    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumFractionDigits()I

    move-result p0

    :goto_0
    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 5475
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 5492
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumIntegerDigits()I

    move-result p1

    const v0, 0x77359400

    if-le p1, v0, :cond_0

    .line 5493
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMaximumIntegerDigits(I)V

    .line 5495
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumFractionDigits()I

    move-result p1

    const/16 v0, 0x154

    if-le p1, v0, :cond_1

    .line 5496
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->_setMaximumFractionDigits(I)V

    .line 5498
    :cond_1
    iget p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->serialVersionOnStream:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_2

    const/4 p1, 0x0

    .line 5499
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->exponentSignAlwaysShown:Z

    const/4 v0, 0x0

    .line 5500
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    const/4 v0, 0x6

    .line 5501
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    .line 5502
    iput p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    const/16 v0, 0x20

    .line 5503
    iput-char v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->pad:C

    .line 5504
    iput p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    .line 5505
    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->serialVersionOnStream:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 5507
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    .line 5510
    :cond_2
    iget p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->serialVersionOnStream:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_3

    .line 5513
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setCurrencyForSymbols()V

    .line 5515
    :cond_3
    iget p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->serialVersionOnStream:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_4

    .line 5516
    sget-object p1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    .line 5518
    :cond_4
    iput v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->serialVersionOnStream:I

    .line 5519
    new-instance p1, Landroid/icu/text/DigitList_Android;

    invoke-direct {p1}, Landroid/icu/text/DigitList_Android;-><init>()V

    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    .line 5521
    iget-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrement:Ljava/math/BigDecimal;

    if-eqz p1, :cond_5

    .line 5522
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    .line 5524
    :cond_5
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->resetActualRounding()V

    return-void
.end method

.method private resetActualRounding()V
    .locals 4

    .line 6140
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6141
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumFractionDigits()I

    move-result v0

    if-lez v0, :cond_0

    .line 6142
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/math/BigDecimal;->movePointLeft(I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    .line 6143
    :goto_0
    iget-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    invoke-virtual {v2, v0}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 6144
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    goto :goto_2

    .line 6146
    :cond_1
    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    invoke-virtual {v0, v2}, Landroid/icu/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    goto :goto_2

    .line 6149
    :cond_3
    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isScientificNotation()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 6155
    :cond_4
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumFractionDigits()I

    move-result v0

    if-lez v0, :cond_5

    .line 6156
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumFractionDigits()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/icu/math/BigDecimal;->movePointLeft(I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    goto :goto_2

    .line 6158
    :cond_5
    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    goto :goto_2

    .line 6153
    :cond_6
    :goto_1
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    .line 6163
    :goto_2
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-nez v0, :cond_7

    const-wide/16 v2, 0x0

    .line 6164
    invoke-direct {p0, v2, v3}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setRoundingDouble(D)V

    .line 6165
    iput-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrement:Ljava/math/BigDecimal;

    goto :goto_3

    .line 6167
    :cond_7
    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setRoundingDouble(D)V

    .line 6168
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrement:Ljava/math/BigDecimal;

    :goto_3
    return-void
.end method

.method private round(D)D
    .locals 8

    .line 819
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isNegative(D)Z

    move-result v7

    if-eqz v7, :cond_0

    neg-double p1, p1

    :cond_0
    move-wide v0, p1

    .line 824
    iget-wide v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDouble:D

    const-wide/16 p1, 0x0

    cmpl-double p1, v2, p1

    if-lez p1, :cond_1

    .line 827
    iget-wide v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDoubleReciprocal:D

    iget v6, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    invoke-static/range {v0 .. v7}, Landroid/icu/text/DecimalFormat_ICU58_Android;->round(DDDIZ)D

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method private static round(DDDIZ)D
    .locals 14

    move/from16 v0, p6

    const-wide/16 v1, 0x0

    cmpl-double v1, p4, v1

    if-nez v1, :cond_0

    div-double v2, p0, p2

    goto :goto_0

    :cond_0
    mul-double v2, p0, p4

    :goto_0
    if-eqz v0, :cond_e

    const/4 v4, 0x1

    if-eq v0, v4, :cond_d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/4 v4, 0x7

    if-eq v0, v4, :cond_7

    .line 1048
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    sub-double v6, v4, v2

    .line 1050
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    sub-double/2addr v2, v8

    const/4 v10, 0x4

    if-eq v0, v10, :cond_6

    const/4 v10, 0x5

    if-eq v0, v10, :cond_5

    const/4 v10, 0x6

    if-ne v0, v10, :cond_4

    .line 1065
    sget-wide v10, Landroid/icu/text/DecimalFormat_ICU58_Android;->epsilon:D

    add-double v12, v2, v10

    cmpg-double v0, v12, v6

    if-gez v0, :cond_2

    :cond_1
    :goto_1
    move-wide v4, v8

    goto/16 :goto_3

    :cond_2
    add-double/2addr v6, v10

    cmpg-double v0, v6, v2

    if-gez v0, :cond_3

    goto/16 :goto_3

    :cond_3
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v2, v8, v2

    .line 1071
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpl-double v0, v2, v6

    if-nez v0, :cond_f

    goto :goto_1

    .line 1081
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid rounding mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1075
    :cond_5
    sget-wide v10, Landroid/icu/text/DecimalFormat_ICU58_Android;->epsilon:D

    add-double/2addr v6, v10

    cmpg-double v0, v2, v6

    if-gtz v0, :cond_f

    goto :goto_1

    .line 1078
    :cond_6
    sget-wide v10, Landroid/icu/text/DecimalFormat_ICU58_Android;->epsilon:D

    add-double/2addr v2, v10

    cmpg-double v0, v6, v2

    if-gtz v0, :cond_1

    goto :goto_3

    .line 1036
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_8

    return-wide p0

    .line 1037
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Rounding necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_9
    sget-wide v4, Landroid/icu/text/DecimalFormat_ICU58_Android;->epsilon:D

    if-eqz p7, :cond_a

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_2

    :cond_a
    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    :goto_2
    move-wide v4, v2

    goto :goto_3

    .line 1024
    :cond_b
    sget-wide v4, Landroid/icu/text/DecimalFormat_ICU58_Android;->epsilon:D

    if-eqz p7, :cond_c

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    goto :goto_2

    :cond_c
    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    goto :goto_2

    .line 1030
    :cond_d
    sget-wide v4, Landroid/icu/text/DecimalFormat_ICU58_Android;->epsilon:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    goto :goto_3

    .line 1033
    :cond_e
    sget-wide v4, Landroid/icu/text/DecimalFormat_ICU58_Android;->epsilon:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    :cond_f
    :goto_3
    if-nez v1, :cond_10

    mul-double v4, v4, p2

    goto :goto_4

    :cond_10
    div-double v4, v4, p4

    :goto_4
    return-wide v4
.end method

.method private setCurrencyForSymbols()V
    .locals 3

    .line 3280
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 3282
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 3283
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    .line 3284
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3285
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setCurrency(Landroid/icu/util/Currency;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3287
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setCurrency(Landroid/icu/util/Currency;)V

    :goto_0
    return-void
.end method

.method private setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V
    .locals 0

    .line 5528
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5529
    :cond_0
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrement:Ljava/math/BigDecimal;

    return-void
.end method

.method private setRoundingDouble(D)V
    .locals 4

    .line 6175
    iput-wide p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDouble:D

    .line 6176
    iget-wide p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDouble:D

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, p1

    .line 6178
    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide p1

    iput-wide p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDoubleReciprocal:D

    .line 6179
    iget-wide p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDoubleReciprocal:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    cmpl-double p1, p1, v2

    if-lez p1, :cond_1

    .line 6180
    iput-wide v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDoubleReciprocal:D

    goto :goto_0

    .line 6183
    :cond_0
    iput-wide v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingDoubleReciprocal:D

    :cond_1
    :goto_0
    return-void
.end method

.method private setupCurrencyAffixForAllPatterns()V
    .locals 12

    .line 2197
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    if-nez v0, :cond_0

    .line 2198
    new-instance v0, Landroid/icu/text/CurrencyPluralInfo;

    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/CurrencyPluralInfo;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 2200
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->affixPatternsForCurrency:Ljava/util/Set;

    .line 2204
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    .line 2209
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    .line 2211
    new-instance v1, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;

    iget-object v4, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    iget-object v6, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    iget-object v7, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2214
    iget-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->affixPatternsForCurrency:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2217
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {v1}, Landroid/icu/text/CurrencyPluralInfo;->pluralPatternIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2218
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2219
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2221
    iget-object v5, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {v5, v4}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2223
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2224
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2225
    invoke-direct {p0, v4, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    .line 2226
    new-instance v4, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;

    iget-object v7, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    iget-object v9, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    iget-object v10, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    const/4 v11, 0x1

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Landroid/icu/text/DecimalFormat_ICU58_Android$AffixForCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2228
    iget-object v5, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->affixPatternsForCurrency:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2232
    :cond_2
    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    return-void
.end method

.method private static skipBidiMarks(Ljava/lang/String;I)I
    .locals 2

    .line 3055
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3056
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 3057
    invoke-static {v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isBidiMark(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3060
    :cond_0
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private final skipPadding(Ljava/lang/String;I)I
    .locals 2

    .line 2863
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-char v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->pad:C

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private static skipPatternWhiteSpace(Ljava/lang/String;I)I
    .locals 2

    .line 3027
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3028
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 3029
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3032
    :cond_0
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private static skipUWhiteSpace(Ljava/lang/String;I)I
    .locals 2

    .line 3041
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3042
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    .line 3043
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isUWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3046
    :cond_0
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 8

    .line 1340
    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1342
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/icu/text/CurrencyPluralInfo;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subformat(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 1346
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method private subformat(ILjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 8

    .line 1281
    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1283
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    int-to-double v1, p1

    invoke-virtual {p0, v1, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/icu/text/CurrencyPluralInfo;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subformat(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1287
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method private subformat(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 6

    .line 1363
    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->style:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1365
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {v0, p1}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1366
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1367
    invoke-direct {p0, v0, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->applyPatternWithoutExpandAffix(Ljava/lang/String;Z)V

    .line 1376
    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffixAdjustWidth(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1377
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method private subformat(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;
    .locals 8

    .line 1406
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {v0}, Landroid/icu/text/DigitList_Android;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    const/4 v1, 0x0

    iput v1, v0, Landroid/icu/text/DigitList_Android;->decimalAt:I

    :cond_0
    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v6, p2

    move v7, p5

    .line 1410
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/DecimalFormat_ICU58_Android;->appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I

    move-result v0

    .line 1412
    iget-boolean v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-eqz v1, :cond_1

    .line 1413
    invoke-direct {p0, p1, p2, p5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subformatExponential(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)V

    goto :goto_0

    .line 1415
    :cond_1
    invoke-direct {p0, p1, p2, p4, p5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subformatFixed(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZ)V

    :goto_0
    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v6, p2

    move v7, p5

    .line 1418
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/DecimalFormat_ICU58_Android;->appendAffix(Ljava/lang/StringBuffer;ZZLjava/text/FieldPosition;Z)I

    move-result p3

    .line 1419
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addPadding(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;II)V

    return-object p1
.end method

.method private subformatExponential(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1635
    iget-object v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStringsLocal()[Ljava/lang/String;

    move-result-object v3

    .line 1636
    iget v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    if-nez v4, :cond_0

    .line 1637
    iget-object v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget-object v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparatorString()Ljava/lang/String;

    move-result-object v4

    .line 1638
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->areSignificantDigitsUsed()Z

    move-result v5

    .line 1639
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumIntegerDigits()I

    move-result v6

    .line 1640
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumIntegerDigits()I

    move-result v7

    .line 1643
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-nez v8, :cond_1

    .line 1644
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1645
    invoke-virtual {v2, v9}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_1

    .line 1646
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 1647
    invoke-virtual {v2, v9}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto :goto_1

    .line 1648
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v8

    sget-object v11, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v8, v11, :cond_3

    .line 1649
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1650
    invoke-virtual {v2, v9}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_1

    .line 1651
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v8

    sget-object v11, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    if-ne v8, v11, :cond_4

    .line 1652
    invoke-virtual {v2, v9}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1659
    :cond_4
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eqz v5, :cond_5

    .line 1665
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumSignificantDigits()I

    move-result v5

    sub-int/2addr v5, v10

    move v6, v10

    move v7, v6

    goto :goto_3

    .line 1667
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumFractionDigits()I

    move-result v5

    const/16 v11, 0x8

    if-le v6, v11, :cond_7

    if-ge v10, v7, :cond_6

    move v6, v7

    goto :goto_2

    :cond_6
    move v6, v10

    :cond_7
    :goto_2
    if-le v6, v7, :cond_8

    move v7, v10

    :cond_8
    :goto_3
    const-wide/16 v11, 0x0

    .line 1691
    iget-object v13, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v13, v13, Landroid/icu/text/DigitList_Android;->decimalAt:I

    if-le v6, v10, :cond_a

    if-eq v6, v7, :cond_a

    if-lez v13, :cond_9

    sub-int/2addr v13, v10

    .line 1694
    div-int/2addr v13, v6

    goto :goto_4

    :cond_9
    div-int/2addr v13, v6

    sub-int/2addr v13, v10

    :goto_4
    mul-int/2addr v13, v6

    goto :goto_7

    :cond_a
    if-gtz v7, :cond_c

    if-lez v5, :cond_b

    goto :goto_5

    :cond_b
    move v6, v10

    goto :goto_6

    :cond_c
    :goto_5
    move v6, v7

    :goto_6
    sub-int/2addr v13, v6

    :goto_7
    add-int/2addr v5, v7

    .line 1709
    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {v6}, Landroid/icu/text/DigitList_Android;->isZero()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_8

    :cond_d
    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v6, v6, Landroid/icu/text/DigitList_Android;->decimalAt:I

    sub-int v7, v6, v13

    .line 1710
    :goto_8
    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v6, v6, Landroid/icu/text/DigitList_Android;->count:I

    if-le v5, v6, :cond_e

    goto :goto_9

    :cond_e
    move v5, v6

    :goto_9
    if-le v7, v5, :cond_f

    move v5, v7

    :cond_f
    move/from16 v16, v9

    move-wide v14, v11

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v16

    const/4 v9, 0x0

    :goto_a
    if-ge v11, v5, :cond_1b

    if-ne v11, v7, :cond_18

    .line 1719
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v12

    if-nez v12, :cond_10

    .line 1720
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_b

    .line 1721
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v12

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v12, v6, :cond_11

    .line 1722
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_11
    :goto_b
    if-eqz p3, :cond_12

    .line 1727
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v16

    .line 1728
    sget-object v6, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    invoke-direct {v0, v6, v8, v12}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    .line 1730
    :cond_12
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v6

    sget-object v12, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne v6, v12, :cond_13

    .line 1731
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1733
    :cond_13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1734
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v6

    sget-object v12, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne v6, v12, :cond_14

    .line 1735
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1738
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-eqz p3, :cond_15

    .line 1741
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    sub-int/2addr v12, v10

    .line 1742
    sget-object v10, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    move/from16 v17, v6

    .line 1743
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 1742
    invoke-direct {v0, v10, v12, v6}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    goto :goto_c

    :cond_15
    move/from16 v17, v6

    .line 1746
    :goto_c
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v6

    const/4 v10, 0x1

    if-ne v6, v10, :cond_16

    .line 1747
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto :goto_d

    .line 1748
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v6

    sget-object v10, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    if-ne v6, v10, :cond_17

    .line 1749
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1751
    :cond_17
    :goto_d
    instance-of v6, v2, Landroid/icu/text/UFieldPosition;

    move/from16 v12, v17

    move/from16 v17, v6

    .line 1754
    :cond_18
    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v6, v6, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v11, v6, :cond_19

    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {v6, v11}, Landroid/icu/text/DigitList_Android;->getDigitValue(I)B

    move-result v6

    goto :goto_e

    :cond_19
    const/4 v6, 0x0

    .line 1755
    :goto_e
    aget-object v10, v3, v6

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v17, :cond_1a

    add-int/lit8 v9, v9, 0x1

    const-wide/16 v18, 0xa

    mul-long v14, v14, v18

    move v10, v7

    int-to-long v6, v6

    add-long/2addr v14, v6

    goto :goto_f

    :cond_1a
    move v10, v7

    :goto_f
    add-int/lit8 v11, v11, 0x1

    move v7, v10

    const/4 v10, 0x1

    goto/16 :goto_a

    .line 1764
    :cond_1b
    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {v6}, Landroid/icu/text/DigitList_Android;->isZero()Z

    move-result v6

    if-eqz v6, :cond_1c

    if-nez v5, :cond_1c

    const/4 v5, 0x0

    .line 1765
    aget-object v6, v3, v5

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1c
    const/4 v5, -0x1

    if-ne v12, v5, :cond_1f

    .line 1769
    iget-boolean v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    if-eqz v5, :cond_1f

    .line 1770
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v5

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne v5, v6, :cond_1d

    .line 1771
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1773
    :cond_1d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1774
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_1e

    .line 1775
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_1e
    if-eqz p3, :cond_1f

    .line 1779
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 1780
    sget-object v5, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-direct {v0, v5, v4, v6}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    .line 1785
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v4

    if-nez v4, :cond_20

    .line 1786
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v4

    if-gez v4, :cond_25

    .line 1787
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_10

    .line 1789
    :cond_20
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_22

    .line 1790
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    if-gez v4, :cond_21

    .line 1791
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1793
    :cond_21
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_10

    .line 1794
    :cond_22
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_23

    .line 1795
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v4

    if-gez v4, :cond_25

    .line 1796
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_10

    .line 1798
    :cond_23
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_25

    .line 1799
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v4

    if-gez v4, :cond_24

    .line 1800
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1802
    :cond_24
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_25
    :goto_10
    if-eqz v17, :cond_26

    .line 1805
    move-object v4, v2

    check-cast v4, Landroid/icu/text/UFieldPosition;

    invoke-virtual {v4, v9, v14, v15}, Landroid/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    :cond_26
    if-eqz p3, :cond_28

    if-gez v16, :cond_27

    .line 1812
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-direct {v0, v4, v8, v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_27
    if-lez v12, :cond_28

    .line 1815
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-direct {v0, v4, v12, v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    .line 1822
    :cond_28
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_29

    .line 1823
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1826
    :cond_29
    iget-object v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1827
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_2a

    .line 1828
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2a
    if-eqz p3, :cond_2b

    .line 1832
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 1833
    invoke-virtual {v6}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 1832
    invoke-direct {v0, v4, v5, v6}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    .line 1838
    :cond_2b
    iget-object v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {v4}, Landroid/icu/text/DigitList_Android;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v13, 0x0

    :cond_2c
    if-gez v13, :cond_2d

    const/4 v4, 0x1

    goto :goto_11

    :cond_2d
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_30

    neg-int v13, v13

    .line 1844
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_2e

    .line 1845
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1847
    :cond_2e
    iget-object v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1848
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_2f

    .line 1849
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_2f
    if-eqz p3, :cond_33

    .line 1855
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-direct {v0, v4, v5, v6}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    goto :goto_12

    .line 1857
    :cond_30
    iget-boolean v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->exponentSignAlwaysShown:Z

    if-eqz v4, :cond_33

    .line 1858
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_31

    .line 1859
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1861
    :cond_31
    iget-object v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1862
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    if-ne v4, v5, :cond_32

    .line 1863
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_32
    if-eqz p3, :cond_33

    .line 1868
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 1869
    sget-object v5, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-direct {v0, v5, v4, v6}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    .line 1872
    :cond_33
    :goto_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .line 1873
    iget-object v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    int-to-long v6, v13

    invoke-virtual {v5, v6, v7}, Landroid/icu/text/DigitList_Android;->set(J)V

    .line 1875
    iget-byte v10, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minExponentDigits:B

    .line 1876
    iget-boolean v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-eqz v5, :cond_34

    const/4 v5, 0x1

    if-ge v10, v5, :cond_34

    goto :goto_13

    :cond_34
    move v5, v10

    .line 1879
    :goto_13
    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v6, v6, Landroid/icu/text/DigitList_Android;->decimalAt:I

    :goto_14
    if-ge v6, v5, :cond_35

    const/4 v7, 0x0

    .line 1880
    aget-object v8, v3, v7

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_35
    const/4 v5, 0x0

    .line 1882
    :goto_15
    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v6, v6, Landroid/icu/text/DigitList_Android;->decimalAt:I

    if-ge v5, v6, :cond_37

    .line 1883
    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v6, v6, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v5, v6, :cond_36

    iget-object v6, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {v6, v5}, Landroid/icu/text/DigitList_Android;->getDigitValue(I)B

    move-result v6

    aget-object v6, v3, v6

    move-object v7, v6

    const/4 v6, 0x0

    goto :goto_16

    :cond_36
    const/4 v6, 0x0

    .line 1884
    aget-object v7, v3, v6

    .line 1883
    :goto_16
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 1887
    :cond_37
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v3

    sget-object v5, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    if-ne v3, v5, :cond_38

    .line 1888
    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1889
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_38
    if-eqz p3, :cond_39

    .line 1892
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v2, v4, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_39
    return-void
.end method

.method private subformatFixed(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;ZZ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1427
    iget-object v3, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v3}, Landroid/icu/text/DecimalFormatSymbols;->getDigitStrings()[Ljava/lang/String;

    move-result-object v3

    .line 1429
    iget v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    if-nez v4, :cond_0

    .line 1430
    iget-object v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget-object v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparatorString()Ljava/lang/String;

    move-result-object v4

    .line 1431
    :goto_0
    iget v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    if-nez v5, :cond_1

    .line 1432
    iget-object v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    iget-object v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparatorString()Ljava/lang/String;

    move-result-object v5

    .line 1433
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->areSignificantDigitsUsed()Z

    move-result v6

    .line 1434
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumIntegerDigits()I

    move-result v7

    .line 1435
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumIntegerDigits()I

    move-result v8

    .line 1438
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 1440
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1441
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v10

    sget-object v11, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v10, v11, :cond_3

    .line 1442
    :cond_2
    invoke-virtual {v2, v9}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1449
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumSignificantDigits()I

    move-result v12

    .line 1450
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumSignificantDigits()I

    move-result v13

    const/4 v15, 0x0

    if-nez v6, :cond_4

    move v12, v15

    const v13, 0x7fffffff

    :cond_4
    const/4 v10, 0x1

    if-eqz v6, :cond_5

    .line 1459
    iget-object v8, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v8, v8, Landroid/icu/text/DigitList_Android;->decimalAt:I

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1460
    :cond_5
    iget-object v11, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v11, v11, Landroid/icu/text/DigitList_Android;->decimalAt:I

    if-lez v11, :cond_6

    iget-object v11, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v11, v11, Landroid/icu/text/DigitList_Android;->decimalAt:I

    if-ge v8, v11, :cond_6

    .line 1461
    iget-object v8, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v8, v8, Landroid/icu/text/DigitList_Android;->decimalAt:I

    :cond_6
    if-le v8, v7, :cond_7

    if-ltz v7, :cond_7

    .line 1472
    iget-object v8, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v8, v8, Landroid/icu/text/DigitList_Android;->decimalAt:I

    sub-int/2addr v8, v7

    goto :goto_2

    :cond_7
    move v7, v8

    move v8, v15

    .line 1475
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    sub-int/2addr v7, v10

    move v14, v15

    :goto_3
    if-ltz v7, :cond_c

    .line 1477
    iget-object v10, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v10, v10, Landroid/icu/text/DigitList_Android;->decimalAt:I

    if-ge v7, v10, :cond_8

    iget-object v10, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v10, v10, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v8, v10, :cond_8

    if-ge v14, v13, :cond_8

    .line 1480
    iget-object v10, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    add-int/lit8 v20, v8, 0x1

    invoke-virtual {v10, v8}, Landroid/icu/text/DigitList_Android;->getDigitValue(I)B

    move-result v8

    aget-object v8, v3, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v20

    goto :goto_4

    .line 1484
    :cond_8
    aget-object v10, v3, v15

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-lez v14, :cond_9

    add-int/lit8 v14, v14, 0x1

    .line 1491
    :cond_9
    :goto_4
    invoke-direct {v0, v7}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isGroupingPosition(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1492
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1496
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v10

    sget-object v15, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne v10, v15, :cond_a

    .line 1497
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v10

    if-nez v10, :cond_a

    .line 1498
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    const/4 v15, 0x1

    sub-int/2addr v10, v15

    invoke-virtual {v2, v10}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1499
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_5

    :cond_a
    const/4 v15, 0x1

    :goto_5
    if-eqz p4, :cond_b

    .line 1502
    sget-object v10, Landroid/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    move-object/from16 v21, v4

    add-int/lit8 v4, v19, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    invoke-direct {v0, v10, v4, v15}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    goto :goto_6

    :cond_b
    move-object/from16 v21, v4

    :goto_6
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v4, v21

    const/4 v10, 0x1

    const/4 v15, 0x0

    goto :goto_3

    .line 1508
    :cond_c
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v4

    if-eqz v4, :cond_d

    .line 1509
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v4

    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    if-ne v4, v7, :cond_e

    .line 1510
    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_e
    if-nez v14, :cond_f

    .line 1517
    iget-object v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v4, v4, Landroid/icu/text/DigitList_Android;->count:I

    if-nez v4, :cond_f

    const/4 v14, 0x1

    :cond_f
    if-nez p3, :cond_10

    .line 1523
    iget-object v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v4, v4, Landroid/icu/text/DigitList_Android;->count:I

    if-lt v8, v4, :cond_12

    :cond_10
    if-eqz v6, :cond_11

    if-ge v14, v12, :cond_13

    goto :goto_7

    .line 1524
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumFractionDigits()I

    move-result v4

    if-lez v4, :cond_13

    :cond_12
    :goto_7
    const/4 v4, 0x1

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    :goto_8
    if-nez v4, :cond_14

    .line 1529
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ne v7, v11, :cond_14

    const/4 v7, 0x0

    .line 1530
    aget-object v10, v3, v7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_14
    if-eqz p4, :cond_15

    .line 1533
    sget-object v7, Landroid/icu/text/NumberFormat$Field;->INTEGER:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-direct {v0, v7, v9, v10}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    .line 1536
    :cond_15
    iget-boolean v7, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    if-nez v7, :cond_17

    if-eqz v4, :cond_16

    goto :goto_9

    :cond_16
    const/4 v9, 0x1

    goto :goto_a

    .line 1537
    :cond_17
    :goto_9
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    sget-object v9, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne v7, v9, :cond_18

    .line 1538
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1540
    :cond_18
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1541
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v5

    sget-object v7, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    if-ne v5, v7, :cond_19

    .line 1542
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_19
    if-eqz p4, :cond_16

    .line 1546
    sget-object v5, Landroid/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-direct {v0, v5, v7, v10}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    .line 1551
    :goto_a
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v5

    if-ne v5, v9, :cond_1a

    .line 1552
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    goto :goto_b

    .line 1553
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v5

    sget-object v7, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    if-ne v5, v7, :cond_1b

    .line 1554
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1558
    :cond_1b
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 1559
    instance-of v7, v2, Landroid/icu/text/UFieldPosition;

    if-eqz v6, :cond_1c

    const v15, 0x7fffffff

    goto :goto_c

    .line 1561
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumFractionDigits()I

    move-result v9

    move v15, v9

    :goto_c
    if-eqz v6, :cond_1e

    if-eq v14, v13, :cond_1d

    if-lt v14, v12, :cond_1e

    .line 1562
    iget-object v9, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v9, v9, Landroid/icu/text/DigitList_Android;->count:I

    if-ne v8, v9, :cond_1e

    :cond_1d
    const/4 v15, 0x0

    :cond_1e
    move v9, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v16, 0x0

    :goto_d
    if-ge v8, v15, :cond_26

    if-nez v6, :cond_1f

    .line 1572
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumFractionDigits()I

    move-result v11

    if-lt v8, v11, :cond_1f

    if-nez p3, :cond_26

    iget-object v11, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v11, v11, Landroid/icu/text/DigitList_Android;->count:I

    if-lt v9, v11, :cond_1f

    goto :goto_10

    :cond_1f
    rsub-int/lit8 v11, v8, -0x1

    move/from16 v18, v15

    .line 1580
    iget-object v15, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v15, v15, Landroid/icu/text/DigitList_Android;->decimalAt:I

    const/16 v19, 0x1

    add-int/lit8 v15, v15, -0x1

    const-wide/16 v21, 0xa

    if-le v11, v15, :cond_21

    const/4 v11, 0x0

    .line 1581
    aget-object v15, v3, v11

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v7, :cond_20

    add-int/lit8 v10, v10, 0x1

    mul-long v16, v16, v21

    :cond_20
    const/4 v11, 0x0

    goto :goto_f

    :cond_21
    if-nez p3, :cond_23

    .line 1591
    iget-object v11, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v11, v11, Landroid/icu/text/DigitList_Android;->count:I

    if-ge v9, v11, :cond_23

    .line 1592
    iget-object v11, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    add-int/lit8 v15, v9, 0x1

    invoke-virtual {v11, v9}, Landroid/icu/text/DigitList_Android;->getDigitValue(I)B

    move-result v9

    .line 1593
    aget-object v11, v3, v9

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v7, :cond_22

    add-int/lit8 v10, v10, 0x1

    mul-long v16, v16, v21

    move v11, v10

    int-to-long v9, v9

    add-long v16, v16, v9

    move v10, v11

    :cond_22
    move v9, v15

    const/4 v11, 0x0

    goto :goto_e

    :cond_23
    const/4 v11, 0x0

    .line 1600
    aget-object v15, v3, v11

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v7, :cond_24

    add-int/lit8 v10, v10, 0x1

    mul-long v16, v16, v21

    :cond_24
    :goto_e
    add-int/lit8 v14, v14, 0x1

    if-eqz v6, :cond_25

    if-eq v14, v13, :cond_26

    .line 1610
    iget-object v15, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    iget v15, v15, Landroid/icu/text/DigitList_Android;->count:I

    if-ne v9, v15, :cond_25

    if-lt v14, v12, :cond_25

    goto :goto_10

    :cond_25
    :goto_f
    add-int/lit8 v8, v8, 0x1

    move/from16 v15, v18

    goto :goto_d

    :cond_26
    :goto_10
    move-wide/from16 v8, v16

    .line 1617
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_27

    .line 1618
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_11

    .line 1619
    :cond_27
    invoke-virtual/range {p2 .. p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v3

    sget-object v6, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    if-ne v3, v6, :cond_28

    .line 1620
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_28
    :goto_11
    if-eqz v7, :cond_29

    .line 1623
    check-cast v2, Landroid/icu/text/UFieldPosition;

    invoke-virtual {v2, v10, v8, v9}, Landroid/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    :cond_29
    if-eqz p4, :cond_2b

    .line 1627
    iget-boolean v2, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    if-nez v2, :cond_2a

    if-eqz v4, :cond_2b

    .line 1628
    :cond_2a
    sget-object v2, Landroid/icu/text/NumberFormat$Field;->FRACTION:Landroid/icu/text/NumberFormat$Field;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v2, v5, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->addAttribute(Landroid/icu/text/NumberFormat$Field;II)V

    :cond_2b
    return-void
.end method

.method private final subparse(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/DigitList_Android;[Z[Landroid/icu/util/Currency;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 30

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 2418
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 2419
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v13

    .line 2422
    iget v1, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    if-lez v1, :cond_0

    iget v1, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    if-nez v1, :cond_0

    .line 2423
    invoke-direct {v9, v10, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipPadding(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    move v14, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move-object/from16 v5, p8

    move/from16 v6, p10

    move/from16 v7, p11

    move-object/from16 v8, p5

    .line 2427
    invoke-direct/range {v0 .. v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I

    move-result v15

    const/4 v3, 0x1

    move-object/from16 v5, p6

    .line 2428
    invoke-direct/range {v0 .. v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I

    move-result v0

    const/4 v8, -0x1

    if-ltz v15, :cond_2

    if-ltz v0, :cond_2

    if-le v15, v0, :cond_1

    move/from16 v16, v8

    goto :goto_0

    :cond_1
    if-le v0, v15, :cond_2

    move/from16 v16, v0

    move v15, v8

    goto :goto_0

    :cond_2
    move/from16 v16, v0

    :goto_0
    const/4 v7, 0x0

    if-ltz v15, :cond_3

    add-int/2addr v14, v15

    goto :goto_1

    :cond_3
    if-ltz v16, :cond_42

    add-int v14, v14, v16

    .line 2446
    :goto_1
    iget v0, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    const/4 v6, 0x1

    if-lez v0, :cond_4

    iget v0, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    if-ne v0, v6, :cond_4

    .line 2447
    invoke-direct {v9, v10, v14}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipPadding(Ljava/lang/String;I)I

    move-result v14

    .line 2451
    :cond_4
    aput-boolean v7, p4, v7

    .line 2452
    iget-object v0, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 2453
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2452
    invoke-virtual {v10, v14, v0, v7, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2454
    iget-object v0, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v14, v0

    .line 2455
    aput-boolean v6, p4, v7

    move v5, v8

    move/from16 v27, v15

    const/4 v15, 0x2

    goto/16 :goto_1a

    .line 2463
    :cond_5
    iput v7, v12, Landroid/icu/text/DigitList_Android;->count:I

    iput v7, v12, Landroid/icu/text/DigitList_Android;->decimalAt:I

    .line 2464
    iget v0, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    if-nez v0, :cond_6

    .line 2465
    iget-object v0, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-object v0, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryDecimalSeparatorString()Ljava/lang/String;

    move-result-object v0

    .line 2466
    :goto_2
    iget v1, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    if-nez v1, :cond_7

    .line 2467
    iget-object v1, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparatorString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    iget-object v1, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getMonetaryGroupingSeparatorString()Ljava/lang/String;

    move-result-object v1

    .line 2469
    :goto_3
    iget-object v2, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    .line 2476
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isParseStrict()Z

    move-result v4

    .line 2480
    iget-byte v2, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    if-nez v2, :cond_8

    iget-byte v2, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    .line 2482
    :cond_8
    sget-boolean v3, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipExtendedSeparatorParsing:Z

    if-eqz v3, :cond_9

    sget-object v3, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    goto :goto_4

    .line 2483
    :cond_9
    invoke-direct {v9, v0, v4}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getEquivalentDecimals(Ljava/lang/String;Z)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    .line 2484
    :goto_4
    sget-boolean v20, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipExtendedSeparatorParsing:Z

    if-eqz v20, :cond_a

    sget-object v20, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    :goto_5
    move-object/from16 p8, v1

    move-object/from16 v5, v20

    goto :goto_6

    :cond_a
    if-eqz v4, :cond_b

    .line 2485
    sget-object v20, Landroid/icu/text/DecimalFormat_ICU58_Android;->strictDefaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    goto :goto_5

    :cond_b
    sget-object v20, Landroid/icu/text/DecimalFormat_ICU58_Android;->defaultGroupingSeparators:Landroid/icu/text/UnicodeSet;

    goto :goto_5

    :goto_6
    new-array v1, v6, [I

    aput v8, v1, v7

    move-object/from16 v20, p8

    move v6, v7

    move/from16 v23, v6

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move v7, v8

    move/from16 v22, v7

    .line 2494
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v14, v8, :cond_2b

    .line 2496
    invoke-direct {v9, v10, v14, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->matchesDigit(Ljava/lang/String;I[I)I

    move-result v8

    if-lez v8, :cond_12

    move/from16 v27, v15

    const/4 v15, -0x1

    if-eq v7, v15, :cond_f

    if-eqz v4, :cond_e

    move/from16 v11, v22

    if-eq v11, v15, :cond_c

    if-ne v6, v2, :cond_d

    :cond_c
    if-ne v11, v15, :cond_e

    if-le v6, v2, :cond_e

    :cond_d
    move-object/from16 v29, v0

    move/from16 v20, v4

    move/from16 v8, v24

    goto :goto_a

    :cond_e
    move/from16 v22, v7

    const/4 v6, 0x0

    goto :goto_8

    :cond_f
    move/from16 v11, v22

    :goto_8
    const/4 v7, 0x1

    add-int/2addr v6, v7

    add-int/2addr v14, v8

    const/4 v8, 0x0

    .line 2520
    aget v11, v1, v8

    if-nez v11, :cond_11

    iget v8, v12, Landroid/icu/text/DigitList_Android;->count:I

    if-nez v8, :cond_11

    if-nez v23, :cond_10

    goto :goto_9

    .line 2529
    :cond_10
    iget v8, v12, Landroid/icu/text/DigitList_Android;->decimalAt:I

    sub-int/2addr v8, v7

    iput v8, v12, Landroid/icu/text/DigitList_Android;->decimalAt:I

    goto :goto_9

    :cond_11
    move/from16 v8, v24

    add-int/lit8 v24, v8, 0x1

    const/4 v15, 0x0

    .line 2532
    aget v7, v1, v15

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {v12, v7}, Landroid/icu/text/DigitList_Android;->append(I)V

    :goto_9
    move-object/from16 v11, p2

    move/from16 v15, v27

    const/4 v7, -0x1

    const/16 v26, 0x1

    goto :goto_7

    :cond_12
    move/from16 v27, v15

    move/from16 v11, v22

    move/from16 v8, v24

    const/4 v15, 0x0

    move-object/from16 v22, v1

    .line 2538
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2539
    invoke-virtual {v10, v14, v0, v15, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v24

    if-eqz v24, :cond_17

    if-eqz v4, :cond_14

    const/4 v15, -0x1

    if-ne v7, v15, :cond_13

    if-eq v11, v15, :cond_14

    .line 2542
    iget-byte v15, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    if-eq v6, v15, :cond_14

    :cond_13
    move-object/from16 v29, v0

    move/from16 v20, v4

    :goto_a
    const/4 v0, 0x1

    const/4 v15, 0x2

    goto/16 :goto_16

    .line 2551
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isParseIntegerOnly()Z

    move-result v15

    if-nez v15, :cond_16

    if-eqz v23, :cond_15

    goto :goto_d

    .line 2555
    :cond_15
    iput v8, v12, Landroid/icu/text/DigitList_Android;->decimalAt:I

    add-int/2addr v14, v1

    move/from16 v24, v8

    :goto_b
    move-object/from16 v1, v22

    move/from16 v15, v27

    const/16 v23, 0x1

    :goto_c
    move/from16 v22, v11

    move-object/from16 v11, p2

    goto/16 :goto_7

    :cond_16
    :goto_d
    move-object/from16 v29, v0

    move/from16 v20, v4

    goto/16 :goto_14

    .line 2561
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isGroupingUsed()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2563
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v15, v20

    move-object/from16 v20, v0

    const/4 v0, 0x0

    .line 2564
    invoke-virtual {v10, v14, v15, v0, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v24

    if-eqz v24, :cond_1b

    if-eqz v23, :cond_18

    :goto_e
    move-object/from16 v29, v20

    const/4 v15, 0x2

    move/from16 v20, v4

    goto/16 :goto_15

    :cond_18
    if-eqz v4, :cond_19

    if-eqz v26, :cond_1c

    const/4 v0, -0x1

    if-eq v7, v0, :cond_19

    goto :goto_f

    :cond_19
    add-int v0, v14, v1

    move/from16 v24, v8

    move v7, v14

    move-object/from16 v1, v22

    const/16 v25, 0x1

    move v14, v0

    move/from16 v22, v11

    move-object/from16 v0, v20

    move-object/from16 v11, p2

    move-object/from16 v20, v15

    move/from16 v15, v27

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v15, v20

    move-object/from16 v20, v0

    .line 2588
    :cond_1b
    invoke-virtual {v10, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-nez v23, :cond_1f

    .line 2589
    invoke-virtual {v3, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-eqz v4, :cond_1d

    const/4 v1, -0x1

    if-ne v7, v1, :cond_1c

    if-eq v11, v1, :cond_1d

    .line 2592
    iget-byte v1, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    if-eq v6, v1, :cond_1d

    :cond_1c
    :goto_f
    move-object/from16 v29, v20

    const/4 v0, 0x1

    const/4 v15, 0x2

    move/from16 v20, v4

    goto/16 :goto_16

    .line 2601
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isParseIntegerOnly()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_e

    .line 2605
    :cond_1e
    iput v8, v12, Landroid/icu/text/DigitList_Android;->decimalAt:I

    .line 2609
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 2612
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v14, v0

    move-object v0, v1

    move/from16 v24, v8

    move-object/from16 v20, v15

    goto/16 :goto_b

    .line 2616
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isGroupingUsed()Z

    move-result v1

    if-eqz v1, :cond_22

    if-nez v25, :cond_22

    invoke-virtual {v5, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz v23, :cond_20

    goto :goto_e

    :cond_20
    if-eqz v4, :cond_21

    if-eqz v26, :cond_1c

    const/4 v1, -0x1

    if-eq v7, v1, :cond_21

    goto :goto_f

    .line 2632
    :cond_21
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 2638
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v0, v14

    move/from16 v24, v8

    move v7, v14

    move/from16 v15, v27

    const/16 v25, 0x1

    move v14, v0

    move-object/from16 v0, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v22

    goto/16 :goto_c

    .line 2644
    :cond_22
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v15, 0x0

    move-object/from16 v3, v20

    move-object/from16 v0, p1

    move-object/from16 v2, v22

    move-object/from16 v28, v2

    move v2, v14

    move-object/from16 v29, v3

    move-object/from16 v3, v17

    move/from16 v20, v4

    move v4, v15

    const/4 v15, 0x2

    .line 2645
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2648
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v14

    .line 2649
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 2650
    iget-object v1, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v1

    .line 2651
    iget-object v2, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v2

    .line 2652
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v10, v0, v1, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2653
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_10

    .line 2654
    :cond_23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10, v0, v2, v4, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2655
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    goto :goto_11

    :cond_24
    const/4 v4, 0x0

    :cond_25
    :goto_10
    move v1, v4

    .line 2660
    :goto_11
    new-instance v2, Landroid/icu/text/DigitList_Android;

    invoke-direct {v2}, Landroid/icu/text/DigitList_Android;-><init>()V

    .line 2661
    iput v4, v2, Landroid/icu/text/DigitList_Android;->count:I

    .line 2662
    :goto_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_26

    move-object/from16 v3, v28

    .line 2663
    invoke-direct {v9, v10, v0, v3}, Landroid/icu/text/DecimalFormat_ICU58_Android;->matchesDigit(Ljava/lang/String;I[I)I

    move-result v5

    if-lez v5, :cond_26

    .line 2665
    aget v17, v3, v4

    add-int/lit8 v4, v17, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Landroid/icu/text/DigitList_Android;->append(I)V

    add-int/2addr v0, v5

    move-object/from16 v28, v3

    const/4 v4, 0x0

    goto :goto_12

    .line 2672
    :cond_26
    iget v3, v2, Landroid/icu/text/DigitList_Android;->count:I

    if-lez v3, :cond_2c

    if-eqz v20, :cond_27

    if-eqz v25, :cond_27

    const/4 v0, 0x1

    goto :goto_16

    .line 2681
    :cond_27
    iget v3, v2, Landroid/icu/text/DigitList_Android;->count:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_29

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    .line 2684
    aput-boolean v1, p4, v15

    goto :goto_13

    :cond_28
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2687
    aput-boolean v1, p4, v2

    goto :goto_13

    .line 2690
    :cond_29
    iget v3, v2, Landroid/icu/text/DigitList_Android;->count:I

    iput v3, v2, Landroid/icu/text/DigitList_Android;->decimalAt:I

    .line 2691
    invoke-virtual {v2}, Landroid/icu/text/DigitList_Android;->getLong()J

    move-result-wide v2

    if-eqz v1, :cond_2a

    neg-long v1, v2

    move-wide/from16 v18, v1

    goto :goto_13

    :cond_2a
    move-wide/from16 v18, v2

    :goto_13
    move v14, v0

    goto :goto_15

    :cond_2b
    move-object/from16 v29, v0

    move/from16 v20, v4

    move/from16 v27, v15

    move/from16 v11, v22

    move/from16 v8, v24

    :goto_14
    const/4 v15, 0x2

    :cond_2c
    :goto_15
    const/4 v0, 0x0

    .line 2706
    :goto_16
    iget v1, v12, Landroid/icu/text/DigitList_Android;->decimalAt:I

    if-nez v1, :cond_2e

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isDecimalPatternMatchRequired()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2707
    iget-object v1, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2d

    move-object/from16 v11, p2

    .line 2708
    invoke-virtual {v11, v13}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2709
    invoke-virtual {v11, v14}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :goto_17
    const/4 v0, 0x0

    return v0

    :cond_2d
    move v1, v11

    goto :goto_18

    :cond_2e
    move v1, v11

    const/4 v5, -0x1

    :goto_18
    move-object/from16 v11, p2

    if-eq v7, v5, :cond_2f

    move v14, v7

    :cond_2f
    if-nez v23, :cond_30

    .line 2719
    iput v8, v12, Landroid/icu/text/DigitList_Android;->decimalAt:I

    :cond_30
    if-eqz v20, :cond_31

    if-nez v23, :cond_31

    if-eq v1, v5, :cond_31

    .line 2724
    iget-byte v1, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    if-eq v6, v1, :cond_31

    const/4 v0, 0x1

    :cond_31
    if-eqz v0, :cond_32

    .line 2733
    invoke-virtual {v11, v13}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2734
    invoke-virtual {v11, v14}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_17

    .line 2739
    :cond_32
    iget v0, v12, Landroid/icu/text/DigitList_Android;->decimalAt:I

    int-to-long v0, v0

    add-long v0, v18, v0

    .line 2740
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getParseMaxDigits()I

    move-result v2

    neg-int v2, v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_33

    const/4 v6, 0x1

    .line 2741
    aput-boolean v6, p4, v15

    const/4 v7, 0x0

    goto :goto_19

    :cond_33
    const/4 v6, 0x1

    .line 2742
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getParseMaxDigits()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_34

    const/4 v7, 0x0

    .line 2743
    aput-boolean v6, p4, v7

    goto :goto_19

    :cond_34
    const/4 v7, 0x0

    long-to-int v0, v0

    .line 2745
    iput v0, v12, Landroid/icu/text/DigitList_Android;->decimalAt:I

    :goto_19
    if-nez v26, :cond_35

    if-nez v8, :cond_35

    .line 2752
    invoke-virtual {v11, v13}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2753
    invoke-virtual {v11, v13}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v7

    .line 2759
    :cond_35
    :goto_1a
    iget v0, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    if-lez v0, :cond_36

    iget v0, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    if-ne v0, v15, :cond_36

    .line 2760
    invoke-direct {v9, v10, v14}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipPadding(Ljava/lang/String;I)I

    move-result v0

    move v14, v0

    :cond_36
    if-ltz v27, :cond_37

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v8, v5

    move-object/from16 v5, p9

    move v12, v6

    move/from16 v6, p10

    move v15, v7

    move/from16 v7, p11

    move/from16 v17, v8

    move-object/from16 v8, p5

    .line 2765
    invoke-direct/range {v0 .. v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I

    move-result v0

    move v8, v0

    goto :goto_1b

    :cond_37
    move/from16 v17, v5

    move v12, v6

    move v15, v7

    move/from16 v8, v27

    :goto_1b
    if-ltz v16, :cond_38

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move-object/from16 v5, p7

    move/from16 v6, p10

    move/from16 v7, p11

    move v12, v8

    move-object/from16 v8, p5

    .line 2768
    invoke-direct/range {v0 .. v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->compareAffix(Ljava/lang/String;IZZLjava/lang/String;ZI[Landroid/icu/util/Currency;)I

    move-result v0

    move v8, v0

    goto :goto_1c

    :cond_38
    move v12, v8

    move/from16 v8, v16

    :goto_1c
    if-ltz v12, :cond_3a

    if-ltz v8, :cond_3a

    if-le v12, v8, :cond_39

    move/from16 v8, v17

    goto :goto_1d

    :cond_39
    if-le v8, v12, :cond_3a

    move/from16 v12, v17

    :cond_3a
    :goto_1d
    if-ltz v12, :cond_3b

    const/4 v0, 0x1

    goto :goto_1e

    :cond_3b
    move v0, v15

    :goto_1e
    if-ltz v8, :cond_3c

    const/4 v1, 0x1

    goto :goto_1f

    :cond_3c
    move v1, v15

    :goto_1f
    if-ne v0, v1, :cond_3d

    .line 2780
    invoke-virtual {v11, v14}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v15

    :cond_3d
    if-ltz v12, :cond_3e

    move v8, v12

    :cond_3e
    add-int/2addr v14, v8

    .line 2787
    iget v0, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    if-lez v0, :cond_3f

    iget v0, v9, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3f

    .line 2788
    invoke-direct {v9, v10, v14}, Landroid/icu/text/DecimalFormat_ICU58_Android;->skipPadding(Ljava/lang/String;I)I

    move-result v14

    .line 2791
    :cond_3f
    invoke-virtual {v11, v14}, Ljava/text/ParsePosition;->setIndex(I)V

    if-ltz v12, :cond_40

    const/4 v0, 0x1

    const/16 v21, 0x1

    goto :goto_20

    :cond_40
    move/from16 v21, v15

    const/4 v0, 0x1

    .line 2793
    :goto_20
    aput-boolean v21, p4, v0

    .line 2795
    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-ne v1, v13, :cond_41

    .line 2796
    invoke-virtual {v11, v14}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v15

    :cond_41
    return v0

    :cond_42
    move v15, v7

    .line 2441
    invoke-virtual {v11, v14}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return v15
.end method

.method private toPattern(Z)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 4476
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v1, :cond_0

    .line 4477
    iget-object v4, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v4}, Landroid/icu/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v4

    goto :goto_0

    :cond_0
    const/16 v4, 0x30

    :goto_0
    if-eqz v1, :cond_1

    .line 4478
    iget-object v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getDigit()C

    move-result v5

    goto :goto_1

    :cond_1
    const/16 v5, 0x23

    .line 4480
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->areSignificantDigitsUsed()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    if-eqz v1, :cond_2

    .line 4482
    iget-object v8, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v8}, Landroid/icu/text/DecimalFormatSymbols;->getSignificantDigit()C

    move-result v8

    goto :goto_2

    :cond_2
    const/16 v8, 0x40

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    if-eqz v1, :cond_4

    .line 4484
    iget-object v9, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v9}, Landroid/icu/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v9

    goto :goto_3

    :cond_4
    const/16 v9, 0x2c

    .line 4488
    :goto_3
    iget v10, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    if-lez v10, :cond_5

    iget v10, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    goto :goto_4

    :cond_5
    const/4 v10, -0x1

    .line 4489
    :goto_4
    iget v11, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-lez v11, :cond_7

    .line 4492
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11, v13}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz v1, :cond_6

    .line 4491
    iget-object v14, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v14}, Landroid/icu/text/DecimalFormatSymbols;->getPadEscape()C

    move-result v14

    goto :goto_5

    :cond_6
    const/16 v14, 0x2a

    .line 4490
    :goto_5
    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-char v14, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->pad:C

    .line 4492
    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_7
    move-object v11, v12

    .line 4494
    :goto_6
    iget-object v14, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-eqz v14, :cond_8

    .line 4495
    invoke-virtual {v14}, Landroid/icu/math/BigDecimal;->scale()I

    move-result v12

    .line 4496
    iget-object v14, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    invoke-virtual {v14, v12}, Landroid/icu/math/BigDecimal;->movePointRight(I)Landroid/icu/math/BigDecimal;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v14

    .line 4497
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    sub-int v12, v15, v12

    goto :goto_7

    :cond_8
    move-object v14, v12

    move v12, v7

    :goto_7
    move v15, v7

    :goto_8
    if-ge v15, v13, :cond_2e

    if-nez v10, :cond_9

    .line 4502
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    const/4 v13, 0x1

    if-eqz v15, :cond_a

    move v3, v13

    goto :goto_9

    :cond_a
    move v3, v7

    .line 4507
    :goto_9
    invoke-direct {v0, v2, v3, v13, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->appendAffixPattern(Ljava/lang/StringBuffer;ZZZ)V

    if-ne v10, v13, :cond_b

    .line 4509
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4511
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 4512
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isGroupingUsed()Z

    move-result v17

    if-eqz v17, :cond_c

    iget-byte v13, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_a

    :cond_c
    move v13, v7

    :goto_a
    if-lez v13, :cond_d

    .line 4513
    iget-byte v7, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    if-lez v7, :cond_d

    move/from16 v18, v8

    iget-byte v8, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    if-eq v7, v8, :cond_e

    add-int/2addr v13, v7

    goto :goto_b

    :cond_d
    move/from16 v18, v8

    :cond_e
    :goto_b
    if-eqz v6, :cond_f

    .line 4518
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumSignificantDigits()I

    move-result v7

    .line 4519
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumSignificantDigits()I

    move-result v8

    move/from16 v20, v5

    move/from16 v19, v10

    move v10, v8

    goto :goto_c

    .line 4521
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumIntegerDigits()I

    move-result v7

    .line 4522
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumIntegerDigits()I

    move-result v8

    move/from16 v20, v5

    move/from16 v19, v10

    const/4 v10, 0x0

    .line 4524
    :goto_c
    iget-boolean v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-eqz v5, :cond_11

    const/16 v5, 0x8

    if-le v8, v5, :cond_10

    const/4 v13, 0x1

    goto :goto_d

    :cond_10
    move v13, v8

    goto :goto_d

    :cond_11
    if-eqz v6, :cond_12

    add-int/lit8 v13, v13, 0x1

    .line 4529
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_d

    .line 4531
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumIntegerDigits()I

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v8, 0x1

    add-int/lit8 v13, v5, 0x1

    :goto_d
    move v5, v13

    :goto_e
    if-lez v5, :cond_19

    .line 4534
    iget-boolean v8, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-nez v8, :cond_13

    if-ge v5, v13, :cond_13

    invoke-direct {v0, v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isGroupingPosition(I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 4535
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_13
    if-eqz v6, :cond_15

    if-lt v10, v5, :cond_14

    sub-int v8, v10, v7

    if-le v5, v8, :cond_14

    move/from16 v8, v18

    goto :goto_f

    :cond_14
    move/from16 v8, v20

    .line 4542
    :goto_f
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v21, v10

    goto :goto_11

    :cond_15
    if-eqz v14, :cond_16

    sub-int v8, v12, v5

    if-ltz v8, :cond_16

    move/from16 v21, v10

    .line 4546
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_17

    .line 4547
    invoke-virtual {v14, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x30

    sub-int/2addr v8, v10

    add-int/2addr v8, v4

    int-to-char v8, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_11

    :cond_16
    move/from16 v21, v10

    :cond_17
    if-gt v5, v7, :cond_18

    move v8, v4

    goto :goto_10

    :cond_18
    move/from16 v8, v20

    .line 4551
    :goto_10
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_11
    add-int/lit8 v5, v5, -0x1

    move/from16 v10, v21

    goto :goto_e

    :cond_19
    if-nez v6, :cond_20

    .line 4555
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumFractionDigits()I

    move-result v5

    if-gtz v5, :cond_1a

    iget-boolean v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    if-eqz v5, :cond_1c

    :cond_1a
    if-eqz v1, :cond_1b

    .line 4556
    iget-object v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v5

    goto :goto_12

    :cond_1b
    const/16 v5, 0x2e

    :goto_12
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1c
    move v7, v12

    const/4 v5, 0x0

    .line 4560
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumFractionDigits()I

    move-result v8

    if-ge v5, v8, :cond_20

    if-eqz v14, :cond_1e

    .line 4561
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1e

    if-gez v7, :cond_1d

    move v8, v4

    const/16 v10, 0x30

    goto :goto_14

    .line 4563
    :cond_1d
    invoke-virtual {v14, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x30

    sub-int/2addr v8, v10

    add-int/2addr v8, v4

    int-to-char v8, v8

    .line 4562
    :goto_14
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    :cond_1e
    const/16 v10, 0x30

    .line 4567
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumFractionDigits()I

    move-result v8

    if-ge v5, v8, :cond_1f

    move v8, v4

    goto :goto_15

    :cond_1f
    move/from16 v8, v20

    :goto_15
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_20
    const/16 v10, 0x30

    .line 4570
    iget-boolean v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-eqz v5, :cond_24

    if-eqz v1, :cond_21

    .line 4572
    iget-object v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_17

    :cond_21
    const/16 v5, 0x45

    .line 4574
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4576
    :goto_17
    iget-boolean v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->exponentSignAlwaysShown:Z

    if-eqz v5, :cond_23

    if-eqz v1, :cond_22

    .line 4577
    iget-object v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSign()C

    move-result v5

    goto :goto_18

    :cond_22
    const/16 v5, 0x2b

    :goto_18
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_23
    const/4 v5, 0x0

    .line 4579
    :goto_19
    iget-byte v7, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minExponentDigits:B

    if-ge v5, v7, :cond_24

    .line 4580
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_24
    if-eqz v11, :cond_27

    .line 4583
    iget-boolean v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-nez v5, :cond_27

    .line 4584
    iget v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    .line 4585
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    sub-int/2addr v5, v7

    add-int/2addr v5, v3

    if-nez v15, :cond_25

    .line 4588
    iget-object v7, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_1a

    .line 4589
    :cond_25
    iget-object v7, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    :goto_1a
    add-int/2addr v7, v8

    sub-int/2addr v5, v7

    :goto_1b
    if-lez v5, :cond_27

    move/from16 v7, v20

    .line 4591
    invoke-virtual {v2, v3, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    const/4 v8, 0x1

    add-int/2addr v13, v8

    add-int/lit8 v5, v5, -0x1

    if-le v5, v8, :cond_26

    .line 4596
    invoke-direct {v0, v13}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isGroupingPosition(I)Z

    move-result v16

    if-eqz v16, :cond_26

    .line 4597
    invoke-virtual {v2, v3, v9}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, -0x1

    :cond_26
    move/from16 v20, v7

    goto :goto_1b

    :cond_27
    move/from16 v7, v20

    const/4 v8, 0x1

    move/from16 v3, v19

    const/4 v5, 0x2

    if-ne v3, v5, :cond_28

    .line 4603
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_28
    if-eqz v15, :cond_29

    goto :goto_1c

    :cond_29
    const/4 v8, 0x0

    :goto_1c
    const/4 v13, 0x0

    .line 4607
    invoke-direct {v0, v2, v8, v13, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->appendAffixPattern(Ljava/lang/StringBuffer;ZZZ)V

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2a

    .line 4609
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2a
    if-nez v15, :cond_2d

    .line 4612
    iget-object v8, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    iget-object v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x2d

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4613
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    goto :goto_1e

    :cond_2b
    if-eqz v1, :cond_2c

    .line 4616
    iget-object v5, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v5}, Landroid/icu/text/DecimalFormatSymbols;->getPatternSeparator()C

    move-result v5

    goto :goto_1d

    :cond_2c
    const/16 v5, 0x3b

    :goto_1d
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2d
    add-int/lit8 v15, v15, 0x1

    move v10, v3

    move v5, v7

    move v7, v13

    move/from16 v8, v18

    const/4 v13, 0x2

    goto/16 :goto_8

    .line 4620
    :cond_2e
    :goto_1e
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static trimMarksFromAffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 2912
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 2913
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isBidiMark(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    return-object p0

    .line 2922
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2923
    invoke-virtual {v2, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/2addr v1, v3

    .line 2925
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 2926
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2927
    invoke-static {v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isBidiMark(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2928
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2932
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3994
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 3996
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 3997
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x27

    if-eq v0, v2, :cond_0

    .line 3999
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    move v0, v1

    goto :goto_0

    .line 4002
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5461
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 5463
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method adjustNumberAsInFormatting(D)D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 961
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p1

    .line 964
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiply(D)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->round(D)D

    move-result-wide p1

    .line 965
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide p1

    .line 968
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->toDigitList(D)Landroid/icu/text/DigitList_Android;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/DigitList_Android;->getDouble()D

    move-result-wide p0

    return-wide p0
.end method

.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 4667
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->applyPattern(Ljava/lang/String;Z)V

    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 4643
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->applyPattern(Ljava/lang/String;Z)V

    return-void
.end method

.method public areSignificantDigitsUsed()Z
    .locals 0

    .line 5285
    iget-boolean p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useSignificantDigits:Z

    return p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 3929
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormat_ICU58_Android;

    .line 3930
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormatSymbols;

    iput-object v1, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 3931
    new-instance v1, Landroid/icu/text/DigitList_Android;

    invoke-direct {v1}, Landroid/icu/text/DigitList_Android;-><init>()V

    iput-object v1, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    .line 3932
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    if-eqz v1, :cond_0

    .line 3933
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {v1}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/CurrencyPluralInfo;

    iput-object v1, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 3935
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->attributes:Ljava/util/ArrayList;

    .line 3936
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object p0, v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3943
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3954
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3957
    :cond_1
    check-cast p1, Landroid/icu/text/DecimalFormat_ICU58_Android;

    .line 3961
    iget v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    iget v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->style:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    .line 3963
    invoke-direct {p0, v1, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    .line 3964
    invoke-direct {p0, v1, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    .line 3965
    invoke-direct {p0, v1, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    .line 3966
    invoke-direct {p0, v1, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    iget v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    iget v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    if-ne v1, v2, :cond_5

    iget-byte v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    iget-byte v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    if-ne v1, v2, :cond_5

    iget-byte v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    iget-byte v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    iget-boolean v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    iget-boolean v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-ne v1, v2, :cond_5

    if-eqz v1, :cond_3

    iget-byte v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minExponentDigits:B

    iget-byte v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->minExponentDigits:B

    if-ne v1, v2, :cond_5

    :cond_3
    iget-boolean v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useSignificantDigits:Z

    iget-boolean v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->useSignificantDigits:Z

    if-ne v1, v2, :cond_5

    if-eqz v1, :cond_4

    iget v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minSignificantDigits:I

    iget v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->minSignificantDigits:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->maxSignificantDigits:I

    iget v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->maxSignificantDigits:I

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iget-object v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 3976
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    iget-object v2, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 3977
    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    iget-object p1, p1, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    .line 3978
    invoke-virtual {p0, p1}, Landroid/icu/util/Currency$CurrencyUsage;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 799
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 1095
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/DecimalFormat_ICU58_Android;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 9

    .line 1223
    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    int-to-long v2, v0

    .line 1224
    invoke-static {v2, v3}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    invoke-virtual {p1, v0, v2}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p1

    .line 1227
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1228
    iget v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    invoke-virtual {p1, v0, v2, v3}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;II)Landroid/icu/math/BigDecimal;

    move-result-object p1

    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->actualRoundingIncrementICU:Landroid/icu/math/BigDecimal;

    iget-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    .line 1229
    invoke-virtual {p1, v0, v3}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p1

    .line 1232
    :cond_1
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    monitor-enter v0

    .line 1233
    :try_start_0
    iget-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-direct {p0, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->precision(Z)I

    move-result v4

    iget-boolean v5, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    if-nez v5, :cond_2

    .line 1234
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->areSignificantDigitsUsed()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v2

    .line 1233
    :goto_0
    invoke-virtual {v3, p1, v4, v5}, Landroid/icu/text/DigitList_Android;->set(Landroid/icu/math/BigDecimal;IZ)V

    .line 1236
    iget-object v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {v3}, Landroid/icu/text/DigitList_Android;->wasRounded()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 1237
    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Rounding necessary"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1239
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->signum()I

    move-result p1

    if-gez p1, :cond_5

    move v6, v1

    goto :goto_2

    :cond_5
    move v6, v2

    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, v3

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Landroid/icu/text/DecimalFormat_ICU58_Android;->subformat(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;ZZZ)Ljava/lang/StringBuffer;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1241
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 1187
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x0

    .line 1153
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 1

    .line 4362
    sget-object v0, Landroid/icu/text/DecimalFormat_ICU58_Android;->NULL_UNIT:Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatToCharacterIterator(Ljava/lang/Object;Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;)Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0
.end method

.method formatToCharacterIterator(Ljava/lang/Object;Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;)Ljava/text/AttributedCharacterIterator;
    .locals 9

    .line 4366
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_6

    .line 4368
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    .line 4369
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 4370
    invoke-virtual {p2, v7}, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;->writePrefix(Ljava/lang/StringBuffer;)V

    .line 4371
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4372
    instance-of v1, p1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 4373
    check-cast v0, Ljava/math/BigInteger;

    new-instance p1, Ljava/text/FieldPosition;

    invoke-direct {p1, v8}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-direct {p0, v0, v7, p1, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4374
    :cond_0
    instance-of v1, p1, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    .line 4375
    check-cast v0, Ljava/math/BigDecimal;

    new-instance p1, Ljava/text/FieldPosition;

    invoke-direct {p1, v8}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-direct {p0, v0, v7, p1, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4377
    :cond_1
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 4378
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    new-instance v5, Ljava/text/FieldPosition;

    invoke-direct {v5, v8}, Ljava/text/FieldPosition;-><init>(I)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat_ICU58_Android;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 4379
    :cond_2
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_4

    instance-of p1, p1, Ljava/lang/Long;

    if-eqz p1, :cond_3

    goto :goto_0

    .line 4382
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4380
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    new-instance v5, Ljava/text/FieldPosition;

    invoke-direct {v5, v8}, Ljava/text/FieldPosition;-><init>(I)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/DecimalFormat_ICU58_Android;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;Z)Ljava/lang/StringBuffer;

    .line 4384
    :goto_1
    invoke-virtual {p2, v7}, Landroid/icu/text/DecimalFormat_ICU58_Android$Unit;->writeSuffix(Ljava/lang/StringBuffer;)V

    .line 4385
    new-instance p1, Ljava/text/AttributedString;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 4388
    :goto_2
    iget-object p2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v8, p2, :cond_5

    .line 4389
    iget-object p2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/text/FieldPosition;

    .line 4390
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    .line 4391
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p2

    invoke-virtual {p1, v0, v0, v1, p2}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 4395
    :cond_5
    invoke-virtual {p1}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p0

    return-object p0

    .line 4367
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;
    .locals 2

    const/4 v0, 0x0

    .line 3904
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    if-nez v1, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 3905
    :cond_0
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-virtual {p0}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/CurrencyPluralInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    return-object v0
.end method

.method public getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;
    .locals 0

    .line 5362
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    return-object p0
.end method

.method public getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;
    .locals 0

    .line 3246
    :try_start_0
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DecimalFormatSymbols;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getEffectiveCurrency()Landroid/icu/util/Currency;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5375
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5377
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getFixedDecimal(D)Landroid/icu/text/PluralRules$FixedDecimal;
    .locals 1

    .line 1296
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->digitList:Landroid/icu/text/DigitList_Android;

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getFixedDecimal(DLandroid/icu/text/DigitList_Android;)Landroid/icu/text/PluralRules$FixedDecimal;

    move-result-object p0

    return-object p0
.end method

.method getFixedDecimal(DLandroid/icu/text/DigitList_Android;)Landroid/icu/text/PluralRules$FixedDecimal;
    .locals 9

    .line 1300
    iget v0, p3, Landroid/icu/text/DigitList_Android;->count:I

    iget v1, p3, Landroid/icu/text/DigitList_Android;->decimalAt:I

    sub-int/2addr v0, v1

    .line 1305
    iget-boolean v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useSignificantDigits:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1306
    iget v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->maxSignificantDigits:I

    iget v3, p3, Landroid/icu/text/DigitList_Android;->decimalAt:I

    sub-int/2addr v1, v3

    .line 1307
    iget p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minSignificantDigits:I

    iget v3, p3, Landroid/icu/text/DigitList_Android;->decimalAt:I

    sub-int/2addr p0, v3

    if-gez p0, :cond_0

    move p0, v2

    :cond_0
    if-gez v1, :cond_2

    move v1, v2

    goto :goto_0

    .line 1315
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMaximumFractionDigits()I

    move-result v1

    .line 1316
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getMinimumFractionDigits()I

    move-result p0

    :cond_2
    :goto_0
    if-ge v0, p0, :cond_3

    move v6, p0

    goto :goto_1

    :cond_3
    if-le v0, v1, :cond_4

    move v6, v1

    goto :goto_1

    :cond_4
    move v6, v0

    :goto_1
    const-wide/16 v3, 0x0

    if-lez v6, :cond_6

    .line 1326
    iget p0, p3, Landroid/icu/text/DigitList_Android;->decimalAt:I

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_2
    iget v1, p3, Landroid/icu/text/DigitList_Android;->count:I

    const-wide/16 v7, 0xa

    if-ge p0, v1, :cond_5

    mul-long/2addr v3, v7

    .line 1328
    iget-object v1, p3, Landroid/icu/text/DigitList_Android;->digits:[B

    aget-byte v1, v1, p0

    add-int/lit8 v1, v1, -0x30

    int-to-long v1, v1

    add-long/2addr v3, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_5
    move p0, v6

    :goto_3
    if-ge p0, v0, :cond_6

    mul-long/2addr v3, v7

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_6
    move-wide v7, v3

    .line 1334
    new-instance p0, Landroid/icu/text/PluralRules$FixedDecimal;

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    return-object p0
.end method

.method public getFormatWidth()I
    .locals 0

    .line 3541
    iget p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    return p0
.end method

.method public getGroupingSize()I
    .locals 0

    .line 3751
    iget-byte p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    return p0
.end method

.method public getMathContext()Ljava/math/MathContext;
    .locals 3

    const/4 v0, 0x0

    .line 3817
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/math/MathContext;

    iget-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    invoke-virtual {v2}, Landroid/icu/math/MathContext;->getDigits()I

    move-result v2

    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    .line 3818
    invoke-virtual {p0}, Landroid/icu/math/MathContext;->getRoundingMode()I

    move-result p0

    invoke-static {p0}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :goto_0
    return-object v0
.end method

.method public getMathContextICU()Landroid/icu/math/MathContext;
    .locals 0

    .line 3805
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    return-object p0
.end method

.method public getMaximumSignificantDigits()I
    .locals 0

    .line 5235
    iget p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->maxSignificantDigits:I

    return p0
.end method

.method public getMinimumExponentDigits()B
    .locals 0

    .line 3685
    iget-byte p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minExponentDigits:B

    return p0
.end method

.method public getMinimumSignificantDigits()I
    .locals 0

    .line 5224
    iget p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minSignificantDigits:I

    return p0
.end method

.method public getMultiplier()I
    .locals 0

    .line 3389
    iget p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    return p0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 0

    .line 3320
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 0

    .line 3364
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public getPadCharacter()C
    .locals 0

    .line 3576
    iget-char p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->pad:C

    return p0
.end method

.method public getPadPosition()I
    .locals 0

    .line 3613
    iget p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    return p0
.end method

.method public getParseMaxDigits()I
    .locals 0

    .line 5451
    iget p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->PARSE_MAX_EXPONENT:I

    return p0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 0

    .line 3298
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 0

    .line 3342
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public getRoundingIncrement()Ljava/math/BigDecimal;
    .locals 0

    .line 3419
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingIncrementICU:Landroid/icu/math/BigDecimal;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3421
    :cond_0
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public getRoundingMode()I
    .locals 0

    .line 3504
    iget p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    return p0
.end method

.method public getSecondaryGroupingSize()I
    .locals 0

    .line 3782
    iget-byte p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 4033
    invoke-super {p0}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isDecimalPatternMatchRequired()Z
    .locals 0

    .line 3871
    iget-boolean p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseRequireDecimalPoint:Z

    return p0
.end method

.method public isDecimalSeparatorAlwaysShown()Z
    .locals 0

    .line 3851
    iget-boolean p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    return p0
.end method

.method public isExponentSignAlwaysShown()Z
    .locals 0

    .line 3721
    iget-boolean p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->exponentSignAlwaysShown:Z

    return p0
.end method

.method isNumberNegative(D)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 989
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 992
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiply(D)D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->isNegative(D)Z

    move-result p0

    return p0
.end method

.method public isParseBigDecimal()Z
    .locals 0

    .line 5430
    iget-boolean p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseBigDecimal:Z

    return p0
.end method

.method public isScientificNotation()Z
    .locals 0

    .line 3653
    iget-boolean p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    return p0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    .line 1946
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->parse(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/icu/util/Currency;

    .line 1965
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->parse(Ljava/lang/String;Ljava/text/ParsePosition;[Landroid/icu/util/Currency;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/CurrencyAmount;

    return-object p0
.end method

.method public setCurrency(Landroid/icu/util/Currency;)V
    .locals 3

    .line 5314
    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5316
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v1

    .line 5317
    iget-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2, p1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrency(Landroid/icu/util/Currency;)V

    .line 5318
    iget-object v2, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2, v1}, Landroid/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 5321
    :cond_0
    iget v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 5323
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p1, v1}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setRoundingIncrement(D)V

    .line 5324
    iget-object v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p1, v1}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result p1

    .line 5325
    invoke-virtual {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMinimumFractionDigits(I)V

    .line 5326
    invoke-virtual {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMaximumFractionDigits(I)V

    .line 5328
    :cond_1
    iget p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencySignCount:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    .line 5331
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffixes(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)V
    .locals 0

    .line 3919
    invoke-virtual {p1}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/CurrencyPluralInfo;

    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    const/4 p1, 0x0

    .line 3920
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->isReadyForParsing:Z

    return-void
.end method

.method public setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 5346
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    .line 5347
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->getCurrency()Landroid/icu/util/Currency;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5351
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p1, v0}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setRoundingIncrement(D)V

    .line 5352
    iget-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p1, v0}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result p1

    .line 5353
    invoke-virtual {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setMinimumFractionDigits(I)V

    .line 5354
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->_setMaximumFractionDigits(I)V

    :cond_0
    return-void

    .line 5344
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "return value is null at method AAA"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 0

    .line 3260
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/DecimalFormatSymbols;

    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 3261
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setCurrencyForSymbols()V

    const/4 p1, 0x0

    .line 3262
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->expandAffixes(Ljava/lang/String;)V

    return-void
.end method

.method public setDecimalPatternMatchRequired(Z)V
    .locals 0

    .line 3862
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseRequireDecimalPoint:Z

    return-void
.end method

.method public setDecimalSeparatorAlwaysShown(Z)V
    .locals 0

    .line 3888
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->decimalSeparatorAlwaysShown:Z

    return-void
.end method

.method public setExponentSignAlwaysShown(Z)V
    .locals 0

    .line 3738
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->exponentSignAlwaysShown:Z

    return-void
.end method

.method public setFormatWidth(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 3562
    iput p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatWidth:I

    return-void

    .line 3560
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal format width"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGroupingSize(I)V
    .locals 0

    int-to-byte p1, p1

    .line 3764
    iput-byte p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize:B

    return-void
.end method

.method public setMathContext(Ljava/math/MathContext;)V
    .locals 4

    .line 3841
    new-instance v0, Landroid/icu/math/MathContext;

    invoke-virtual {p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v1

    .line 3842
    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    iput-object v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    return-void
.end method

.method public setMathContextICU(Landroid/icu/math/MathContext;)V
    .locals 0

    .line 3831
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->mathContext:Landroid/icu/math/MathContext;

    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 0

    .line 5390
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->_setMaximumFractionDigits(I)V

    .line 5391
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->resetActualRounding()V

    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 1

    const v0, 0x77359400

    .line 5202
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setMaximumIntegerDigits(I)V

    return-void
.end method

.method public setMaximumSignificantDigits(I)V
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 5272
    :cond_0
    iget v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minSignificantDigits:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5273
    iput v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minSignificantDigits:I

    .line 5274
    iput p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->maxSignificantDigits:I

    .line 5275
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setSignificantDigitsUsed(Z)V

    return-void
.end method

.method public setMinimumExponentDigits(B)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 3705
    iput-byte p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minExponentDigits:B

    return-void

    .line 3703
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Exponent digits must be >= 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinimumFractionDigits(I)V
    .locals 1

    const/16 v0, 0x154

    .line 5410
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 1

    const/16 v0, 0x135

    .line 5213
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->setMinimumIntegerDigits(I)V

    return-void
.end method

.method public setMinimumSignificantDigits(I)V
    .locals 2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 5252
    :cond_0
    iget v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->maxSignificantDigits:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5253
    iput p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->minSignificantDigits:I

    .line 5254
    iput v1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->maxSignificantDigits:I

    .line 5255
    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setSignificantDigitsUsed(Z)V

    return-void
.end method

.method public setMultiplier(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3406
    iput p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->multiplier:I

    return-void

    .line 3404
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad multiplier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNegativePrefix(Ljava/lang/String;)V
    .locals 0

    .line 3330
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativePrefix:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3331
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negPrefixPattern:Ljava/lang/String;

    return-void
.end method

.method public setNegativeSuffix(Ljava/lang/String;)V
    .locals 0

    .line 3374
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negativeSuffix:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3375
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->negSuffixPattern:Ljava/lang/String;

    return-void
.end method

.method public setPadCharacter(C)V
    .locals 0

    .line 3591
    iput-char p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->pad:C

    return-void
.end method

.method public setPadPosition(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 3639
    iput p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->padPosition:I

    return-void

    .line 3637
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal pad position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setParseBigDecimal(Z)V
    .locals 0

    .line 5421
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->parseBigDecimal:Z

    return-void
.end method

.method public setParseMaxDigits(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 5441
    iput p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->PARSE_MAX_EXPONENT:I

    :cond_0
    return-void
.end method

.method public setPositivePrefix(Ljava/lang/String;)V
    .locals 0

    .line 3308
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positivePrefix:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3309
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posPrefixPattern:Ljava/lang/String;

    return-void
.end method

.method public setPositiveSuffix(Ljava/lang/String;)V
    .locals 0

    .line 3352
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->positiveSuffix:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3353
    iput-object p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->posSuffixPattern:Ljava/lang/String;

    return-void
.end method

.method public setRoundingIncrement(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_1

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 3483
    check-cast p1, Landroid/icu/math/BigDecimal;

    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    goto :goto_0

    .line 3487
    :cond_0
    invoke-static {p1, p2}, Landroid/icu/math/BigDecimal;->valueOf(D)Landroid/icu/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    .line 3489
    :goto_0
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->resetActualRounding()V

    return-void

    .line 3480
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal rounding increment"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRoundingIncrement(Landroid/icu/math/BigDecimal;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3455
    :cond_0
    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    invoke-virtual {p1, v0}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_2

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 3460
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    goto :goto_1

    .line 3462
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setInternalRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    .line 3464
    :goto_1
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->resetActualRounding()V

    return-void

    .line 3457
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal rounding increment"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRoundingIncrement(Ljava/math/BigDecimal;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3437
    check-cast p1, Landroid/icu/math/BigDecimal;

    invoke-virtual {p0, p1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    goto :goto_0

    .line 3439
    :cond_0
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->setRoundingIncrement(Landroid/icu/math/BigDecimal;)V

    :goto_0
    return-void
.end method

.method public setRoundingMode(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 3525
    iput p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->roundingMode:I

    .line 3526
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->resetActualRounding()V

    return-void

    .line 3522
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid rounding mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScientificNotation(Z)V
    .locals 0

    .line 3671
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useExponentialNotation:Z

    return-void
.end method

.method public setSecondaryGroupingSize(I)V
    .locals 0

    int-to-byte p1, p1

    .line 3795
    iput-byte p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->groupingSize2:B

    return-void
.end method

.method public setSignificantDigitsUsed(Z)V
    .locals 0

    .line 5296
    iput-boolean p1, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->useSignificantDigits:Z

    return-void
.end method

.method toDigitList(D)Landroid/icu/text/DigitList_Android;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 973
    new-instance v0, Landroid/icu/text/DigitList_Android;

    invoke-direct {v0}, Landroid/icu/text/DigitList_Android;-><init>()V

    const/4 v1, 0x0

    .line 974
    invoke-direct {p0, v1}, Landroid/icu/text/DecimalFormat_ICU58_Android;->precision(Z)I

    move-result p0

    invoke-virtual {v0, p1, p2, p0, v1}, Landroid/icu/text/DigitList_Android;->set(DIZ)V

    return-object v0
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 2

    .line 4061
    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->style:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 4062
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 4064
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->toPattern(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 2

    .line 4044
    iget v0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->style:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 4049
    iget-object p0, p0, Landroid/icu/text/DecimalFormat_ICU58_Android;->formatPattern:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 4051
    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormat_ICU58_Android;->toPattern(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
