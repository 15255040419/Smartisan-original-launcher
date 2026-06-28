.class Landroid/icu/text/NumberFormatServiceShim$NFService;
.super Landroid/icu/impl/ICULocaleService;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormatServiceShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NFService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "NumberFormat"

    .line 109
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroid/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;

    invoke-direct {v0, p0}, Landroid/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;-><init>(Landroid/icu/text/NumberFormatServiceShim$NFService;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/NumberFormatServiceShim$NFService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    .line 118
    invoke-virtual {p0}, Landroid/icu/text/NumberFormatServiceShim$NFService;->markDefault()V

    return-void
.end method
