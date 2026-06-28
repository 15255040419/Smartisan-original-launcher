.class public final Lcom/google/common/collect/Multisets;
.super Ljava/lang/Object;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multisets$ViewMultiset;,
        Lcom/google/common/collect/Multisets$DecreasingCount;,
        Lcom/google/common/collect/Multisets$MultisetIteratorImpl;,
        Lcom/google/common/collect/Multisets$EntrySet;,
        Lcom/google/common/collect/Multisets$ElementSet;,
        Lcom/google/common/collect/Multisets$AbstractEntry;,
        Lcom/google/common/collect/Multisets$FilteredMultiset;,
        Lcom/google/common/collect/Multisets$ImmutableEntry;,
        Lcom/google/common/collect/Multisets$UnmodifiableMultiset;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAllImpl(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;",
            "Lcom/google/common/collect/Multiset<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 905
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 908
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/common/collect/-$$Lambda$na6YZNSQK4OD-R7f-s5-f6M1p3g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/-$$Lambda$na6YZNSQK4OD-R7f-s5-f6M1p3g;-><init>(Lcom/google/common/collect/Multiset;)V

    invoke-interface {p1, v0}, Lcom/google/common/collect/Multiset;->forEachEntry(Ljava/util/function/ObjIntConsumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method static addAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 892
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 895
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->addAllImpl(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z

    move-result p0

    return p0

    .line 896
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 899
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static cast(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lcom/google/common/collect/Multiset<",
            "TT;>;"
        }
    .end annotation

    .line 1129
    check-cast p0, Lcom/google/common/collect/Multiset;

    return-object p0
.end method

.method public static containsOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "*>;",
            "Lcom/google/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 683
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 686
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 687
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static copyHighestCountFirst(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 1140
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/common/collect/Multiset$Entry;

    check-cast p0, [Lcom/google/common/collect/Multiset$Entry;

    .line 1141
    sget-object v0, Lcom/google/common/collect/Multisets$DecreasingCount;->INSTANCE:Lcom/google/common/collect/Multisets$DecreasingCount;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1142
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object p0

    return-object p0
.end method

.method public static difference(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;",
            "Lcom/google/common/collect/Multiset<",
            "*>;)",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 615
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    new-instance v0, Lcom/google/common/collect/Multisets$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$4;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method static elementIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 963
    new-instance v0, Lcom/google/common/collect/Multisets$5;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$5;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static equalsImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 869
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/Multiset;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 870
    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 877
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->size()I

    move-result v3

    if-ne v1, v3, :cond_4

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 880
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 881
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    if-eq v3, v1, :cond_2

    return v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v2
.end method

.method public static filter(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 303
    instance-of v0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;

    if-eqz v0, :cond_0

    .line 306
    check-cast p0, Lcom/google/common/collect/Multisets$FilteredMultiset;

    .line 307
    iget-object v0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 308
    new-instance v0, Lcom/google/common/collect/Multisets$FilteredMultiset;

    iget-object p0, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lcom/google/common/collect/Multiset;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$FilteredMultiset;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)V

    return-object v0

    .line 310
    :cond_0
    new-instance v0, Lcom/google/common/collect/Multisets$FilteredMultiset;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$FilteredMultiset;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 245
    new-instance v0, Lcom/google/common/collect/Multisets$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static inferDistinctElements(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)I"
        }
    .end annotation

    .line 389
    instance-of v0, p0, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 390
    check-cast p0, Lcom/google/common/collect/Multiset;

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xb

    return p0
.end method

.method public static intersection(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;",
            "Lcom/google/common/collect/Multiset<",
            "*>;)",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 481
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v0, Lcom/google/common/collect/Multisets$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$2;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method static iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1054
    new-instance v0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;-><init>(Lcom/google/common/collect/Multiset;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static synthetic lambda$spliteratorImpl$2(Lcom/google/common/collect/Multiset$Entry;)Ljava/util/Spliterator;
    .locals 1

    .line 1111
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

.method static synthetic lambda$toMultiset$0(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Lcom/google/common/collect/Multiset;Ljava/lang/Object;)V
    .locals 0

    .line 85
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p2, p0, p1}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    return-void
.end method

.method static synthetic lambda$toMultiset$1(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 0

    .line 87
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static linearTimeSizeImpl(Lcom/google/common/collect/Multiset;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "*>;)I"
        }
    .end annotation

    .line 1121
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Multiset$Entry;

    .line 1122
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 1124
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method static removeAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 914
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 916
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 919
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static removeOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "*>;",
            "Lcom/google/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 802
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 807
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 808
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Multiset$Entry;

    .line 809
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 810
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    .line 811
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_1
    move v1, v5

    goto :goto_0

    :cond_1
    if-lez v3, :cond_0

    .line 814
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    goto :goto_1

    :cond_2
    return v1
.end method

.method public static removeOccurrences(Lcom/google/common/collect/Multiset;Ljava/lang/Iterable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "*>;",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 764
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 765
    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->removeOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z

    move-result p0

    return p0

    .line 767
    :cond_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 770
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 771
    invoke-interface {p0, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static retainAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 924
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 927
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 930
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static retainOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "*>;",
            "Lcom/google/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 713
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->retainOccurrencesImpl(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z

    move-result p0

    return p0
.end method

.method private static retainOccurrencesImpl(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;",
            "Lcom/google/common/collect/Multiset<",
            "*>;)Z"
        }
    .end annotation

    .line 719
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 724
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 725
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Multiset$Entry;

    .line 726
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 728
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :goto_1
    move v1, v4

    goto :goto_0

    .line 730
    :cond_1
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 731
    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, v3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    goto :goto_1

    :cond_2
    return v1
.end method

.method static setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;TE;I)I"
        }
    .end annotation

    const-string v0, "count"

    .line 935
    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 937
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr p2, v0

    if-lez p2, :cond_0

    .line 941
    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    neg-int p2, p2

    .line 943
    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    :cond_1
    :goto_0
    return v0
.end method

.method static setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;TE;II)Z"
        }
    .end annotation

    const-string v0, "oldCount"

    .line 951
    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    const-string v0, "newCount"

    .line 952
    invoke-static {p3, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 954
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 955
    invoke-interface {p0, p1, p3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static spliteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Spliterator;
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

    .line 1108
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    .line 1109
    sget-object v1, Lcom/google/common/collect/-$$Lambda$Multisets$cvAUryqBQ5ACjGtci4h38iRqYCM;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Multisets$cvAUryqBQ5ACjGtci4h38iRqYCM;

    .line 1113
    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v2

    and-int/lit16 v2, v2, 0x510

    or-int/lit8 v2, v2, 0x40

    .line 1115
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->size()I

    move-result p0

    int-to-long v3, p0

    .line 1109
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/CollectSpliterators;->flatMap(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method public static sum(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "+TE;>;",
            "Lcom/google/common/collect/Multiset<",
            "+TE;>;)",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 538
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    new-instance v0, Lcom/google/common/collect/Multisets$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$3;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method public static toMultiset(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "M::",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;>(",
            "Ljava/util/function/Function<",
            "-TT;TE;>;",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/google/common/collect/-$$Lambda$Multisets$YoneUvFxwXMGW05uIggbsPvRBo8;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/-$$Lambda$Multisets$YoneUvFxwXMGW05uIggbsPvRBo8;-><init>(Ljava/util/function/Function;Ljava/util/function/ToIntFunction;)V

    sget-object p0, Lcom/google/common/collect/-$$Lambda$Multisets$nSg8KnV2rWlaLPt0DUhOLaV0hIY;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Multisets$nSg8KnV2rWlaLPt0DUhOLaV0hIY;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {p2, v0, p0, p1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static union(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "+TE;>;",
            "Lcom/google/common/collect/Multiset<",
            "+TE;>;)",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 410
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    new-instance v0, Lcom/google/common/collect/Multisets$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$1;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method public static unmodifiableMultiset(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;)",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset;

    return-object p0
.end method

.method public static unmodifiableMultiset(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset<",
            "+TE;>;)",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 103
    instance-of v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/Multiset;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableSortedMultiset(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;)",
            "Lcom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 233
    new-instance v0, Lcom/google/common/collect/UnmodifiableSortedMultiset;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/SortedMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-object v0
.end method
