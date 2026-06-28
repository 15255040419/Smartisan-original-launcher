.class public abstract Landroid/icu/number/CurrencyRounder;
.super Landroid/icu/number/Rounder;
.source "CurrencyRounder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/icu/number/Rounder;-><init>()V

    return-void
.end method


# virtual methods
.method public withCurrency(Landroid/icu/util/Currency;)Landroid/icu/number/Rounder;
    .locals 0

    if-eqz p1, :cond_0

    .line 44
    invoke-static {p0, p1}, Landroid/icu/number/CurrencyRounder;->constructFromCurrency(Landroid/icu/number/CurrencyRounder;Landroid/icu/util/Currency;)Landroid/icu/number/Rounder;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Currency must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
