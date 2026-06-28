.class Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;
.super Ljava/lang/Object;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrencyAffixPatterns"
.end annotation


# static fields
.field private static final currencyAffixPatterns:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadLocalProperties:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/icu/impl/number/DecimalFormatProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/impl/number/Parse$AffixHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 803
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->currencyAffixPatterns:Ljava/util/concurrent/ConcurrentHashMap;

    .line 832
    new-instance v0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns$1;

    invoke-direct {v0}, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns$1;-><init>()V

    sput-object v0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->threadLocalProperties:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 2

    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->set:Ljava/util/Set;

    const/4 v0, 0x1

    .line 820
    invoke-static {p1, v0}, Landroid/icu/text/NumberFormat;->getPatternForStyle(Landroid/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 821
    invoke-direct {p0, v0}, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->addPattern(Ljava/lang/String;)V

    .line 825
    invoke-static {p1}, Landroid/icu/text/CurrencyPluralInfo;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyPluralInfo;

    move-result-object p1

    .line 826
    sget-object v0, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/StandardPlural;

    .line 827
    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-direct {p0, v1}, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->addPattern(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addPattern(Ljava/lang/String;)V
    .locals 2

    .line 841
    sget-object v0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/DecimalFormatProperties;

    .line 843
    :try_start_0
    invoke-static {p1, v0}, Landroid/icu/impl/number/PatternStringParser;->parseToExistingProperties(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :catch_0
    iget-object p1, p0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->set:Ljava/util/Set;

    invoke-static {v0}, Landroid/icu/impl/number/Parse$AffixHolder;->fromPropertiesPositivePattern(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Parse$AffixHolder;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object p0, p0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->set:Ljava/util/Set;

    invoke-static {v0}, Landroid/icu/impl/number/Parse$AffixHolder;->fromPropertiesNegativePattern(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/Parse$AffixHolder;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static addToState(Landroid/icu/util/ULocale;Landroid/icu/impl/number/Parse$ParserState;)V
    .locals 2

    .line 807
    sget-object v0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->currencyAffixPatterns:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;

    invoke-direct {v0, p0}, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;-><init>(Landroid/icu/util/ULocale;)V

    .line 812
    sget-object v1, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->currencyAffixPatterns:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    sget-object v0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->currencyAffixPatterns:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;

    .line 815
    :cond_0
    iget-object p0, p1, Landroid/icu/impl/number/Parse$ParserState;->affixHolders:Ljava/util/Set;

    iget-object p1, v0, Landroid/icu/impl/number/Parse$CurrencyAffixPatterns;->set:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
