.class Landroid/icu/text/DateFormatSymbols$1;
.super Landroid/icu/impl/SoftCache;
.source "DateFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/text/DateFormatSymbols;",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1475
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormatSymbols;
    .locals 1

    const/16 p0, 0x2b

    .line 1481
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1482
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-gez p0, :cond_0

    .line 1485
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    .line 1487
    :cond_0
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1488
    new-instance p1, Landroid/icu/text/DateFormatSymbols;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p0, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/DateFormatSymbols$1;)V

    return-object p1
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1475
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/DateFormatSymbols$1;->createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object p0

    return-object p0
.end method
