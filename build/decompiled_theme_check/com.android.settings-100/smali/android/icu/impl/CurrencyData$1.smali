.class Landroid/icu/impl/CurrencyData$1;
.super Ljava/lang/Object;
.source "CurrencyData.java"

# interfaces
.implements Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .locals 0

    .line 119
    invoke-static {p2}, Landroid/icu/impl/CurrencyData$DefaultInfo;->getWithFallback(Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public hasData()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
