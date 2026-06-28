.class public Landroid/icu/text/DecimalFormatSymbols;
.super Ljava/lang/Object;
.source "DecimalFormatSymbols.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DecimalFormatSymbols$CacheData;,
        Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;
    }
.end annotation


# static fields
.field public static final CURRENCY_SPC_CURRENCY_MATCH:I = 0x0

.field public static final CURRENCY_SPC_INSERT:I = 0x2

.field public static final CURRENCY_SPC_SURROUNDING_MATCH:I = 0x1

.field private static final DEF_DECIMAL_SEPARATOR:C = '.'

.field private static final DEF_DIGIT_CHARS_ARRAY:[C

.field private static final DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

.field private static final DEF_GROUPING_SEPARATOR:C = ','

.field private static final DEF_MINUS_SIGN:C = '-'

.field private static final DEF_PERCENT:C = '%'

.field private static final DEF_PERMILL:C = '\u2030'

.field private static final DEF_PLUS_SIGN:C = '+'

.field private static final LATIN_NUMBERING_SYSTEM:Ljava/lang/String; = "latn"

.field private static final NUMBER_ELEMENTS:Ljava/lang/String; = "NumberElements"

.field private static final SYMBOLS:Ljava/lang/String; = "symbols"

.field private static final SYMBOL_DEFAULTS:[Ljava/lang/String;

.field private static final SYMBOL_KEYS:[Ljava/lang/String;

.field private static final cachedLocaleData:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/DecimalFormatSymbols$CacheData;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final currentSerialVersion:I = 0x8

.field private static final serialVersionUID:J = 0x501d17990868939cL


# instance fields
.field private NaN:Ljava/lang/String;

.field private actualLocale:Landroid/icu/util/ULocale;

.field private transient codePointZero:I

.field private transient currency:Landroid/icu/util/Currency;

.field private currencyPattern:Ljava/lang/String;

.field private currencySpcAfterSym:[Ljava/lang/String;

.field private currencySpcBeforeSym:[Ljava/lang/String;

.field private currencySymbol:Ljava/lang/String;

.field private decimalSeparator:C

.field private decimalSeparatorString:Ljava/lang/String;

.field private digit:C

.field private digitStrings:[Ljava/lang/String;

.field private digits:[C

.field private exponentMultiplicationSign:Ljava/lang/String;

.field private exponentSeparator:Ljava/lang/String;

.field private exponential:C

.field private groupingSeparator:C

.field private groupingSeparatorString:Ljava/lang/String;

.field private infinity:Ljava/lang/String;

.field private intlCurrencySymbol:Ljava/lang/String;

.field private minusSign:C

.field private minusString:Ljava/lang/String;

.field private monetaryGroupingSeparator:C

.field private monetaryGroupingSeparatorString:Ljava/lang/String;

.field private monetarySeparator:C

.field private monetarySeparatorString:Ljava/lang/String;

.field private padEscape:C

.field private patternSeparator:C

.field private perMill:C

.field private perMillString:Ljava/lang/String;

.field private percent:C

.field private percentString:Ljava/lang/String;

.field private plusSign:C

.field private plusString:Ljava/lang/String;

.field private requestedLocale:Ljava/util/Locale;

.field private serialVersionOnStream:I

.field private sigDigit:C

.field private ulocale:Landroid/icu/util/ULocale;

.field private validLocale:Landroid/icu/util/ULocale;

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "decimal"

    const-string v1, "group"

    const-string v2, "list"

    const-string/jumbo v3, "percentSign"

    const-string v4, "minusSign"

    const-string/jumbo v5, "plusSign"

    const-string v6, "exponential"

    const-string/jumbo v7, "perMille"

    const-string v8, "infinity"

    const-string v9, "nan"

    const-string v10, "currencyDecimal"

    const-string v11, "currencyGroup"

    const-string/jumbo v12, "superscriptingExponent"

    .line 1179
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    const-string v6, "5"

    const-string v7, "6"

    const-string v8, "7"

    const-string v9, "8"

    const-string v10, "9"

    .line 1198
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DecimalFormatSymbols;->DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [C

    .line 1201
    fill-array-data v1, :array_0

    sput-object v1, Landroid/icu/text/DecimalFormatSymbols;->DEF_DIGIT_CHARS_ARRAY:[C

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x2e

    .line 1218
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x2c

    .line 1219
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ";"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    .line 1221
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/16 v2, 0x2d

    .line 1222
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/16 v2, 0x2b

    .line 1223
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/4 v2, 0x6

    const-string v3, "E"

    aput-object v3, v1, v2

    const/16 v2, 0x2030

    .line 1225
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x8

    const-string/jumbo v3, "\u221e"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "NaN"

    aput-object v3, v1, v2

    const/4 v2, 0x0

    aput-object v2, v1, v0

    const/16 v0, 0xb

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string/jumbo v2, "\u00d7"

    aput-object v2, v1, v0

    sput-object v1, Landroid/icu/text/DecimalFormatSymbols;->SYMBOL_DEFAULTS:[Ljava/lang/String;

    .line 1824
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols$1;

    invoke-direct {v0}, Landroid/icu/text/DecimalFormatSymbols$1;-><init>()V

    sput-object v0, Landroid/icu/text/DecimalFormatSymbols;->cachedLocaleData:Landroid/icu/impl/CacheBase;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1776
    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    const/16 v1, 0x8

    .line 1819
    iput v1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1835
    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V

    return-void
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1776
    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    const/16 v1, 0x8

    .line 1819
    iput v1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1835
    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormatSymbols;->initialize(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 63
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Landroid/icu/text/NumberingSystem;)V
    .locals 0

    .line 75
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Landroid/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols$CacheData;
    .locals 0

    .line 49
    invoke-static {p0}, Landroid/icu/text/DecimalFormatSymbols;->loadData(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object p0

    return-object p0
.end method

.method public static forNumberingSystem(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)Landroid/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 163
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0, p1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V

    return-object v0
.end method

.method public static forNumberingSystem(Ljava/util/Locale;Landroid/icu/text/NumberingSystem;)Landroid/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 144
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0, p1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;Landroid/icu/text/NumberingSystem;)V

    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 180
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    .line 198
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 93
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0}, Landroid/icu/text/DecimalFormatSymbols;-><init>()V

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 125
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 109
    new-instance v0, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V
    .locals 1

    .line 1409
    invoke-virtual {p1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->getBeforeSymbols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    .line 1410
    invoke-virtual {p1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->getAfterSymbols()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    return-void
.end method

.method private initialize(Landroid/icu/util/ULocale;Landroid/icu/text/NumberingSystem;)V
    .locals 4

    .line 1275
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    .line 1276
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    if-nez p2, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 1281
    :cond_0
    invoke-virtual {p2}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "numbers"

    invoke-virtual {p1, v0, p2}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object p2

    .line 1282
    :goto_0
    sget-object v0, Landroid/icu/text/DecimalFormatSymbols;->cachedLocaleData:Landroid/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/text/DecimalFormatSymbols$CacheData;

    .line 1284
    iget-object v0, p2, Landroid/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Landroid/icu/util/ULocale;

    iget-object v2, p2, Landroid/icu/text/DecimalFormatSymbols$CacheData;->validLocale:Landroid/icu/util/ULocale;

    invoke-virtual {p0, v0, v2}, Landroid/icu/text/DecimalFormatSymbols;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 1285
    iget-object v0, p2, Landroid/icu/text/DecimalFormatSymbols$CacheData;->digits:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;->setDigitStrings([Ljava/lang/String;)V

    .line 1286
    iget-object p2, p2, Landroid/icu/text/DecimalFormatSymbols$CacheData;->numberElements:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 1289
    aget-object v2, p2, v0

    invoke-virtual {p0, v2}, Landroid/icu/text/DecimalFormatSymbols;->setDecimalSeparatorString(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1290
    aget-object v3, p2, v2

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setGroupingSeparatorString(Ljava/lang/String;)V

    const/4 v3, 0x2

    .line 1294
    aget-object v3, p2, v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    const/4 v3, 0x3

    .line 1296
    aget-object v3, p2, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setPercentString(Ljava/lang/String;)V

    const/4 v3, 0x4

    .line 1297
    aget-object v3, p2, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setMinusSignString(Ljava/lang/String;)V

    const/4 v3, 0x5

    .line 1298
    aget-object v3, p2, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setPlusSignString(Ljava/lang/String;)V

    const/4 v3, 0x6

    .line 1299
    aget-object v3, p2, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setExponentSeparator(Ljava/lang/String;)V

    const/4 v3, 0x7

    .line 1300
    aget-object v3, p2, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setPerMillString(Ljava/lang/String;)V

    const/16 v3, 0x8

    .line 1301
    aget-object v3, p2, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    const/16 v3, 0x9

    .line 1302
    aget-object v3, p2, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    const/16 v3, 0xa

    .line 1303
    aget-object v3, p2, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparatorString(Ljava/lang/String;)V

    const/16 v3, 0xb

    .line 1304
    aget-object v3, p2, v3

    invoke-virtual {p0, v3}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryGroupingSeparatorString(Ljava/lang/String;)V

    const/16 v3, 0xc

    .line 1305
    aget-object p2, p2, v3

    invoke-virtual {p0, p2}, Landroid/icu/text/DecimalFormatSymbols;->setExponentMultiplicationSign(Ljava/lang/String;)V

    const/16 p2, 0x23

    .line 1307
    iput-char p2, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    const/16 p2, 0x2a

    .line 1308
    iput-char p2, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    const/16 p2, 0x40

    .line 1309
    iput-char p2, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    .line 1312
    sget-object p2, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    invoke-interface {p2, p1, v2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object p2

    .line 1317
    invoke-static {p1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    .line 1318
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    if-eqz v2, :cond_1

    .line 1319
    invoke-virtual {v2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 1320
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    invoke-virtual {v2, p1, v0, v1}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 1321
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getFormatInfo(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1323
    iget-object v0, p1, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->currencyPattern:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    .line 1324
    iget-object v0, p1, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryDecimalSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryDecimalSeparatorString(Ljava/lang/String;)V

    .line 1325
    iget-object p1, p1, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;->monetaryGroupingSeparator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/DecimalFormatSymbols;->setMonetaryGroupingSeparatorString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "XXX"

    .line 1328
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    const-string/jumbo p1, "\u00a4"

    .line 1329
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 1334
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormatSymbols;->initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    return-void
.end method

.method private static loadData(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols$CacheData;
    .locals 12

    .line 1340
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "latn"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 1342
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getRadix()I

    move-result v5

    if-ne v5, v1, :cond_1

    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1343
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1344
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object v5

    move v6, v4

    move v7, v6

    :goto_0
    if-ge v6, v1, :cond_0

    .line 1347
    invoke-virtual {v5, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    .line 1348
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v8, v7

    .line 1349
    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_0

    .line 1352
    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1355
    :cond_1
    sget-object v2, Landroid/icu/text/DecimalFormatSymbols;->DEF_DIGIT_STRINGS_ARRAY:[Ljava/lang/String;

    move-object v0, v3

    :goto_1
    const-string v5, "android/icu/impl/data/icudt60b"

    .line 1362
    invoke-static {v5, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    .line 1364
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v5

    .line 1366
    sget-object v6, Landroid/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    .line 1369
    new-instance v7, Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;

    invoke-direct {v7, v6}, Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;-><init>([Ljava/lang/String;)V

    .line 1371
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NumberElements/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "symbols"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :catch_0
    array-length v8, v6

    move v9, v4

    :goto_2
    const/4 v10, 0x1

    if-ge v9, v8, :cond_3

    aget-object v11, v6, v9

    if-nez v11, :cond_2

    move v8, v10

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_3
    if-eqz v8, :cond_4

    .line 1385
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "NumberElements/latn/symbols"

    .line 1386
    invoke-virtual {p0, v0, v7}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    :cond_4
    move p0, v4

    .line 1390
    :goto_4
    sget-object v0, Landroid/icu/text/DecimalFormatSymbols;->SYMBOL_KEYS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_6

    .line 1391
    aget-object v0, v6, p0

    if-nez v0, :cond_5

    .line 1392
    sget-object v0, Landroid/icu/text/DecimalFormatSymbols;->SYMBOL_DEFAULTS:[Ljava/lang/String;

    aget-object v0, v0, p0

    aput-object v0, v6, p0

    :cond_5
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 1398
    :cond_6
    aget-object p0, v6, v1

    if-nez p0, :cond_7

    .line 1399
    aget-object p0, v6, v4

    aput-object p0, v6, v1

    :cond_7
    const/16 p0, 0xb

    .line 1401
    aget-object v0, v6, p0

    if-nez v0, :cond_8

    .line 1402
    aget-object v0, v6, v10

    aput-object v0, v6, p0

    .line 1405
    :cond_8
    new-instance p0, Landroid/icu/text/DecimalFormatSymbols$CacheData;

    invoke-direct {p0, v5, v2, v6}, Landroid/icu/text/DecimalFormatSymbols$CacheData;-><init>(Landroid/icu/util/ULocale;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1427
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1430
    iget p1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1433
    iget-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    const/16 p1, 0x45

    .line 1434
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponential:C

    .line 1436
    :cond_0
    iget p1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    const/16 p1, 0x2a

    .line 1437
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    const/16 p1, 0x2b

    .line 1438
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    .line 1439
    iget-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponential:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 1446
    :cond_1
    iget p1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x3

    if-ge p1, v1, :cond_2

    .line 1452
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    .line 1454
    :cond_2
    iget p1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v2, 0x4

    if-ge p1, v2, :cond_3

    .line 1456
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    .line 1458
    :cond_3
    iget p1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v2, 0x5

    if-ge p1, v2, :cond_4

    .line 1460
    iget-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    .line 1462
    :cond_4
    iget p1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v2, 0x6

    if-ge p1, v2, :cond_7

    .line 1464
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    if-nez p1, :cond_5

    new-array p1, v1, [Ljava/lang/String;

    .line 1465
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    .line 1467
    :cond_5
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    if-nez p1, :cond_6

    new-array p1, v1, [Ljava/lang/String;

    .line 1468
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    .line 1470
    :cond_6
    sget-object p1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    invoke-direct {p0, p1}, Landroid/icu/text/DecimalFormatSymbols;->initSpacingInfo(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;)V

    .line 1472
    :cond_7
    iget p1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/4 v1, 0x7

    if-ge p1, v1, :cond_9

    .line 1474
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    if-nez p1, :cond_8

    .line 1475
    iget-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 1477
    :cond_8
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    if-nez p1, :cond_9

    .line 1478
    iget-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 1481
    :cond_9
    iget p1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/16 v1, 0x8

    if-ge p1, v1, :cond_a

    .line 1482
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    if-nez p1, :cond_a

    const-string/jumbo p1, "\u00d7"

    .line 1483
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1486
    :cond_a
    iget p1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    const/16 v2, 0x9

    if-ge p1, v2, :cond_13

    .line 1488
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    if-nez p1, :cond_d

    const/16 p1, 0xa

    new-array v2, p1, [Ljava/lang/String;

    .line 1489
    iput-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    .line 1490
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    array-length v4, v2

    if-ne v4, p1, :cond_b

    .line 1491
    aget-char v0, v2, v3

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    :goto_0
    if-ge v3, p1, :cond_d

    .line 1493
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1496
    :cond_b
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 1497
    iget-object v4, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    if-nez v4, :cond_c

    new-array v4, p1, [C

    .line 1498
    iput-object v4, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    :cond_c
    :goto_1
    if-ge v3, p1, :cond_d

    .line 1501
    iget-object v4, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    aput-char v2, v4, v3

    .line 1502
    iget-object v4, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/2addr v2, v0

    int-to-char v2, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1509
    :cond_d
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    if-nez p1, :cond_e

    .line 1510
    iget-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    .line 1512
    :cond_e
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    if-nez p1, :cond_f

    .line 1513
    iget-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    .line 1515
    :cond_f
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    if-nez p1, :cond_10

    .line 1516
    iget-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    .line 1518
    :cond_10
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    if-nez p1, :cond_11

    .line 1519
    iget-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    .line 1521
    :cond_11
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    if-nez p1, :cond_12

    .line 1522
    iget-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    .line 1524
    :cond_12
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    if-nez p1, :cond_13

    .line 1525
    iget-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    .line 1529
    :cond_13
    iput v1, p0, Landroid/icu/text/DecimalFormatSymbols;->serialVersionOnStream:I

    .line 1532
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    .line 1535
    iget-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/DecimalFormatSymbols;->setDigitStrings([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1101
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1105
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1115
    instance-of v0, p1, Landroid/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 1121
    :cond_1
    check-cast p1, Landroid/icu/text/DecimalFormatSymbols;

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-gt v2, v3, :cond_4

    .line 1123
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p1, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 1126
    :cond_2
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p1, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1131
    :cond_4
    iget-object v2, p1, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    if-nez v2, :cond_6

    move v2, v1

    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_7

    .line 1133
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    aget-char v3, v3, v2

    iget-char v4, p1, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    add-int/2addr v4, v2

    if-eq v3, v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1137
    :cond_6
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 1141
    :cond_7
    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    iget-char v3, p1, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    iget-char v3, p1, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    iget-char v3, p1, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    iget-char v3, p1, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    iget-char v3, p1, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    iget-char v3, p1, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 1148
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    iget-char v3, p1, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    .line 1150
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    .line 1151
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    .line 1152
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 1153
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    iget-char v3, p1, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    iget-char v3, p1, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 1156
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    iget-object v3, p1, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    .line 1157
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    iget-char v3, p1, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    if-ne v2, v3, :cond_8

    iget-char v2, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    iget-char v3, p1, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    if-ne v2, v3, :cond_8

    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    iget-object p1, p1, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    .line 1160
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    move v0, v1

    :goto_2
    return v0
.end method

.method public getCodePointZero()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    iget p0, p0, Landroid/icu/text/DecimalFormatSymbols;->codePointZero:I

    return p0
.end method

.method public getCurrency()Landroid/icu/util/Currency;
    .locals 0

    .line 804
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    return-object p0
.end method

.method getCurrencyPattern()Ljava/lang/String;
    .locals 0

    .line 937
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencyPattern:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrencySymbol()Ljava/lang/String;
    .locals 0

    .line 771
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-object p0
.end method

.method public getDecimalSeparator()C
    .locals 0

    .line 436
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    return p0
.end method

.method public getDecimalSeparatorString()Ljava/lang/String;
    .locals 0

    .line 454
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    return-object p0
.end method

.method public getDigit()C
    .locals 0

    .line 586
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    return p0
.end method

.method public getDigitStrings()[Ljava/lang/String;
    .locals 0

    .line 255
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getDigitStringsLocal()[Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    return-object p0
.end method

.method public getDigits()[C
    .locals 0

    .line 215
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    return-object p0
.end method

.method public getExponentMultiplicationSign()Ljava/lang/String;
    .locals 0

    .line 944
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    return-object p0
.end method

.method public getExponentSeparator()Ljava/lang/String;
    .locals 0

    .line 962
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-object p0
.end method

.method public getGroupingSeparator()C
    .locals 0

    .line 386
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    return p0
.end method

.method public getGroupingSeparatorString()Ljava/lang/String;
    .locals 0

    .line 404
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    return-object p0
.end method

.method public getInfinity()Ljava/lang/String;
    .locals 0

    .line 623
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-object p0
.end method

.method public getInternationalCurrencySymbol()Ljava/lang/String;
    .locals 0

    .line 787
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1

    .line 1861
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    .line 1862
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    :goto_0
    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    .line 1084
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public getMinusSign()C
    .locals 0

    .line 661
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    return p0
.end method

.method public getMinusSignString()Ljava/lang/String;
    .locals 0

    .line 681
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    return-object p0
.end method

.method public getMonetaryDecimalSeparator()C
    .locals 0

    .line 836
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    return p0
.end method

.method public getMonetaryDecimalSeparatorString()Ljava/lang/String;
    .locals 0

    .line 854
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    return-object p0
.end method

.method public getMonetaryGroupingSeparator()C
    .locals 0

    .line 886
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    return p0
.end method

.method public getMonetaryGroupingSeparatorString()Ljava/lang/String;
    .locals 0

    .line 904
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    return-object p0
.end method

.method public getNaN()Ljava/lang/String;
    .locals 0

    .line 642
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-object p0
.end method

.method public getPadEscape()C
    .locals 0

    .line 988
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    return p0
.end method

.method public getPatternForCurrencySpacing(IZ)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 1046
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 1048
    :cond_0
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    .line 1043
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown currency spacing: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPatternSeparator()C
    .locals 0

    .line 603
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    return p0
.end method

.method public getPerMill()C
    .locals 0

    .line 486
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    return p0
.end method

.method public getPerMillString()Ljava/lang/String;
    .locals 0

    .line 504
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    return-object p0
.end method

.method public getPercent()C
    .locals 0

    .line 536
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    return p0
.end method

.method public getPercentString()Ljava/lang/String;
    .locals 0

    .line 554
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    return-object p0
.end method

.method public getPlusSign()C
    .locals 0

    .line 717
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    return p0
.end method

.method public getPlusSignString()Ljava/lang/String;
    .locals 0

    .line 738
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    return-object p0
.end method

.method public getSignificantDigit()C
    .locals 0

    .line 370
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    return p0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 0

    .line 1092
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->ulocale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public getZeroDigit()C
    .locals 0

    .line 207
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 1168
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1169
    iget-char v1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1170
    iget-char p0, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    add-int/2addr v0, p0

    return v0
.end method

.method public setCurrency(Landroid/icu/util/Currency;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 826
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currency:Landroid/icu/util/Currency;

    .line 827
    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    .line 828
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->requestedLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/icu/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-void

    .line 824
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public setCurrencySymbol(Ljava/lang/String;)V
    .locals 0

    .line 779
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySymbol:Ljava/lang/String;

    return-void
.end method

.method public setDecimalSeparator(C)V
    .locals 0

    .line 444
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    .line 445
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    return-void
.end method

.method public setDecimalSeparatorString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 472
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparatorString:Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2e

    .line 477
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->decimalSeparator:C

    :goto_0
    return-void

    .line 470
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The input decimal separator is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDigit(C)V
    .locals 0

    .line 594
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->digit:C

    return-void
.end method

.method public setDigitStrings([Ljava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_9

    .line 307
    array-length v0, p1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    new-array v0, v1, [Ljava/lang/String;

    new-array v2, v1, [C

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v6, v2

    move v5, v3

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_6

    .line 317
    aget-object v7, p1, v2

    if-eqz v7, :cond_5

    .line 321
    aput-object v7, v0, v2

    .line 323
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    move v8, v3

    move v9, v4

    goto :goto_1

    .line 327
    :cond_0
    aget-object v8, p1, v2

    invoke-static {v8, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 328
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v9

    .line 330
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x0

    if-ne v9, v7, :cond_3

    const/4 v7, 0x1

    if-ne v9, v7, :cond_1

    if-eqz v6, :cond_1

    int-to-char v7, v8

    .line 334
    aput-char v7, v6, v2

    goto :goto_2

    :cond_1
    move-object v6, v10

    :goto_2
    if-nez v2, :cond_2

    move v5, v8

    goto :goto_3

    :cond_2
    add-int v7, v5, v2

    if-eq v8, v7, :cond_4

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v3

    move-object v6, v10

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The input digit string array contains a null element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 352
    :cond_6
    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    .line 353
    iput v5, p0, Landroid/icu/text/DecimalFormatSymbols;->codePointZero:I

    if-nez v6, :cond_7

    .line 357
    sget-object p1, Landroid/icu/text/DecimalFormatSymbols;->DEF_DIGIT_CHARS_ARRAY:[C

    aget-char v0, p1, v4

    iput-char v0, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 358
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    goto :goto_4

    .line 360
    :cond_7
    aget-char p1, v6, v4

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 361
    iput-object v6, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    :goto_4
    return-void

    .line 308
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of digit strings is not 10"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 305
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The input digit string array is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setExponentMultiplicationSign(Ljava/lang/String;)V
    .locals 0

    .line 951
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentMultiplicationSign:Ljava/lang/String;

    return-void
.end method

.method public setExponentSeparator(Ljava/lang/String;)V
    .locals 0

    .line 973
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->exponentSeparator:Ljava/lang/String;

    return-void
.end method

.method public setGroupingSeparator(C)V
    .locals 0

    .line 394
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    .line 395
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    return-void
.end method

.method public setGroupingSeparatorString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 422
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparatorString:Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 424
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2c

    .line 427
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->groupingSeparator:C

    :goto_0
    return-void

    .line 420
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The input grouping separator is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInfinity(Ljava/lang/String;)V
    .locals 0

    .line 632
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->infinity:Ljava/lang/String;

    return-void
.end method

.method public setInternationalCurrencySymbol(Ljava/lang/String;)V
    .locals 0

    .line 795
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->intlCurrencySymbol:Ljava/lang/String;

    return-void
.end method

.method final setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-ne v2, v0, :cond_2

    .line 1890
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    .line 1891
    iput-object p2, p0, Landroid/icu/text/DecimalFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    return-void

    .line 1885
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setMinusSign(C)V
    .locals 0

    .line 671
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    .line 672
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    return-void
.end method

.method public setMinusSignString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 699
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusString:Ljava/lang/String;

    .line 700
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 701
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2d

    .line 704
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->minusSign:C

    :goto_0
    return-void

    .line 697
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The input minus sign is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMonetaryDecimalSeparator(C)V
    .locals 0

    .line 844
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    .line 845
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    return-void
.end method

.method public setMonetaryDecimalSeparatorString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 872
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparatorString:Ljava/lang/String;

    .line 873
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 874
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2e

    .line 877
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetarySeparator:C

    :goto_0
    return-void

    .line 870
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The input monetary decimal separator is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMonetaryGroupingSeparator(C)V
    .locals 0

    .line 894
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    .line 895
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    return-void
.end method

.method public setMonetaryGroupingSeparatorString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 922
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparatorString:Ljava/lang/String;

    .line 923
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 924
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2c

    .line 927
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->monetaryGroupingSeparator:C

    :goto_0
    return-void

    .line 920
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The input monetary grouping separator is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNaN(Ljava/lang/String;)V
    .locals 0

    .line 651
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->NaN:Ljava/lang/String;

    return-void
.end method

.method public setPadEscape(C)V
    .locals 0

    .line 1002
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->padEscape:C

    return-void
.end method

.method public setPatternForCurrencySpacing(IZLjava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 1073
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcBeforeSym:[Ljava/lang/String;

    aput-object p3, p0, p1

    goto :goto_0

    .line 1075
    :cond_0
    iget-object p0, p0, Landroid/icu/text/DecimalFormatSymbols;->currencySpcAfterSym:[Ljava/lang/String;

    aput-object p3, p0, p1

    :goto_0
    return-void

    .line 1070
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unknown currency spacing: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPatternSeparator(C)V
    .locals 0

    .line 612
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->patternSeparator:C

    return-void
.end method

.method public setPerMill(C)V
    .locals 0

    .line 494
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    .line 495
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    return-void
.end method

.method public setPerMillString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 522
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMillString:Ljava/lang/String;

    .line 523
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 524
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2030

    .line 527
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->perMill:C

    :goto_0
    return-void

    .line 520
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The input permille string is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPercent(C)V
    .locals 0

    .line 544
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    .line 545
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    return-void
.end method

.method public setPercentString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 572
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percentString:Ljava/lang/String;

    .line 573
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 574
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x25

    .line 577
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->percent:C

    :goto_0
    return-void

    .line 570
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The input percent sign is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPlusSign(C)V
    .locals 0

    .line 729
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    .line 730
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    return-void
.end method

.method public setPlusSignString(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 757
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusString:Ljava/lang/String;

    .line 758
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 759
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    goto :goto_0

    :cond_0
    const/16 p1, 0x2b

    .line 762
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->plusSign:C

    :goto_0
    return-void

    .line 755
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "The input plus sign is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSignificantDigit(C)V
    .locals 0

    .line 378
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->sigDigit:C

    return-void
.end method

.method public setZeroDigit(C)V
    .locals 4

    .line 227
    iput-char p1, p0, Landroid/icu/text/DecimalFormatSymbols;->zeroDigit:C

    .line 231
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    .line 232
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    .line 235
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 236
    iget-object v0, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    aput-char p1, v0, v2

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    int-to-char v1, v1

    .line 241
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digitStrings:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 242
    iget-object v2, p0, Landroid/icu/text/DecimalFormatSymbols;->digits:[C

    aput-char v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    iput p1, p0, Landroid/icu/text/DecimalFormatSymbols;->codePointZero:I

    return-void
.end method
