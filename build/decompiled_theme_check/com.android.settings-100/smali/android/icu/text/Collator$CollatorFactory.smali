.class public abstract Landroid/icu/text/Collator$CollatorFactory;
.super Ljava/lang/Object;
.source "Collator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CollatorFactory"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCollator(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 0

    .line 499
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/Collator$CollatorFactory;->createCollator(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method public createCollator(Ljava/util/Locale;)Landroid/icu/text/Collator;
    .locals 0

    .line 513
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/Collator$CollatorFactory;->createCollator(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 535
    invoke-virtual {p0}, Landroid/icu/text/Collator$CollatorFactory;->visible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Landroid/icu/text/Collator$CollatorFactory;->getSupportedLocaleIDs()Ljava/util/Set;

    move-result-object p0

    .line 537
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 539
    invoke-virtual {p1, p2}, Landroid/icu/util/ULocale;->getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayName(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 524
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator$CollatorFactory;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getSupportedLocaleIDs()Ljava/util/Set;
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
