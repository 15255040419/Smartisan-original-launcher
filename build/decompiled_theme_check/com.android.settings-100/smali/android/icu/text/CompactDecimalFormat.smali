.class public Landroid/icu/text/CompactDecimalFormat;
.super Landroid/icu/text/DecimalFormat;
.source "CompactDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4173a3c399851eb2L


# direct methods
.method constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Landroid/icu/text/DecimalFormat;-><init>()V

    .line 96
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/text/CompactDecimalFormat;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    .line 97
    new-instance p1, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p1}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p1, p0, Landroid/icu/text/CompactDecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 98
    iget-object p1, p0, Landroid/icu/text/CompactDecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setCompactStyle(Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 99
    iget-object p1, p0, Landroid/icu/text/CompactDecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 100
    iget-object p1, p0, Landroid/icu/text/CompactDecimalFormat;->properties:Landroid/icu/impl/number/DecimalFormatProperties;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->setMinimumGroupingDigits(I)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 101
    new-instance p1, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p1}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p1, p0, Landroid/icu/text/CompactDecimalFormat;->exportedProperties:Landroid/icu/impl/number/DecimalFormatProperties;

    .line 102
    invoke-virtual {p0}, Landroid/icu/text/CompactDecimalFormat;->refreshFormatter()V

    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;
    .locals 1

    .line 74
    new-instance v0, Landroid/icu/text/CompactDecimalFormat;

    invoke-direct {v0, p0, p1}, Landroid/icu/text/CompactDecimalFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)Landroid/icu/text/CompactDecimalFormat;
    .locals 1

    .line 85
    new-instance v0, Landroid/icu/text/CompactDecimalFormat;

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/icu/text/CompactDecimalFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/CompactDecimalFormat$CompactStyle;)V

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 110
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Landroid/icu/util/CurrencyAmount;
    .locals 0

    .line 118
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
