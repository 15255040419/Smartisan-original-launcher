.class public Landroid/icu/impl/LocaleUtility;
.super Ljava/lang/Object;
.source "LocaleUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fallback(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    move p0, v1

    :goto_0
    if-ltz p0, :cond_1

    .line 126
    aget-object v4, v0, p0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    .line 127
    aput-object v4, v0, p0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_2
    new-instance p0, Ljava/util/Locale;

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    aget-object v0, v0, v1

    invoke-direct {p0, v2, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5

    const/16 v0, 0x5f

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, ""

    if-gez v1, :cond_0

    move-object v3, p0

    move-object p0, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    .line 38
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v4, v2

    move-object v2, p0

    move-object p0, v4

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 47
    :goto_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v3, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 59
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p0, v0, :cond_1

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x5f

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isFallbackOf(Ljava/util/Locale;Ljava/util/Locale;)Z
    .locals 0

    .line 70
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
