.class public interface abstract Lcom/google/common/collect/SortedMultiset;
.super Ljava/lang/Object;
.source "SortedMultiset.java"

# interfaces
.implements Lcom/google/common/collect/SortedMultisetBridge;
.implements Lcom/google/common/collect/SortedIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/SortedMultisetBridge<",
        "TE;>;",
        "Lcom/google/common/collect/SortedIterable<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public abstract comparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end method

.method public abstract descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract elementSet()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 2
    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract headMultiset(Ljava/lang/Object;Lb/c/a/c/x;)Lcom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lb/c/a/c/x;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract subMultiset(Ljava/lang/Object;Lb/c/a/c/x;Ljava/lang/Object;Lb/c/a/c/x;)Lcom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lb/c/a/c/x;",
            "TE;",
            "Lb/c/a/c/x;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract tailMultiset(Ljava/lang/Object;Lb/c/a/c/x;)Lcom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lb/c/a/c/x;",
            ")",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method
