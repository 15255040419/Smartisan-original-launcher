.class public abstract Landroid/icu/text/Transliterator;
.super Ljava/lang/Object;
.source "Transliterator.java"

# interfaces
.implements Landroid/icu/text/StringTransform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Transliterator$Factory;,
        Landroid/icu/text/Transliterator$Position;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final FORWARD:I = 0x0

.field static final ID_DELIM:C = ';'

.field static final ID_SEP:C = '-'

.field private static final RB_DISPLAY_NAME_PATTERN:Ljava/lang/String; = "TransliteratorNamePattern"

.field private static final RB_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "%Translit%%"

.field private static final RB_RULE_BASED_IDS:Ljava/lang/String; = "RuleBasedTransliteratorIDs"

.field private static final RB_SCRIPT_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "%Translit%"

.field public static final REVERSE:I = 0x1

.field private static final ROOT:Ljava/lang/String; = "root"

.field static final VARIANT_SEP:C = '/'

.field private static displayNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static registry:Landroid/icu/text/TransliteratorRegistry;


# instance fields
.field private ID:Ljava/lang/String;

.field private filter:Landroid/icu/text/UnicodeSet;

.field private maximumContextLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1828
    new-instance v0, Landroid/icu/text/TransliteratorRegistry;

    invoke-direct {v0}, Landroid/icu/text/TransliteratorRegistry;-><init>()V

    sput-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    .line 1831
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    const-string v0, "android/icu/impl/data/icudt60b/translit"

    const-string/jumbo v1, "root"

    .line 1867
    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "RuleBasedTransliteratorIDs"

    .line 1868
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 1871
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    .line 1873
    invoke-virtual {v0, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 1874
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-t-"

    .line 1875
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    goto/16 :goto_3

    .line 1878
    :cond_0
    invoke-virtual {v4, v2}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 1879
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    .line 1880
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "internal"

    const/4 v9, 0x1

    if-nez v7, :cond_3

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v7, "alias"

    .line 1900
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1902
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    .line 1903
    sget-object v6, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v6, v5, v4, v9}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 1906
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    const-string/jumbo v7, "resource"

    .line 1883
    invoke-virtual {v4, v7}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "direction"

    .line 1885
    invoke-virtual {v4, v10}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1886
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x46

    if-eq v10, v11, :cond_5

    const/16 v11, 0x52

    if-ne v10, v11, :cond_4

    move v4, v9

    goto :goto_2

    .line 1894
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v4, v2

    .line 1896
    :goto_2
    sget-object v10, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    .line 1899
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v9

    .line 1896
    invoke-virtual {v10, v5, v7, v4, v6}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    const-string v0, "Null"

    .line 1910
    invoke-static {v0, v0, v2}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1913
    const-class v0, Landroid/icu/text/NullTransliterator;

    const/4 v1, 0x0

    const-string v2, "Any-Null"

    invoke-static {v2, v0, v1}, Landroid/icu/text/Transliterator;->registerClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    .line 1915
    invoke-static {}, Landroid/icu/text/RemoveTransliterator;->register()V

    .line 1916
    invoke-static {}, Landroid/icu/text/EscapeTransliterator;->register()V

    .line 1917
    invoke-static {}, Landroid/icu/text/UnescapeTransliterator;->register()V

    .line 1918
    invoke-static {}, Landroid/icu/text/LowercaseTransliterator;->register()V

    .line 1919
    invoke-static {}, Landroid/icu/text/UppercaseTransliterator;->register()V

    .line 1920
    invoke-static {}, Landroid/icu/text/TitlecaseTransliterator;->register()V

    .line 1921
    invoke-static {}, Landroid/icu/text/CaseFoldTransliterator;->register()V

    .line 1922
    invoke-static {}, Landroid/icu/text/UnicodeNameTransliterator;->register()V

    .line 1923
    invoke-static {}, Landroid/icu/text/NameUnicodeTransliterator;->register()V

    .line 1924
    invoke-static {}, Landroid/icu/text/NormalizationTransliterator;->register()V

    .line 1925
    invoke-static {}, Landroid/icu/text/BreakTransliterator;->register()V

    .line 1926
    invoke-static {}, Landroid/icu/text/AnyTransliterator;->register()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V
    .locals 1

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 422
    iput v0, p0, Landroid/icu/text/Transliterator;->maximumContextLength:I

    if-eqz p1, :cond_0

    .line 492
    iput-object p1, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    .line 493
    invoke-virtual {p0, p2}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    return-void

    .line 490
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static final createFromRules(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/text/Transliterator;
    .locals 8

    .line 1379
    new-instance v0, Landroid/icu/text/TransliteratorParser;

    invoke-direct {v0}, Landroid/icu/text/TransliteratorParser;-><init>()V

    .line 1380
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V

    .line 1383
    iget-object p1, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 1384
    new-instance p0, Landroid/icu/text/NullTransliterator;

    invoke-direct {p0}, Landroid/icu/text/NullTransliterator;-><init>()V

    move-object p1, p0

    goto/16 :goto_2

    .line 1386
    :cond_0
    iget-object p1, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-object p1, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 1387
    new-instance p1, Landroid/icu/text/RuleBasedTransliterator;

    iget-object v1, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-direct {p1, p0, p2, v0}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    goto/16 :goto_2

    .line 1389
    :cond_1
    iget-object p1, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_3

    iget-object p1, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 1394
    iget-object p1, v0, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz p1, :cond_2

    .line 1395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, p2}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    .line 1396
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1395
    invoke-static {p1}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object p1

    goto :goto_0

    .line 1398
    :cond_2
    iget-object p1, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_8

    .line 1402
    invoke-virtual {p1, p0}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1406
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    iget-object v2, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v1

    :goto_1
    if-ge p2, v2, :cond_6

    .line 1411
    iget-object v4, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_4

    .line 1412
    iget-object v4, v0, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1413
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 1414
    invoke-static {v4}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v5

    .line 1415
    instance-of v5, v5, Landroid/icu/text/NullTransliterator;

    if-nez v5, :cond_4

    .line 1416
    invoke-static {v4}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1419
    :cond_4
    iget-object v4, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_5

    .line 1420
    iget-object v4, v0, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 1421
    new-instance v5, Landroid/icu/text/RuleBasedTransliterator;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%Pass"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v5, v3, v4, v6}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v7

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1425
    :cond_6
    new-instance p2, Landroid/icu/text/CompoundTransliterator;

    sub-int/2addr v3, v1

    invoke-direct {p2, p1, v3}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    .line 1426
    invoke-virtual {p2, p0}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    .line 1427
    iget-object p0, v0, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz p0, :cond_7

    .line 1428
    iget-object p0, v0, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p2, p0}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    :cond_7
    move-object p1, p2

    :cond_8
    :goto_2
    return-object p1
