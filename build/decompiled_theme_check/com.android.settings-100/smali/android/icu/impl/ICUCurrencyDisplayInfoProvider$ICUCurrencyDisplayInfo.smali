.class Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
.super Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
.source "ICUCurrencyDisplayInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICUCurrencyDisplayInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;,
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;,
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;,
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;
    }
.end annotation


# instance fields
.field final fallback:Z

.field private volatile formattingDataCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

.field final locale:Landroid/icu/util/ULocale;

.field private volatile narrowSymbolCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;

.field private volatile parsingDataCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;",
            ">;"
        }
    .end annotation
.end field

.field private volatile pluralsDataCache:[Ljava/lang/String;

.field private final rb:Landroid/icu/impl/ICUResourceBundle;

.field private volatile spacingInfoCache:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

.field private volatile unitPatternsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Z)V
    .locals 2

    .line 139
    invoke-direct {p0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->formattingDataCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    .line 85
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->narrowSymbolCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;

    .line 97
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->pluralsDataCache:[Ljava/lang/String;

    .line 102
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->parsingDataCache:Ljava/lang/ref/SoftReference;

    .line 107
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->unitPatternsCache:Ljava/util/Map;

    .line 112
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->spacingInfoCache:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    .line 140
    iput-object p1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->locale:Landroid/icu/util/ULocale;

    .line 141
    iput-boolean p3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    .line 142
    iput-object p2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    return-void
.end method


# virtual methods
.method fetchFormattingData(Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;
    .locals 5

    .line 253
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->formattingDataCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->isoCode:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    :cond_0
    new-instance v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    invoke-direct {v0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;-><init>(Ljava/lang/String;)V

    .line 256
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;

    iget-boolean v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCIES:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;-><init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V

    .line 257
    iput-object v0, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    .line 258
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Currencies/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 259
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->formattingDataCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    :cond_1
    return-object v0
.end method

.method fetchNarrowSymbol(Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;
    .locals 5

    .line 265
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->narrowSymbolCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;

    if-eqz v0, :cond_0

    .line 266
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;->isoCode:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    :cond_0
    new-instance v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;

    invoke-direct {v0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;-><init>(Ljava/lang/String;)V

    .line 268
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;

    iget-boolean v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCY_NARROW:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;-><init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V

    .line 269
    iput-object v0, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->narrowSymbol:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;

    .line 270
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Currencies%narrow/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 271
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->narrowSymbolCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;

    :cond_1
    return-object v0
.end method

.method fetchParsingData()Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;
    .locals 4

    .line 290
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->parsingDataCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    invoke-direct {v0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;-><init>()V

    .line 293
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;

    iget-boolean v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->TOP:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;-><init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V

    .line 294
    iput-object v0, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    .line 295
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 296
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->parsingDataCache:Ljava/lang/ref/SoftReference;

    :cond_0
    return-object v0
.end method

.method fetchPluralsData(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 277
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->pluralsDataCache:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 278
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    :cond_0
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 280
    aput-object p1, v0, v1

    .line 281
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;

    iget-boolean v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCY_PLURALS:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;-><init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V

    .line 282
    iput-object v0, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->pluralsData:[Ljava/lang/String;

    .line 283
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrencyPlurals/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 284
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->pluralsDataCache:[Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method fetchSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
    .locals 4

    .line 314
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->spacingInfoCache:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    invoke-direct {v0}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;-><init>()V

    .line 317
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;

    iget-boolean v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCY_SPACING:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;-><init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V

    .line 318
    iput-object v0, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    .line 319
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    const-string v3, "currencySpacing"

    invoke-virtual {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 320
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->spacingInfoCache:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    :cond_0
    return-object v0
.end method

.method fetchUnitPatterns()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->unitPatternsCache:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 305
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;

    iget-boolean v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCY_UNIT_PATTERNS:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;-><init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V

    .line 306
    iput-object v0, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->unitPatterns:Ljava/util/Map;

    .line 307
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    const-string v3, "CurrencyUnitPatterns"

    invoke-virtual {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 308
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->unitPatternsCache:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public getFormatInfo(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchFormattingData(Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    move-result-object p0

    .line 234
    iget-object p0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->formatInfo:Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    return-object p0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 152
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchFormattingData(Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    move-result-object v0

    .line 155
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-boolean p0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz p0, :cond_0

    return-object p1

    .line 158
    :cond_0
    iget-object p0, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public getNarrowSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 174
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchNarrowSymbol(Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;

    move-result-object v0

    .line 178
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;->narrowSymbol:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-boolean p0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz p0, :cond_0

    return-object p1

    .line 181
    :cond_0
    iget-object p0, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;->narrowSymbol:Ljava/lang/String;

    return-object p0
.end method

.method public getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 186
    invoke-static {p2}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object p2

    .line 187
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchPluralsData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 192
    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    aget-object p2, v0, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 194
    iget-boolean v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz v1, :cond_1

    .line 197
    sget-object p2, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {p2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    aget-object p2, v0, p2

    :cond_1
    if-nez p2, :cond_2

    .line 199
    iget-boolean v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchFormattingData(Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    move-result-object p2

    .line 202
    iget-object p2, p2, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    :cond_2
    if-nez p2, :cond_3

    .line 204
    iget-boolean p0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public getSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
    .locals 2

    .line 239
    invoke-virtual {p0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    move-result-object v0

    .line 242
    iget-boolean v1, v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasBeforeCurrency:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasAfterCurrency:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean p0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz p0, :cond_1

    .line 243
    sget-object p0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 163
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchFormattingData(Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    move-result-object v0

    .line 166
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->symbol:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-boolean p0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz p0, :cond_0

    return-object p1

    .line 169
    :cond_0
    iget-object p0, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->symbol:Ljava/lang/String;

    return-object p0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 0

    .line 147
    iget-object p0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public getUnitPatterns()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchUnitPatterns()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public nameMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchParsingData()Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    move-result-object p0

    .line 220
    iget-object p0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->nameToIsoCode:Ljava/util/Map;

    return-object p0
.end method

.method public symbolMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchParsingData()Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    move-result-object p0

    .line 214
    iget-object p0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->symbolToIsoCode:Ljava/util/Map;

    return-object p0
.end method
