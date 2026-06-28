.class final Lcom/google/common/collect/ImmutableSortedAsList;
.super Lcom/google/common/collect/RegularImmutableAsList;
.source "ImmutableSortedAsList.java"

# interfaces
.implements Lcom/google/common/collect/SortedIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableAsList<",
        "TE;>;",
        "Lcom/google/common/collect/SortedIterable<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableAsList;-><init>(Lcom/google/common/collect/ImmutableCollection;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedAsList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method bridge synthetic delegateCollection()Lcom/google/common/collect/ImmutableCollection;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 39
    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableAsList;->delegateCollection()Lcom/google/common/collect/ImmutableCollection;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/ImmutableSortedSet;

    return-object p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->delegateCollection()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedAsList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedAsList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->size()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->delegateList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/common/collect/-$$Lambda$J9zVGv6YXVkAf1JUJc7fbdQoC3U;

    invoke-direct {v2, v1}, Lcom/google/common/collect/-$$Lambda$J9zVGv6YXVkAf1JUJc7fbdQoC3U;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->comparator()Ljava/util/Comparator;

    move-result-object p0

    const/16 v1, 0x515

    .line 89
    invoke-static {v0, v1, v2, p0}, Lcom/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method subListUnchecked(II)Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 83
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableAsList;->subListUnchecked(II)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->comparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    invoke-virtual {p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