.end method

.method private filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 784
    iget-object v3, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    if-nez v3, :cond_0

    if-nez p4, :cond_0

    .line 785
    invoke-virtual/range {p0 .. p3}, Landroid/icu/text/Transliterator;->handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    return-void

    .line 813
    :cond_0
    iget v3, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 832
    :cond_1
    iget-object v4, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    if-eqz v4, :cond_3

    .line 838
    :goto_0
    iget v4, v2, Landroid/icu/text/Transliterator$Position;->start:I

    if-ge v4, v3, :cond_2

    iget-object v4, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    iget v5, v2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 839
    invoke-interface {v1, v5}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 840
    iget v4, v2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/icu/text/Transliterator$Position;->start:I

    goto :goto_0

    .line 844
    :cond_2
    iget v4, v2, Landroid/icu/text/Transliterator$Position;->start:I

    iput v4, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 845
    :goto_1
    iget v4, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ge v4, v3, :cond_3

    iget-object v4, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    iget v5, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 846
    invoke-interface {v1, v5}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 847
    iget v4, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-static {v5}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    goto :goto_1

    .line 854
    :cond_3
    iget v4, v2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v5, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne v4, v5, :cond_4

    goto/16 :goto_7

    .line 863
    :cond_4
    iget v4, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ge v4, v3, :cond_5

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    move/from16 v4, p3

    :goto_2
    if-eqz p4, :cond_8

    if-eqz v4, :cond_8

    .line 903
    iget v6, v2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 904
    iget v7, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v8, v7, v6

    .line 908
    invoke-interface/range {p1 .. p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v9

    .line 909
    invoke-interface {v1, v6, v7, v9}, Landroid/icu/text/Replaceable;->copy(III)V

    .line 921
    iget v10, v2, Landroid/icu/text/Transliterator$Position;->start:I

    move v13, v6

    move v11, v9

    const/4 v6, 0x0

    const/4 v12, 0x0

    .line 936
    :goto_3
    invoke-interface {v1, v10}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v14

    invoke-static {v14}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v14

    add-int/2addr v10, v14

    const-string v15, ""

    if-le v10, v7, :cond_6

    add-int/2addr v9, v12

    add-int/2addr v3, v12

    add-int/2addr v8, v9

    .line 1019
    invoke-interface {v1, v9, v8, v15}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 1022
    iput v13, v2, Landroid/icu/text/Transliterator$Position;->start:I

    goto :goto_6

    :cond_6
    add-int/2addr v6, v14

    .line 943
    iput v10, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    const/4 v14, 0x1

    .line 955
    invoke-virtual {v0, v1, v2, v14}, Landroid/icu/text/Transliterator;->handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    .line 962
    iget v14, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v14, v10

    .line 967
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->start:I

    move/from16 v16, v8

    iget v8, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-eq v5, v8, :cond_7

    add-int v5, v11, v14

    .line 970
    iget v8, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v8, v13

    sub-int/2addr v5, v8

    .line 973
    iget v8, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-interface {v1, v13, v8, v15}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    add-int v8, v5, v6

    .line 976
    invoke-interface {v1, v5, v8, v13}, Landroid/icu/text/Replaceable;->copy(III)V

    .line 979
    iput v13, v2, Landroid/icu/text/Transliterator$Position;->start:I

    .line 980
    iput v10, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 981
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    sub-int/2addr v5, v14

    iput v5, v2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    goto :goto_4

    .line 993
    :cond_7
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->start:I

    add-int/2addr v6, v14

    add-int/2addr v11, v6

    add-int/2addr v7, v14

    add-int/2addr v12, v14

    move v10, v5

    move v13, v10

    const/4 v6, 0x0

    :goto_4
    move/from16 v8, v16

    goto :goto_3

    .line 1033
    :cond_8
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 1034
    invoke-virtual {v0, v1, v2, v4}, Landroid/icu/text/Transliterator;->handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    .line 1035
    iget v6, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr v6, v5

    if-nez v4, :cond_a

    .line 1049
    iget v5, v2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v7, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-ne v5, v7, :cond_9

    goto :goto_5

    .line 1050
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: Incomplete non-incremental transliteration by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_5
    add-int/2addr v3, v6

    .line 1063
    :goto_6
    iget-object v5, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    if-eqz v5, :cond_b

    if-eqz v4, :cond_1

    .line 1073
    :cond_b
    :goto_7
    iput v3, v2, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void
.end method

.method public static final getAvailableIDs()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1794
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry;->getAvailableIDs()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableSources()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1804
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry;->getAvailableSources()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1814
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, p0}, Landroid/icu/text/TransliteratorRegistry;->getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public static final getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1823
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/TransliteratorRegistry;->getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method static getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 2

    .line 1355
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1356
    sget-object v1, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v1, p0, v0}, Landroid/icu/text/TransliteratorRegistry;->get(Ljava/lang/String;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;

    move-result-object p0

    .line 1357
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1360
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1363
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    :cond_1
    return-object p0
.end method

.method public static final getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1149
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 7

    const-string v0, "android/icu/impl/data/icudt60b/translit"

    .line 1201
    invoke-static {v0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    .line 1204
    invoke-static {p0}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    .line 1210
    aget-object v4, p0, v3

    const/16 v5, 0x2f

    if-eqz v4, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v0, p0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1215
    :cond_1
    sget-object v4, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    new-instance v6, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v6, v0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    return-object v4

    .line 1223
    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%Translit%%"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1229
    :catch_0
    :try_start_1
    new-instance v0, Ljava/text/MessageFormat;

    const-string v4, "TransliteratorNamePattern"

    .line 1230
    invoke-virtual {p1, v4}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1232
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    aget-object v1, p0, v1

    aput-object v1, v4, v2

    aget-object v1, p0, v2

    aput-object v1, v4, v3
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    if-gt v2, v3, :cond_3

    .line 1237
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%Translit%"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v4, v2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1243
    :cond_3
    :try_start_3
    aget-object p1, p0, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 1244
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1245
    :cond_4
    invoke-virtual {v0, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return-object p0

    .line 1251
    :catch_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static getDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1171
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/icu/text/Transliterator;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 1

    const/4 v0, 0x0

    .line 1295
    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;
    .locals 4

    .line 1314
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/icu/text/UnicodeSet;

    .line 1317
    invoke-static {p0, p1, v0, v1, v3}, Landroid/icu/text/TransliteratorIDParser;->parseCompoundID(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;[Landroid/icu/text/UnicodeSet;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1321
    invoke-static {v1}, Landroid/icu/text/TransliteratorIDParser;->instantiateList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 1325
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    if-gt p1, v2, :cond_1

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 1334
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/Transliterator;

    goto :goto_1

    .line 1331
    :cond_1
    :goto_0
    new-instance p1, Landroid/icu/text/CompoundTransliterator;

    invoke-direct {p1, p0}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;)V

    move-object p0, p1

    .line 1337
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    .line 1338
    aget-object p1, v3, v1

    if-eqz p1, :cond_2

    .line 1339
    aget-object p1, v3, v1

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    :cond_2
    return-object p0

    .line 1318
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static registerAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1729
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static registerAny()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1936
    invoke-static {}, Landroid/icu/text/AnyTransliterator;->register()V

    return-void
.end method

.method public static registerClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/icu/text/Transliterator;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1669
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/Class;Z)V

    if-eqz p2, :cond_0

    .line 1671
    sget-object p1, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V
    .locals 2

    .line 1687
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;Z)V

    return-void
.end method

.method public static registerInstance(Landroid/icu/text/Transliterator;)V
    .locals 3

    .line 1700
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Landroid/icu/text/Transliterator;Z)V

    return-void
.end method

.method static registerInstance(Landroid/icu/text/Transliterator;Z)V
    .locals 2

    .line 1713
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Landroid/icu/text/Transliterator;Z)V

    return-void
