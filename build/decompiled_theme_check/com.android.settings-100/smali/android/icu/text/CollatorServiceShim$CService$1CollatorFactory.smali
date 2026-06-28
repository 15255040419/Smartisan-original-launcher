.class Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;
.super Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source "CollatorServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/CollatorServiceShim$CService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CollatorFactory"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/CollatorServiceShim$CService;


# direct methods
.method constructor <init>(Landroid/icu/text/CollatorServiceShim$CService;)V
    .locals 0

    .line 137
    iput-object p1, p0, Landroid/icu/text/CollatorServiceShim$CService$1CollatorFactory;->this$0:Landroid/icu/text/CollatorServiceShim$CService;

    const-string p1, "android/icu/impl/data/icudt60b/coll"

    .line 138
    invoke-direct {p0, p1}, Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleCreate(Landroid/icu/util/ULocale;ILandroid/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-static {p1}, Landroid/icu/text/CollatorServiceShim;->access$000(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method
