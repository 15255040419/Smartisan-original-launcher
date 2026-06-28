.class abstract Landroid/icu/util/Currency$ServiceShim;
.super Ljava/lang/Object;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ServiceShim"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
.end method

.method abstract getAvailableLocales()[Ljava/util/Locale;
.end method

.method abstract getAvailableULocales()[Landroid/icu/util/ULocale;
.end method

.method abstract registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;
.end method

.method abstract unregister(Ljava/lang/Object;)Z
.end method
