.class public Landroid/icu/impl/ICUService;
.super Landroid/icu/impl/ICUNotifier;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUService$ServiceListener;,
        Landroid/icu/impl/ICUService$LocaleRef;,
        Landroid/icu/impl/ICUService$CacheEntry;,
        Landroid/icu/impl/ICUService$SimpleFactory;,
        Landroid/icu/impl/ICUService$Factory;,
        Landroid/icu/impl/ICUService$Key;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private defaultSize:I

.field private dnref:Landroid/icu/impl/ICUService$LocaleRef;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final factoryLock:Landroid/icu/impl/ICURWLock;

.field private idcache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "service"

    .line 109
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/ICUService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Landroid/icu/impl/ICUNotifier;-><init>()V

    .line 122
    new-instance v0, Landroid/icu/impl/ICURWLock;

    invoke-direct {v0}, Landroid/icu/impl/ICURWLock;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    const-string v0, ""

    .line 106
    iput-object v0, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Landroid/icu/impl/ICUNotifier;-><init>()V

    .line 122
    new-instance v0, Landroid/icu/impl/ICURWLock;

    invoke-direct {v0}, Landroid/icu/impl/ICURWLock;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    .line 114
    iput-object p1, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    return-void
.end method

.method private getVisibleIDMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation

    .line 587
    monitor-enter p0

    .line 588
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUService;->idcache:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    .line 590
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireRead()V

    .line 591
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 592
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    iget-object v2, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 593
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUService$Factory;

    .line 595
    invoke-interface {v2, v0}, Landroid/icu/impl/ICUService$Factory;->updateVisibleIDs(Ljava/util/Map;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUService;->idcache:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    :try_start_2
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    throw v0

    .line 602
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 603
    iget-object p0, p0, Landroid/icu/impl/ICUService;->idcache:Ljava/util/Map;

    return-object p0

    :catchall_1
    move-exception v0

    .line 602
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method protected acceptsListener(Ljava/util/EventListener;)Z
    .locals 0

    .line 934
    instance-of p0, p1, Landroid/icu/impl/ICUService$ServiceListener;

    return p0
.end method

.method protected clearCaches()V
    .locals 1

    const/4 v0, 0x0

    .line 901
    iput-object v0, p0, Landroid/icu/impl/ICUService;->cache:Ljava/util/Map;

    .line 902
    iput-object v0, p0, Landroid/icu/impl/ICUService;->idcache:Ljava/util/Map;

    .line 903
    iput-object v0, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    return-void
.end method

.method protected clearServiceCache()V
    .locals 1

    const/4 v0, 0x0

    .line 913
    iput-object v0, p0, Landroid/icu/impl/ICUService;->cache:Ljava/util/Map;

    return-void
.end method

.method public createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 887
    :cond_0
    new-instance p0, Landroid/icu/impl/ICUService$Key;

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUService$Key;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public final factories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation

    .line 763
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireRead()V

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    iget-object p0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {p0}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {p0}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 352
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 363
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 361
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "descriptor must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 612
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUService;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    .line 621
    invoke-direct {p0}, Landroid/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    move-result-object v0

    .line 622
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUService$Factory;

    if-eqz v1, :cond_0

    .line 624
    invoke-interface {v1, p1, p2}, Landroid/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 627
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object p0

    .line 628
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/ICUService$Key;->fallback()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 629
    invoke-virtual {p0}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUService$Factory;

    if-eqz v1, :cond_1

    .line 631
    invoke-interface {v1, p1, p2}, Landroid/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayNames()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 644
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    .line 645
    invoke-virtual {p0, v0, v1, v1}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayNames(Landroid/icu/util/ULocale;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 653
    invoke-virtual {p0, p1, v0, v0}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayNames(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 669
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 661
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/ICUService$LocaleRef;->get(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 691
    monitor-enter p0

    .line 692
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    if-nez v1, :cond_1

    goto :goto_1

    .line 707
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    .line 708
    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/ICUService$LocaleRef;->get(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object v1

    goto :goto_3

    .line 693
    :cond_2
    :goto_1
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 695
    invoke-direct {p0}, Landroid/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    move-result-object v2

    .line 696
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 697
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 698
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 699
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 700
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/ICUService$Factory;

    .line 701
    invoke-interface {v3, v4, p1}, Landroid/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 704
    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    .line 705
    new-instance v2, Landroid/icu/impl/ICUService$LocaleRef;

    invoke-direct {v2, v1, p1, p2}, Landroid/icu/impl/ICUService$LocaleRef;-><init>(Ljava/util/SortedMap;Landroid/icu/util/ULocale;Ljava/util/Comparator;)V

    iput-object v2, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    .line 710
    :goto_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 713
    :cond_4
    invoke-virtual {p0, p3}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object p0

    if-nez p0, :cond_5

    return-object v1

    .line 718
    :cond_5
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    .line 719
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 720
    :cond_6
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 721
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 722
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/icu/impl/ICUService$Key;->isFallbackOf(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 723
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_7
    return-object p1
.end method

.method public getKey(Landroid/icu/impl/ICUService$Key;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 396
    iget-object v3, v1, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 397
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/ICUService;->handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 400
    :cond_0
    sget-boolean v3, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_1b

    .line 408
    :try_start_0
    iget-object v3, v1, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v3}, Landroid/icu/impl/ICURWLock;->acquireRead()V

    .line 410
    iget-object v3, v1, Landroid/icu/impl/ICUService;->cache:Ljava/util/Map;

    if-nez v3, :cond_3

    .line 412
    sget-boolean v3, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " cache was empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 415
    :cond_2
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_3
    const/4 v4, 0x0

    .line 425
    iget-object v5, v1, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v2, :cond_7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_5

    .line 429
    iget-object v9, v1, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v2, v9, :cond_4

    add-int/2addr v8, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_6

    move-object v9, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    goto :goto_2

    .line 435
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Factory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "not registered with service: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object v9, v4

    move v4, v6

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v10, 0x0

    .line 442
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/ICUService$Key;->currentDescriptor()Ljava/lang/String;

    move-result-object v11

    .line 443
    sget-boolean v12, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v12, :cond_8

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v2, 0x1

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] looking for: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v14

    .line 444
    :cond_8
    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/impl/ICUService$CacheEntry;

    if-eqz v12, :cond_a

    .line 446
    sget-boolean v2, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v2, :cond_9

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found with descriptor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    move v4, v10

    goto/16 :goto_5

    .line 449
    :cond_a
    sget-boolean v10, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v10, :cond_b

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "did not find: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " in cache"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    move v10, v8

    :goto_4
    if-ge v10, v5, :cond_f

    .line 460
    iget-object v13, v1, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    add-int/lit8 v14, v10, 0x1

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/impl/ICUService$Factory;

    .line 461
    sget-boolean v13, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v13, :cond_c

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "trying factory["

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v14, -0x1

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 462
    :cond_c
    invoke-interface {v10, v0, v1}, Landroid/icu/impl/ICUService$Factory;->create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 464
    new-instance v12, Landroid/icu/impl/ICUService$CacheEntry;

    invoke-direct {v12, v11, v7}, Landroid/icu/impl/ICUService$CacheEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    sget-boolean v2, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v2, :cond_11

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " factory supported: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", caching"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 468
    :cond_d
    sget-boolean v7, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v7, :cond_e

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "factory did not support: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    move v10, v14

    goto :goto_4

    :cond_f
    if-nez v9, :cond_10

    .line 478
    new-instance v7, Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v7

    .line 480
    :cond_10
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/ICUService$Key;->fallback()Z

    move-result v7

    if-nez v7, :cond_1a

    :cond_11
    :goto_5
    if-eqz v12, :cond_19

    if-eqz v4, :cond_15

    .line 486
    sget-boolean v0, Landroid/icu/impl/ICUService;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "\'"

    if-eqz v0, :cond_12

    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caching \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 487
    :cond_12
    iget-object v0, v12, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-interface {v3, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_14

    .line 489
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 490
    sget-boolean v5, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v5, :cond_13

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " adding descriptor: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' for actual: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v12, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 492
    :cond_13
    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 499
    :cond_14
    iput-object v3, v1, Landroid/icu/impl/ICUService;->cache:Ljava/util/Map;

    :cond_15
    if-eqz p2, :cond_17

    .line 504
    iget-object v0, v12, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    .line 505
    iget-object v0, v12, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, p2, v7

    goto :goto_7

    :cond_16
    const/4 v7, 0x0

    .line 507
    iget-object v0, v12, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    aput-object v0, p2, v7

    .line 511
    :cond_17
    :goto_7
    sget-boolean v0, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v0, :cond_18

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found in service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 513
    :cond_18
    iget-object v0, v12, Landroid/icu/impl/ICUService$CacheEntry;->service:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    iget-object v1, v1, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    return-object v0

    :cond_19
    iget-object v2, v1, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v2}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    goto :goto_8

    :cond_1a
    move v10, v4

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, v1, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    throw v0

    .line 521
    :cond_1b
    :goto_8
    sget-boolean v2, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v2, :cond_1c

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found in service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 523
    :cond_1c
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/ICUService;->handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 964
    iget-object p0, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getVisibleIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 552
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUService;->getVisibleIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
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

    .line 567
    invoke-direct {p0}, Landroid/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 569
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 572
    new-instance p1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 573
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 574
    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUService$Key;->isFallbackOf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    return-object p1
.end method

.method protected handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isDefault()Z
    .locals 1

    .line 870
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected markDefault()V
    .locals 1

    .line 878
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    return-void
.end method

.method protected notifyListener(Ljava/util/EventListener;)V
    .locals 0

    .line 943
    check-cast p1, Landroid/icu/impl/ICUService$ServiceListener;

    invoke-interface {p1, p0}, Landroid/icu/impl/ICUService$ServiceListener;->serviceChanged(Landroid/icu/impl/ICUService;)V

    return-void
.end method

.method protected reInitializeFactories()V
    .locals 0

    .line 862
    iget-object p0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;
    .locals 2

    if-eqz p1, :cond_0

    .line 799
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireWrite()V

    .line 800
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 801
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->clearCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    .line 806
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->notifyChanged()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 804
    iget-object p0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {p0}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    throw p1

    .line 796
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public registerObject(Ljava/lang/Object;Ljava/lang/String;)Landroid/icu/impl/ICUService$Factory;
    .locals 1

    const/4 v0, 0x1

    .line 776
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICUService;->registerObject(Ljava/lang/Object;Ljava/lang/String;Z)Landroid/icu/impl/ICUService$Factory;

    move-result-object p0

    return-object p0
.end method

.method public registerObject(Ljava/lang/Object;Ljava/lang/String;Z)Landroid/icu/impl/ICUService$Factory;
    .locals 1

    .line 785
    invoke-virtual {p0, p2}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object p2

    invoke-virtual {p2}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object p2

    .line 786
    new-instance v0, Landroid/icu/impl/ICUService$SimpleFactory;

    invoke-direct {v0, p1, p2, p3}, Landroid/icu/impl/ICUService$SimpleFactory;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    move-result-object p0

    return-object p0
.end method

.method public final reset()V
    .locals 1

    .line 844
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireWrite()V

    .line 845
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->reInitializeFactories()V

    .line 846
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->clearCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    .line 851
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->notifyChanged()V

    return-void

    :catchall_0
    move-exception v0

    .line 849
    iget-object p0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {p0}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    throw v0
.end method

.method public stats()Ljava/lang/String;
    .locals 0

    .line 953
    iget-object p0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {p0}, Landroid/icu/impl/ICURWLock;->resetStats()Landroid/icu/impl/ICURWLock$Stats;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 955
    invoke-virtual {p0}, Landroid/icu/impl/ICURWLock$Stats;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "no stats"

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 822
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->acquireWrite()V

    .line 823
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 825
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->clearCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    :cond_0
    iget-object p1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {p1}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->notifyChanged()V

    :cond_1
    return v0

    :catchall_0
    move-exception p1

    .line 829
    iget-object p0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {p0}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    throw p1

    .line 817
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method
