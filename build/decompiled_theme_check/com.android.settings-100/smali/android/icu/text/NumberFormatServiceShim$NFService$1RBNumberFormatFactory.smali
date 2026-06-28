.class Landroid/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;
.super Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/NumberFormatServiceShim$NFService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RBNumberFormatFactory"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/NumberFormatServiceShim$NFService;


# direct methods
.method constructor <init>(Landroid/icu/text/NumberFormatServiceShim$NFService;)V
    .locals 0

    .line 111
    iput-object p1, p0, Landroid/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;->this$0:Landroid/icu/text/NumberFormatServiceShim$NFService;

    invoke-direct {p0}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 0

    .line 113
    invoke-static {p1, p2}, Landroid/icu/text/NumberFormat;->createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method
