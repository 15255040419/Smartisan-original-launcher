.class Landroid/icu/text/CollatorServiceShim$CService;
.super Landroid/icu/impl/ICULocaleService;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CollatorServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "Collator"

    .line 134
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;

    invoke-direct {v0, p0}, Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;-><init>(Landroid/icu/text/CollatorServiceShim$CService;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/CollatorServiceShim$CService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    .line 148
    invoke-virtual {p0}, Landroid/icu/text/CollatorServiceShim$CService;->markDefault()V

    return-void
.end method


# virtual methods
.method protected handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    const-string/jumbo p1, "root"

    .line 169
    aput-object p1, p2, p0

    .line 172
    :cond_0
    :try_start_0
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-static {p0}, Landroid/icu/text/CollatorServiceShim;->access$000(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public validateFallbackLocale()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
