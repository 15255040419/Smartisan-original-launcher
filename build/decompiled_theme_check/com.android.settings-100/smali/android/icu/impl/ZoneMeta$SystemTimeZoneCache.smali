.class Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;
.super Landroid/icu/impl/SoftCache;
.source "ZoneMeta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ZoneMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemTimeZoneCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/OlsonTimeZone;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 548
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/ZoneMeta$1;)V
    .locals 0

    .line 548
    invoke-direct {p0}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/OlsonTimeZone;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    const-string p1, "android/icu/impl/data/icudt60b"

    const-string/jumbo v0, "zoneinfo64"

    .line 557
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {p1, v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    .line 559
    invoke-static {p1, p2}, Landroid/icu/impl/ZoneMeta;->openOlsonResource(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    new-instance v1, Landroid/icu/impl/OlsonTimeZone;

    invoke-direct {v1, p1, v0, p2}, Landroid/icu/impl/OlsonTimeZone;-><init>(Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 562
    :try_start_1
    invoke-virtual {v1}, Landroid/icu/impl/OlsonTimeZone;->freeze()Landroid/icu/util/TimeZone;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object p0, v1

    :catch_1
    :cond_0
    return-object p0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 548
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ZoneMeta$SystemTimeZoneCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/OlsonTimeZone;

    move-result-object p0

    return-object p0
.end method
