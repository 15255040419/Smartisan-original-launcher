.class public final Landroid/icu/impl/coll/CollationLoader;
.super Ljava/lang/Object;
.source "CollationLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationLoader$ASCII;
    }
.end annotation


# static fields
.field private static volatile rootRules:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 0

    .line 94
    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getRootRules()Ljava/lang/String;
    .locals 1

    .line 57
    invoke-static {}, Landroid/icu/impl/coll/CollationLoader;->loadRootRules()V

    .line 58
    sget-object v0, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    return-object v0
.end method

.method private static loadRootRules()V
    .locals 3

    .line 43
    sget-object v0, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    const-class v0, Landroid/icu/impl/coll/CollationLoader;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "android/icu/impl/data/icudt60b/coll"

    .line 48
    sget-object v2, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-static {v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string v2, "UCARules"

    .line 50
    invoke-virtual {v1, v2}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/icu/impl/coll/CollationLoader;->rootRules:Ljava/lang/String;

    .line 52
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static loadRules(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "android/icu/impl/data/icudt60b/coll"

    .line 85
    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 87
    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collations/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {p1}, Landroid/icu/impl/coll/CollationLoader$ASCII;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    const-string p1, "Sequence"

    .line 89
    invoke-virtual {p0, p1}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadTailoring(Landroid/icu/util/ULocale;Landroid/icu/util/Output;)Landroid/icu/impl/coll/CollationTailoring;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/impl/coll/CollationTailoring;"
        }
    .end annotation

    const-string v0, "android/icu/impl/data/icudt60b/coll"

    .line 103
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_10

    const-string/jumbo v3, "root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 112
    :cond_0
    :try_start_0
    sget-object v2, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, p0, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_3

    .line 120
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v4

    .line 123
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    :cond_1
    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 127
    :cond_2
    iput-object v4, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :try_start_1
    const-string v5, "collations"

    .line 132
    invoke-virtual {v2, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    const-string v5, "collation"

    .line 141
    invoke-virtual {p0, v5}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 144
    move-object v6, v2

    check-cast v6, Landroid/icu/impl/ICUResourceBundle;

    const-string v7, "default"

    invoke-virtual {v6, v7}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "standard"

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    move-object v6, v8

    :goto_0
    if-eqz p0, :cond_6

    .line 149
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_1

    .line 152
    :cond_5
    invoke-static {p0}, Landroid/icu/impl/coll/CollationLoader$ASCII;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    :goto_1
    move-object p0, v6

    .line 161
    :goto_2
    invoke-static {v2, p0}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    const-string/jumbo v9, "search"

    if-nez v7, :cond_7

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-le v10, v11, :cond_7

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 167
    invoke-static {v2, v9}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    move-object p0, v9

    :cond_7
    if-nez v7, :cond_8

    .line 170
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 174
    invoke-static {v2, v6}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    move-object p0, v6

    :cond_8
    if-nez v7, :cond_9

    .line 177
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 181
    invoke-static {v2, v8}, Landroid/icu/impl/coll/CollationLoader;->findWithFallback(Landroid/icu/util/UResourceBundle;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    move-object p0, v8

    :cond_9
    if-nez v7, :cond_a

    return-object v1

    .line 189
    :cond_a
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2

    .line 192
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v9

    .line 193
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 194
    :cond_b
    sget-object v2, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 195
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-object v1

    .line 200
    :cond_c
    new-instance v3, Landroid/icu/impl/coll/CollationTailoring;

    iget-object v8, v1, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-direct {v3, v8}, Landroid/icu/impl/coll/CollationTailoring;-><init>(Landroid/icu/impl/coll/SharedObject$Reference;)V

    .line 201
    iput-object v2, v3, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    const-string v8, "%%CollationBin"

    .line 204
    invoke-virtual {v7, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v8

    .line 205
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getBinary()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 207
    :try_start_2
    invoke-static {v1, v8, v3}, Landroid/icu/impl/coll/CollationDataReader;->read(Landroid/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Landroid/icu/impl/coll/CollationTailoring;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v1, "Sequence"

    .line 215
    invoke-virtual {v7, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/icu/impl/coll/CollationTailoring;->setRulesResource(Landroid/icu/util/UResourceBundle;)V
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0

    .line 222
    :catch_0
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 223
    invoke-virtual {v4, v5, p0}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    iput-object v1, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 231
    :cond_d
    invoke-virtual {v2, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 233
    invoke-static {v0, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    .line 235
    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    const-string v0, "collations/default"

    invoke-virtual {p1, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    goto :goto_3

    :cond_e
    move-object p1, v6

    .line 241
    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 242
    iget-object p1, v3, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v5, p0}, Landroid/icu/util/ULocale;->setKeywordValue(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object p0

    iput-object p0, v3, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    :cond_f
    return-object v3

    :catch_1
    move-exception p1

    .line 209
    new-instance v0, Landroid/icu/util/ICUUncheckedIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load collation tailoring data for locale:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    return-object v1

    .line 116
    :catch_3
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    iput-object p0, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    return-object v1

    .line 106
    :cond_10
    :goto_4
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    iput-object p0, p1, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    return-object v1
.end method