.end method

.method static registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1767
    invoke-static {p0, p1, p2}, Landroid/icu/text/TransliteratorIDParser;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static unregister(Ljava/lang/String;)V
    .locals 2

    .line 1778
    sget-object v0, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, p0}, Landroid/icu/text/TransliteratorRegistry;->remove(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1597
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p1

    .line 1598
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->handleGetSourceSet()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p1

    .line 1600
    invoke-virtual {p2, p1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 1602
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1603
    invoke-virtual {p0, p2}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1604
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1605
    invoke-virtual {p3, v0}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final baseToRules(Z)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x3b

    const-string v1, "::"

    if-eqz p1, :cond_2

    .line 1459
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1460
    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    .line 1461
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1462
    invoke-static {p0, v3}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v4

    .line 1463
    invoke-static {p1, v4}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1464
    invoke-static {p1, v4}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 1466
    :cond_0
    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 1468
    :cond_1
    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1469
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1470
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1472
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1094
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    return-void
.end method

.method public final finishTransliteration(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)V
    .locals 2

    .line 666
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/icu/text/Transliterator$Position;->validate(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 667
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    return-void
.end method

.method public getElements()[Landroid/icu/text/Transliterator;
    .locals 3

    .line 1490
    instance-of v0, p0, Landroid/icu/text/CompoundTransliterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1491
    check-cast p0, Landroid/icu/text/CompoundTransliterator;

    .line 1492
    invoke-virtual {p0}, Landroid/icu/text/CompoundTransliterator;->getCount()I

    move-result v0

    new-array v0, v0, [Landroid/icu/text/Transliterator;

    .line 1493
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1494
    invoke-virtual {p0, v1}, Landroid/icu/text/CompoundTransliterator;->getTransliterator(I)Landroid/icu/text/Transliterator;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/icu/text/Transliterator;

    aput-object p0, v0, v1

    :cond_1
    return-object v0
.end method

.method public final getFilter()Landroid/icu/text/UnicodeFilter;
    .locals 0

    .line 1259
    iget-object p0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    return-object p0
.end method

.method public getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1620
    iget-object v0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    if-nez v0, :cond_0

    return-object p1

    .line 1623
    :cond_0
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 1628
    :try_start_0
    iget-object p0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1630
    :catch_0
    iget-object p0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    new-instance p1, Landroid/icu/text/UnicodeSet;

    invoke-direct {p1}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSet;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    move-object p0, p1

    .line 1632
    :goto_0
    invoke-virtual {v0, p0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method

.method public final getID()Ljava/lang/String;
    .locals 0

    .line 1131
    iget-object p0, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    return-object p0
.end method

.method public final getInverse()Landroid/icu/text/Transliterator;
    .locals 1

    .line 1653
    iget-object p0, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object p0

    return-object p0
.end method

.method public final getMaximumContextLength()I
    .locals 0

    .line 1109
    iget p0, p0, Landroid/icu/text/Transliterator;->maximumContextLength:I

    return p0
.end method

.method public final getSourceSet()Landroid/icu/text/UnicodeSet;
    .locals 3

    .line 1515
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 1516
    sget-object v1, Landroid/icu/text/UnicodeSet;->ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, v1, v0, v2}, Landroid/icu/text/Transliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public getTargetSet()Landroid/icu/text/UnicodeSet;
    .locals 3

    .line 1557
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 1558
    sget-object v1, Landroid/icu/text/UnicodeSet;->ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Landroid/icu/text/Transliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method protected handleGetSourceSet()Landroid/icu/text/UnicodeSet;
    .locals 0

    .line 1533
    new-instance p0, Landroid/icu/text/UnicodeSet;

    invoke-direct {p0}, Landroid/icu/text/UnicodeSet;-><init>()V

    return-object p0
.end method

.method protected abstract handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
.end method

.method public setFilter(Landroid/icu/text/UnicodeFilter;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1272
    iput-object p1, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    goto :goto_0

    .line 1276
    :cond_0
    :try_start_0
    new-instance v0, Landroid/icu/text/UnicodeSet;

    move-object v1, p1

    check-cast v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1278
    :catch_0
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    .line 1279
    iget-object v0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeFilter;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    .line 1280
    iget-object p0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    :goto_0
    return-void
.end method

.method protected final setID(Ljava/lang/String;)V
    .locals 0

    .line 1139
    iput-object p1, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    return-void
.end method

.method protected setMaximumContextLength(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1120
    iput p1, p0, Landroid/icu/text/Transliterator;->maximumContextLength:I

    return-void

    .line 1118
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid context length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toRules(Z)Ljava/lang/String;
    .locals 0

    .line 1442
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->baseToRules(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 228
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1962
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;II)I
    .locals 1

    if-ltz p2, :cond_1

    if-lt p3, p2, :cond_1

    .line 513
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-ge v0, p3, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    new-instance v0, Landroid/icu/text/Transliterator$Position;

    invoke-direct {v0, p2, p3, p2}, Landroid/icu/text/Transliterator$Position;-><init>(III)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 518
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    .line 519
    iget p0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 537
    new-instance v0, Landroid/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Landroid/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;)V

    .line 539
    invoke-virtual {v0}, Landroid/icu/text/ReplaceableString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;)V
    .locals 2

    .line 527
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;II)I

    return-void
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)V
    .locals 1

    const/4 v0, 0x0

    .line 651
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Ljava/lang/String;)V

    return-void
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;I)V
    .locals 0

    .line 636
    invoke-static {p3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Ljava/lang/String;)V

    return-void
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Ljava/lang/String;)V
    .locals 2

    .line 591
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/icu/text/Transliterator$Position;->validate(I)V

    if-eqz p3, :cond_0

    .line 595
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-interface {p1, v0, v1, p3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 596
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    .line 597
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr v0, p3

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    .line 600
    :cond_0
    iget p3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    const/4 v0, 0x1

    if-lez p3, :cond_1

    iget p3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr p3, v0

    .line 601
    invoke-interface {p1, p3}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result p3

    invoke-static {p3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 609
    :cond_1
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    return-void
.end method
