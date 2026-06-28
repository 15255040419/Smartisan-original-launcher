.class public Landroid/icu/impl/ICUResourceTableAccess;
.super Ljava/lang/Object;
.source "ICUResourceTableAccess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTableString(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move-object v1, v0

    .line 41
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    if-nez v2, :cond_0

    return-object p4

    :cond_0
    if-eqz p2, :cond_1

    .line 47
    invoke-virtual {v2, p2}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {v3, p3}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    if-nez p2, :cond_5

    const-string v3, "Countries"

    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 61
    invoke-static {p3}, Landroid/icu/impl/LocaleIDs;->getCurrentCountryID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const-string v3, "Languages"

    .line 62
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 63
    invoke-static {p3}, Landroid/icu/impl/LocaleIDs;->getCurrentLanguageID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_5

    .line 66
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    const-string v3, "Fallback"

    .line 74
    invoke-virtual {v2, v3}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    return-object p4

    .line 79
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v3, "root"

    .line 83
    :cond_7
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object p4

    .line 88
    :cond_8
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object p0

    .line 87
    invoke-static {p0, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_3
    if-eqz v1, :cond_9

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_9

    move-object p4, v1

    :cond_9
    return-object p4
.end method

.method public static getTableString(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 28
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    const/4 p1, 0x0

    .line 29
    invoke-static {p0, p2, p1, p3, p4}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
