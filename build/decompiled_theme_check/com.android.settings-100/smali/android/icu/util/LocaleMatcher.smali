.class public Landroid/icu/util/LocaleMatcher;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/LocaleMatcher$LanguageMatcherData;,
        Landroid/icu/util/LocaleMatcher$ScoreData;,
        Landroid/icu/util/LocaleMatcher$Level;,
        Landroid/icu/util/LocaleMatcher$LocalePatternMatcher;,
        Landroid/icu/util/LocaleMatcher$OutputDouble;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_THRESHOLD:D = 0.5

.field private static final UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

.field private static canonicalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;


# instance fields
.field private final defaultLanguage:Landroid/icu/util/ULocale;

.field desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/icu/impl/Row$R3<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;>;>;"
        }
    .end annotation
.end field

.field languagePriorityList:Landroid/icu/util/LocalePriorityList;

.field localeToMaxLocaleAndWeight:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/impl/Row$R3<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

.field private final threshold:D

.field transient xDefaultLanguage:Landroid/icu/util/ULocale;

.field transient xFavorScript:Z

.field transient xLocaleMatcher:Landroid/icu/impl/locale/XLocaleMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 66
    new-instance v0, Landroid/icu/util/ULocale;

    const-string/jumbo v1, "und"

    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/util/LocaleMatcher;->UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

    .line 806
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    .line 810
    sget-object v0, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    const-string v1, "iw"

    const-string v2, "he"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    sget-object v0, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    const-string v1, "mo"

    const-string/jumbo v2, "ro"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    sget-object v0, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tl"

    const-string v2, "fil"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    invoke-static {}, Landroid/icu/util/LocaleMatcher;->getICUSupplementalData()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    const-string v1, "languageMatching"

    .line 815
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    const-string/jumbo v1, "written"

    .line 816
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 817
    new-instance v1, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-direct {v1}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;-><init>()V

    sput-object v1, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    .line 819
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 820
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 827
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    invoke-virtual {v1, v5}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v4

    .line 828
    :goto_1
    sget-object v5, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-virtual {v1, v4}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v4, v3, v1, v2}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->addDistance(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    goto :goto_0

    .line 830
    :cond_1
    sget-object v0, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/LocalePriorityList;)V
    .locals 1

    .line 94
    sget-object v0, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-direct {p0, p1, v0}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 116
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;D)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/LocaleMatcher$LanguageMatcherData;D)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    .line 343
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher;->desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;

    const/4 v0, 0x0

    .line 856
    iput-object v0, p0, Landroid/icu/util/LocaleMatcher;->xLocaleMatcher:Landroid/icu/impl/locale/XLocaleMatcher;

    .line 857
    iput-object v0, p0, Landroid/icu/util/LocaleMatcher;->xDefaultLanguage:Landroid/icu/util/ULocale;

    const/4 v1, 0x0

    .line 858
    iput-boolean v1, p0, Landroid/icu/util/LocaleMatcher;->xFavorScript:Z

    if-nez p2, :cond_0

    .line 128
    sget-object p2, Landroid/icu/util/LocaleMatcher;->defaultWritten:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->freeze()Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Landroid/icu/util/LocaleMatcher;->matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    .line 129
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher;->languagePriorityList:Landroid/icu/util/LocalePriorityList;

    .line 130
    invoke-virtual {p1}, Landroid/icu/util/LocalePriorityList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 131
    invoke-virtual {p1, v1}, Landroid/icu/util/LocalePriorityList;->getWeight(Landroid/icu/util/ULocale;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/icu/util/LocaleMatcher;->add(Landroid/icu/util/ULocale;Ljava/lang/Double;)V

    goto :goto_1

    .line 133
    :cond_1
    invoke-direct {p0}, Landroid/icu/util/LocaleMatcher;->processMapping()V

    .line 134
    invoke-virtual {p1}, Landroid/icu/util/LocalePriorityList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/icu/util/ULocale;

    :cond_2
    iput-object v0, p0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    .line 136
    iput-wide p3, p0, Landroid/icu/util/LocaleMatcher;->threshold:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/LocaleMatcher;-><init>(Landroid/icu/util/LocalePriorityList;)V

    return-void
.end method

.method private add(Landroid/icu/util/ULocale;Ljava/lang/Double;)V
    .locals 1

    .line 302
    invoke-virtual {p0, p1}, Landroid/icu/util/LocaleMatcher;->canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p1

    .line 303
    invoke-direct {p0, p1}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/icu/impl/Row;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/icu/impl/Row$R3;

    move-result-object p1

    .line 304
    invoke-virtual {p1}, Landroid/icu/impl/Row$R3;->freeze()Landroid/icu/impl/Row;

    .line 305
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addFiltered(Ljava/lang/String;Landroid/icu/impl/Row$R3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/impl/Row$R3<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 334
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher;->desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 4

    .line 364
    sget-object p0, Landroid/icu/util/LocaleMatcher;->UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

    invoke-virtual {p1, p0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 365
    sget-object p0, Landroid/icu/util/LocaleMatcher;->UNKNOWN_LOCALE:Landroid/icu/util/ULocale;

    return-object p0

    .line 367
    :cond_0
    invoke-static {p1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 369
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    .line 370
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 371
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p1

    .line 373
    new-instance v1, Landroid/icu/util/ULocale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo p0, "und"

    .line 374
    :cond_3
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    const-string v0, "Zzzz"

    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_5

    const-string p1, "ZZ"

    :cond_5
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getBestMatchInternal(Landroid/icu/util/ULocale;Landroid/icu/util/LocaleMatcher$OutputDouble;)Landroid/icu/util/ULocale;
    .locals 11

    .line 254
    invoke-virtual {p0, p1}, Landroid/icu/util/LocaleMatcher;->canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object p1

    .line 255
    invoke-direct {p0, p1}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 262
    iget-object v2, p0, Landroid/icu/util/LocaleMatcher;->desiredLanguageToPossibleLocalesToMaxLocaleToData:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 265
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/Row$R3;

    .line 266
    invoke-virtual {v5}, Landroid/icu/impl/Row$R3;->get0()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/ULocale;

    .line 267
    invoke-virtual {v5}, Landroid/icu/impl/Row$R3;->get1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/util/ULocale;

    .line 268
    invoke-virtual {v5}, Landroid/icu/impl/Row$R3;->get2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    .line 269
    invoke-virtual {p0, p1, v0, v6, v7}, Landroid/icu/util/LocaleMatcher;->match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    move-result-wide v7

    .line 273
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    mul-double/2addr v7, v9

    cmpl-double v5, v7, v2

    if-lez v5, :cond_0

    const-wide v2, 0x3feff7ced916872bL    # 0.999

    cmpl-double v2, v7, v2

    move-object v4, v6

    if-lez v2, :cond_1

    move-wide v2, v7

    goto :goto_1

    :cond_1
    move-wide v2, v7

    goto :goto_0

    .line 283
    :cond_2
    :goto_1
    iget-wide v0, p0, Landroid/icu/util/LocaleMatcher;->threshold:D

    cmpg-double p1, v2, v0

    if-gez p1, :cond_3

    .line 284
    iget-object v4, p0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    :cond_3
    if-eqz p2, :cond_4

    .line 287
    iput-wide v2, p2, Landroid/icu/util/LocaleMatcher$OutputDouble;->value:D

    :cond_4
    return-object v4
.end method

.method public static getICUSupplementalData()Landroid/icu/impl/ICUResourceBundle;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 839
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b"

    const-string/jumbo v2, "supplementalData"

    invoke-static {v1, v2, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method private declared-synchronized getLocaleMatcher()Landroid/icu/impl/locale/XLocaleMatcher;
    .locals 2

    monitor-enter p0

    .line 876
    :try_start_0
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->xLocaleMatcher:Landroid/icu/impl/locale/XLocaleMatcher;

    if-nez v0, :cond_2

    .line 877
    invoke-static {}, Landroid/icu/impl/locale/XLocaleMatcher;->builder()Landroid/icu/impl/locale/XLocaleMatcher$Builder;

    move-result-object v0

    .line 878
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->languagePriorityList:Landroid/icu/util/LocalePriorityList;

    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->setSupportedLocales(Landroid/icu/util/LocalePriorityList;)Landroid/icu/impl/locale/XLocaleMatcher$Builder;

    .line 879
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->xDefaultLanguage:Landroid/icu/util/ULocale;

    if-eqz v1, :cond_0

    .line 880
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->xDefaultLanguage:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->setDefaultLanguage(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLocaleMatcher$Builder;

    .line 882
    :cond_0
    iget-boolean v1, p0, Landroid/icu/util/LocaleMatcher;->xFavorScript:Z

    if-eqz v1, :cond_1

    .line 883
    sget-object v1, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;->SCRIPT_FIRST:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    invoke-virtual {v0, v1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->setDistanceOption(Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;)Landroid/icu/impl/locale/XLocaleMatcher$Builder;

    .line 885
    :cond_1
    invoke-virtual {v0}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->build()Landroid/icu/impl/locale/XLocaleMatcher;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/LocaleMatcher;->xLocaleMatcher:Landroid/icu/impl/locale/XLocaleMatcher;

    .line 887
    :cond_2
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->xLocaleMatcher:Landroid/icu/impl/locale/XLocaleMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 852
    new-instance v0, Landroid/icu/util/LocaleMatcher;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher;-><init>(Ljava/lang/String;)V

    .line 853
    invoke-direct {v0, p0}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {v0, p1}, Landroid/icu/util/LocaleMatcher;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v0, p0, v1, p1, v2}, Landroid/icu/util/LocaleMatcher;->match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    move-result-wide p0

    return-wide p0
.end method

.method private processMapping()V
    .locals 6

    .line 312
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-virtual {v0}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->matchingLanguages()Landroid/icu/impl/Relation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/Relation;->keyValuesSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 314
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 315
    iget-object v3, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/Row$R3;

    .line 316
    invoke-virtual {v4}, Landroid/icu/impl/Row$R3;->get0()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/ULocale;

    .line 317
    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 318
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    invoke-direct {p0, v2, v4}, Landroid/icu/util/LocaleMatcher;->addFiltered(Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v0, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Row$R3;

    .line 325
    invoke-virtual {v1}, Landroid/icu/impl/Row$R3;->get0()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    .line 326
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-direct {p0, v2, v1}, Landroid/icu/util/LocaleMatcher;->addFiltered(Ljava/lang/String;Landroid/icu/impl/Row$R3;)V

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 5

    .line 165
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 166
    sget-object v0, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 168
    sget-object v2, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 170
    sget-object v4, Landroid/icu/util/LocaleMatcher;->canonicalMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 172
    :cond_1
    :goto_0
    new-instance p1, Landroid/icu/util/ULocale;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v4

    .line 175
    :goto_3
    invoke-direct {p1, p0, v1, v3}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public distance(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 872
    invoke-direct {p0}, Landroid/icu/util/LocaleMatcher;->getLocaleMatcher()Landroid/icu/impl/locale/XLocaleMatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/locale/XLocaleMatcher;->distance(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)I

    move-result p0

    return p0
.end method

.method public getBestMatch(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/ULocale;
    .locals 13

    .line 191
    new-instance v0, Landroid/icu/util/LocaleMatcher$OutputDouble;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/LocaleMatcher$OutputDouble;-><init>(Landroid/icu/util/LocaleMatcher$1;)V

    .line 192
    invoke-virtual {p1}, Landroid/icu/util/LocalePriorityList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/util/ULocale;

    .line 193
    invoke-direct {p0, v7, v0}, Landroid/icu/util/LocaleMatcher;->getBestMatchInternal(Landroid/icu/util/ULocale;Landroid/icu/util/LocaleMatcher$OutputDouble;)Landroid/icu/util/ULocale;

    move-result-object v8

    .line 194
    iget-wide v9, v0, Landroid/icu/util/LocaleMatcher$OutputDouble;->value:D

    invoke-virtual {p1, v7}, Landroid/icu/util/LocalePriorityList;->getWeight(Landroid/icu/util/ULocale;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    mul-double/2addr v9, v11

    sub-double/2addr v9, v5

    cmpl-double v7, v9, v3

    if-lez v7, :cond_0

    move-object v1, v8

    move-wide v3, v9

    :cond_0
    const-wide v7, 0x3fb1eb8549ab6fb0L    # 0.07000001

    add-double/2addr v5, v7

    goto :goto_0

    .line 201
    :cond_1
    iget-wide v5, p0, Landroid/icu/util/LocaleMatcher;->threshold:D

    cmpg-double p1, v3, v5

    if-gez p1, :cond_2

    .line 202
    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    :cond_2
    return-object v1
.end method

.method public getBestMatch(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, v0}, Landroid/icu/util/LocaleMatcher;->getBestMatchInternal(Landroid/icu/util/ULocale;Landroid/icu/util/LocaleMatcher$OutputDouble;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public getBestMatch(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 0

    .line 214
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/util/LocaleMatcher;->getBestMatch(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public getBestMatch(Ljava/util/LinkedHashSet;Landroid/icu/util/Output;)Landroid/icu/util/ULocale;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/util/ULocale;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 904
    invoke-direct {p0}, Landroid/icu/util/LocaleMatcher;->getLocaleMatcher()Landroid/icu/impl/locale/XLocaleMatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/locale/XLocaleMatcher;->getBestMatch(Ljava/util/Set;Landroid/icu/util/Output;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public varargs getBestMatch([Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add([Landroid/icu/util/ULocale;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/util/LocaleMatcher;->getBestMatch(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 0

    .line 152
    iget-object p0, p0, Landroid/icu/util/LocaleMatcher;->matcherData:Landroid/icu/util/LocaleMatcher$LanguageMatcherData;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/icu/util/LocaleMatcher$LanguageMatcherData;->match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    move-result-wide p0

    return-wide p0
.end method

.method public declared-synchronized setDefaultLanguage(Landroid/icu/util/ULocale;)Landroid/icu/util/LocaleMatcher;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 916
    :try_start_0
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher;->xDefaultLanguage:Landroid/icu/util/ULocale;

    const/4 p1, 0x0

    .line 917
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher;->xLocaleMatcher:Landroid/icu/impl/locale/XLocaleMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFavorScript(Z)Landroid/icu/util/LocaleMatcher;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 931
    :try_start_0
    iput-boolean p1, p0, Landroid/icu/util/LocaleMatcher;->xFavorScript:Z

    const/4 p1, 0x0

    .line 932
    iput-object p1, p0, Landroid/icu/util/LocaleMatcher;->xLocaleMatcher:Landroid/icu/impl/locale/XLocaleMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/util/LocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/util/LocaleMatcher;->localeToMaxLocaleAndWeight:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
