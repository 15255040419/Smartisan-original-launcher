.class final Landroid/icu/text/NumberFormatServiceShim$NFFactory;
.super Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormatServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFFactory"
.end annotation


# instance fields
.field private delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;


# direct methods
.method constructor <init>(Landroid/icu/text/NumberFormat$NumberFormatFactory;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->visible()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(Z)V

    .line 50
    iput-object p1, p0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;

    return-void
.end method


# virtual methods
.method public create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 4

    .line 54
    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->handlesKey(Landroid/icu/impl/ICUService$Key;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/icu/impl/ICULocaleService$LocaleKey;

    if-nez v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/ICULocaleService$LocaleKey;

    .line 59
    iget-object v2, p0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->canonicalLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->createFormat(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {p2, p1, v1, p0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method protected getSupportedIDs()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Landroid/icu/text/NumberFormatServiceShim$NFFactory;->delegate:Landroid/icu/text/NumberFormat$NumberFormatFactory;

    invoke-virtual {p0}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->getSupportedLocaleNames()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
