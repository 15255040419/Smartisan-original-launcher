.class public Landroid/icu/impl/number/DecimalFormatProperties;
.super Ljava/lang/Object;
.source "DecimalFormatProperties.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT:Landroid/icu/impl/number/DecimalFormatProperties;

.field private static final serialVersionUID:J = 0x38d634ca98a9d27bL


# instance fields
.field private transient compactCustomData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

.field private transient currency:Landroid/icu/util/Currency;

.field private transient currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

.field private transient currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

.field private transient decimalPatternMatchRequired:Z

.field private transient decimalSeparatorAlwaysShown:Z

.field private transient exponentSignAlwaysShown:Z

.field private transient formatWidth:I

.field private transient groupingSize:I

.field private transient magnitudeMultiplier:I

.field private transient mathContext:Ljava/math/MathContext;

.field private transient maximumFractionDigits:I

.field private transient maximumIntegerDigits:I

.field private transient maximumSignificantDigits:I

.field private transient minimumExponentDigits:I

.field private transient minimumFractionDigits:I

.field private transient minimumGroupingDigits:I

.field private transient minimumIntegerDigits:I

.field private transient minimumSignificantDigits:I

.field private transient multiplier:Ljava/math/BigDecimal;

.field private transient negativePrefix:Ljava/lang/String;

.field private transient negativePrefixPattern:Ljava/lang/String;

.field private transient negativeSuffix:Ljava/lang/String;

.field private transient negativeSuffixPattern:Ljava/lang/String;

.field private transient padPosition:Landroid/icu/impl/number/Padder$PadPosition;

.field private transient padString:Ljava/lang/String;

.field private transient parseCaseSensitive:Z

.field private transient parseGroupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

.field private transient parseIntegerOnly:Z

.field private transient parseMode:Landroid/icu/impl/number/Parse$ParseMode;

.field private transient parseNoExponent:Z

.field private transient parseToBigDecimal:Z

.field private transient pluralRules:Landroid/icu/text/PluralRules;

.field private transient positivePrefix:Ljava/lang/String;

.field private transient positivePrefixPattern:Ljava/lang/String;

.field private transient positiveSuffix:Ljava/lang/String;

.field private transient positiveSuffixPattern:Ljava/lang/String;

.field private transient roundingIncrement:Ljava/math/BigDecimal;

.field private transient roundingMode:Ljava/math/RoundingMode;

.field private transient secondaryGroupingSize:I

.field private transient signAlwaysShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    sput-object v0, Landroid/icu/impl/number/DecimalFormatProperties;->DEFAULT:Landroid/icu/impl/number/DecimalFormatProperties;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->clear()Landroid/icu/impl/number/DecimalFormatProperties;

    return-void
.end method

.method private _clear()Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 3

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    .line 125
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 126
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    .line 127
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 128
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    .line 130
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    .line 131
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    const/4 v2, -0x1

    .line 132
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    .line 133
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    .line 134
    iput v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    .line 135
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    .line 136
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    .line 137
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    .line 138
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    .line 139
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    .line 140
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    .line 141
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    .line 142
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    .line 143
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    .line 144
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    .line 145
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    .line 150
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    .line 151
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    .line 152
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseGroupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    .line 153
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    .line 154
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/Parse$ParseMode;

    .line 155
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    .line 156
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    .line 157
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    .line 158
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    .line 159
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    .line 162
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    .line 163
    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    .line 164
    iput v2, p0, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    .line 165
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    return-object p0
.end method

