.class public abstract Landroid/icu/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/icu/util/Freezable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Collator$KeywordsSink;,
        Landroid/icu/text/Collator$ASCII;,
        Landroid/icu/text/Collator$ServiceShim;,
        Landroid/icu/text/Collator$CollatorFactory;,
        Landroid/icu/text/Collator$ReorderCodes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/Collator;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final BASE:Ljava/lang/String; = "android/icu/impl/data/icudt60b/coll"

.field public static final CANONICAL_DECOMPOSITION:I = 0x11

.field private static final DEBUG:Z

.field public static final FULL_DECOMPOSITION:I = 0xf

.field public static final IDENTICAL:I = 0xf

.field private static final KEYWORDS:[Ljava/lang/String;

.field public static final NO_DECOMPOSITION:I = 0x10

.field public static final PRIMARY:I = 0x0

.field public static final QUATERNARY:I = 0x3

.field private static final RESOURCE:Ljava/lang/String; = "collations"

.field public static final SECONDARY:I = 0x1

.field public static final TERTIARY:I = 0x2

.field private static shim:Landroid/icu/text/Collator$ServiceShim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "collation"

    .line 911
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    const-string v0, "collator"

    .line 1420
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/text/Collator;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkNotFrozen()V
    .locals 1

    .line 324
    invoke-virtual {p0}, Landroid/icu/text/Collator;->isFrozen()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 325
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify frozen Collator"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .line 885
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_0

    .line 886
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b/coll"

    invoke-static {v1, v0}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 889
    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/Collator$ServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 2

    .line 900
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_0

    .line 901
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b/coll"

    invoke-static {v1, v0}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 904
    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/Collator$ServiceShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    .line 1095
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .line 1073
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1084
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    sget-object v1, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplayName(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1061
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    .line 1062
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    .line 1061
    invoke-virtual {v0, p0, p1}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEquivalentReorderCodes(I)[I
    .locals 1

    .line 1378
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getData()Landroid/icu/impl/coll/CollationData;

    move-result-object v0

    .line 1379
    invoke-virtual {v0, p0}, Landroid/icu/impl/coll/CollationData;->getEquivalentScripts(I)[I

    move-result-object p0

    return-object p0
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1

    const/4 v0, 0x0

    .line 1050
    invoke-static {p0, p1, v0}, Landroid/icu/text/Collator;->getFunctionalEquivalent(Ljava/lang/String;Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 7

    .line 1034
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v0, "android/icu/impl/data/icudt60b/coll"

    const-string v2, "collations"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/icu/impl/ICUResourceBundle;->getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;[ZZ)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Landroid/icu/text/Collator;
    .locals 1

    .line 453
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 3

    if-nez p0, :cond_0

    .line 795
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    .line 797
    :cond_0
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Collator$ServiceShim;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    .line 798
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 800
    instance-of v1, v0, Landroid/icu/text/RuleBasedCollator;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 799
    :goto_0
    invoke-static {p0, v0, v1}, Landroid/icu/text/Collator;->setAttributesFromKeywords(Landroid/icu/util/ULocale;Landroid/icu/text/Collator;Landroid/icu/text/RuleBasedCollator;)V

    :cond_2
    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;
    .locals 0

    .line 826
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method private static final varargs getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 633
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 634
    aget-object v1, p2, v0

    invoke-static {p1, v1}, Landroid/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal locale keyword=value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final getKeywordValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 944
    sget-object v0, Landroid/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "android/icu/impl/data/icudt60b/coll"

    const-string v0, "collations"

    .line 947
    invoke-static {p0, v0}, Landroid/icu/impl/ICUResourceBundle;->getKeywordValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 945
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid keyword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;
    .locals 0

    const-string p0, "android/icu/impl/data/icudt60b/coll"

    .line 972
    invoke-static {p0, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    .line 974
    new-instance p1, Landroid/icu/text/Collator$KeywordsSink;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/icu/text/Collator$KeywordsSink;-><init>(Landroid/icu/text/Collator$1;)V

    const-string p2, "collations"

    .line 975
    invoke-virtual {p0, p2, p1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 976
    iget-object p0, p1, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    iget-object p1, p1, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static final getKeywords()[Ljava/lang/String;
    .locals 1

    .line 934
    sget-object v0, Landroid/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    return-object v0
.end method

.method private static final getReorderCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string/jumbo v0, "space"

    const-string/jumbo v1, "punct"

    const-string/jumbo v2, "symbol"

    const-string v3, "currency"

    const-string v4, "digit"

    .line 642
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-static {p0, p1, v0}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    add-int/lit16 p0, p0, 0x1000

    return p0
.end method

.method private static getShim()Landroid/icu/text/Collator$ServiceShim;
    .locals 2

    .line 576
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "android.icu.text.CollatorServiceShim"

    .line 578
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/Collator$ServiceShim;

    sput-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 589
    sget-boolean v1, Landroid/icu/text/Collator;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 590
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    :cond_0
    new-instance v1, Landroid/icu/util/ICUException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 584
    throw v0

    .line 596
    :cond_1
    :goto_0
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    return-object v0
.end method

.method private static final getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "yes"

    .line 623
    invoke-static {p1, v0}, Landroid/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "no"

    .line 626
    invoke-static {p1, v0}, Landroid/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 629
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal locale keyword=value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
    .locals 1

    .line 860
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Collator$ServiceShim;->registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    .line 844
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/Collator$ServiceShim;->registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static setAttributesFromKeywords(Landroid/icu/util/ULocale;Landroid/icu/text/Collator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 8

    const-string v0, "colHiraganaQuaternary"

    .line 660
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "variableTop"

    .line 664
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "colStrength"

    .line 669
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "primary"

    const-string/jumbo v3, "secondary"

    const-string/jumbo v4, "tertiary"

    const-string/jumbo v5, "quaternary"

    const-string v6, "identical"

    .line 672
    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    .line 674
    :goto_0
    invoke-virtual {p1, v0}, Landroid/icu/text/Collator;->setStrength(I)V

    :cond_1
    const-string v0, "colBackwards"

    .line 676
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale keyword kb/colBackwards only settable for RuleBasedCollator"

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    .line 679
    invoke-static {v0, v1}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/icu/text/RuleBasedCollator;->setFrenchCollation(Z)V

    goto :goto_1

    .line 681
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const-string v0, "colCaseLevel"

    .line 685
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    .line 688
    invoke-static {v0, v1}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/icu/text/RuleBasedCollator;->setCaseLevel(Z)V

    goto :goto_2

    .line 690
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    const-string v0, "colCaseFirst"

    .line 694
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    if-eqz p2, :cond_8

    const-string v4, "no"

    const-string v5, "lower"

    const-string/jumbo v6, "upper"

    .line 697
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 699
    invoke-virtual {p2, v2}, Landroid/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    .line 700
    invoke-virtual {p2, v2}, Landroid/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    goto :goto_3

    :cond_6
    if-ne v0, v3, :cond_7

    .line 702
    invoke-virtual {p2, v3}, Landroid/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    goto :goto_3

    .line 704
    :cond_7
    invoke-virtual {p2, v3}, Landroid/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    goto :goto_3

    .line 707
    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword kf/colCaseFirst only settable for RuleBasedCollator"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_3
    const-string v0, "colAlternate"

    .line 711
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    if-eqz p2, :cond_b

    const-string v4, "non-ignorable"

    const-string/jumbo v5, "shifted"

    .line 714
    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 715
    invoke-static {v0, v1, v4}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    move v3, v2

    .line 714
    :goto_4
    invoke-virtual {p2, v3}, Landroid/icu/text/RuleBasedCollator;->setAlternateHandlingShifted(Z)V

    goto :goto_5

    .line 717
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword ka/colAlternate only settable for RuleBasedCollator"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_5
    const-string v0, "colNormalization"

    .line 721
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 723
    invoke-static {v0, v1}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x11

    goto :goto_6

    :cond_d
    const/16 v0, 0x10

    :goto_6
    invoke-virtual {p1, v0}, Landroid/icu/text/Collator;->setDecomposition(I)V

    :cond_e
    const-string v0, "colNumeric"

    .line 726
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    if-eqz p2, :cond_f

    .line 729
    invoke-static {v0, v1}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/icu/text/RuleBasedCollator;->setNumericCollation(Z)V

    goto :goto_7

    .line 731
    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword kn/colNumeric only settable for RuleBasedCollator"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_7
    const-string p2, "colReorder"

    .line 735
    invoke-virtual {p0, p2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0xb7

    new-array v1, v1, [I

    move v3, v2

    move v4, v3

    .line 741
    :goto_8
    array-length v5, v1

    if-eq v3, v5, :cond_15

    move v5, v4

    .line 746
    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_11

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-eq v6, v7, :cond_11

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 747
    :cond_11
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 749
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_12

    const/16 v6, 0x100a

    .line 751
    invoke-static {v6, v4}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v4

    goto :goto_a

    .line 753
    :cond_12
    invoke-static {p2, v4}, Landroid/icu/text/Collator;->getReorderCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    :goto_a
    add-int/lit8 v6, v3, 0x1

    .line 755
    aput v4, v1, v3

    .line 756
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v5, v3, :cond_14

    if-eqz v6, :cond_13

    .line 762
    new-array p2, v6, [I

    .line 763
    invoke-static {v1, v2, p2, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 764
    invoke-virtual {p1, p2}, Landroid/icu/text/Collator;->setReorderCodes([I)V

    goto :goto_b

    .line 760
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no script codes for colReorder locale keyword"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    add-int/lit8 v4, v5, 0x1

    move v3, v6

    goto :goto_8

    .line 742
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "too many script codes for colReorder locale keyword: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    :goto_b
    const-string p2, "kv"

    .line 766
    invoke-virtual {p0, p2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 768
    invoke-static {p2, p0}, Landroid/icu/text/Collator;->getReorderCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/icu/text/Collator;->setMaxVariable(I)Landroid/icu/text/Collator;

    :cond_17
    return-void

    .line 666
    :cond_18
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword vt/variableTop"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 662
    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "locale keyword kh/colHiraganaQuaternary"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final unregister(Ljava/lang/Object;)Z
    .locals 1

    .line 870
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 873
    :cond_0
    invoke-virtual {v0, p0}, Landroid/icu/text/Collator$ServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 462
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public cloneAsThawed()Landroid/icu/text/Collator;
    .locals 1

    .line 1410
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Needs to be implemented by the subclass."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 135
    invoke-virtual {p0}, Landroid/icu/text/Collator;->cloneAsThawed()Landroid/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1199
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator;->doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1212
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1153
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public freeze()Landroid/icu/text/Collator;
    .locals 1

    .line 1402
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Needs to be implemented by the subclass."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 135
    invoke-virtual {p0}, Landroid/icu/text/Collator;->freeze()Landroid/icu/text/Collator;

    move-result-object p0

    return-object p0
.end method

.method public abstract getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;
.end method

.method public getDecomposition()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 0

    .line 1452
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public getMaxVariable()I
    .locals 0

    const/16 p0, 0x1001

    return p0
.end method

.method public abstract getRawCollationKey(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)Landroid/icu/text/RawCollationKey;
.end method

.method public getReorderCodes()[I
    .locals 1

    .line 1361
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Needs to be implemented by the subclass."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStrength()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getTailoredSet()Landroid/icu/text/UnicodeSet;
    .locals 2

    .line 1165
    new-instance p0, Landroid/icu/text/UnicodeSet;

    const/4 v0, 0x0

    const v1, 0x10ffff

    invoke-direct {p0, v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    return-object p0
.end method

.method public abstract getUCAVersion()Landroid/icu/util/VersionInfo;
.end method

.method public abstract getVariableTop()I
.end method

.method public abstract getVersion()Landroid/icu/util/VersionInfo;
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFrozen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setDecomposition(I)V
    .locals 0

    .line 393
    invoke-direct {p0}, Landroid/icu/text/Collator;->checkNotFrozen()V

    return-void
.end method

.method setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 0

    return-void
.end method

.method public setMaxVariable(I)Landroid/icu/text/Collator;
    .locals 0

    .line 1269
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Needs to be implemented by the subclass."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs setReorderCodes([I)V
    .locals 0

    .line 436
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Needs to be implemented by the subclass."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setStrength(I)V
    .locals 0

    .line 348
    invoke-direct {p0}, Landroid/icu/text/Collator;->checkNotFrozen()V

    return-void
.end method

.method public setStrength2(I)Landroid/icu/text/Collator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    invoke-virtual {p0, p1}, Landroid/icu/text/Collator;->setStrength(I)V

    return-object p0
.end method

.method public abstract setVariableTop(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setVariableTop(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
