.class public Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;
.super Ljava/lang/Object;
.source "ICUCurrencyDisplayInfoProvider.java"

# interfaces
.implements Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
    }
.end annotation


# instance fields
.field private volatile currencyDisplayInfoCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;->currencyDisplayInfoCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    return-void
.end method


# virtual methods
.method public getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .locals 2

    if-nez p1, :cond_0

    .line 41
    sget-object p1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 42
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;->currencyDisplayInfoCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    if-eqz v0, :cond_1

    .line 43
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {v1, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eq v1, p2, :cond_3

    :cond_1
    const-string v0, "android/icu/impl/data/icudt60b/curr"

    if-eqz p2, :cond_2

    .line 46
    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_2
    :try_start_0
    sget-object v1, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ONLY:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    invoke-direct {v1, p1, v0, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;-><init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Z)V

    .line 57
    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;->currencyDisplayInfoCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    move-object v0, v1

    :cond_3
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasData()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
