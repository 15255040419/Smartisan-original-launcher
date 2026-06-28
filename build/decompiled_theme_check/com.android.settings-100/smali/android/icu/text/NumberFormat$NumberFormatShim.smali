.class abstract Landroid/icu/text/NumberFormat$NumberFormatShim;
.super Ljava/lang/Object;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NumberFormatShim"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
.end method

.method abstract getAvailableLocales()[Ljava/util/Locale;
.end method

.method abstract getAvailableULocales()[Landroid/icu/util/ULocale;
.end method

.method abstract registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
.end method

.method abstract unregister(Ljava/lang/Object;)Z
.end method
