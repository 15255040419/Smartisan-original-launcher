.class public abstract Landroid/icu/text/NumberFormat;
.super Landroid/icu/text/UFormat;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NumberFormat$Field;,
        Landroid/icu/text/NumberFormat$NumberFormatShim;,
        Landroid/icu/text/NumberFormat$SimpleNumberFormatFactory;,
        Landroid/icu/text/NumberFormat$NumberFormatFactory;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACCOUNTINGCURRENCYSTYLE:I = 0x7

.field public static final CASHCURRENCYSTYLE:I = 0x8

.field public static final CURRENCYSTYLE:I = 0x1

.field public static final FRACTION_FIELD:I = 0x1

.field public static final INTEGERSTYLE:I = 0x4

.field public static final INTEGER_FIELD:I = 0x0

.field public static final ISOCURRENCYSTYLE:I = 0x5

.field public static final NUMBERSTYLE:I = 0x0

.field public static final PERCENTSTYLE:I = 0x2

.field public static final PLURALCURRENCYSTYLE:I = 0x6

.field public static final SCIENTIFICSTYLE:I = 0x3

.field public static final STANDARDCURRENCYSTYLE:I = 0x9

.field static final currentSerialVersion:I = 0x2

.field private static final doubleCurrencySign:[C

.field private static final doubleCurrencyStr:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x20094c40ec82f818L

.field private static shim:Landroid/icu/text/NumberFormat$NumberFormatShim;


# instance fields
.field private capitalizationSetting:Landroid/icu/text/DisplayContext;

.field private currency:Landroid/icu/util/Currency;

.field private groupingUsed:Z

.field private maxFractionDigits:B

.field private maxIntegerDigits:B

.field private maximumFractionDigits:I

.field private maximumIntegerDigits:I

.field private minFractionDigits:B

.field private minIntegerDigits:B

.field private minimumFractionDigits:I

.field private minimumIntegerDigits:I

.field private parseIntegerOnly:Z

.field private parseStrict:Z

.field private serialVersionOnStream:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 1537
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/NumberFormat;->doubleCurrencySign:[C

    .line 1538
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/icu/text/NumberFormat;->doubleCurrencySign:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0xa4s
        0xa4s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .line 1718
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x1

    .line 1552
    iput-boolean v0, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    const/16 v1, 0x28

    .line 1570
    iput-byte v1, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    .line 1588
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    const/4 v2, 0x3

    .line 1606
    iput-byte v2, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    const/4 v3, 0x0

    .line 1624
    iput-byte v3, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    .line 1632
    iput-boolean v3, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    .line 1644
    iput v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1654
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1664
    iput v2, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1674
    iput v3, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    const/4 v0, 0x2

    .line 1707
    iput v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    .line 1728
    sget-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object v0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    return-void
.end method

.method static createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .locals 8

    .line 1282
    invoke-static {p0, p1}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 1283
    new-instance v1, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v1, p0}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    const/4 v5, 0x7

    if-eq p1, v5, :cond_0

    if-eq p1, v2, :cond_0

    const/16 v5, 0x9

    if-ne p1, v5, :cond_1

    .line 1292
    :cond_0
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencyPattern()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v0, v5

    :cond_1
    if-ne p1, v3, :cond_2

    .line 1301
    sget-object v3, Landroid/icu/text/NumberFormat;->doubleCurrencyStr:Ljava/lang/String;

    const-string/jumbo v5, "\u00a4"

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    :cond_2
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    .line 1312
    invoke-virtual {v3}, Landroid/icu/text/NumberingSystem;->isAlgorithmic()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1319
    invoke-virtual {v3}, Landroid/icu/text/NumberingSystem;->getDescription()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 1320
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1321
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_5

    .line 1324
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/2addr v2, v4

    .line 1325
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v4

    .line 1326
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1328
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const-string p0, "SpelloutRules"

    .line 1329
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move v5, v4

    :cond_4
    move-object p0, v0

    .line 1337
    :cond_5
    new-instance v0, Landroid/icu/text/RuleBasedNumberFormat;

    invoke-direct {v0, p0, v5}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    .line 1338
    invoke-virtual {v0, p1}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V

    goto :goto_0

    .line 1341
    :cond_6
    new-instance v3, Landroid/icu/text/DecimalFormat;

    invoke-direct {v3, v0, v1, p1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;I)V

    if-ne p1, v5, :cond_7

    .line 1350
    invoke-virtual {v3, v6}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 1351
    invoke-virtual {v3, v6}, Landroid/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    .line 1352
    invoke-virtual {v3, v4}, Landroid/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    :cond_7
    if-ne p1, v2, :cond_8

    .line 1355
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {v3, v0}, Landroid/icu/text/DecimalFormat;->setCurrencyUsage(Landroid/icu/util/Currency$CurrencyUsage;)V

    :cond_8
    const/4 v0, 0x6

    if-ne p1, v0, :cond_9

    .line 1358
    invoke-static {p0}, Landroid/icu/text/CurrencyPluralInfo;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyPluralInfo;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/icu/text/DecimalFormat;->setCurrencyPluralInfo(Landroid/icu/text/CurrencyPluralInfo;)V

    :cond_9
    move-object v0, v3

    .line 1365
    :goto_0
    sget-object p0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v1, p0}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object p0

    .line 1366
    sget-object p1, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {v1, p1}, Landroid/icu/text/DecimalFormatSymbols;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object p1

    .line 1367
    invoke-virtual {v0, p0, p1}, Landroid/icu/text/NumberFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 930
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_0

    .line 931
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 933
    :cond_0
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    .line 942
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_0

    .line 943
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 945
    :cond_0
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final getCurrencyInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    .line 671
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrencyInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x1

    .line 687
    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrencyInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 1

    .line 679
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    .line 554
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(I)Landroid/icu/text/NumberFormat;
    .locals 1

    .line 583
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x0

    .line 574
    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 1271
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/NumberFormat$NumberFormatShim;->createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0

    .line 1262
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice should be from NUMBERSTYLE to STANDARDCURRENCYSTYLE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 1

    .line 564
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;
    .locals 0

    .line 592
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getIntegerInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    .line 631
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getIntegerInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x4

    .line 662
    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getIntegerInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 1

    .line 647
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getNumberInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    .line 601
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x0

    .line 615
    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getNumberInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 1

    .line 608
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method protected static getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;
    .locals 0

    .line 1392
    invoke-static {p0, p1}, Landroid/icu/text/NumberFormat;->getPatternForStyle(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getPattern(Ljava/util/Locale;I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1382
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/text/NumberFormat;->getPattern(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPatternForStyle(Landroid/icu/util/ULocale;I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1405
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    .line 1406
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1407
    invoke-static {p0, v0, p1}, Landroid/icu/text/NumberFormat;->getPatternForStyleAndNumberingSystem(Landroid/icu/util/ULocale;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPatternForStyleAndNumberingSystem(Landroid/icu/util/ULocale;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "accountingFormat"

    const-string v1, "currencyFormat"

    const-string v2, "decimalFormat"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    move-object v0, v1

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "scientificFormat"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "percentFormat"

    goto :goto_1

    :pswitch_3
    const-string p2, "cf"

    .line 1434
    invoke-virtual {p0, p2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v2, "account"

    .line 1435
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :goto_0
    :pswitch_4
    move-object v0, v2

    :goto_1
    :pswitch_5
    const-string p2, "android/icu/impl/data/icudt60b"

    .line 1459
    invoke-static {p2, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    .line 1461
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberElements/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/patterns/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1464
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NumberElements/latn/patterns/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final getPercentInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    .line 696
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getPercentInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x2

    .line 712
    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getPercentInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 1

    .line 704
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static final getScientificInstance()Landroid/icu/text/NumberFormat;
    .locals 2

    .line 721
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getScientificInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;
    .locals 1

    const/4 v0, 0x3

    .line 737
    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getScientificInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;
    .locals 1

    .line 729
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method private static getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;
    .locals 2

    .line 907
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.icu.text.NumberFormatServiceShim"

    .line 909
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 910
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat$NumberFormatShim;

    sput-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 918
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 914
    throw v0

    .line 922
    :cond_0
    :goto_0
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1484
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1487
    iget p1, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 1489
    iget-byte p1, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    iput p1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1490
    iget-byte p1, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    iput p1, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1491
    iget-byte p1, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    iput p1, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1492
    iget-byte p1, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    iput p1, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    .line 1494
    :cond_0
    iget p1, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 1496
    sget-object p1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    iput-object p1, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    .line 1502
    :cond_1
    iget p1, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-gt p1, v1, :cond_2

    iget v1, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    iget v2, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    if-gt v1, v2, :cond_2

    if-ltz p1, :cond_2

    if-ltz v1, :cond_2

    .line 1507
    iput v0, p0, Landroid/icu/text/NumberFormat;->serialVersionOnStream:I

    return-void

    .line 1505
    :cond_2
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Digit count range invalid"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    .line 965
    invoke-static {}, Landroid/icu/text/NumberFormat;->getShim()Landroid/icu/text/NumberFormat$NumberFormatShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 963
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unregister(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 980
    sget-object v0, Landroid/icu/text/NumberFormat;->shim:Landroid/icu/text/NumberFormat$NumberFormatShim;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 984
    :cond_0
    invoke-virtual {v0, p0}, Landroid/icu/text/NumberFormat$NumberFormatShim;->unregister(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 977
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "registryKey must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1520
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    int-to-byte v0, v0

    .line 1521
    :goto_0
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->maxIntegerDigits:B

    .line 1522
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    if-le v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    int-to-byte v0, v0

    .line 1523
    :goto_1
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->minIntegerDigits:B

    .line 1524
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    if-le v0, v1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    int-to-byte v0, v0

    .line 1525
    :goto_2
    iput-byte v0, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    .line 1526
    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-le v0, v1, :cond_3

    goto :goto_3

    :cond_3
    int-to-byte v1, v0

    .line 1527
    :goto_3
    iput-byte v1, p0, Landroid/icu/text/NumberFormat;->minFractionDigits:B

    .line 1528
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 1029
    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/NumberFormat;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1011
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 1013
    :cond_2
    check-cast p1, Landroid/icu/text/NumberFormat;

    .line 1014
    iget v2, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    iget v3, p1, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v3, p1, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v3, p1, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    iget v3, p1, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    iget-boolean v3, p1, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    iget-boolean v3, p1, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    iget-boolean v3, p1, Landroid/icu/text/NumberFormat;->parseStrict:Z

    if-ne v2, v3, :cond_3

    iget-object p0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    iget-object p1, p1, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    if-ne p0, p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public final format(D)Ljava/lang/String;
    .locals 3

    .line 287
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 288
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final format(J)Ljava/lang/String;
    .locals 3

    .line 296
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 297
    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    .line 298
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final format(Landroid/icu/math/BigDecimal;)Ljava/lang/String;
    .locals 3

    .line 322
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 323
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final format(Landroid/icu/util/CurrencyAmount;)Ljava/lang/String;
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 331
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final format(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 3

    .line 314
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 315
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final format(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 3

    .line 306
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/text/FieldPosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .line 378
    monitor-enter p0

    .line 379
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v1

    .line 380
    invoke-virtual {v1, v0}, Landroid/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 381
    invoke-virtual {p0, v1}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    .line 382
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    if-nez v2, :cond_1

    .line 383
    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    .line 384
    :cond_1
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 252
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 253
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/NumberFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 254
    :cond_0
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 255
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 256
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 257
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 258
    :cond_2
    instance-of v0, p1, Landroid/icu/math/BigDecimal;

    if-eqz v0, :cond_3

    .line 259
    check-cast p1, Landroid/icu/math/BigDecimal;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 260
    :cond_3
    instance-of v0, p1, Landroid/icu/util/CurrencyAmount;

    if-eqz v0, :cond_4

    .line 261
    check-cast p1, Landroid/icu/util/CurrencyAmount;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 262
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 263
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/text/NumberFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 265
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot format given Object as a Number"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public abstract format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
.end method

.method public getContext(Landroid/icu/text/DisplayContext$Type;)Landroid/icu/text/DisplayContext;
    .locals 1

    .line 538
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    if-eqz p0, :cond_0

    goto :goto_0

    .line 539
    :cond_0
    sget-object p0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    :goto_0
    return-object p0
.end method

.method public getCurrency()Landroid/icu/util/Currency;
    .locals 0

    .line 1198
    iget-object p0, p0, Landroid/icu/text/NumberFormat;->currency:Landroid/icu/util/Currency;

    return-object p0
.end method

.method protected getEffectiveCurrency()Landroid/icu/util/Currency;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1212
    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1214
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1216
    sget-object p0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {p0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object p0

    .line 1218
    :cond_0
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getMaximumFractionDigits()I
    .locals 0

    .line 1130
    iget p0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    return p0
.end method

.method public getMaximumIntegerDigits()I
    .locals 0

    .line 1070
    iget p0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    return p0
.end method

.method public getMinimumFractionDigits()I
    .locals 0

    .line 1160
    iget p0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    return p0
.end method

.method public getMinimumIntegerDigits()I
    .locals 0

    .line 1100
    iget p0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    return p0
.end method

.method public getRoundingMode()I
    .locals 1

    .line 1231
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getRoundingMode must be implemented by the subclass implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 1

    .line 994
    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    mul-int/lit8 v0, v0, 0x25

    iget-byte p0, p0, Landroid/icu/text/NumberFormat;->maxFractionDigits:B

    add-int/2addr v0, p0

    return v0
.end method

.method public isGroupingUsed()Z
    .locals 0

    .line 1043
    iget-boolean p0, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    return p0
.end method

.method public isParseIntegerOnly()Z
    .locals 0

    .line 466
    iget-boolean p0, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    return p0
.end method

.method public isParseStrict()Z
    .locals 0

    .line 515
    iget-boolean p0, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    return p0
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 422
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 423
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p0

    .line 424
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 425
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unparseable number: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public abstract parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
.end method

.method public parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .locals 0

    .line 450
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 451
    :cond_0
    new-instance p2, Landroid/icu/util/CurrencyAmount;

    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->getEffectiveCurrency()Landroid/icu/util/Currency;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method

.method public final parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 279
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public setContext(Landroid/icu/text/DisplayContext;)V
    .locals 2

    .line 525
    invoke-virtual {p1}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    if-ne v0, v1, :cond_0

    .line 526
    iput-object p1, p0, Landroid/icu/text/NumberFormat;->capitalizationSetting:Landroid/icu/text/DisplayContext;

    :cond_0
    return-void
.end method

.method public setCurrency(Landroid/icu/util/Currency;)V
    .locals 0

    .line 1190
    iput-object p1, p0, Landroid/icu/text/NumberFormat;->currency:Landroid/icu/util/Currency;

    return-void
.end method

.method public setGroupingUsed(Z)V
    .locals 0

    .line 1053
    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->groupingUsed:Z

    return-void
.end method

.method public setMaximumFractionDigits(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1145
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    .line 1146
    iget p1, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ge p1, v0, :cond_0

    .line 1147
    iput p1, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    :cond_0
    return-void
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1085
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    .line 1086
    iget p1, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-le p1, v0, :cond_0

    .line 1087
    iput v0, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    :cond_0
    return-void
.end method

.method public setMinimumFractionDigits(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1175
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    .line 1176
    iget p1, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    iget v0, p0, Landroid/icu/text/NumberFormat;->minimumFractionDigits:I

    if-ge p1, v0, :cond_0

    .line 1177
    iput v0, p0, Landroid/icu/text/NumberFormat;->maximumFractionDigits:I

    :cond_0
    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1115
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    .line 1116
    iget p1, p0, Landroid/icu/text/NumberFormat;->minimumIntegerDigits:I

    iget v0, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    if-le p1, v0, :cond_0

    .line 1117
    iput p1, p0, Landroid/icu/text/NumberFormat;->maximumIntegerDigits:I

    :cond_0
    return-void
.end method

.method public setParseIntegerOnly(Z)V
    .locals 0

    .line 481
    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->parseIntegerOnly:Z

    return-void
.end method

.method public setParseStrict(Z)V
    .locals 0

    .line 506
    iput-boolean p1, p0, Landroid/icu/text/NumberFormat;->parseStrict:Z

    return-void
.end method

.method public setRoundingMode(I)V
    .locals 0

    .line 1244
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "setRoundingMode must be implemented by the subclass implementation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
