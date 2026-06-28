.class final Landroid/icu/text/BreakIteratorFactory;
.super Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;
.source "BreakIteratorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BreakIteratorFactory$BFService;
    }
.end annotation


# static fields
.field private static final KIND_NAMES:[Ljava/lang/String;

.field static final service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 109
    new-instance v0, Landroid/icu/text/BreakIteratorFactory$BFService;

    invoke-direct {v0}, Landroid/icu/text/BreakIteratorFactory$BFService;-><init>()V

    sput-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    const-string v0, "grapheme"

    const-string/jumbo v1, "word"

    const-string v2, "line"

    const-string/jumbo v3, "sentence"

    const-string/jumbo v4, "title"

    .line 117
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/icu/text/BreakIterator$BreakIteratorServiceShim;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .locals 0

    .line 35
    invoke-static {p0, p1}, Landroid/icu/text/BreakIteratorFactory;->createBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0
.end method

.method private static createBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .locals 5

    .line 125
    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    const-string v1, "android/icu/impl/data/icudt60b/brkitr"

    .line 126
    invoke-static {v1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const-string v2, "lb"

    .line 135
    invoke-virtual {p0, v2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "strict"

    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "loose"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 142
    :try_start_0
    sget-object v2, Landroid/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    aget-object v2, v2, p1

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/icu/text/BreakIteratorFactory;->KIND_NAMES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boundaries/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brkitr/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    invoke-static {v2}, Landroid/icu/text/RuleBasedBreakIterator;->getInstanceFromCompiledRules(Ljava/nio/ByteBuffer;)Landroid/icu/text/RuleBasedBreakIterator;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 160
    invoke-static {v2}, Landroid/icu/impl/Assert;->fail(Ljava/lang/Exception;)V

    .line 163
    :goto_2
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 164
    invoke-virtual {v1, v0, v0}, Landroid/icu/text/RuleBasedBreakIterator;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 165
    invoke-virtual {v1, p1}, Landroid/icu/text/RuleBasedBreakIterator;->setBreakType(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const-string/jumbo p1, "ss"

    .line 169
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string/jumbo v0, "standard"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 171
    new-instance p1, Landroid/icu/util/ULocale;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-static {p1}, Landroid/icu/text/FilteredBreakIteratorBuilder;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/FilteredBreakIteratorBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/icu/text/FilteredBreakIteratorBuilder;->wrapIteratorWithFilter(Landroid/icu/text/BreakIterator;)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1

    :catch_1
    move-exception p0

    .line 148
    new-instance p1, Ljava/util/MissingResourceException;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-direct {p1, p0, v0, v0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createBreakIterator(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;
    .locals 1

    .line 72
    sget-object p0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 73
    invoke-static {p1, p2}, Landroid/icu/text/BreakIteratorFactory;->createBreakInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/BreakIterator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [Landroid/icu/util/ULocale;

    .line 76
    sget-object v0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1, p2, p0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/BreakIterator;

    const/4 p2, 0x0

    .line 77
    aget-object v0, p0, p2

    aget-object p0, p0, p2

    invoke-virtual {p1, v0, p0}, Landroid/icu/text/BreakIterator;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-object p1
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 0

    .line 53
    sget-object p0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    if-nez p0, :cond_0

    .line 54
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 0

    .line 62
    sget-object p0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    if-nez p0, :cond_0

    .line 63
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public registerInstance(Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;I)Ljava/lang/Object;
    .locals 1

    .line 39
    new-instance p0, Ljava/text/StringCharacterIterator;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 40
    sget-object p0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Factory;

    move-result-object p0

    return-object p0
.end method

.method public unregister(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    sget-object p0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 48
    :cond_0
    sget-object p0, Landroid/icu/text/BreakIteratorFactory;->service:Landroid/icu/impl/ICULocaleService;

    check-cast p1, Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {p0, p1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    move-result p0

    return p0
.end method
