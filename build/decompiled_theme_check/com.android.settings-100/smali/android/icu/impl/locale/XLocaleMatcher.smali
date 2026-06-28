.class public Landroid/icu/impl/locale/XLocaleMatcher;
.super Ljava/lang/Object;
.source "XLocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/XLocaleMatcher$Builder;
    }
.end annotation


# static fields
.field private static final UND:Landroid/icu/impl/locale/XLikelySubtags$LSR;

.field private static final UND_LOCALE:Landroid/icu/util/ULocale;


# instance fields
.field private final defaultLanguage:Landroid/icu/util/ULocale;

.field private final demotionPerAdditionalDesiredLocale:I

.field private final distanceOption:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

.field private final exactSupportedLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private final localeDistance:Landroid/icu/impl/locale/XLocaleDistance;

.field private final supportedLanguages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/impl/locale/XLikelySubtags$LSR;",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;>;"
        }
    .end annotation
.end field

.field private final thresholdDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    const-string v1, ""

    const-string/jumbo v2, "und"

    invoke-direct {v0, v2, v1, v1}, Landroid/icu/impl/locale/XLikelySubtags$LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/locale/XLocaleMatcher;->UND:Landroid/icu/impl/locale/XLikelySubtags$LSR;

    .line 30
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, v2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/locale/XLocaleMatcher;->UND_LOCALE:Landroid/icu/util/ULocale;

    return-void
.end method

