.class Landroid/icu/impl/number/Parse$CurrencyAffixPatterns$1;
.super Ljava/lang/ThreadLocal;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/icu/impl/number/DecimalFormatProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 833
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 836
    new-instance p0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 833
    invoke-virtual {p0}, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns$1;->initialValue()Landroid/icu/impl/number/DecimalFormatProperties;

    move-result-object p0

    return-object p0
.end method
