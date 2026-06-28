.class Landroid/icu/text/TransliteratorRegistry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TransliteratorRegistry$IDEnumeration;,
        Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;,
        Landroid/icu/text/TransliteratorRegistry$AliasEntry;,
        Landroid/icu/text/TransliteratorRegistry$LocaleEntry;,
        Landroid/icu/text/TransliteratorRegistry$ResourceEntry;,
        Landroid/icu/text/TransliteratorRegistry$Spec;
    }
.end annotation


# static fields
.field private static final ANY:Ljava/lang/String; = "Any"

.field private static final DEBUG:Z = false

.field private static final LOCALE_SEP:C = '_'

.field private static final NO_VARIANT:Ljava/lang/String; = ""


# instance fields
.field private availableIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private specDAG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/util/Map<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/util/List<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    return-void
.end method

.method private find(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3

    .line 737
    invoke-static {p1}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 738
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-direct {p0, v0, v1, p1}, Landroid/icu/text/TransliteratorRegistry;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1

    .line 766
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$Spec;

    invoke-direct {v0, p1}, Landroid/icu/text/TransliteratorRegistry$Spec;-><init>(Ljava/lang/String;)V

    .line 767
    new-instance p1, Landroid/icu/text/TransliteratorRegistry$Spec;

    invoke-direct {p1, p2}, Landroid/icu/text/TransliteratorRegistry$Spec;-><init>(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    .line 773
    invoke-direct {p0, v0, p1, p3}, Landroid/icu/text/TransliteratorRegistry;->findInDynamicStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 779
    :cond_0
    invoke-direct {p0, v0, p1, p3}, Landroid/icu/text/TransliteratorRegistry;->findInStaticStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    .line 786
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry$Spec;->reset()V

    :goto_1
    const-string p2, ""

    .line 789
    invoke-direct {p0, v0, p1, p2}, Landroid/icu/text/TransliteratorRegistry;->findInDynamicStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    return-object p3

    .line 795
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Landroid/icu/text/TransliteratorRegistry;->findInStaticStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    return-object p2

    .line 799
    :cond_3
    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry$Spec;->hasFallback()Z

    move-result p2

    if-nez p2, :cond_5

    .line 804
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->hasFallback()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 807
    :cond_4
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->next()Ljava/lang/String;

    goto :goto_0

    .line 802
    :cond_5
    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry$Spec;->next()Ljava/lang/String;

    goto :goto_1
.end method

.method private findInBundle(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;
    .locals 7

    .line 666
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->getBundle()Ljava/util/ResourceBundle;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_2

    if-nez p4, :cond_1

    const-string v3, "TransliterateTo"

    goto :goto_1

    :cond_1
    const-string v3, "TransliterateFrom"

    .line 681
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v3, "Transliterate"

    .line 684
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    :goto_2
    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 697
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v0

    .line 698
    :goto_3
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 699
    aget-object v4, v2, v3

    invoke-virtual {v4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    :cond_4
    move v3, v0

    .line 705
    :cond_5
    :goto_4
    array-length v4, v2

    if-ge v3, v4, :cond_7

    if-nez v1, :cond_6

    move v4, v0

    goto :goto_5

    :cond_6
    move v4, p4

    :goto_5
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 718
    new-instance v6, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v6, v2, v4}, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;-><init>(Ljava/lang/String;I)V

    aput-object v6, v5, v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-object p1
.end method

.method private findInDynamicStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 0

    .line 606
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 613
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    new-instance p2, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {p2, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method private findInStaticStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    .line 636
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->isLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 637
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/TransliteratorRegistry;->findInBundle(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 638
    :cond_0
    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->isLocale()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 639
    invoke-direct {p0, p2, p1, p3, v0}, Landroid/icu/text/TransliteratorRegistry;->findInBundle(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 645
    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->getTop()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->getTop()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p3

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_2
    return-object v0
.end method

.method private instantiateEntry(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;
    .locals 4

    :goto_0
    const/4 p0, 0x0

    .line 838
    aget-object v0, p2, p0

    .line 840
    instance-of v1, v0, Landroid/icu/text/RuleBasedTransliterator$Data;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 841
    check-cast v0, Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 842
    new-instance p0, Landroid/icu/text/RuleBasedTransliterator;

    invoke-direct {p0, p1, v0, v2}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    return-object p0

    .line 843
    :cond_0
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 845
    :try_start_0
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/Transliterator;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2

    .line 849
    :cond_1
    instance-of v1, v0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    if-eqz v1, :cond_2

    .line 850
    check-cast v0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    iget-object p0, v0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;->alias:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v2

    .line 852
    :cond_2
    instance-of v1, v0, Landroid/icu/text/Transliterator$Factory;

    if-eqz v1, :cond_3

    .line 853
    check-cast v0, Landroid/icu/text/Transliterator$Factory;

    invoke-interface {v0, p1}, Landroid/icu/text/Transliterator$Factory;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object p0

    return-object p0

    .line 854
    :cond_3
    instance-of v1, v0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    if-eqz v1, :cond_4

    .line 855
    check-cast v0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->getInstance()Landroid/icu/text/Transliterator;

    move-result-object p0

    return-object p0

    .line 856
    :cond_4
    instance-of v1, v0, Landroid/icu/text/AnyTransliterator;

    if-eqz v1, :cond_5

    .line 857
    check-cast v0, Landroid/icu/text/AnyTransliterator;

    .line 858
    invoke-virtual {v0}, Landroid/icu/text/AnyTransliterator;->safeClone()Landroid/icu/text/Transliterator;

    move-result-object p0

    return-object p0

    .line 859
    :cond_5
    instance-of v1, v0, Landroid/icu/text/RuleBasedTransliterator;

    if-eqz v1, :cond_6

    .line 860
    check-cast v0, Landroid/icu/text/RuleBasedTransliterator;

    .line 861
    invoke-virtual {v0}, Landroid/icu/text/RuleBasedTransliterator;->safeClone()Landroid/icu/text/Transliterator;

    move-result-object p0

    return-object p0

    .line 862
    :cond_6
    instance-of v1, v0, Landroid/icu/text/CompoundTransliterator;

    if-eqz v1, :cond_7

    .line 863
    check-cast v0, Landroid/icu/text/CompoundTransliterator;

    .line 864
    invoke-virtual {v0}, Landroid/icu/text/CompoundTransliterator;->safeClone()Landroid/icu/text/Transliterator;

    move-result-object p0

    return-object p0

    .line 865
    :cond_7
    instance-of v1, v0, Landroid/icu/text/Transliterator;

    if-eqz v1, :cond_8

    .line 866
    check-cast v0, Landroid/icu/text/Transliterator;

    return-object v0

    .line 875
    :cond_8
    new-instance v1, Landroid/icu/text/TransliteratorParser;

    invoke-direct {v1}, Landroid/icu/text/TransliteratorParser;-><init>()V

    .line 879
    :try_start_1
    move-object v2, v0

    check-cast v2, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;

    .line 880
    iget-object v3, v2, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resource:Ljava/lang/String;

    iget v2, v2, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->direction:I

    invoke-virtual {v1, v3, v2}, Landroid/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 885
    :catch_1
    check-cast v0, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;

    .line 886
    iget-object v2, v0, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;->rule:Ljava/lang/String;

    iget v0, v0, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;->direction:I

    invoke-virtual {v1, v2, v0}, Landroid/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V

    .line 894
    :goto_1
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 897
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    const-string v1, "Any-Null"

    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    aput-object v0, p2, p0

    goto/16 :goto_0

    .line 899
    :cond_9
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 902
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, p0

    goto/16 :goto_0

    .line 904
    :cond_a
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_c

    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 909
    iget-object v0, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_b

    .line 910
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, p0}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    .line 911
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    aput-object v0, p2, p0

    goto/16 :goto_0

    .line 913
    :cond_b
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    iget-object v1, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    aput-object v0, p2, p0

    goto/16 :goto_0

    .line 917
    :cond_c
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    iget-object v2, v1, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    iget-object v3, v1, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    iget-object v1, v1, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p1, v2, v3, v1}, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/icu/text/UnicodeSet;)V

    aput-object v0, p2, p0

    goto/16 :goto_0
.end method

.method private registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 14

    .line 495
    invoke-static {p1}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 497
    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    const/4 v5, 0x2

    aget-object v6, v0, v5

    invoke-static {v2, v4, v6}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 498
    aget-object v9, v0, v1

    aget-object v10, v0, v3

    aget-object v11, v0, v5

    move-object v7, p0

    move-object/from16 v12, p2

    move/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Any"

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 485
    :goto_0
    invoke-static {p1, p2, p3}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 486
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2

    .line 511
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 515
    instance-of p1, p5, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 516
    check-cast p5, [Ljava/lang/Object;

    move-object p1, p5

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p5, p1, v1

    .line 521
    :goto_0
    iget-object p5, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    invoke-interface {p5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_1

    .line 523
    invoke-direct {p0, p2, p3, p4}, Landroid/icu/text/TransliteratorRegistry;->registerSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object p1, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 525
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 528
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Landroid/icu/text/TransliteratorRegistry;->removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private registerSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 544
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 545
    new-instance p1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {p1, p2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 546
    new-instance p2, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {p2, p3}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 549
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 550
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    .line 554
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_1
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 561
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 562
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 564
    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 577
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 578
    new-instance p1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {p1, p2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 579
    new-instance p2, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {p2, p3}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 580
    iget-object p3, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-nez p3, :cond_0

    return-void

    .line 584
    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    return-void

    .line 588
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 589
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    .line 590
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 592
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;
    .locals 1

    .line 312
    invoke-direct {p0, p1}, Landroid/icu/text/TransliteratorRegistry;->find(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 314
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/TransliteratorRegistry;->instantiateEntry(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getAvailableIDs()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getAvailableSources()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 431
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;
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

    .line 441
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 442
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    .line 444
    new-instance p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object p0

    .line 446
    :cond_0
    new-instance p1, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object p1
.end method

.method public getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
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

    .line 456
    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 457
    new-instance p1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {p1, p2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 458
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const/4 p2, 0x0

    if-nez p0, :cond_0

    .line 460
    new-instance p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-direct {p0, p2}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object p0

    .line 462
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    .line 464
    new-instance p0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-direct {p0, p2}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object p0

    .line 466
    :cond_1
    new-instance p1, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object p1
.end method

.method public put(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;Z)V
    .locals 0

    .line 336
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/icu/text/Transliterator;Z)V
    .locals 0

    .line 370
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/icu/text/Transliterator;",
            ">;Z)V"
        }
    .end annotation

    .line 325
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .line 348
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;

    invoke-direct {v0, p2, p3}, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p4}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 359
    new-instance v0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    invoke-direct {v0, p2}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 6

    .line 379
    invoke-static {p1}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 381
    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object v3, p1, v2

    const/4 v4, 0x2

    aget-object v5, p1, v4

    invoke-static {v1, v3, v5}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    iget-object v3, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    new-instance v5, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v5, v1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    aget-object v0, p1, v0

    aget-object v2, p1, v2

    aget-object p1, p1, v4

    invoke-direct {p0, v0, v2, p1}, Landroid/icu/text/TransliteratorRegistry;->removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object p0, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    new-instance p1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {p1, v1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
