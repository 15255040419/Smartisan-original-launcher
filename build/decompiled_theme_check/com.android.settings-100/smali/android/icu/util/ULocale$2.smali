.class Landroid/icu/util/ULocale$2;
.super Landroid/icu/impl/SoftCache;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/util/Locale;",
        "Landroid/icu/util/ULocale;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/util/Locale;Ljava/lang/Void;)Landroid/icu/util/ULocale;
    .locals 0

    .line 280
    invoke-static {p1}, Landroid/icu/util/ULocale$JDKLocaleHelper;->toULocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 277
    check-cast p1, Ljava/util/Locale;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/ULocale$2;->createInstance(Ljava/util/Locale;Ljava/lang/Void;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method
