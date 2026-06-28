.class public abstract Lcom/google/common/collect/ForwardingSortedSetMultimap;
.super Lcom/google/common/collect/ForwardingSetMultimap;
.source "ForwardingSortedSetMultimap.java"

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
        "Lcom/google/common/collect/ForwardingSetMultimap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/SortedSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSetMultimap;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Lcom/google/common/collect/Multimap;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Lcom/google/common/collect/SetMultimap;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p0

    return-object p0
.end method

.method protected abstract delegate()Lcom/google/common/collect/SortedSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

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

    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

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

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/SortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/SortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

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

    .line 63
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingSortedSetMultimap;->delegate()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/SortedSetMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method
