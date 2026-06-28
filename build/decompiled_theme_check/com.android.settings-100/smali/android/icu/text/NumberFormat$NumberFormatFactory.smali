.class public abstract Landroid/icu/text/NumberFormat$NumberFormatFactory;
.super Ljava/lang/Object;
.source "NumberFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NumberFormatFactory"
.end annotation


# static fields
.field public static final FORMAT_CURRENCY:I = 0x1

.field public static final FORMAT_INTEGER:I = 0x4

.field public static final FORMAT_NUMBER:I = 0x0

.field public static final FORMAT_PERCENT:I = 0x2

.field public static final FORMAT_SCIENTIFIC:I = 0x3


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFormat(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .locals 0

    .line 810
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->createFormat(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public createFormat(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;
    .locals 0

    .line 826
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberFormat$NumberFormatFactory;->createFormat(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method public abstract getSupportedLocaleNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public visible()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
