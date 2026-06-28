.class public Landroid/icu/number/UnlocalizedNumberFormatter;
.super Landroid/icu/number/NumberFormatterSettings;
.source "UnlocalizedNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/number/NumberFormatterSettings<",
        "Landroid/icu/number/UnlocalizedNumberFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 21
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {p0, v1, v2, v0}, Landroid/icu/number/NumberFormatterSettings;-><init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/number/NumberFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/number/NumberFormatterSettings;-><init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic create(ILjava/lang/Object;)Landroid/icu/number/NumberFormatterSettings;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/icu/number/UnlocalizedNumberFormatter;->create(ILjava/lang/Object;)Landroid/icu/number/UnlocalizedNumberFormatter;

    move-result-object p0

    return-object p0
.end method

.method create(ILjava/lang/Object;)Landroid/icu/number/UnlocalizedNumberFormatter;
    .locals 1

    .line 63
    new-instance v0, Landroid/icu/number/UnlocalizedNumberFormatter;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/number/UnlocalizedNumberFormatter;-><init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method public locale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;
    .locals 2

    .line 58
    new-instance v0, Landroid/icu/number/LocalizedNumberFormatter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroid/icu/number/LocalizedNumberFormatter;-><init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method

.method public locale(Ljava/util/Locale;)Landroid/icu/number/LocalizedNumberFormatter;
    .locals 2

    .line 45
    new-instance v0, Landroid/icu/number/LocalizedNumberFormatter;

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Landroid/icu/number/LocalizedNumberFormatter;-><init>(Landroid/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V

    return-object v0
.end method
