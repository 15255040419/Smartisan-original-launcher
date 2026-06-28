.class public abstract Landroid/icu/util/UResourceBundle;
.super Ljava/util/ResourceBundle;
.source "UResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/UResourceBundle$RootType;
    }
.end annotation


# static fields
.field public static final ARRAY:I = 0x8

.field public static final BINARY:I = 0x1

.field public static final INT:I = 0x7

.field public static final INT_VECTOR:I = 0xe

.field public static final NONE:I = -0x1

.field private static ROOT_CACHE:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/util/UResourceBundle$RootType;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING:I = 0x0

.field public static final TABLE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 312
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    return-void
.end method

.method public static getBundleInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;
    .locals 3

    if-nez p0, :cond_0

    .line 167
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    const-string v2, "android/icu/impl/data/icudt60b"

    invoke-static {v2, p0, v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundleInstance(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "android/icu/impl/data/icudt60b"

    .line 184
    :cond_0
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "android/icu/impl/data/icudt60b"

    :cond_0
    if-nez p1, :cond_1

    .line 223
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p1

    .line 225
    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "android/icu/impl/data/icudt60b"

    :cond_0
    if-nez p1, :cond_1

    .line 267
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p1

    .line 269
    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 2

    .line 110
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-static {p0, p1, p2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method protected static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 0

    .line 147
    invoke-static {p0, p1, p2, p3}, Landroid/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/util/UResourceBundle;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "android/icu/impl/data/icudt60b"

    :cond_0
    if-nez p1, :cond_1

    .line 203
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    .line 205
    :goto_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "android/icu/impl/data/icudt60b"

    :cond_0
    if-nez p1, :cond_1

    .line 244
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    .line 245
    :goto_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method private static getRootType(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle$RootType;
    .locals 2

    .line 315
    sget-object v0, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/UResourceBundle$RootType;

    if-nez v0, :cond_1

    const/16 v0, 0x2e

    .line 318
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "root"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x1

    .line 320
    :try_start_0
    invoke-static {p0, v0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;

    .line 321
    sget-object p1, Landroid/icu/util/UResourceBundle$RootType;->ICU:Landroid/icu/util/UResourceBundle$RootType;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, p1

    goto :goto_2

    .line 324
    :catch_0
    :try_start_1
    invoke-static {p0, v0, p1, v1}, Landroid/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;

    .line 325
    sget-object p1, Landroid/icu/util/UResourceBundle$RootType;->JAVA:Landroid/icu/util/UResourceBundle$RootType;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 328
    :catch_1
    sget-object p1, Landroid/icu/util/UResourceBundle$RootType;->MISSING:Landroid/icu/util/UResourceBundle$RootType;

    goto :goto_1

    .line 332
    :goto_2
    sget-object p1, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private handleGetObjectImpl(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;
    .locals 2

    .line 823
    invoke-direct {p0, p1, p2}, Landroid/icu/util/UResourceBundle;->resolveObject(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 825
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 827
    invoke-direct {v1, p1, p2}, Landroid/icu/util/UResourceBundle;->handleGetObjectImpl(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    .line 830
    :cond_1
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find resource for bundle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected static instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;
    .locals 2

    .line 356
    invoke-static {p0, p2}, Landroid/icu/util/UResourceBundle;->getRootType(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle$RootType;

    move-result-object v0

    .line 358
    sget-object v1, Landroid/icu/util/UResourceBundle$1;->$SwitchMap$android$icu$util$UResourceBundle$RootType:[I

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle$RootType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 370
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 372
    sget-object v1, Landroid/icu/util/UResourceBundle$RootType;->ICU:Landroid/icu/util/UResourceBundle$RootType;

    invoke-static {p0, v1}, Landroid/icu/util/UResourceBundle;->setRootType(Ljava/lang/String;Landroid/icu/util/UResourceBundle$RootType;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;

    move-result-object v0

    .line 376
    sget-object p1, Landroid/icu/util/UResourceBundle$RootType;->JAVA:Landroid/icu/util/UResourceBundle$RootType;

    invoke-static {p0, p1}, Landroid/icu/util/UResourceBundle;->setRootType(Ljava/lang/String;Landroid/icu/util/UResourceBundle$RootType;)V

    :goto_0
    return-object v0

    .line 363
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;

    move-result-object p0

    return-object p0

    .line 360
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method private resolveObject(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;
    .locals 1

    .line 841
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 842
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 844
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 846
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result p1

    if-nez p1, :cond_1

    .line 847
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 850
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_2

    .line 851
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->handleGetStringArray()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/icu/util/UResourceTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object p0
.end method

.method private static setRootType(Ljava/lang/String;Landroid/icu/util/UResourceBundle$RootType;)V
    .locals 1

    .line 339
    sget-object v0, Landroid/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected findTopLevel(I)Landroid/icu/util/UResourceBundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 579
    invoke-virtual {v0, p1, v1, p0}, Landroid/icu/util/UResourceBundle;->handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 578
    :cond_0
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {v0, p1, v1, p0}, Landroid/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 511
    :cond_0
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public get(I)Landroid/icu/util/UResourceBundle;
    .locals 2

    const/4 v0, 0x0

    .line 545
    invoke-virtual {p0, p1, v0, p0}, Landroid/icu/util/UResourceBundle;->handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 547
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0, p1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    move-object v0, p1

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    .line 552
    :cond_1
    new-instance p1, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find resource for bundle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 4

    .line 486
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find resource for bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", key "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract getBaseName()Ljava/lang/String;
.end method

.method public getBinary()Ljava/nio/ByteBuffer;
    .locals 1

    .line 393
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBinary([B)[B
    .locals 0

    .line 435
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string p1, ""

    invoke-direct {p0, p1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInt()I
    .locals 1

    .line 461
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIntVector()[I
    .locals 1

    .line 448
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIterator()Landroid/icu/util/UResourceBundleIterator;
    .locals 1

    .line 701
    new-instance v0, Landroid/icu/util/UResourceBundleIterator;

    invoke-direct {v0, p0}, Landroid/icu/util/UResourceBundleIterator;-><init>(Landroid/icu/util/UResourceBundle;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeys()Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    .line 307
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getLocaleID()Ljava/lang/String;
.end method

.method protected abstract getParent()Landroid/icu/util/UResourceBundle;
.end method

.method public getSize()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 407
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    .line 529
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    .line 530
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result p1

    if-nez p1, :cond_0

    .line 531
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 533
    :cond_0
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string p1, ""

    invoke-direct {p0, p1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStringArray()[Ljava/lang/String;
    .locals 1

    .line 420
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getUInt()I
    .locals 1

    .line 475
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getULocale()Landroid/icu/util/ULocale;
.end method

.method public getVersion()Landroid/icu/util/VersionInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleGetKeys()Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 810
    invoke-direct {p0, p1, p0}, Landroid/icu/util/UResourceBundle;->handleGetObjectImpl(Ljava/lang/String;Landroid/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected handleGetStringArray()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 659
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method protected isTopLevelResource()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 614
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->isTopLevelResource()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_0

    .line 617
    move-object v1, p0

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 618
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getTopLevelKeySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    .line 621
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->isTopLevelResource()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 623
    iget-object v0, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v0, :cond_1

    .line 624
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    goto :goto_2

    .line 625
    :cond_1
    iget-object v0, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    instance-of v0, v0, Landroid/icu/util/UResourceBundle;

    if-eqz v0, :cond_2

    .line 626
    new-instance v0, Ljava/util/TreeSet;

    iget-object v2, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v2, Landroid/icu/util/UResourceBundle;

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 630
    :cond_2
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 631
    iget-object v2, p0, Landroid/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v2}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 632
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 633
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 636
    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 637
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v1, :cond_5

    .line 639
    invoke-virtual {v1, v0}, Landroid/icu/impl/ICUResourceBundle;->setTopLevelKeySet(Ljava/util/Set;)V

    goto :goto_3

    .line 642
    :cond_4
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    return-object v0
.end method
