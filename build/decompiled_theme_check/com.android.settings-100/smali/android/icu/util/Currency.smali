.class public Landroid/icu/util/Currency;
.super Landroid/icu/util/MeasureUnit;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/Currency$EquivalenceRelation;,
        Landroid/icu/util/Currency$CurrencyNameResultHandler;,
        Landroid/icu/util/Currency$CurrencyStringInfo;,
        Landroid/icu/util/Currency$ServiceShim;,
        Landroid/icu/util/Currency$CurrencyUsage;
    }
.end annotation


# static fields
.field private static ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static ALL_TENDER_CODES:Ljava/lang/ref/SoftReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/List<",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final EQUIVALENT_CURRENCY_SYMBOLS:Landroid/icu/util/Currency$EquivalenceRelation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/util/Currency$EquivalenceRelation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EUR_STR:Ljava/lang/String; = "EUR"

.field public static final LONG_NAME:I = 0x1

.field public static final NARROW_SYMBOL_NAME:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PLURAL_LONG_NAME:I = 0x2

.field private static final POW10:[I

.field public static final SYMBOL_NAME:I = 0x0

.field private static final UND:Landroid/icu/util/ULocale;

.field private static final regionCurrencyCache:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Currency;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x510bc147b5e8c814L

.field private static shim:Landroid/icu/util/Currency$ServiceShim;


# instance fields
.field private final isoCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "currency"

    .line 63
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/util/Currency;->DEBUG:Z

    .line 66
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/util/Currency;->CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache;

    .line 103
    new-instance v0, Landroid/icu/util/Currency$EquivalenceRelation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;-><init>(Landroid/icu/util/Currency$1;)V

    const-string/jumbo v1, "\u00a5"

    const-string/jumbo v2, "\uffe5"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    const-string v1, "$"

    const-string/jumbo v2, "\ufe69"

    const-string/jumbo v3, "\uff04"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    const-string/jumbo v1, "\u20a8"

    const-string/jumbo v2, "\u20b9"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    const-string/jumbo v1, "\u00a3"

    const-string/jumbo v2, "\u20a4"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Landroid/icu/util/Currency$EquivalenceRelation;->add([Ljava/lang/Object;)Landroid/icu/util/Currency$EquivalenceRelation;

    move-result-object v0

    sput-object v0, Landroid/icu/util/Currency;->EQUIVALENT_CURRENCY_SYMBOLS:Landroid/icu/util/Currency$EquivalenceRelation;

    .line 239
    new-instance v0, Landroid/icu/util/Currency$1;

    invoke-direct {v0}, Landroid/icu/util/Currency$1;-><init>()V

    sput-object v0, Landroid/icu/util/Currency;->regionCurrencyCache:Landroid/icu/impl/CacheBase;

    .line 469
    new-instance v0, Landroid/icu/util/ULocale;

    const-string/jumbo v1, "und"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/Currency;->UND:Landroid/icu/util/ULocale;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 470
    sput-object v0, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 934
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/util/Currency;->POW10:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "currency"

    .line 926
    invoke-direct {p0, v0, p1}, Landroid/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iput-object p1, p0, Landroid/icu/util/Currency;->isoCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Landroid/icu/util/Currency;
    .locals 0

    .line 61
    invoke-static {p0}, Landroid/icu/util/Currency;->loadCurrency(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method static createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
    .locals 2

    .line 251
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EURO"

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "EUR"

    .line 253
    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 258
    invoke-static {p0, v1}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "PREEURO"

    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 262
    :cond_1
    sget-object v0, Landroid/icu/util/Currency;->regionCurrencyCache:Landroid/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/Currency;

    return-object p0
.end method

.method public static fromJavaCurrency(Ljava/util/Currency;)Landroid/icu/util/Currency;
    .locals 0

    .line 332
    invoke-virtual {p0}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getAllCurrenciesAsSet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/icu/util/Currency;

    monitor-enter v0

    .line 958
    :try_start_0
    sget-object v1, Landroid/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    :goto_0
    if-nez v1, :cond_1

    .line 960
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v1

    .line 961
    new-instance v2, Ljava/util/HashSet;

    .line 962
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 961
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 963
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Landroid/icu/util/Currency;->ALL_CODES_AS_SET:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getAllTenderCurrencies()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/icu/util/Currency;

    monitor-enter v0

    .line 945
    :try_start_0
    sget-object v1, Landroid/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_0
    if-nez v1, :cond_1

    .line 950
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v1

    .line 951
    invoke-static {v1}, Landroid/icu/util/Currency;->getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 952
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Landroid/icu/util/Currency;->ALL_TENDER_CODES:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getAvailableCurrencies()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/util/Currency;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 230
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->all()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 233
    invoke-static {v2}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getAvailableCurrencyCodes(Landroid/icu/util/ULocale;Ljava/util/Date;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    .line 197
    invoke-static {p1}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onDate(Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    .line 198
    invoke-static {p0}, Landroid/icu/util/Currency;->getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p0

    .line 201
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 204
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getAvailableCurrencyCodes(Ljava/util/Locale;Ljava/util/Date;)[Ljava/lang/String;
    .locals 0

    .line 217
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/util/Currency;->getAvailableCurrencyCodes(Landroid/icu/util/ULocale;Ljava/util/Date;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .line 386
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_0

    .line 387
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 389
    :cond_0
    invoke-virtual {v0}, Landroid/icu/util/Currency$ServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    .line 399
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_0

    .line 400
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 402
    :cond_0
    invoke-virtual {v0}, Landroid/icu/util/Currency$ServiceShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrencyTrieVec(Landroid/icu/util/ULocale;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/List<",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;>;"
        }
    .end annotation

    .line 740
    sget-object v0, Landroid/icu/util/Currency;->CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 742
    new-instance v0, Landroid/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    .line 744
    new-instance v1, Landroid/icu/impl/TextTrieMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/icu/impl/TextTrieMap;-><init>(Z)V

    .line 746
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 747
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-static {p0, v2}, Landroid/icu/util/Currency;->setupCurrencyTrieVec(Landroid/icu/util/ULocale;Ljava/util/List;)V

    .line 750
    sget-object v0, Landroid/icu/util/Currency;->CURRENCY_NAME_CACHE:Landroid/icu/impl/ICUCache;

    invoke-interface {v0, p0, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
    .locals 1

    const-string v0, "currency"

    .line 174
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0

    .line 179
    :cond_0
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_1

    .line 180
    invoke-static {p0}, Landroid/icu/util/Currency;->createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0

    .line 183
    :cond_1
    invoke-virtual {v0, p0}, Landroid/icu/util/Currency$ServiceShim;->createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;
    .locals 1

    if-eqz p0, :cond_1

    .line 302
    invoke-static {p0}, Landroid/icu/util/Currency;->isAlpha3Code(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "currency"

    invoke-static {v0, p0}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object p0

    check-cast p0, Landroid/icu/util/Currency;

    return-object p0

    .line 303
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The input currency code is not 3-letter alphabetic code."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 300
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "The input currency code is null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/util/Currency;
    .locals 0

    .line 166
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;
    .locals 1

    const-string v0, "currency"

    .line 439
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 440
    sget-object p0, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 445
    invoke-static {}, Landroid/icu/util/Currency;->getAllTenderCurrencies()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 450
    :cond_1
    sget-object p0, Landroid/icu/util/Currency;->UND:Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 451
    sget-object p0, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    :cond_2
    const/4 p0, 0x1

    .line 453
    invoke-static {p1, p0}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object p0

    .line 455
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->now()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    .line 459
    invoke-static {p0}, Landroid/icu/util/Currency;->getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p0

    .line 462
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 463
    sget-object p0, Landroid/icu/util/Currency;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object p0

    .line 466
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static getShim()Landroid/icu/util/Currency$ServiceShim;
    .locals 2

    .line 144
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "android.icu.util.CurrencyServiceShim"

    .line 146
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Currency$ServiceShim;

    sput-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    sget-boolean v1, Landroid/icu/util/Currency;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_1
    :goto_0
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    return-object v0
.end method

.method private static getTenderCurrencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1016
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 1017
    invoke-virtual {p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withTender()Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static isAlpha3Code(Ljava/lang/String;)Z
    .locals 5

    .line 311
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_4

    .line 315
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x5a

    if-le v3, v4, :cond_1

    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    :cond_1
    const/16 v4, 0x7a

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isAvailable(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 2

    .line 987
    invoke-static {p0}, Landroid/icu/util/Currency;->isAlpha3Code(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 991
    invoke-virtual {p1, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 992
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "To is before from"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 995
    :cond_2
    :goto_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 996
    invoke-static {}, Landroid/icu/util/Currency;->getAllCurrenciesAsSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    const/4 p0, 0x1

    return p0

    .line 1004
    :cond_4
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 1006
    invoke-static {p1, p2}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onDateRange(Ljava/util/Date;Ljava/util/Date;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->withCurrency(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p1

    .line 1005
    invoke-virtual {v0, p1}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p1

    .line 1007
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static loadCurrency(Ljava/lang/String;)Landroid/icu/util/Currency;
    .locals 5

    const-string v0, "-"

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 275
    :goto_0
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v3

    .line 276
    invoke-static {p0}, Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;->onRegion(Ljava/lang/String;)Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/icu/text/CurrencyMetaInfo;->currencies(Landroid/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;

    move-result-object p0

    .line 277
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 278
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "EUR"

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    return-object v4

    .line 283
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 285
    :cond_2
    invoke-static {v2}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v4
.end method

.method public static openParseState(Landroid/icu/util/ULocale;II)Landroid/icu/impl/TextTrieMap$ParseState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "II)",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">.ParseState;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 731
    invoke-static {p0}, Landroid/icu/util/Currency;->getCurrencyTrieVec(Landroid/icu/util/ULocale;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 733
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p0, p1}, Landroid/icu/impl/TextTrieMap;->openParseState(I)Landroid/icu/impl/TextTrieMap$ParseState;

    move-result-object p0

    return-object p0

    .line 735
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/TextTrieMap;

    invoke-virtual {p0, p1}, Landroid/icu/impl/TextTrieMap;->openParseState(I)Landroid/icu/impl/TextTrieMap$ParseState;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Landroid/icu/util/ULocale;Ljava/lang/String;ILjava/text/ParsePosition;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 699
    invoke-static {p0}, Landroid/icu/util/Currency;->getCurrencyTrieVec(Landroid/icu/util/ULocale;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    .line 704
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/TextTrieMap;

    .line 705
    new-instance v2, Landroid/icu/util/Currency$CurrencyNameResultHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/util/Currency$CurrencyNameResultHandler;-><init>(Landroid/icu/util/Currency$1;)V

    .line 706
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v1, p1, v4, v2}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    .line 707
    invoke-virtual {v2}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestCurrencyISOCode()Ljava/lang/String;

    move-result-object v1

    .line 708
    invoke-virtual {v2}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    move-result v2

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    .line 711
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/TextTrieMap;

    .line 712
    new-instance p2, Landroid/icu/util/Currency$CurrencyNameResultHandler;

    invoke-direct {p2, v3}, Landroid/icu/util/Currency$CurrencyNameResultHandler;-><init>(Landroid/icu/util/Currency$1;)V

    .line 713
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/TextTrieMap;->find(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$ResultHandler;)V

    .line 714
    invoke-virtual {p2}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    move-result p0

    if-le p0, v2, :cond_0

    .line 715
    invoke-virtual {p2}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestCurrencyISOCode()Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-virtual {p2}, Landroid/icu/util/Currency$CurrencyNameResultHandler;->getBestMatchLength()I

    move-result v2

    .line 719
    :cond_0
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p0

    add-int/2addr p0, v2

    .line 720
    invoke-virtual {p3, p0}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1060
    iget-object p0, p0, Landroid/icu/util/Currency;->isoCode:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method public static registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    .line 360
    invoke-static {}, Landroid/icu/util/Currency;->getShim()Landroid/icu/util/Currency$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/util/Currency$ServiceShim;->registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static setupCurrencyTrieVec(Landroid/icu/util/ULocale;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/List<",
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 758
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TextTrieMap;

    const/4 v1, 0x1

    .line 759
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/TextTrieMap;

    .line 761
    invoke-static {p0}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object p0

    .line 762
    invoke-virtual {p0}, Landroid/icu/text/CurrencyDisplayNames;->symbolMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 763
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 764
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 767
    sget-object v4, Landroid/icu/util/Currency;->EQUIVALENT_CURRENCY_SYMBOLS:Landroid/icu/util/Currency$EquivalenceRelation;

    invoke-virtual {v4, v3}, Landroid/icu/util/Currency$EquivalenceRelation;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 768
    new-instance v6, Landroid/icu/util/Currency$CurrencyStringInfo;

    invoke-direct {v6, v2, v3}, Landroid/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    goto :goto_0

    .line 771
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/CurrencyDisplayNames;->nameMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 772
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 773
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 774
    new-instance v2, Landroid/icu/util/Currency$CurrencyStringInfo;

    invoke-direct {v2, v0, v1}, Landroid/icu/util/Currency$CurrencyStringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/icu/impl/TextTrieMap;->put(Ljava/lang/CharSequence;Ljava/lang/Object;)Landroid/icu/impl/TextTrieMap;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static unregister(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 374
    sget-object v0, Landroid/icu/util/Currency;->shim:Landroid/icu/util/Currency$ServiceShim;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 377
    :cond_0
    invoke-virtual {v0, p0}, Landroid/icu/util/Currency$ServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 372
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "registryKey must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1049
    new-instance v0, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;

    iget-object v1, p0, Landroid/icu/util/Currency;->type:Ljava/lang/String;

    iget-object p0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/icu/util/MeasureUnit$MeasureUnitProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCurrencyCode()Ljava/lang/String;
    .locals 0

    .line 476
    iget-object p0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultFractionDigits()I
    .locals 1

    .line 855
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result p0

    return p0
.end method

.method public getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I
    .locals 1

    .line 866
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 867
    iget-object p0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object p0

    .line 868
    iget p0, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    return p0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .line 653
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/icu/util/Currency;->getName(Ljava/util/Locale;I[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 672
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Currency;->getName(Ljava/util/Locale;I[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 626
    invoke-virtual {p0, p1, p2, p4}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p4, :cond_1

    const/4 p2, 0x0

    .line 631
    aput-boolean p2, p4, p2

    .line 634
    :cond_1
    invoke-static {p1}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object p1

    .line 635
    iget-object p0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p0, p3}, Landroid/icu/text/CurrencyDisplayNames;->getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 569
    aput-boolean v0, p3, v0

    .line 572
    :cond_0
    invoke-static {p1}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object p1

    if-eqz p2, :cond_4

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    .line 579
    instance-of p2, p1, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    if-eqz p2, :cond_1

    .line 583
    check-cast p1, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    iget-object p0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;->getNarrowSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 580
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Cannot get narrow symbol from custom currency display name provider"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 587
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bad name style: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 585
    :cond_3
    iget-object p0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/icu/text/CurrencyDisplayNames;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 575
    :cond_4
    iget-object p0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/icu/text/CurrencyDisplayNames;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName(Ljava/util/Locale;ILjava/lang/String;[Z)Ljava/lang/String;
    .locals 0

    .line 597
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName(Ljava/util/Locale;I[Z)Ljava/lang/String;
    .locals 0

    .line 540
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNumericCode()I
    .locals 3

    :try_start_0
    const-string v0, "android/icu/impl/data/icudt60b"

    const-string v1, "currencyNumericCodes"

    .line 488
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string v1, "codeMap"

    .line 492
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 493
    iget-object p0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    .line 494
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRoundingIncrement()D
    .locals 2

    .line 878
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D
    .locals 4

    .line 888
    invoke-static {}, Landroid/icu/text/CurrencyMetaInfo;->getInstance()Landroid/icu/text/CurrencyMetaInfo;

    move-result-object v0

    .line 889
    iget-object p0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/CurrencyMetaInfo;->currencyDigits(Ljava/lang/String;Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;

    move-result-object p0

    .line 891
    iget p1, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->roundingIncrement:I

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 899
    :cond_0
    iget p0, p0, Landroid/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    if-ltz p0, :cond_2

    .line 902
    sget-object v2, Landroid/icu/util/Currency;->POW10:[I

    array-length v3, v2

    if-lt p0, v3, :cond_1

    goto :goto_0

    :cond_1
    int-to-double v0, p1

    .line 908
    aget p0, v2, p0

    int-to-double p0, p0

    div-double/2addr v0, p0

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 508
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    .line 528
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSymbol(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 518
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/util/Currency;->getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toJavaCurrency()Ljava/util/Currency;
    .locals 0

    .line 342
    invoke-virtual {p0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 916
    iget-object p0, p0, Landroid/icu/util/Currency;->subType:Ljava/lang/String;

    return-object p0
.end method
