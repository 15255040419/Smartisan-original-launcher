.class Landroid/icu/text/DecimalFormatSymbols$1;
.super Landroid/icu/impl/SoftCache;
.source "DecimalFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Landroid/icu/util/ULocale;",
        "Landroid/icu/text/DecimalFormatSymbols$CacheData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1825
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Landroid/icu/util/ULocale;Ljava/lang/Void;)Landroid/icu/text/DecimalFormatSymbols$CacheData;
    .locals 0

    .line 1828
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->access$100(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1825
    check-cast p1, Landroid/icu/util/ULocale;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DecimalFormatSymbols$1;->createInstance(Landroid/icu/util/ULocale;Ljava/lang/Void;)Landroid/icu/text/DecimalFormatSymbols$CacheData;

    move-result-object p0

    return-object p0
.end method
