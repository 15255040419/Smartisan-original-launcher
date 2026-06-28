.class Landroid/icu/util/GenderInfo$Cache;
.super Ljava/lang/Object;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private final cache:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/GenderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    iput-object v0, p0, Landroid/icu/util/GenderInfo$Cache;->cache:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/GenderInfo$1;)V
    .locals 0

    .line 225
    invoke-direct {p0}, Landroid/icu/util/GenderInfo$Cache;-><init>()V

    return-void
.end method

.method private static load(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;
    .locals 4

    .line 247
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "genderList"

    const-string v2, "android/icu/impl/data/icudt60b"

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 251
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 253
    :try_start_0
    new-instance v1, Landroid/icu/util/GenderInfo;

    .line 254
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromName(Ljava/lang/String;)Landroid/icu/util/GenderInfo$ListGenderStyle;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/icu/util/GenderInfo;-><init>(Landroid/icu/util/GenderInfo$ListGenderStyle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;
    .locals 1

    .line 230
    iget-object v0, p0, Landroid/icu/util/GenderInfo$Cache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {v0, p1}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/GenderInfo;

    if-nez v0, :cond_2

    .line 232
    invoke-static {p1}, Landroid/icu/util/GenderInfo$Cache;->load(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 234
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getFallback()Landroid/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_0

    .line 239
    invoke-static {}, Landroid/icu/util/GenderInfo;->access$000()Landroid/icu/util/GenderInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/util/GenderInfo$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/util/GenderInfo;

    move-result-object v0

    .line 241
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/icu/util/GenderInfo$Cache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {p0, p1, v0}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method
