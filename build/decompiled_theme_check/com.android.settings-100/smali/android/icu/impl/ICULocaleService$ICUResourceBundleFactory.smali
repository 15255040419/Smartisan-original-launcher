.class public Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.super Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "ICULocaleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICULocaleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICUResourceBundleFactory"
.end annotation


# instance fields
.field protected final bundleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android/icu/impl/data/icudt60b"

    .line 559
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 567
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    .line 569
    iput-object p1, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getSupportedIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->loader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/icu/impl/ICUResourceBundle;->getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method protected handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 0

    .line 597
    iget-object p2, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->loader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p2, p1, p0}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method protected loader()Ljava/lang/ClassLoader;
    .locals 0

    .line 601
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bundle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateVisibleIDs(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;)V"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->bundleName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;->loader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    .line 586
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 587
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
