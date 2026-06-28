.class Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;
.super Lcom/google/common/collect/AbstractNavigableMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredEntryNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractNavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final entryPredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final filteredDelegate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final unfiltered:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lcom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 3080
    invoke-direct {p0}, Lcom/google/common/collect/AbstractNavigableMap;-><init>()V

    .line 3081
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    iput-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    .line 3082
    iput-object p2, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;

    .line 3083
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    iput-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$500(Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;)Lcom/google/common/base/Predicate;
    .locals 0

    .line 3068
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;)Ljava/util/NavigableMap;
    .locals 0

    .line 3068
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 3159
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 3088
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {p0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 3139
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3118
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3179
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3113
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3164
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 3134
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3191
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;

    invoke-static {p1, p0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 3128
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3093
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap$1;-><init>(Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3169
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3174
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->removeFirstMatching(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 3144
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 3154
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3149
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    .line 3123
    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->filteredDelegate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3185
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    .line 3186
    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;

    .line 3185
    invoke-static {p1, p0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3196
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;

    invoke-static {p1, p0}, Lcom/google/common/collect/Maps;->filterEntries(Ljava/util/NavigableMap;Lcom/google/common/base/Predicate;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 3108
    new-instance v0, Lcom/google/common/collect/Maps$FilteredMapValues;

    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->unfiltered:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/Maps$FilteredEntryNavigableMap;->entryPredicate:Lcom/google/common/base/Predicate;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/common/collect/Maps$FilteredMapValues;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method
