.class public Landroid/icu/impl/locale/XLikelySubtags;
.super Ljava/lang/Object;
.source "XLikelySubtags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/XLikelySubtags$LSR;,
        Landroid/icu/impl/locale/XLikelySubtags$Aliases;,
        Landroid/icu/impl/locale/XLikelySubtags$Maker;
    }
.end annotation


# static fields
.field private static final DEFAULT:Landroid/icu/impl/locale/XLikelySubtags;


# instance fields
.field final langTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/XLikelySubtags$LSR;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/icu/impl/locale/XLikelySubtags;

    invoke-direct {v0}, Landroid/icu/impl/locale/XLikelySubtags;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/XLikelySubtags;->DEFAULT:Landroid/icu/impl/locale/XLikelySubtags;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 221
    invoke-static {}, Landroid/icu/impl/locale/XLikelySubtags;->getDefaultRawData()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/locale/XLikelySubtags;-><init>(Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/locale/XLikelySubtags;->init(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/XLikelySubtags;->langTable:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Landroid/icu/impl/locale/XLikelySubtags;
    .locals 1

    .line 29
    sget-object v0, Landroid/icu/impl/locale/XLikelySubtags;->DEFAULT:Landroid/icu/impl/locale/XLikelySubtags;

    return-object v0
.end method

.method public static final getDefault()Landroid/icu/impl/locale/XLikelySubtags;
    .locals 1

    .line 34
    sget-object v0, Landroid/icu/impl/locale/XLikelySubtags;->DEFAULT:Landroid/icu/impl/locale/XLikelySubtags;

    return-object v0
.end method

.method private static getDefaultRawData()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string v2, "likelySubtags"

    .line 226
    invoke-static {v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 229
    invoke-virtual {v1, v3}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private init(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/XLikelySubtags$LSR;",
            ">;>;>;"
        }
    .end annotation

    .line 249
    sget-object v0, Landroid/icu/impl/locale/XLikelySubtags$Maker;->TREEMAP:Landroid/icu/impl/locale/XLikelySubtags$Maker;

    .line 250
    invoke-virtual {v0}, Landroid/icu/impl/locale/XLikelySubtags$Maker;->make()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 254
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 255
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->from(Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object v2

    .line 257
    iget-object v12, v2, Landroid/icu/impl/locale/XLikelySubtags$LSR;->language:Ljava/lang/String;

    .line 258
    iget-object v13, v2, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    .line 259
    iget-object v14, v2, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    .line 261
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->from(Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object v1

    .line 262
    iget-object v15, v1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->language:Ljava/lang/String;

    .line 263
    iget-object v9, v1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    .line 264
    iget-object v8, v1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object v7, v9

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object v9, v10

    .line 266
    invoke-direct/range {v1 .. v9}, Landroid/icu/impl/locale/XLikelySubtags;->set(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 268
    sget-object v1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->LANGUAGE_ALIASES:Landroid/icu/impl/locale/XLikelySubtags$Aliases;

    invoke-virtual {v1, v12}, Landroid/icu/impl/locale/XLikelySubtags$Aliases;->getAliases(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 272
    sget-object v2, Landroid/icu/impl/locale/XLikelySubtags$LSR;->REGION_ALIASES:Landroid/icu/impl/locale/XLikelySubtags$Aliases;

    invoke-virtual {v2, v14}, Landroid/icu/impl/locale/XLikelySubtags$Aliases;->getAliases(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v18

    .line 276
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 277
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 278
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v9

    move-object v4, v13

    move-object v6, v15

    move-object/from16 v7, v17

    move-object/from16 v8, v16

    move-object/from16 v21, v9

    move-object v9, v10

    .line 281
    invoke-direct/range {v1 .. v9}, Landroid/icu/impl/locale/XLikelySubtags;->set(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v9, v21

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "und"

    const-string v4, "Latn"

    const-string v5, ""

    const-string v6, "en"

    const-string v7, "Latn"

    const-string v8, "US"

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v9, v10

    .line 286
    invoke-direct/range {v1 .. v9}, Landroid/icu/impl/locale/XLikelySubtags;->set(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v7, "und"

    .line 292
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v8, ""

    .line 293
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 294
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 295
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    .line 296
    iget-object v4, v6, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    iget-object v5, v6, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    const-string/jumbo v3, "und"

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/locale/XLikelySubtags;->set(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/XLikelySubtags$LSR;)V

    goto :goto_1

    .line 300
    :cond_4
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 303
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 304
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 305
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 306
    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "failure: "

    if-eqz v4, :cond_7

    .line 309
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 310
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 311
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 312
    invoke-interface {v4, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    .line 313
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    return-object v0

    .line 301
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "failure: base"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private minimizeSubtags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale$Minimize;)Landroid/icu/impl/locale/XLikelySubtags$LSR;
    .locals 4

    .line 446
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/locale/XLikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p3

    .line 455
    iget-object v0, p0, Landroid/icu/impl/locale/XLikelySubtags;->langTable:Ljava/util/Map;

    iget-object v1, p3, Landroid/icu/impl/locale/XLikelySubtags$LSR;->language:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, ""

    .line 457
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 458
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    .line 460
    iget-object v2, p3, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 461
    iget-object v2, p3, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    iget-object v0, v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p3, v3, v1, v1}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0

    .line 463
    :cond_0
    sget-object v0, Landroid/icu/util/ULocale$Minimize;->FAVOR_REGION:Landroid/icu/util/ULocale$Minimize;

    if-ne p4, v0, :cond_1

    .line 464
    invoke-virtual {p3, v3, v1, v3}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    .line 472
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Landroid/icu/impl/locale/XLikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    .line 473
    invoke-virtual {p0, p3}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 474
    invoke-virtual {p3, v3, v3, v1}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz p4, :cond_4

    .line 476
    invoke-virtual {p3, v3, v1, v3}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p3
.end method

.method private set(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/XLikelySubtags$LSR;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/XLikelySubtags$LSR;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/XLikelySubtags$LSR;",
            ")V"
        }
    .end annotation

    .line 365
    sget-object p0, Landroid/icu/impl/locale/XLikelySubtags$Maker;->TREEMAP:Landroid/icu/impl/locale/XLikelySubtags$Maker;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/locale/XLikelySubtags$Maker;->getSubtable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 366
    sget-object p1, Landroid/icu/impl/locale/XLikelySubtags$Maker;->TREEMAP:Landroid/icu/impl/locale/XLikelySubtags$Maker;

    invoke-virtual {p1, p0, p3}, Landroid/icu/impl/locale/XLikelySubtags$Maker;->getSubtable(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 371
    invoke-interface {p0, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private set(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/XLikelySubtags$LSR;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/icu/impl/locale/XLikelySubtags$LSR;",
            "Landroid/icu/impl/locale/XLikelySubtags$LSR;",
            ">;)V"
        }
    .end annotation

    .line 355
    new-instance v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    invoke-direct {v0, p5, p6, p7}, Landroid/icu/impl/locale/XLikelySubtags$LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-interface {p8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    if-nez p5, :cond_0

    .line 358
    invoke-interface {p8, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, p5

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 361
    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/locale/XLikelySubtags;->set(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/XLikelySubtags$LSR;)V

    return-void
.end method

.method private static show(Ljava/util/Map;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "\t"

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 483
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 484
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 485
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v3, "\u2205"

    :cond_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    instance-of v0, v2, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 488
    check-cast v2, Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p2}, Landroid/icu/impl/locale/XLikelySubtags;->show(Ljava/util/Map;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 490
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/icu/impl/Utility;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    move-object v0, p1

    goto :goto_1

    :cond_3
    return-object p2
.end method


# virtual methods
.method public maximize(Landroid/icu/impl/locale/XLikelySubtags$LSR;)Landroid/icu/impl/locale/XLikelySubtags$LSR;
    .locals 2

    .line 386
    iget-object v0, p1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->language:Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->script:Ljava/lang/String;

    iget-object p1, p1, Landroid/icu/impl/locale/XLikelySubtags$LSR;->region:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Landroid/icu/impl/locale/XLikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0
.end method

.method public maximize(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;
    .locals 2

    .line 382
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/icu/impl/locale/XLikelySubtags;->maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0
.end method

.method public maximize(Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;
    .locals 0

    .line 378
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/XLikelySubtags;->maximize(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0
.end method

.method public maximize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;
    .locals 4

    .line 398
    iget-object v0, p0, Landroid/icu/impl/locale/XLikelySubtags;->langTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x4

    const-string/jumbo v2, "und"

    if-nez v0, :cond_0

    .line 401
    iget-object p0, p0, Landroid/icu/impl/locale/XLikelySubtags;->langTable:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string p0, "Zzzz"

    .line 406
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v2, ""

    if-eqz p0, :cond_2

    move-object p2, v2

    .line 409
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_3

    or-int/lit8 v1, v1, 0x2

    .line 412
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    goto :goto_1

    .line 413
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    or-int/lit8 v1, v1, 0x2

    :cond_4
    :goto_1
    const-string v0, "ZZ"

    .line 417
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object p3, v2

    .line 420
    :cond_5
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    const/4 v3, 0x0

    if-nez v0, :cond_6

    or-int/lit8 v1, v1, 0x1

    .line 423
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    if-nez v0, :cond_7

    return-object v3

    .line 427
    :cond_6
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    or-int/lit8 v1, v1, 0x1

    :cond_7
    packed-switch v1, :pswitch_data_0

    return-object v0

    .line 440
    :pswitch_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0

    .line 439
    :pswitch_1
    invoke-virtual {v0, p1, p2, v3}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0

    .line 438
    :pswitch_2
    invoke-virtual {v0, p1, v3, p3}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0

    .line 437
    :pswitch_3
    invoke-virtual {v0, p1, v3, v3}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0

    .line 436
    :pswitch_4
    invoke-virtual {v0, v3, p2, p3}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0

    .line 435
    :pswitch_5
    invoke-virtual {v0, v3, p2, v3}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0

    .line 434
    :pswitch_6
    invoke-virtual {v0, v3, v3, p3}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 499
    iget-object p0, p0, Landroid/icu/impl/locale/XLikelySubtags;->langTable:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-static {p0, v1, v0}, Landroid/icu/impl/locale/XLikelySubtags;->show(Ljava/util/Map;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
