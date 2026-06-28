.class Landroid/icu/text/CollatorServiceShim$1CFactory;
.super Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/CollatorServiceShim;->registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CFactory"
.end annotation


# instance fields
.field delegate:Landroid/icu/text/Collator$CollatorFactory;

.field final synthetic this$0:Landroid/icu/text/CollatorServiceShim;


# direct methods
.method constructor <init>(Landroid/icu/text/CollatorServiceShim;Landroid/icu/text/Collator$CollatorFactory;)V
    .locals 0

    .line 70
    iput-object p1, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->this$0:Landroid/icu/text/CollatorServiceShim;

    .line 71
    invoke-virtual {p2}, Landroid/icu/text/Collator$CollatorFactory;->visible()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    .line 72
    iput-object p2, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    return-void
.end method


# virtual methods
.method public getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 83
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    invoke-virtual {p0, v0, p2}, Landroid/icu/text/Collator$CollatorFactory;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedIDs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    invoke-virtual {p0}, Landroid/icu/text/Collator$CollatorFactory;->getSupportedLocaleIDs()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/icu/text/CollatorServiceShim$1CFactory;->delegate:Landroid/icu/text/Collator$CollatorFactory;

    invoke-virtual {p0, p1}, Landroid/icu/text/Collator$CollatorFactory;->createCollator(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method
