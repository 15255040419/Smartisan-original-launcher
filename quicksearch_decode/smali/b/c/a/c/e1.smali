.class public final Lb/c/a/c/e1;
.super Ljava/lang/Object;
.source "Multisets.java"


# direct methods
.method public static synthetic a(Lcom/google/common/collect/Multiset$Entry;)Ljava/util/Spliterator;
    .locals 1

    .line 6
    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-interface {p0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/common/collect/Multiset;)Ljava/util/Spliterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;)",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 2
    sget-object v1, Lb/c/a/c/q;->a:Lb/c/a/c/q;

    .line 3
    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v2

    and-int/lit16 v2, v2, 0x510

    or-int/lit8 v2, v2, 0x40

    .line 4
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->size()I

    move-result p0

    int-to-long v3, p0

    .line 5
    invoke-static {v0, v1, v2, v3, v4}, Lb/c/a/c/a0;->a(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