.method private _copyFrom(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 1

    .line 170
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    .line 171
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 172
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    .line 173
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    .line 174
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    .line 175
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    .line 176
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    .line 177
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    .line 178
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    .line 179
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    .line 180
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    .line 181
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    .line 182
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    .line 183
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    .line 184
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    .line 185
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    .line 186
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    .line 187
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    .line 188
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    .line 189
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    .line 190
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    .line 191
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    .line 192
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    .line 193
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    .line 195
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    .line 196
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    .line 197
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    .line 198
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseGroupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseGroupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    .line 199
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    .line 200
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/Parse$ParseMode;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/Parse$ParseMode;

    .line 201
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    .line 202
    iget-boolean v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    .line 203
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    .line 204
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    .line 205
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    .line 206
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    .line 209
    iget-object v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    iput-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    .line 210
    iget v0, p1, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    iput v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    .line 211
    iget-boolean p1, p1, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    return-object p0
.end method

.method private _equals(Landroid/icu/impl/number/DecimalFormatProperties;)Z
    .locals 4

    .line 217
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    iget-object v1, p1, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    if-eqz v0, :cond_5

    .line 222
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    iget-boolean v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    if-eqz v0, :cond_6

    .line 223
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    iget-boolean v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    if-eqz v0, :cond_7

    .line 224
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    iget-boolean v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    if-eqz v0, :cond_8

    .line 225
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    iget v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    if-eqz v0, :cond_9

    .line 226
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    iget v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    move v0, v2

    :goto_9
    if-eqz v0, :cond_a

    .line 227
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    iget v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_a

    :cond_a
    move v0, v2

    :goto_a
    if-eqz v0, :cond_b

    .line 228
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_b

    :cond_b
    move v0, v2

    :goto_b
    if-eqz v0, :cond_c

    .line 229
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    iget v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_c

    :cond_c
    move v0, v2

    :goto_c
    if-eqz v0, :cond_d

    .line 230
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    iget v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_d

    :cond_d
    move v0, v2

    :goto_d
    if-eqz v0, :cond_e

    .line 231
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    iget v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_e

    :cond_e
    move v0, v2

    :goto_e
    if-eqz v0, :cond_f

    .line 232
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    iget v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_f

    :cond_f
    move v0, v2

    :goto_f
    if-eqz v0, :cond_10

    .line 233
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    iget v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_10

    :cond_10
    move v0, v2

    :goto_10
    if-eqz v0, :cond_11

    .line 234
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    iget v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_11

    :cond_11
    move v0, v2

    :goto_11
    if-eqz v0, :cond_12

    .line 235
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    iget v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_12

    :cond_12
    move v0, v2

    :goto_12
    if-eqz v0, :cond_13

    .line 236
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    iget v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_13

    :cond_13
    move v0, v2

    :goto_13
    if-eqz v0, :cond_14

    .line 237
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_14

    :cond_14
    move v0, v2

    :goto_14
    if-eqz v0, :cond_15

    .line 238
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_15

    :cond_15
    move v0, v2

    :goto_15
    if-eqz v0, :cond_16

    .line 239
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_16

    :cond_16
    move v0, v2

    :goto_16
    if-eqz v0, :cond_17

    .line 240
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_17

    :cond_17
    move v0, v2

    :goto_17
    if-eqz v0, :cond_18

    .line 241
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_18

    :cond_18
    move v0, v2

    :goto_18
    if-eqz v0, :cond_19

    .line 242
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_19

    :cond_19
    move v0, v2

    :goto_19
    if-eqz v0, :cond_1a

    .line 243
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1a

    :cond_1a
    move v0, v2

    :goto_1a
    if-eqz v0, :cond_1b

    .line 244
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    iget-boolean v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1b

    :cond_1b
    move v0, v2

    :goto_1b
    if-eqz v0, :cond_1c

    .line 245
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseGroupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseGroupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    goto :goto_1c

    :cond_1c
    move v0, v2

    :goto_1c
    if-eqz v0, :cond_1d

    .line 246
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    iget-boolean v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    goto :goto_1d

    :cond_1d
    move v0, v2

    :goto_1d
    if-eqz v0, :cond_1e

    .line 247
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/Parse$ParseMode;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/Parse$ParseMode;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1e

    :cond_1e
    move v0, v2

    :goto_1e
    if-eqz v0, :cond_1f

    .line 248
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    iget-boolean v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_1f

    :cond_1f
    move v0, v2

    :goto_1f
    if-eqz v0, :cond_20

    .line 249
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    iget-boolean v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    goto :goto_20

    :cond_20
    move v0, v2

    :goto_20
    if-eqz v0, :cond_21

    .line 250
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v1

    goto :goto_21

    :cond_21
    move v0, v2

    :goto_21
    if-eqz v0, :cond_22

    .line 251
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v1

    goto :goto_22

    :cond_22
    move v0, v2

    :goto_22
    if-eqz v0, :cond_23

    .line 252
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    goto :goto_23

    :cond_23
    move v0, v2

    :goto_23
    if-eqz v0, :cond_24

    .line 253
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    goto :goto_24

    :cond_24
    move v0, v2

    :goto_24
    if-eqz v0, :cond_25

    .line 254
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    goto :goto_25

    :cond_25
    move v0, v2

    :goto_25
    if-eqz v0, :cond_26

    .line 255
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v1

    goto :goto_26

    :cond_26
    move v0, v2

    :goto_26
    if-eqz v0, :cond_27

    .line 256
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    iget-object v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    goto :goto_27

    :cond_27
    move v0, v2

    :goto_27
    if-eqz v0, :cond_28

    .line 257
    iget v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    iget v3, p1, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    invoke-direct {p0, v0, v3}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v1

    goto :goto_28

    :cond_28
    move v0, v2

    :goto_28
    if-eqz v0, :cond_29

    .line 258
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    iget-boolean p1, p1, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_29

    :cond_29
    move v1, v2

    :goto_29
    return v1
.end method

.method private _equalsHelper(II)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private _equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 275
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private _equalsHelper(ZZ)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private _hashCode()I
    .locals 2

    .line 280
    iget-object v0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    invoke-direct {p0, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v0

    xor-int/lit8 v0, v0, 0x0

    .line 281
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 282
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 283
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 284
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 285
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 286
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 287
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 288
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 289
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 290
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 291
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 292
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 293
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 294
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 295
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 296
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 297
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 298
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 299
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 300
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 301
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 302
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 303
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 304
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 305
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 306
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 307
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 308
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseGroupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 309
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 310
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/Parse$ParseMode;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 311
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 312
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 313
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 314
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 315
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 316
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 317
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 318
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 319
    iget-object v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 320
    iget v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 321
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private _hashCodeHelper(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0xd

    return p1
.end method

.method private _hashCodeHelper(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 336
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method private _hashCodeHelper(Z)I
    .locals 0

    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 554
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->readObjectImpl(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1348
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->writeObjectImpl(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public clear()Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 340
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->_clear()Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object p0

    return-object p0
.end method

.method public clone()Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 1

    .line 348
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/number/DecimalFormatProperties;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 351
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->clone()Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object p0

    return-object p0
.end method

.method public copyFrom(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->_copyFrom(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 372
    :cond_1
    instance-of v1, p1, Landroid/icu/impl/number/DecimalFormatProperties;

    if-nez v1, :cond_2

    return v0

    .line 374
    :cond_2
    check-cast p1, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p0, p1}, Landroid/icu/impl/number/DecimalFormatProperties;->_equals(Landroid/icu/impl/number/DecimalFormatProperties;)Z

    move-result p0

    return p0
.end method

.method public getCompactCustomData()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 380
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    return-object p0
.end method

.method public getCompactStyle()Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .locals 0

    .line 384
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    return-object p0
.end method

.method public getCurrency()Landroid/icu/util/Currency;
    .locals 0

    .line 388
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    return-object p0
.end method

.method public getCurrencyPluralInfo()Landroid/icu/text/CurrencyPluralInfo;
    .locals 0

    .line 392
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    return-object p0
.end method

.method public getCurrencyUsage()Landroid/icu/util/Currency$CurrencyUsage;
    .locals 0

    .line 396
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    return-object p0
.end method

.method public getDecimalPatternMatchRequired()Z
    .locals 0

    .line 400
    iget-boolean p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    return p0
.end method

.method public getDecimalSeparatorAlwaysShown()Z
    .locals 0

    .line 404
    iget-boolean p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    return p0
.end method

.method public getExponentSignAlwaysShown()Z
    .locals 0

    .line 408
    iget-boolean p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    return p0
.end method

.method public getFormatWidth()I
    .locals 0

    .line 412
    iget p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    return p0
.end method

.method public getGroupingSize()I
    .locals 0

    .line 416
    iget p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    return p0
.end method

.method public getMagnitudeMultiplier()I
    .locals 0

    .line 420
    iget p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    return p0
.end method

.method public getMathContext()Ljava/math/MathContext;
    .locals 0

    .line 424
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    return-object p0
.end method

.method public getMaximumFractionDigits()I
    .locals 0

    .line 428
    iget p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    return p0
.end method

.method public getMaximumIntegerDigits()I
    .locals 0

    .line 432
    iget p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    return p0
.end method

.method public getMaximumSignificantDigits()I
    .locals 0

    .line 436
    iget p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    return p0
.end method

.method public getMinimumExponentDigits()I
    .locals 0

    .line 440
    iget p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    return p0
.end method

.method public getMinimumFractionDigits()I
    .locals 0

    .line 444
    iget p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    return p0
.end method

.method public getMinimumGroupingDigits()I
    .locals 0

    .line 448
    iget p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    return p0
.end method

.method public getMinimumIntegerDigits()I
    .locals 0

    .line 452
    iget p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    return p0
.end method

.method public getMinimumSignificantDigits()I
    .locals 0

    .line 456
    iget p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    return p0
.end method

.method public getMultiplier()Ljava/math/BigDecimal;
    .locals 0

    .line 460
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 0

    .line 464
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getNegativePrefixPattern()Ljava/lang/String;
    .locals 0

    .line 468
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 0

    .line 472
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public getNegativeSuffixPattern()Ljava/lang/String;
    .locals 0

    .line 476
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getPadPosition()Landroid/icu/impl/number/Padder$PadPosition;
    .locals 0

    .line 480
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    return-object p0
.end method

.method public getPadString()Ljava/lang/String;
    .locals 0

    .line 484
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    return-object p0
.end method

.method public getParseCaseSensitive()Z
    .locals 0

    .line 488
    iget-boolean p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    return p0
.end method

.method public getParseGroupingMode()Landroid/icu/impl/number/Parse$GroupingMode;
    .locals 0

    .line 492
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseGroupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    return-object p0
.end method

.method public getParseIntegerOnly()Z
    .locals 0

    .line 496
    iget-boolean p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    return p0
.end method

.method public getParseMode()Landroid/icu/impl/number/Parse$ParseMode;
    .locals 0

    .line 500
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/Parse$ParseMode;

    return-object p0
.end method

.method public getParseNoExponent()Z
    .locals 0

    .line 504
    iget-boolean p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    return p0
.end method

.method public getParseToBigDecimal()Z
    .locals 0

    .line 508
    iget-boolean p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    return p0
.end method

.method public getPluralRules()Landroid/icu/text/PluralRules;
    .locals 0

    .line 512
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    return-object p0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 0

    .line 516
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getPositivePrefixPattern()Ljava/lang/String;
    .locals 0

    .line 520
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 0

    .line 524
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public getPositiveSuffixPattern()Ljava/lang/String;
    .locals 0

    .line 528
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getRoundingIncrement()Ljava/math/BigDecimal;
    .locals 0

    .line 532
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 0

    .line 536
    iget-object p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    return-object p0
.end method

.method public getSecondaryGroupingSize()I
    .locals 0

    .line 540
    iget p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    return p0
.end method

.method public getSignAlwaysShown()Z
    .locals 0

    .line 544
    iget-boolean p0, p0, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 549
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->_hashCode()I

    move-result p0

    return p0
.end method

.method readObjectImpl(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 558
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 561
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->clear()Landroid/icu/impl/number/DecimalFormatProperties;

    .line 564
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 567
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 571
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 572
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 577
    :try_start_0
    const-class v4, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 591
    :try_start_1
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 597
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_1
    move-exception p0

    .line 594
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_2
    move-exception p0

    .line 583
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCompactCustomData(Ljava/util/Map;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/icu/impl/number/DecimalFormatProperties;"
        }
    .end annotation

    .line 628
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    return-object p0
.end method

.method public setCompactStyle(Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 641
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->compactStyle:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    return-object p0
.end method

.method public setCurrency(Landroid/icu/util/Currency;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 653
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currency:Landroid/icu/util/Currency;

    return-object p0
.end method

.method public setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    if-eqz p1, :cond_0

    .line 668
    invoke-virtual {p1}, Landroid/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/CurrencyPluralInfo;

    .line 670
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Landroid/icu/text/CurrencyPluralInfo;

    return-object p0
.end method

.method public setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 686
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->currencyUsage:Landroid/icu/util/Currency$CurrencyUsage;

    return-object p0
.end method

.method public setDecimalPatternMatchRequired(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 700
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    return-object p0
.end method

.method public setDecimalSeparatorAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 713
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    return-object p0
.end method

.method public setExponentSignAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 726
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    return-object p0
.end method

.method public setFormatWidth(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 749
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    return-object p0
.end method

.method public setGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 763
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    return-object p0
.end method

.method public setMagnitudeMultiplier(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 777
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    return-object p0
.end method

.method public setMathContext(Ljava/math/MathContext;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 792
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    return-object p0
.end method

.method public setMaximumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 808
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    return-object p0
.end method

.method public setMaximumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 823
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    return-object p0
.end method

.method public setMaximumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 848
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    return-object p0
.end method

.method public setMinimumExponentDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 861
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    return-object p0
.end method

.method public setMinimumFractionDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 875
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    return-object p0
.end method

.method public setMinimumGroupingDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 890
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    return-object p0
.end method

.method public setMinimumIntegerDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 904
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    return-object p0
.end method

.method public setMinimumSignificantDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 929
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    return-object p0
.end method

.method public setMultiplier(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 942
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public setNegativePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 960
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 977
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 996
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1013
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public setPadPosition(Landroid/icu/impl/number/Padder$PadPosition;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1030
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padPosition:Landroid/icu/impl/number/Padder$PadPosition;

    return-object p0
.end method

.method public setPadString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1046
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    return-object p0
.end method

.method public setParseCaseSensitive(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1063
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    return-object p0
.end method

.method public setParseGroupingMode(Landroid/icu/impl/number/Parse$GroupingMode;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1091
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseGroupingMode:Landroid/icu/impl/number/Parse$GroupingMode;

    return-object p0
.end method

.method public setParseIntegerOnly(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1103
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    return-object p0
.end method

.method public setParseMode(Landroid/icu/impl/number/Parse$ParseMode;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1116
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseMode:Landroid/icu/impl/number/Parse$ParseMode;

    return-object p0
.end method

.method public setParseNoExponent(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1128
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    return-object p0
.end method

.method public setParseToBigDecimal(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1141
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    return-object p0
.end method

.method public setPluralRules(Landroid/icu/text/PluralRules;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1153
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->pluralRules:Landroid/icu/text/PluralRules;

    return-object p0
.end method

.method public setPositivePrefix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1171
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setPositivePrefixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1188
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveSuffix(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1206
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveSuffixPattern(Ljava/lang/String;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1223
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public setRoundingIncrement(Ljava/math/BigDecimal;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1243
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1262
    iput-object p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    return-object p0
.end method

.method public setSecondaryGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1280
    iput p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    return-object p0
.end method

.method public setSignAlwaysShown(Z)Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1302
    iput-boolean p1, p0, Landroid/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Properties"

    .line 1309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalFormatProperties;->toStringBare(Ljava/lang/StringBuilder;)V

    const-string p0, ">"

    .line 1311
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringBare(Ljava/lang/StringBuilder;)V
    .locals 8

    .line 1320
    const-class v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1321
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 1324
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1325
    sget-object v5, Landroid/icu/impl/number/DecimalFormatProperties;->DEFAULT:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    const-string v6, ":"

    const-string v7, " "

    if-eqz v4, :cond_2

    if-nez v5, :cond_1

    goto :goto_1

    .line 1337
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1336
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception v3

    .line 1330
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    .line 1327
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method writeObjectImpl(Ljava/io/ObjectOutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1352
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v0, 0x0

    .line 1355
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    const-class v3, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1360
    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 1361
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 1365
    :cond_0
    :try_start_0
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 1370
    :cond_1
    sget-object v8, Landroid/icu/impl/number/DecimalFormatProperties;->DEFAULT:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1371
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1372
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1380
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catch_1
    move-exception p0

    .line 1377
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 1385
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 1386
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :goto_2
    if-ge v0, p0, :cond_4

    .line 1390
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 1391
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 1392
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1393
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
