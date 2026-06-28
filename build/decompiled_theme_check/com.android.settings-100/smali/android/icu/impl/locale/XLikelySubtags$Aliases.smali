.class public Landroid/icu/impl/locale/XLikelySubtags$Aliases;
.super Ljava/lang/Object;
.source "XLikelySubtags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/XLikelySubtags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aliases"
.end annotation


# instance fields
.field final toAliases:Landroid/icu/impl/locale/XCldrStub$Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final toCanonical:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string v2, "metadata"

    invoke-static {v1, v2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "alias"

    .line 77
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 80
    :goto_0
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 81
    invoke-virtual {v0, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 82
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    const-string/jumbo v7, "reason"

    .line 86
    invoke-virtual {v4, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "overlong"

    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    const-string/jumbo v7, "replacement"

    .line 90
    invoke-virtual {v4, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x20

    .line 91
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_2

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 93
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 96
    :cond_3
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const-string v0, "language"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "mo"

    const-string/jumbo v0, "ro"

    .line 99
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/XLikelySubtags$Aliases;->toCanonical:Ljava/util/Map;

    .line 102
    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$HashMultimap;->create()Landroid/icu/impl/locale/XCldrStub$HashMultimap;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/icu/impl/locale/XCldrStub$Multimaps;->invertFrom(Ljava/util/Map;Landroid/icu/impl/locale/XCldrStub$Multimap;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/XLikelySubtags$Aliases;->toAliases:Landroid/icu/impl/locale/XCldrStub$Multimap;

    return-void
.end method


# virtual methods
.method public getAliases(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object p0, p0, Landroid/icu/impl/locale/XLikelySubtags$Aliases;->toAliases:Landroid/icu/impl/locale/XCldrStub$Multimap;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    .line 73
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getCanonical(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Landroid/icu/impl/locale/XLikelySubtags$Aliases;->toCanonical:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method
