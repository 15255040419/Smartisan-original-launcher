.class public Landroid/icu/impl/locale/KeyTypeData;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;,
        Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;,
        Landroid/icu/impl/locale/KeyTypeData$Type;,
        Landroid/icu/impl/locale/KeyTypeData$KeyData;,
        Landroid/icu/impl/locale/KeyTypeData$SpecialType;,
        Landroid/icu/impl/locale/KeyTypeData$PrivateUseKeyValueTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$SubdivisionKeyValueTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$ReorderCodeTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$CodepointsTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;,
        Landroid/icu/impl/locale/KeyTypeData$ValueType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static BCP47_KEYS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static DEPRECATED_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static DEPRECATED_KEY_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final KEYMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/KeyTypeData$KeyData;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DATA:[[Ljava/lang/Object;

.field static VALUE_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/locale/KeyTypeData$ValueType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 401
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->DEPRECATED_KEYS:Ljava/util/Set;

    .line 402
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->VALUE_TYPES:Ljava/util/Map;

    .line 403
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->DEPRECATED_KEY_TYPES:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [[Ljava/lang/Object;

    .line 539
    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEY_DATA:[[Ljava/lang/Object;

    .line 658
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    .line 663
    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData;->initFromResourceBundle()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBcp47KeyTypes(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
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

    .line 671
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->BCP47_KEYS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public static getBcp47Keys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 667
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->BCP47_KEYS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static getKeyInfo(Landroid/icu/util/UResourceBundle;)V
    .locals 8

    .line 424
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 425
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 426
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 427
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-static {v3}, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    move-result-object v3

    .line 430
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 431
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 432
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 433
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    .line 434
    sget-object v6, Landroid/icu/impl/locale/KeyTypeData$1;->$SwitchMap$android$icu$impl$locale$KeyTypeData$KeyInfoType:[I

    invoke-virtual {v3}, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    goto :goto_0

    .line 439
    :cond_1
    invoke-static {v4}, Landroid/icu/impl/locale/KeyTypeData$ValueType;->valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$ValueType;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 436
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 444
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    sput-object p0, Landroid/icu/impl/locale/KeyTypeData;->DEPRECATED_KEYS:Ljava/util/Set;

    .line 445
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Landroid/icu/impl/locale/KeyTypeData;->VALUE_TYPES:Ljava/util/Map;

    return-void
.end method

.method private static getTypeInfo(Landroid/icu/util/UResourceBundle;)V
    .locals 9

    .line 461
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 462
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 463
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 464
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-static {v2}, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;->valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    move-result-object v2

    .line 466
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 468
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 469
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 470
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 471
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v6

    .line 472
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 473
    sget-object v7, Landroid/icu/impl/locale/KeyTypeData$1;->$SwitchMap$android$icu$impl$locale$KeyTypeData$TypeInfoType:[I

    invoke-virtual {v2}, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    goto :goto_1

    .line 475
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 479
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 482
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    sput-object p0, Landroid/icu/impl/locale/KeyTypeData;->DEPRECATED_KEY_TYPES:Ljava/util/Map;

    return-void
.end method

.method public static getValueType(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .locals 1

    .line 687
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->VALUE_TYPES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    if-nez p0, :cond_0

    .line 688
    sget-object p0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->single:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    :cond_0
    return-object p0
.end method

.method private static initFromResourceBundle()V
    .locals 20

    .line 215
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string v2, "keyTypeData"

    invoke-static {v1, v2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "keyInfo"

    .line 220
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/KeyTypeData;->getKeyInfo(Landroid/icu/util/UResourceBundle;)V

    const-string/jumbo v1, "typeInfo"

    .line 221
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/locale/KeyTypeData;->getTypeInfo(Landroid/icu/util/UResourceBundle;)V

    const-string v1, "keyMap"

    .line 223
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const-string/jumbo v2, "typeMap"

    .line 224
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    :try_start_0
    const-string/jumbo v4, "typeAlias"

    .line 231
    invoke-virtual {v0, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v4, 0x0

    :goto_0
    :try_start_1
    const-string v5, "bcpTypeAlias"

    .line 237
    invoke-virtual {v0, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v0, 0x0

    .line 243
    :goto_1
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v1

    .line 244
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 246
    :goto_2
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 247
    invoke-virtual {v1}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v6

    .line 248
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 249
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    move-object v6, v7

    const/4 v8, 0x1

    goto :goto_3

    :cond_0
    const/4 v8, 0x0

    .line 257
    :goto_3
    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 258
    invoke-static {v11}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v12

    invoke-interface {v5, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v12, "timezone"

    .line 260
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/16 v13, 0x2f

    const/16 v14, 0x3a

    if-eqz v4, :cond_3

    .line 267
    :try_start_2
    invoke-virtual {v4, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v15
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_3

    .line 272
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 273
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v15

    .line 274
    :goto_5
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 275
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v16

    .line 276
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 277
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v10

    if-eqz v12, :cond_1

    .line 279
    invoke-virtual {v9, v14, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 281
    :cond_1
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Set;

    if-nez v16, :cond_2

    .line 283
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 284
    invoke-interface {v3, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_2
    move-object/from16 v13, v16

    .line 286
    :goto_6
    invoke-interface {v13, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v13, 0x2f

    goto :goto_5

    :cond_3
    const/4 v3, 0x0

    :cond_4
    if-eqz v0, :cond_6

    .line 296
    :try_start_3
    invoke-virtual {v0, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v9
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_6

    .line 301
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 302
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v9

    .line 303
    :goto_8
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 304
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v13

    .line 305
    invoke-virtual {v13}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 306
    invoke-virtual {v13}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v13

    .line 307
    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Set;

    if-nez v16, :cond_5

    .line 309
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 310
    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_5
    move-object/from16 v14, v16

    .line 312
    :goto_9
    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v14, 0x3a

    goto :goto_8

    :cond_6
    const/4 v10, 0x0

    .line 317
    :cond_7
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 323
    :try_start_4
    invoke-virtual {v2, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v13
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    const/4 v13, 0x0

    :goto_a
    if-eqz v13, :cond_11

    .line 329
    invoke-virtual {v13}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v13

    const/4 v14, 0x0

    .line 330
    :goto_b
    invoke-virtual {v13}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 331
    invoke-virtual {v13}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v15

    move-object/from16 v16, v0

    .line 332
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v1

    move-object/from16 v17, v2

    const/4 v1, 0x0

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x39

    if-ge v1, v2, :cond_8

    const/16 v1, 0x61

    if-ge v2, v1, :cond_8

    .line 337
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_c

    :cond_8
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_b

    if-nez v14, :cond_9

    .line 340
    const-class v1, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v14

    .line 342
    :cond_9
    invoke-static {v0}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v11, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_a
    move-object/from16 v0, v16

    move-object/from16 v2, v17

    move-object/from16 v1, v19

    goto :goto_b

    :cond_b
    const/16 v1, 0x2f

    const/16 v2, 0x3a

    if-eqz v12, :cond_c

    .line 350
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 354
    :cond_c
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_d

    const/16 v18, 0x1

    move-object v15, v0

    goto :goto_d

    :cond_d
    const/16 v18, 0x0

    .line 359
    :goto_d
    invoke-virtual {v11, v15}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 365
    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$Type;

    invoke-direct {v1, v0, v15}, Landroid/icu/impl/locale/KeyTypeData$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v18, :cond_e

    .line 368
    invoke-static {v15}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    if-eqz v3, :cond_f

    .line 373
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_f

    .line 375
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 376
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_f
    if-eqz v10, :cond_a

    .line 381
    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_a

    .line 383
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 384
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_10
    move-object/from16 v16, v0

    move-object/from16 v19, v1

    move-object/from16 v17, v2

    goto :goto_10

    :cond_11
    move-object/from16 v16, v0

    move-object/from16 v19, v1

    move-object/from16 v17, v2

    const/4 v14, 0x0

    .line 391
    :goto_10
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    invoke-direct {v0, v7, v6, v9, v14}, Landroid/icu/impl/locale/KeyTypeData$KeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;)V

    .line 393
    sget-object v1, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v7}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v8, :cond_12

    .line 395
    sget-object v1, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v6}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    move-object/from16 v0, v16

    move-object/from16 v2, v17

    move-object/from16 v1, v19

    goto/16 :goto_2

    .line 398
    :cond_13
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData;->BCP47_KEYS:Ljava/util/Map;

    return-void
.end method

.method private static initFromTables()V
    .locals 21

    .line 543
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEY_DATA:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_12

    aget-object v4, v0, v3

    .line 544
    aget-object v5, v4, v2

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    .line 545
    aget-object v7, v4, v6

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x2

    .line 546
    aget-object v8, v4, v8

    check-cast v8, [[Ljava/lang/String;

    const/4 v9, 0x3

    .line 547
    aget-object v9, v4, v9

    check-cast v9, [[Ljava/lang/String;

    const/4 v10, 0x4

    .line 548
    aget-object v4, v4, v10

    check-cast v4, [[Ljava/lang/String;

    if-nez v7, :cond_0

    move-object v10, v5

    move v7, v6

    goto :goto_1

    :cond_0
    move-object v10, v7

    move v7, v2

    :goto_1
    if-eqz v9, :cond_2

    .line 559
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 560
    array-length v13, v9

    move v14, v2

    :goto_2
    if-ge v14, v13, :cond_3

    aget-object v15, v9, v14

    .line 561
    aget-object v11, v15, v2

    .line 562
    aget-object v15, v15, v6

    .line 563
    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Set;

    if-nez v16, :cond_1

    .line 565
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 566
    invoke-interface {v12, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    move-object/from16 v6, v16

    .line 568
    :goto_3
    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :cond_3
    if-eqz v4, :cond_5

    .line 575
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 576
    array-length v6, v4

    move v9, v2

    :goto_4
    if-ge v9, v6, :cond_6

    aget-object v13, v4, v9

    .line 577
    aget-object v14, v13, v2

    const/4 v15, 0x1

    .line 578
    aget-object v13, v13, v15

    .line 579
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    if-nez v15, :cond_4

    .line 581
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 582
    invoke-interface {v11, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_4
    invoke-interface {v15, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    .line 590
    :cond_6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 593
    array-length v6, v8

    move v9, v2

    const/4 v13, 0x0

    :goto_5
    if-ge v9, v6, :cond_f

    aget-object v14, v8, v9

    .line 594
    aget-object v15, v14, v2

    const/16 v16, 0x1

    .line 595
    aget-object v14, v14, v16

    .line 599
    invoke-static {}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->values()[Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    move-result-object v2

    move-object/from16 v17, v0

    array-length v0, v2

    move/from16 v18, v1

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_9

    move/from16 v19, v0

    aget-object v0, v2, v1

    move-object/from16 v20, v2

    .line 600
    invoke-virtual {v0}, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v13, :cond_7

    .line 603
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 605
    :cond_7
    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v0, v16

    goto :goto_7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v19

    move-object/from16 v2, v20

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    if-nez v14, :cond_b

    move-object v14, v15

    move/from16 v0, v16

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    .line 623
    :goto_8
    new-instance v1, Landroid/icu/impl/locale/KeyTypeData$Type;

    invoke-direct {v1, v15, v14}, Landroid/icu/impl/locale/KeyTypeData$Type;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    invoke-static {v15}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 626
    invoke-static {v14}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :cond_c
    invoke-interface {v12, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_d

    .line 632
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 633
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 636
    :cond_d
    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_e

    .line 638
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 639
    invoke-static {v2}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_e
    :goto_b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_f
    move-object/from16 v17, v0

    move/from16 v18, v1

    if-eqz v13, :cond_10

    .line 646
    invoke-static {v13}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v11

    goto :goto_c

    :cond_10
    const/4 v11, 0x0

    .line 649
    :goto_c
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    invoke-direct {v0, v5, v10, v4, v11}, Landroid/icu/impl/locale/KeyTypeData$KeyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/EnumSet;)V

    .line 651
    sget-object v1, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v5}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v7, :cond_11

    .line 653
    sget-object v1, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-static {v10}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public static isDeprecated(Ljava/lang/String;)Z
    .locals 1

    .line 675
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->DEPRECATED_KEYS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDeprecated(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 679
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->DEPRECATED_KEY_TYPES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 683
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static toBcpKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 124
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 125
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    if-eqz p0, :cond_0

    .line 127
    iget-object p0, p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->bcpId:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toBcpType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 144
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 145
    iput-object v0, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 148
    iput-object v0, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 151
    :cond_1
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 154
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    if-eqz p0, :cond_6

    if-eqz p2, :cond_2

    .line 157
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 159
    :cond_2
    iget-object p2, p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/impl/locale/KeyTypeData$Type;

    if-eqz p2, :cond_3

    .line 161
    iget-object p0, p2, Landroid/icu/impl/locale/KeyTypeData$Type;->bcpId:Ljava/lang/String;

    return-object p0

    .line 163
    :cond_3
    iget-object p2, p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    if-eqz p2, :cond_6

    .line 164
    iget-object p0, p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 165
    iget-object v0, p2, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->isWellFormed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_5

    const/4 p0, 0x1

    .line 167
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 169
    :cond_5
    iget-object p0, p2, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 133
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 134
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    if-eqz p0, :cond_0

    .line 136
    iget-object p0, p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->legacyId:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toLegacyType(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/Output;Landroid/icu/util/Output;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/icu/util/Output<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 181
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 182
    iput-object v0, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 185
    iput-object v0, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 188
    :cond_1
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 189
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData;->KEYMAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;

    if-eqz p0, :cond_6

    if-eqz p2, :cond_2

    .line 194
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 196
    :cond_2
    iget-object p2, p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->typeMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/impl/locale/KeyTypeData$Type;

    if-eqz p2, :cond_3

    .line 198
    iget-object p0, p2, Landroid/icu/impl/locale/KeyTypeData$Type;->legacyId:Ljava/lang/String;

    return-object p0

    .line 200
    :cond_3
    iget-object p2, p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    if-eqz p2, :cond_6

    .line 201
    iget-object p0, p0, Landroid/icu/impl/locale/KeyTypeData$KeyData;->specialTypes:Ljava/util/EnumSet;

    invoke-virtual {p0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/impl/locale/KeyTypeData$SpecialType;

    .line 202
    iget-object v0, p2, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->isWellFormed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_5

    const/4 p0, 0x1

    .line 204
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, p3, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 206
    :cond_5
    iget-object p0, p2, Landroid/icu/impl/locale/KeyTypeData$SpecialType;->handler:Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method
