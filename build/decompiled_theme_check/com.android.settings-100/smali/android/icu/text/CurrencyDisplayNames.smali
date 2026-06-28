.class public abstract Landroid/icu/text/CurrencyDisplayNames;
.super Ljava/lang/Object;
.source "CurrencyDisplayNames.java"


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;
    .locals 2

    .line 38
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/text/CurrencyDisplayNames;
    .locals 1

    .line 70
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p0, p1}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/CurrencyDisplayNames;
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-static {p0, v0}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Ljava/util/Locale;Z)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;Z)Landroid/icu/text/CurrencyDisplayNames;
    .locals 0

    .line 87
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object p0

    return-object p0
.end method

.method public static hasData()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    invoke-interface {v0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->hasData()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract getName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSymbol(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getULocale()Landroid/icu/util/ULocale;
.end method

.method public abstract nameMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract symbolMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
