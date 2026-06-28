.class Landroid/icu/text/CurrencyFormat;
.super Landroid/icu/text/MeasureFormat;
.source "CurrencyFormat.java"


# static fields
.field static final serialVersionUID:J = -0xcedfd71ed74263aL


# instance fields
.field private fmt:Landroid/icu/text/NumberFormat;

.field private final transient mf:Landroid/icu/text/MeasureFormat;


# direct methods
.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/icu/text/MeasureFormat;-><init>()V

    .line 45
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/CurrencyFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 46
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    .line 47
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 121
    new-instance v0, Landroid/icu/text/CurrencyFormat;

    iget-object p0, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    sget-object v1, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v1}, Landroid/icu/text/NumberFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 116
    iget-object p0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->toCurrencyProxy()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-super {p0}, Landroid/icu/text/MeasureFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CurrencyFormat;

    .line 56
    iget-object p0, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    invoke-virtual {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/NumberFormat;

    iput-object p0, v0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 65
    instance-of v0, p1, Landroid/icu/util/CurrencyAmount;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Landroid/icu/util/CurrencyAmount;

    .line 70
    iget-object v0, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    .line 71
    iget-object p0, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    invoke-virtual {p1}, Landroid/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 0

    .line 92
    iget-object p0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 0

    .line 108
    iget-object p0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/icu/text/CurrencyFormat;->mf:Landroid/icu/text/MeasureFormat;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object p0

    return-object p0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .locals 0

    .line 80
    iget-object p0, p0, Landroid/icu/text/CurrencyFormat;->fmt:Landroid/icu/text/NumberFormat;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberFormat;->parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/CurrencyFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/CurrencyFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;

    move-result-object p0

    return-object p0
.end method
