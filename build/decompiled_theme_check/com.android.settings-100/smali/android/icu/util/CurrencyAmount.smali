.class public Landroid/icu/util/CurrencyAmount;
.super Landroid/icu/util/Measure;
.source "CurrencyAmount.java"


# direct methods
.method public constructor <init>(DLandroid/icu/util/Currency;)V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {p0, v0, p3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    return-void
.end method

.method public constructor <init>(DLjava/util/Currency;)V
    .locals 0

    .line 62
    invoke-static {p3}, Landroid/icu/util/Currency;->fromJavaCurrency(Ljava/util/Currency;)Landroid/icu/util/Currency;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/CurrencyAmount;-><init>(DLandroid/icu/util/Currency;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/util/Currency;)V
    .locals 0

    .line 52
    invoke-static {p2}, Landroid/icu/util/Currency;->fromJavaCurrency(Ljava/util/Currency;)Landroid/icu/util/Currency;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    return-void
.end method


# virtual methods
.method public getCurrency()Landroid/icu/util/Currency;
    .locals 0

    .line 70
    invoke-virtual {p0}, Landroid/icu/util/CurrencyAmount;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object p0

    check-cast p0, Landroid/icu/util/Currency;

    return-object p0
.end method
