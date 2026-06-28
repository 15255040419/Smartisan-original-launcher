.class public Landroid/icu/impl/number/CustomSymbolCurrency;
.super Landroid/icu/util/Currency;
.source "CustomSymbolCurrency.java"


# static fields
.field private static final serialVersionUID:J = 0x22a8e0aa9d9a4e46L


# instance fields
.field private symbol1:Ljava/lang/String;

.field private symbol2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/icu/util/Currency;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    return-void
.end method

.method public static resolve(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/util/Currency;
    .locals 3

    if-nez p0, :cond_0

    .line 22
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object p0

    .line 24
    :cond_0
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_1

    .line 27
    new-instance p0, Landroid/icu/impl/number/CustomSymbolCurrency;

    const-string p2, "XXX"

    invoke-direct {p0, p2, p1, v0}, Landroid/icu/impl/number/CustomSymbolCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object p0

    .line 32
    :cond_2
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v1, v2}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-virtual {p0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    return-object p0

    .line 35
    :cond_4
    :goto_0
    new-instance p0, Landroid/icu/impl/number/CustomSymbolCurrency;

    invoke-direct {p0, v1, p1, v0}, Landroid/icu/impl/number/CustomSymbolCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 76
    invoke-super {p0, p1}, Landroid/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/icu/impl/number/CustomSymbolCurrency;

    iget-object v0, p1, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    iget-object p0, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    return-object p0
.end method

.method public getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 57
    iget-object v0, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->subType:Ljava/lang/String;

    const-string v1, "XXX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object p0, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    return-object p0

    .line 61
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    .line 49
    iget-object p0, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    return-object p0

    .line 51
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 71
    invoke-super {p0}, Landroid/icu/util/Currency;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
