.class abstract Lcom/google/common/collect/AbstractSortedSetMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "AbstractSortedSetMultimap.java"

# interfaces
.implements Lcom/google/common/collect/SortedSetMultimap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSetMultimap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/SortedSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5faae81de71c4a4L


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
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

    .line 133
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic createCollection()Ljava/util/Set;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method abstract createCollection()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation
.end method

.method bridge synthetic createUnmodifiableEmptyCollection()Ljava/util/Collection;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->createUnmodifiableEmptyCollection()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic createUnmodifiableEmptyCollection()Ljava/util/Set;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->createUnmodifiableEmptyCollection()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method createUnmodifiableEmptyCollection()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractSortedSetMultimap;->unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 100
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/AbstractSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 116
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    return-object p0
.end method

.method bridge synthetic unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractSortedSetMultimap;->unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 57
    instance-of p0, p1, Ljava/util/NavigableSet;

    if-eqz p0, :cond_0

    .line 58
    check-cast p1, Ljava/util/NavigableSet;

    invoke-static {p1}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public values()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 144
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 66
    instance-of v0, p2, Ljava/util/NavigableSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;

    check-cast p2, Ljava/util/NavigableSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedNavigableSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/NavigableSet;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0
.end method
