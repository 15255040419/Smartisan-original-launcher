.class abstract Landroid/icu/text/Collator$ServiceShim;
.super Ljava/lang/Object;
.source "Collator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ServiceShim"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getAvailableLocales()[Ljava/util/Locale;
.end method

.method abstract getAvailableULocales()[Landroid/icu/util/ULocale;
.end method

.method abstract getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
.end method

.method abstract getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
.end method

.method abstract registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
.end method

.method abstract registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;
.end method

.method abstract unregister(Ljava/lang/Object;)Z
.end method
