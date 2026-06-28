.class Landroid/icu/text/BreakIteratorFactory$BFService;
.super Landroid/icu/impl/ICULocaleService;
.source "BreakIteratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakIteratorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BFService"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "BreakIterator"

    .line 83
    invoke-direct {p0, v0}, Landroid/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v0, Landroid/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;

    invoke-direct {v0, p0}, Landroid/icu/text/BreakIteratorFactory$BFService$1RBBreakIteratorFactory;-><init>(Landroid/icu/text/BreakIteratorFactory$BFService;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/BreakIteratorFactory$BFService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    .line 93
    invoke-virtual {p0}, Landroid/icu/text/BreakIteratorFactory$BFService;->markDefault()V

    return-void
.end method


# virtual methods
.method public validateFallbackLocale()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