.method private constructor <init>(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->access$200(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)Landroid/icu/impl/locale/XLocaleDistance;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/icu/impl/locale/XLocaleDistance;->getDefault()Landroid/icu/impl/locale/XLocaleDistance;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->access$200(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)Landroid/icu/impl/locale/XLocaleDistance;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->localeDistance:Landroid/icu/impl/locale/XLocaleDistance;

    .line 154
    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->access$300(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->localeDistance:Landroid/icu/impl/locale/XLocaleDistance;

    invoke-virtual {v0}, Landroid/icu/impl/locale/XLocaleDistance;->getDefaultScriptDistance()I

    move-result v0

    goto :goto_1

    .line 155
    :cond_1
    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->access$300(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)I

    move-result v0

    :goto_1
    iput v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->thresholdDistance:I

    .line 157
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->localeDistance:Landroid/icu/impl/locale/XLocaleDistance;

    invoke-virtual {v0}, Landroid/icu/impl/locale/XLocaleDistance;->getParadigms()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/locale/XLocaleMatcher;->extractLsrSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 158
    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->access$400(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/locale/XLocaleMatcher;->extractLsrMap(Ljava/util/Set;Ljava/util/Set;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/locale/XLocaleMatcher;->supportedLanguages:Ljava/util/Map;

    .line 160
    invoke-virtual {v0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/locale/XCldrStub$ImmutableSet;->copyOf(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->exactSupportedLocales:Ljava/util/Set;

    .line 161
    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->access$500(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)Landroid/icu/util/ULocale;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->access$500(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)Landroid/icu/util/ULocale;

    move-result-object v0

    goto :goto_2

    .line 162
    :cond_2
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->supportedLanguages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    .line 163
    :cond_3
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->supportedLanguages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    :goto_2
    iput-object v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    .line 164
    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->access$600(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)I

    move-result v0

    if-gez v0, :cond_4

    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->localeDistance:Landroid/icu/impl/locale/XLocaleDistance;

    invoke-virtual {v0}, Landroid/icu/impl/locale/XLocaleDistance;->getDefaultRegionDistance()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 165
    :cond_4
    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->access$600(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)I

    move-result v0

    :goto_3
    iput v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->demotionPerAdditionalDesiredLocale:I

    .line 166
    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->access$700(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/locale/XLocaleMatcher;->distanceOption:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/locale/XLocaleMatcher$Builder;Landroid/icu/impl/locale/XLocaleMatcher$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XLocaleMatcher;-><init>(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/LocalePriorityList;)V
    .locals 1

    .line 136
    invoke-static {}, Landroid/icu/impl/locale/XLocaleMatcher;->builder()Landroid/icu/impl/locale/XLocaleMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->setSupportedLocales(Landroid/icu/util/LocalePriorityList;)Landroid/icu/impl/locale/XLocaleMatcher$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XLocaleMatcher;-><init>(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 132
    invoke-static {}, Landroid/icu/impl/locale/XLocaleMatcher;->builder()Landroid/icu/impl/locale/XLocaleMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->setSupportedLocales(Ljava/lang/String;)Landroid/icu/impl/locale/XLocaleMatcher$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XLocaleMatcher;-><init>(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-static {}, Landroid/icu/impl/locale/XLocaleMatcher;->builder()Landroid/icu/impl/locale/XLocaleMatcher$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;->setSupportedLocales(Ljava/util/Set;)Landroid/icu/impl/locale/XLocaleMatcher$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/impl/locale/XLocaleMatcher;-><init>(Landroid/icu/impl/locale/XLocaleMatcher$Builder;)V

    return-void
.end method

.method static synthetic access$000(Landroid/icu/util/LocalePriorityList;)Ljava/util/Set;
    .locals 0

    .line 28
    invoke-static {p0}, Landroid/icu/impl/locale/XLocaleMatcher;->asSet(Landroid/icu/util/LocalePriorityList;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static asSet(Landroid/icu/util/LocalePriorityList;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/LocalePriorityList;",
            ")",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 237
    invoke-virtual {p0}, Landroid/icu/util/LocalePriorityList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/ULocale;

    .line 238
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static builder()Landroid/icu/impl/locale/XLocaleMatcher$Builder;
    .locals 1

    .line 127
    new-instance v0, Landroid/icu/impl/locale/XLocaleMatcher$Builder;

    invoke-direct {v0}, Landroid/icu/impl/locale/XLocaleMatcher$Builder;-><init>()V

    return-object v0
.end method

.method public static combine(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 3

    .line 381
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 383
    new-instance v0, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v0}, Landroid/icu/util/ULocale$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/icu/util/ULocale$Builder;->setLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale$Builder;

    move-result-object p0

    .line 386
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale$Builder;->setVariant(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    .line 400
    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getExtensionKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 401
    invoke-virtual {p1, v1}, Landroid/icu/util/ULocale;->getExtension(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/icu/util/ULocale$Builder;->setExtension(CLjava/lang/String;)Landroid/icu/util/ULocale$Builder;

    goto :goto_0

    .line 403
    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private extractLsrMap(Ljava/util/Set;Ljava/util/Set;)Landroid/icu/impl/locale/XCldrStub$Multimap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/icu/impl/locale/XLikelySubtags$LSR;",
            ">;)",
            "Landroid/icu/impl/locale/XCldrStub$Multimap<",
            "Landroid/icu/impl/locale/XLikelySubtags$LSR;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$LinkedHashMultimap;->create()Landroid/icu/impl/locale/XCldrStub$LinkedHashMultimap;

    move-result-object p0

    .line 181
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    .line 182
    sget-object v1, Landroid/icu/impl/locale/XLocaleMatcher;->UND_LOCALE:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/icu/impl/locale/XLocaleMatcher;->UND:Landroid/icu/impl/locale/XLikelySubtags$LSR;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->fromMaximalized(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object v1

    .line 183
    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_6

    if-eqz p2, :cond_6

    .line 187
    invoke-static {}, Landroid/icu/impl/locale/XCldrStub$LinkedHashMultimap;->create()Landroid/icu/impl/locale/XCldrStub$LinkedHashMultimap;

    move-result-object p1

    .line 191
    invoke-virtual {p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    if-nez v0, :cond_3

    .line 193
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v3, v0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Ljava/lang/Object;Ljava/util/Collection;)V

    const/4 v0, 0x0

    goto :goto_2

    .line 199
    :cond_4
    invoke-virtual {p1, p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->putAll(Landroid/icu/impl/locale/XCldrStub$Multimap;)V

    .line 200
    invoke-virtual {p1, p0}, Landroid/icu/impl/locale/XCldrStub$Multimap;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    move-object p0, p1

    goto :goto_3

    .line 201
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 205
    :cond_6
    :goto_3
    invoke-static {p0}, Landroid/icu/impl/locale/XCldrStub$ImmutableMultimap;->copyOf(Landroid/icu/impl/locale/XCldrStub$Multimap;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object p0

    return-object p0
.end method

.method private extractLsrSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/icu/impl/locale/XLikelySubtags$LSR;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 172
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/ULocale;

    .line 173
    sget-object v1, Landroid/icu/impl/locale/XLocaleMatcher;->UND_LOCALE:Landroid/icu/util/ULocale;

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/icu/impl/locale/XLocaleMatcher;->UND:Landroid/icu/impl/locale/XLikelySubtags$LSR;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->fromMaximalized(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object v0

    .line 174
    :goto_1
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public canonicalize(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public distance(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)I
    .locals 2

    .line 415
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->localeDistance:Landroid/icu/impl/locale/XLocaleDistance;

    .line 416
    invoke-static {p1}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->fromMaximalized(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p1

    .line 417
    invoke-static {p2}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->fromMaximalized(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p2

    iget v1, p0, Landroid/icu/impl/locale/XLocaleMatcher;->thresholdDistance:I

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->distanceOption:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    .line 415
    invoke-virtual {v0, p1, p2, v1, p0}, Landroid/icu/impl/locale/XLocaleDistance;->distanceRaw(Landroid/icu/impl/locale/XLikelySubtags$LSR;Landroid/icu/impl/locale/XLikelySubtags$LSR;ILandroid/icu/impl/locale/XLocaleDistance$DistanceOption;)I

    move-result p0

    return p0
.end method

.method public distance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 422
    iget-object v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->localeDistance:Landroid/icu/impl/locale/XLocaleDistance;

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 423
    invoke-static {v1}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->fromMaximalized(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p1

    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-static {v1}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->fromMaximalized(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object p2

    iget v1, p0, Landroid/icu/impl/locale/XLocaleMatcher;->thresholdDistance:I

    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->distanceOption:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    .line 422
    invoke-virtual {v0, p1, p2, v1, p0}, Landroid/icu/impl/locale/XLocaleDistance;->distanceRaw(Landroid/icu/impl/locale/XLikelySubtags$LSR;Landroid/icu/impl/locale/XLikelySubtags$LSR;ILandroid/icu/impl/locale/XLocaleDistance$DistanceOption;)I

    move-result p0

    return p0
.end method

.method public getBestMatch(Landroid/icu/util/LocalePriorityList;)Landroid/icu/util/ULocale;
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/locale/XLocaleMatcher;->getBestMatch(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/Output;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public getBestMatch(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/Output;)Landroid/icu/util/ULocale;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/LocalePriorityList;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/util/ULocale;"
        }
    .end annotation

    .line 231
    invoke-static {p1}, Landroid/icu/impl/locale/XLocaleMatcher;->asSet(Landroid/icu/util/LocalePriorityList;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/locale/XLocaleMatcher;->getBestMatch(Ljava/util/Set;Landroid/icu/util/Output;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public getBestMatch(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/locale/XLocaleMatcher;->getBestMatch(Landroid/icu/util/ULocale;Landroid/icu/util/Output;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public getBestMatch(Landroid/icu/util/ULocale;Landroid/icu/util/Output;)Landroid/icu/util/ULocale;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/util/ULocale;"
        }
    .end annotation

    .line 327
    sget-object v0, Landroid/icu/impl/locale/XLocaleMatcher;->UND_LOCALE:Landroid/icu/util/ULocale;

    invoke-virtual {p1, v0}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/locale/XLocaleMatcher;->UND:Landroid/icu/impl/locale/XLikelySubtags$LSR;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/icu/impl/locale/XLikelySubtags$LSR;->fromMaximalized(Landroid/icu/util/ULocale;)Landroid/icu/impl/locale/XLikelySubtags$LSR;

    move-result-object v0

    .line 329
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/locale/XLocaleMatcher;->exactSupportedLocales:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 331
    iput-object p1, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_1
    return-object p1

    .line 336
    :cond_2
    iget-object v1, p0, Landroid/icu/impl/locale/XLocaleMatcher;->distanceOption:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    sget-object v2, Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;->NORMAL:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    if-ne v1, v2, :cond_4

    .line 337
    iget-object v1, p0, Landroid/icu/impl/locale/XLocaleMatcher;->supportedLanguages:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    .line 341
    iput-object p1, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 343
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/ULocale;

    return-object p0

    .line 346
    :cond_4
    iget-object v1, p0, Landroid/icu/impl/locale/XLocaleMatcher;->supportedLanguages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7fffffff

    move-object v4, v2

    move-object v5, v4

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 347
    iget-object v7, p0, Landroid/icu/impl/locale/XLocaleMatcher;->localeDistance:Landroid/icu/impl/locale/XLocaleDistance;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    iget v9, p0, Landroid/icu/impl/locale/XLocaleMatcher;->thresholdDistance:I

    iget-object v10, p0, Landroid/icu/impl/locale/XLocaleMatcher;->distanceOption:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    invoke-virtual {v7, v0, v8, v9, v10}, Landroid/icu/impl/locale/XLocaleDistance;->distanceRaw(Landroid/icu/impl/locale/XLikelySubtags$LSR;Landroid/icu/impl/locale/XLikelySubtags$LSR;ILandroid/icu/impl/locale/XLocaleDistance$DistanceOption;)I

    move-result v7

    if-ge v7, v3, :cond_5

    .line 352
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    if-nez v7, :cond_6

    move v3, v7

    goto :goto_2

    :cond_6
    move-object v4, p1

    move v3, v7

    goto :goto_1

    :cond_7
    move-object p1, v4

    .line 358
    :goto_2
    iget v0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->thresholdDistance:I

    if-lt v3, v0, :cond_9

    if-eqz p2, :cond_8

    .line 360
    iput-object v2, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 362
    :cond_8
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    return-object p0

    :cond_9
    if-eqz p2, :cond_a

    .line 365
    iput-object p1, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 368
    :cond_a
    invoke-interface {v5, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object p1

    .line 372
    :cond_b
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public getBestMatch(Ljava/lang/String;)Landroid/icu/util/ULocale;
    .locals 1

    .line 215
    invoke-static {p1}, Landroid/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Landroid/icu/util/LocalePriorityList$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/LocalePriorityList$Builder;->build()Landroid/icu/util/LocalePriorityList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/locale/XLocaleMatcher;->getBestMatch(Landroid/icu/util/LocalePriorityList;Landroid/icu/util/Output;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public getBestMatch(Ljava/util/Set;)Landroid/icu/util/ULocale;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/util/ULocale;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/locale/XLocaleMatcher;->getBestMatch(Ljava/util/Set;Landroid/icu/util/Output;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public getBestMatch(Ljava/util/Set;Landroid/icu/util/Output;)Landroid/icu/util/ULocale;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/icu/util/ULocale;",
            ">;",
            "Landroid/icu/util/Output<",
            "Landroid/icu/util/ULocale;",
            ">;)",
            "Landroid/icu/util/ULocale;"
        }
    .end annotation

    .line 252
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 253
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/locale/XLocaleMatcher;->getBestMatch(Landroid/icu/util/ULocale;Landroid/icu/util/Output;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/locale/XLocaleMatcher;->extractLsrMap(Ljava/util/Set;Ljava/util/Set;)Landroid/icu/impl/locale/XCldrStub$Multimap;

    move-result-object p1

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 262
    invoke-virtual {p1}, Landroid/icu/impl/locale/XCldrStub$Multimap;->entries()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, v0

    move-object v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/ULocale;

    .line 265
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    if-ge v2, v1, :cond_4

    .line 267
    iget-object v7, p0, Landroid/icu/impl/locale/XLocaleMatcher;->exactSupportedLocales:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_1

    .line 269
    iput-object v6, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    :cond_1
    return-object v6

    .line 274
    :cond_2
    iget-object v7, p0, Landroid/icu/impl/locale/XLocaleMatcher;->supportedLanguages:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    if-eqz v7, :cond_4

    if-eqz p2, :cond_3

    .line 278
    iput-object v6, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 280
    :cond_3
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/ULocale;

    return-object p0

    .line 283
    :cond_4
    iget-object v7, p0, Landroid/icu/impl/locale/XLocaleMatcher;->supportedLanguages:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 284
    iget-object v9, p0, Landroid/icu/impl/locale/XLocaleMatcher;->localeDistance:Landroid/icu/impl/locale/XLocaleDistance;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/impl/locale/XLikelySubtags$LSR;

    iget v11, p0, Landroid/icu/impl/locale/XLocaleMatcher;->thresholdDistance:I

    iget-object v12, p0, Landroid/icu/impl/locale/XLocaleMatcher;->distanceOption:Landroid/icu/impl/locale/XLocaleDistance$DistanceOption;

    invoke-virtual {v9, v5, v10, v11, v12}, Landroid/icu/impl/locale/XLocaleDistance;->distanceRaw(Landroid/icu/impl/locale/XLikelySubtags$LSR;Landroid/icu/impl/locale/XLikelySubtags$LSR;ILandroid/icu/impl/locale/XLocaleDistance$DistanceOption;)I

    move-result v9

    add-int/2addr v9, v2

    if-ge v9, v1, :cond_5

    .line 289
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    move-object v3, v6

    move v1, v9

    if-nez v9, :cond_5

    goto :goto_1

    .line 295
    :cond_6
    iget v5, p0, Landroid/icu/impl/locale/XLocaleMatcher;->demotionPerAdditionalDesiredLocale:I

    add-int/2addr v2, v5

    goto :goto_0

    .line 297
    :cond_7
    :goto_1
    iget p1, p0, Landroid/icu/impl/locale/XLocaleMatcher;->thresholdDistance:I

    if-lt v1, p1, :cond_9

    if-eqz p2, :cond_8

    .line 299
    iput-object v0, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 301
    :cond_8
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->defaultLanguage:Landroid/icu/util/ULocale;

    return-object p0

    :cond_9
    if-eqz p2, :cond_a

    .line 304
    iput-object v3, p2, Landroid/icu/util/Output;->value:Ljava/lang/Object;

    .line 307
    :cond_a
    invoke-interface {v4, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object v3

    .line 311
    :cond_b
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public varargs getBestMatch([Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1

    .line 219
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/locale/XLocaleMatcher;->getBestMatch(Ljava/util/Set;Landroid/icu/util/Output;)Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method public getThresholdDistance()I
    .locals 0

    .line 472
    iget p0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->thresholdDistance:I

    return p0
.end method

.method public match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 2

    .line 435
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/locale/XLocaleMatcher;->distance(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x64

    int-to-double p0, p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    invoke-virtual {p0, p1, p3}, Landroid/icu/impl/locale/XLocaleMatcher;->match(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)D

    move-result-wide p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 430
    iget-object p0, p0, Landroid/icu/impl/locale/XLocaleMatcher;->exactSupportedLocales:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
