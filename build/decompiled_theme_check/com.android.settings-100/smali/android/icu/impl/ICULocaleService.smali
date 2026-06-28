.class public Landroid/icu/impl/ICULocaleService;
.super Landroid/icu/impl/ICUService;
.source "ICULocaleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;,
        Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;,
        Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;,
        Landroid/icu/impl/ICULocaleService$LocaleKey;
    }
.end annotation


# instance fields
.field private fallbackLocale:Landroid/icu/util/ULocale;

.field private fallbackLocaleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/icu/impl/ICUService;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createKey(Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Key;
    .locals 0

    .line 638
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonical(Landroid/icu/util/ULocale;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;

    move-result-object p0

    return-object p0
.end method

.method public createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;
    .locals 0

    .line 630
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICULocaleService$LocaleKey;

    move-result-object p0

    return-object p0
.end method

.method public createKey(Ljava/lang/String;I)Landroid/icu/impl/ICUService$Key;
    .locals 0

    .line 634
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;

    move-result-object p0

    return-object p0
.end method

.method public get(Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Landroid/icu/util/ULocale;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 3

    .line 71
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICULocaleService;->createKey(Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Key;

    move-result-object p1

    if-nez p3, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICULocaleService;->getKey(Landroid/icu/impl/ICUService$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICULocaleService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 79
    aget-object v1, v0, p1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 81
    aget-object v2, v0, p1

    add-int/2addr v1, p2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    .line 83
    :cond_1
    new-instance p2, Landroid/icu/util/ULocale;

    aget-object v0, v0, p1

    invoke-direct {p2, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object p2, p3, p1

    :cond_2
    return-object p0
.end method

.method public get(Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    const/4 v0, -0x1

    .line 61
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 4

    .line 130
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getVisibleIDs()Ljava/util/Set;

    move-result-object p0

    .line 131
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Locale;

    .line 133
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    invoke-static {v2}, Landroid/icu/impl/LocaleUtility;->getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 135
    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 5

    .line 145
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getVisibleIDs()Ljava/util/Set;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Landroid/icu/util/ULocale;

    .line 148
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .line 149
    new-instance v4, Landroid/icu/util/ULocale;

    invoke-direct {v4, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;)Landroid/icu/impl/ICUService$Factory;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 94
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;

    move-result-object p0

    return-object p0
.end method

.method public registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Factory;
    .locals 1

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;

    move-result-object p0

    return-object p0
.end method

.method public registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;
    .locals 1

    .line 120
    new-instance v0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;-><init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)V

    .line 121
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICULocaleService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    move-result-object p0

    return-object p0
.end method

.method public registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;Z)Landroid/icu/impl/ICUService$Factory;
    .locals 1

    const/4 v0, -0x1

    .line 103
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;

    move-result-object p0

    return-object p0
.end method

.method public validateFallbackLocale()Ljava/lang/String;
    .locals 2

    .line 615
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 616
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocale:Landroid/icu/util/ULocale;

    if-eq v0, v1, :cond_1

    .line 617
    monitor-enter p0

    .line 618
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocale:Landroid/icu/util/ULocale;

    if-eq v0, v1, :cond_0

    .line 619
    iput-object v0, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocale:Landroid/icu/util/ULocale;

    .line 620
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;

    .line 621
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->clearServiceCache()V

    .line 623
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 625
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;

    return-object p0
.end method
