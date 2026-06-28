.class final Landroid/icu/util/CurrencyServiceShim;
.super Landroid/icu/util/Currency$ServiceShim;
.source "CurrencyServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/CurrencyServiceShim$CFService;
    }
.end annotation


# static fields
.field static final service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Landroid/icu/util/CurrencyServiceShim$CFService;

    invoke-direct {v0}, Landroid/icu/util/CurrencyServiceShim$CFService;-><init>()V

    sput-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/icu/util/Currency$ServiceShim;-><init>()V

    return-void
.end method


# virtual methods
.method createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
    .locals 0

    .line 45
    sget-object p0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 46
    invoke-static {p1}, Landroid/icu/util/Currency;->createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    sget-object p0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/Currency;

    return-object p0
.end method

.method getAvailableLocales()[Ljava/util/Locale;
    .locals 0

    .line 29
    sget-object p0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 30
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 32
    :cond_0
    sget-object p0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 0

    .line 36
    sget-object p0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 37
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0

    .line 39
    :cond_0
    sget-object p0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 0

    .line 53
    sget-object p0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;)Landroid/icu/impl/ICUService$Factory;

    move-result-object p0

    return-object p0
.end method

.method unregister(Ljava/lang/Object;)Z
    .locals 0

    .line 57
    sget-object p0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    check-cast p1, Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    move-result p0

    return p0
.end method
