.class public Lcom/google/common/collect/TreeMultimap;
.super Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;
.source "TreeMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field private transient valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)V"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;-><init>(Ljava/util/SortedMap;)V

    .line 111
    iput-object p1, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    .line 112
    iput-object p2, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/Multimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/Comparator<",
            "-TV;>;",
            "Lcom/google/common/collect/Multimap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 120
    invoke-virtual {p0, p3}, Lcom/google/common/collect/TreeMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    return-void
.end method

.method public static create()Lcom/google/common/collect/TreeMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/TreeMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/common/collect/TreeMultimap;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/TreeMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/TreeMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/google/common/collect/TreeMultimap;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method public static create(Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/TreeMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/google/common/collect/TreeMultimap;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 213
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 214
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    .line 215
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    .line 216
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultimap;->setMap(Ljava/util/Map;)V

    .line 217
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->populateMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 205
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 207
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->asMap()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public asMap()Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 195
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->asMap()Ljava/util/SortedMap;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableMap;

    return-object p0
.end method

.method public bridge synthetic asMap()Ljava/util/SortedMap;
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->asMap()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method createAsMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createMaybeNavigableAsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 145
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic createCollection()Ljava/util/Set;
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method createCollection()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/TreeSet;

    iget-object p0, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->entries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic forEach(Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultimap;->get(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 167
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultimap;->get(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultimap;->get(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hashCode()I
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keyComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/google/common/collect/TreeMultimap;->keyComparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 181
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->keySet()Ljava/util/SortedSet;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    return-object p0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic keySet()Ljava/util/SortedSet;
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/Multiset;
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 74
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic size()I
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/google/common/collect/TreeMultimap;->valueComparator:Ljava/util/Comparator;

    return-object p0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/google/common/collect/AbstractSortedKeySortedSetMultimap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
