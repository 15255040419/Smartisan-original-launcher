.class Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/SortedSetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableSortedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/SortedSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/SortedSetMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 836
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;-><init>(Lcom/google/common/collect/SetMultimap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Lcom/google/common/collect/Multimap;
    .locals 0

    .line 833
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic delegate()Lcom/google/common/collect/SetMultimap;
    .locals 0

    .line 833
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public delegate()Lcom/google/common/collect/SortedSetMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 841
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/SortedSetMultimap;

    return-object p0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 833
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 846
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 851
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0

    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

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

    .line 856
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
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

    .line 861
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/SortedSetMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method
