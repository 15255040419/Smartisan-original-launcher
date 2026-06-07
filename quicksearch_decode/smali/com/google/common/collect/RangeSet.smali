.class public interface abstract Lcom/google/common/collect/RangeSet;
.super Ljava/lang/Object;
.source "RangeSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract add(Lb/c/a/c/i1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/i1<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addAll(Lcom/google/common/collect/RangeSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lb/c/a/c/i1<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/a/c/i1;

    .line 2
    invoke-interface {p0, v0}, Lcom/google/common/collect/RangeSet;->add(Lb/c/a/c/i1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract asDescendingSetOfRanges()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lb/c/a/c/i1<",
            "TC;>;>;"
        }
    .end annotation
.end method

.method public abstract asRanges()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lb/c/a/c/i1<",
            "TC;>;>;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract complement()Lcom/google/common/collect/RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract encloses(Lb/c/a/c/i1;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/i1<",
            "TC;>;)Z"
        }
    .end annotation
.end method

.method public abstract enclosesAll(Lcom/google/common/collect/RangeSet;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)Z"
        }
    .end annotation
.end method

.method public enclosesAll(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lb/c/a/c/i1<",
            "TC;>;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/a/c/i1;

    .line 2
    invoke-interface {p0, v0}, Lcom/google/common/collect/RangeSet;->encloses(Lb/c/a/c/i1;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract intersects(Lb/c/a/c/i1;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/i1<",
            "TC;>;)Z"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract rangeContaining(Ljava/lang/Comparable;)Lb/c/a/c/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lb/c/a/c/i1<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract remove(Lb/c/a/c/i1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/i1<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeAll(Lcom/google/common/collect/RangeSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public removeAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lb/c/a/c/i1<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/a/c/i1;

    .line 2
    invoke-interface {p0, v0}, Lcom/google/common/collect/RangeSet;->remove(Lb/c/a/c/i1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract span()Lb/c/a/c/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/a/c/i1<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract subRangeSet(Lb/c/a/c/i1;)Lcom/google/common/collect/RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/a/c/i1<",
            "TC;>;)",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
