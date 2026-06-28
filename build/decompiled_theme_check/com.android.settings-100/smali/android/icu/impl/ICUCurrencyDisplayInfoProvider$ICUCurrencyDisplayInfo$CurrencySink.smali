.class final Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
.super Landroid/icu/impl/UResource$Sink;
.source "ICUCurrencyDisplayInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrencySink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final entrypointTable:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

.field formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

.field narrowSymbol:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;

.field final noRoot:Z

.field parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

.field pluralsData:[Ljava/lang/String;

.field spacingInfo:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

.field unitPatterns:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 1

    .line 329
    const-class v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;

    return-void
.end method

.method constructor <init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V
    .locals 1

    .line 353
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    .line 335
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->pluralsData:[Ljava/lang/String;

    .line 336
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    .line 337
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->unitPatterns:Ljava/util/Map;

    .line 338
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    .line 339
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->narrowSymbol:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;

    .line 354
    iput-boolean p1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->noRoot:Z

    .line 355
    iput-object p2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->entrypointTable:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    return-void
.end method

.method private consumeTopTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 3

    .line 392
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 393
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Currencies"

    .line 394
    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrenciesTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_1

    :cond_0
    const-string v2, "Currencies%variant"

    .line 396
    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrenciesVariantTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_1

    :cond_1
    const-string v2, "CurrencyPlurals"

    .line 398
    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrencyPluralsTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method consumeCurrenciesEntry(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 5

    .line 445
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 449
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v0

    .line 451
    iget-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    iget-object v1, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->symbol:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 452
    invoke-interface {v0, v2, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 453
    iget-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->symbol:Ljava/lang/String;

    .line 455
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    iget-object v1, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 456
    invoke-interface {v0, v3, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 457
    iget-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    .line 462
    :cond_1
    invoke-interface {v0}, Landroid/icu/impl/UResource$Array;->getSize()I

    move-result v1

    const/4 v4, 0x2

    if-le v1, v4, :cond_2

    iget-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    iget-object v1, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->formatInfo:Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    if-nez v1, :cond_2

    .line 463
    invoke-interface {v0, v4, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 464
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v0

    .line 465
    invoke-interface {v0, v2, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 466
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-interface {v0, v3, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 468
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-interface {v0, v4, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 470
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object p2

    .line 471
    iget-object p0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    invoke-direct {v0, p1, v1, v2, p2}, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->formatInfo:Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    :cond_2
    return-void

    .line 447
    :cond_3
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected data type in Currencies table for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method consumeCurrenciesNarrowEntry(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 0

    .line 486
    iget-object p1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->narrowSymbol:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;

    iget-object p1, p1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;->narrowSymbol:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 487
    iget-object p0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->narrowSymbol:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$NarrowSymbol;->narrowSymbol:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method consumeCurrenciesTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 7

    .line 427
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 428
    :goto_0
    invoke-interface {v0, v2, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 433
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v4

    .line 435
    iget-object v5, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v5, v5, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->symbolToIsoCode:Ljava/util/Map;

    invoke-interface {v5, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-interface {v4, v1, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 437
    iget-object v5, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v5, v5, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->symbolToIsoCode:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    .line 438
    invoke-interface {v4, v5, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 439
    iget-object v4, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v4, v4, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->nameToIsoCode:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    :cond_0
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected data type in Currencies table for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method consumeCurrenciesVariantTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 5

    .line 499
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 500
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 502
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v3, v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->symbolToIsoCode:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method consumeCurrencyPluralsEntry(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 5

    .line 535
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 536
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 537
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 542
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->pluralsData:[Ljava/lang/String;

    invoke-virtual {v2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    .line 543
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->pluralsData:[Ljava/lang/String;

    invoke-virtual {v2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_1
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not make StandardPlural from keyword "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method consumeCurrencyPluralsTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 8

    .line 518
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 519
    :goto_0
    invoke-interface {v0, v2, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 520
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v4

    move v5, v1

    .line 522
    :goto_1
    invoke-interface {v4, v5, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 523
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 528
    iget-object v6, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v6, v6, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->nameToIsoCode:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 525
    :cond_0
    new-instance p0, Landroid/icu/util/ICUException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not make StandardPlural from keyword "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method consumeCurrencySpacingTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 9

    .line 564
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 565
    :goto_0
    invoke-interface {v0, v2, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "beforeCurrency"

    .line 567
    invoke-virtual {p1, v3}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 568
    sget-object v3, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    .line 569
    iget-object v5, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    iput-boolean v4, v5, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasBeforeCurrency:Z

    goto :goto_1

    :cond_0
    const-string v3, "afterCurrency"

    .line 570
    invoke-virtual {p1, v3}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 571
    sget-object v3, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    .line 572
    iget-object v5, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    iput-boolean v4, v5, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasAfterCurrency:Z

    .line 577
    :goto_1
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v4

    move v5, v1

    .line 578
    :goto_2
    invoke-interface {v4, v5, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "currencyMatch"

    .line 580
    invoke-virtual {p1, v6}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 581
    sget-object v6, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->CURRENCY_MATCH:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    goto :goto_3

    :cond_1
    const-string/jumbo v6, "surroundingMatch"

    .line 582
    invoke-virtual {p1, v6}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 583
    sget-object v6, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->SURROUNDING_MATCH:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    goto :goto_3

    :cond_2
    const-string v6, "insertBetween"

    .line 584
    invoke-virtual {p1, v6}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 585
    sget-object v6, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->INSERT_BETWEEN:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 590
    :goto_3
    iget-object v7, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v6, v8}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->setSymbolIfNull(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method consumeCurrencyUnitPatternsTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .locals 5

    .line 603
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    const/4 v1, 0x0

    .line 604
    :goto_0
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 605
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 606
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->unitPatterns:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 607
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->unitPatterns:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 1

    .line 364
    iget-boolean v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->noRoot:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    return-void

    .line 369
    :cond_0
    sget-object p3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$1;->$SwitchMap$android$icu$impl$ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable:[I

    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->entrypointTable:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-virtual {v0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 386
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrencyUnitPatternsTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_0

    .line 383
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrencySpacingTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_0

    .line 380
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrenciesNarrowEntry(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_0

    .line 377
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrencyPluralsEntry(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_0

    .line 374
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrenciesEntry(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_0

    .line 371
    :pswitch_5
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeTopTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
