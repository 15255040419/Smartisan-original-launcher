.class final Landroid/icu/text/CollatorServiceShim;
.super Landroid/icu/text/Collator$ServiceShim;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CollatorServiceShim$CService;
    }
.end annotation


# static fields
.field private static service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 189
    new-instance v0, Landroid/icu/text/CollatorServiceShim$CService;

    invoke-direct {v0}, Landroid/icu/text/CollatorServiceShim$CService;-><init>()V

    sput-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/icu/text/Collator$ServiceShim;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 0

    .line 30
    invoke-static {p0}, Landroid/icu/text/CollatorServiceShim;->makeInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method private static final makeInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 2

    .line 183
    new-instance v0, Landroid/icu/util/Output;

    sget-object v1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-direct {v0, v1}, Landroid/icu/util/Output;-><init>(Ljava/lang/Object;)V

    .line 185
    invoke-static {p0, v0}, Landroid/icu/impl/coll/CollationLoader;->loadTailoring(Landroid/icu/util/ULocale;Landroid/icu/util/Output;)Landroid/icu/impl/coll/CollationTailoring;

    move-result-object p0

    .line 186
    new-instance v1, Landroid/icu/text/RuleBasedCollator;

    iget-object v0, v0, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    check-cast v0, Landroid/icu/util/ULocale;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/RuleBasedCollator;-><init>(Landroid/icu/impl/coll/CollationTailoring;Landroid/icu/util/ULocale;)V

    return-object v1
.end method


# virtual methods
.method getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 105
    sget-object p0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 106
    sget-object p0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v0, "android/icu/impl/data/icudt60b/coll"

    invoke-static {v0, p0}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_0
    sget-object p0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    .line 117
    sget-object p0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 118
    sget-object p0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v0, "android/icu/impl/data/icudt60b/coll"

    invoke-static {v0, p0}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    move-result-object p0

    goto :goto_0

    .line 121
    :cond_0
    sget-object p0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 128
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object p0

    .line 129
    sget-object p1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p1, p0, p2}, Landroid/icu/impl/ICULocaleService;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 2

    const-string p0, ""

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Landroid/icu/util/ULocale;

    .line 40
    sget-object v1, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v1, p1, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/Collator;

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/Collator;

    return-object p0

    .line 44
    :cond_0
    new-instance p1, Ljava/util/MissingResourceException;

    const-string v0, "Could not locate Collator data"

    invoke-direct {p1, v0, p0, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 51
    new-instance p1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
    .locals 2

    .line 93
    sget-object v0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    new-instance v1, Landroid/icu/text/CollatorServiceShim$1CFactory;

    invoke-direct {v1, p0, p1}, Landroid/icu/text/CollatorServiceShim$1CFactory;-><init>(Landroid/icu/text/CollatorServiceShim;Landroid/icu/text/Collator$CollatorFactory;)V

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICULocaleService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    move-result-object p0

    return-object p0
.end method

.method registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p1, p2, p2}, Landroid/icu/text/Collator;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 62
    sget-object p0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;)Landroid/icu/impl/ICUService$Factory;

    move-result-object p0

    return-object p0
.end method

.method unregister(Ljava/lang/Object;)Z
    .locals 0

    .line 98
    sget-object p0, Landroid/icu/text/CollatorServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    check-cast p1, Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    move-result p0

    return p0
.end method
