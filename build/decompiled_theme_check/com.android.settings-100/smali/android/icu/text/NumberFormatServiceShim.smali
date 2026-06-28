.class Landroid/icu/text/NumberFormatServiceShim;
.super Landroid/icu/text/NumberFormat$NumberFormatShim;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NumberFormatServiceShim$NFService;,
        Landroid/icu/text/NumberFormatServiceShim$NFFactory;
    }
.end annotation


# static fields
.field private static service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Landroid/icu/text/NumberFormatServiceShim$NFService;

    invoke-direct {v0}, Landroid/icu/text/NumberFormatServiceShim$NFService;-><init>()V

    sput-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/icu/text/NumberFormat$NumberFormatShim;-><init>()V

    return-void
.end method


# virtual methods
.method createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .locals 2

    const/4 p0, 0x1

    new-array v0, p0, [Landroid/icu/util/ULocale;

    .line 87
    sget-object v1, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v1, p1, p2, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NumberFormat;

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/NumberFormat;

    if-eq p2, p0, :cond_0

    const/4 p0, 0x5

    if-eq p2, p0, :cond_0

    const/4 p0, 0x6

    if-ne p2, p0, :cond_1

    .line 99
    :cond_0
    invoke-static {p1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    :cond_1
    const/4 p0, 0x0

    .line 102
    aget-object p0, v0, p0

    .line 103
    invoke-virtual {v1, p0, p0}, Landroid/icu/text/NumberFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-object v1

    .line 90
    :cond_2
    new-instance p0, Ljava/util/MissingResourceException;

    const-string p1, ""

    const-string p2, "Unable to construct NumberFormat"

    invoke-direct {p0, p2, p1, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method getAvailableLocales()[Ljava/util/Locale;
    .locals 0

    .line 31
    sget-object p0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 32
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    sget-object p0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 0

    .line 38
    sget-object p0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 39
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    sget-object p0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
    .locals 1

    .line 72
    sget-object p0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    new-instance v0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;

    invoke-direct {v0, p1}, Landroid/icu/text/NumberFormatServiceShim$NFFactory;-><init>(Landroid/icu/text/NumberFormat$NumberFormatFactory;)V

    invoke-virtual {p0, v0}, Landroid/icu/impl/ICULocaleService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    move-result-object p0

    return-object p0
.end method

.method unregister(Ljava/lang/Object;)Z
    .locals 0

    .line 76
    sget-object p0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    check-cast p1, Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    move-result p0

    return p0
.end method
