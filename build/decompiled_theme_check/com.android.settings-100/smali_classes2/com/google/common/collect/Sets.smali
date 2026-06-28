.class public final Lcom/google/common/collect/Sets;
.super Ljava/lang/Object;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Sets$DescendingSet;,
        Lcom/google/common/collect/Sets$UnmodifiableNavigableSet;,
        Lcom/google/common/collect/Sets$PowerSet;,
        Lcom/google/common/collect/Sets$SubSet;,
        Lcom/google/common/collect/Sets$CartesianSet;,
        Lcom/google/common/collect/Sets$FilteredNavigableSet;,
        Lcom/google/common/collect/Sets$FilteredSortedSet;,
        Lcom/google/common/collect/Sets$FilteredSet;,
        Lcom/google/common/collect/Sets$SetView;,
        Lcom/google/common/collect/Sets$Accumulator;,
        Lcom/google/common/collect/Sets$ImprovedAbstractSet;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cartesianProduct(Ljava/util/List;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+TB;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation

    .line 1328
    invoke-static {p0}, Lcom/google/common/collect/Sets$CartesianSet;->create(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static varargs cartesianProduct([Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Set<",
            "+TB;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation

    .line 1384
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Sets;->cartesianProduct(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static combinations(Ljava/util/Set;I)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;I)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 1628
    invoke-static {p0}, Lcom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    const-string v0, "size"

    .line 1629
    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 1630
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    const-string v2, "size (%s) must be <= set.size() (%s)"

    invoke-static {v0, v2, p1, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    if-nez p1, :cond_1

    .line 1632
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 1633
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1634
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 1636
    :cond_2
    new-instance v0, Lcom/google/common/collect/Sets$5;

    invoke-direct {v0, p1, p0}, Lcom/google/common/collect/Sets$5;-><init>(ILcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method public static complementOf(Ljava/util/Collection;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 510
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    .line 511
    check-cast p0, Ljava/util/EnumSet;

    invoke-static {p0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0

    .line 514
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "collection is empty; use the other version of this method"

    .line 513
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 515
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 516
    invoke-static {p0, v0}, Lcom/google/common/collect/Sets;->makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static complementOf(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 531
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/EnumSet;

    .line 533
    invoke-static {p0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p0

    goto :goto_0

    .line 534
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "*>;)",
            "Lcom/google/common/collect/Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 897
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 898
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    new-instance v0, Lcom/google/common/collect/Sets$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$3;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method static equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1742
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1743
    check-cast p1, Ljava/util/Set;

    .line 1746
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :catch_0
    :cond_2
    return v2
.end method

.method public static filter(Ljava/util/NavigableSet;Lcom/google/common/base/Predicate;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1127
    instance-of v0, p0, Lcom/google/common/collect/Sets$FilteredSet;

    if-eqz v0, :cond_0

    .line 1130
    check-cast p0, Lcom/google/common/collect/Sets$FilteredSet;

    .line 1131
    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 1132
    new-instance v0, Lcom/google/common/collect/Sets$FilteredNavigableSet;

    iget-object p0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast p0, Ljava/util/NavigableSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$FilteredNavigableSet;-><init>(Ljava/util/NavigableSet;Lcom/google/common/base/Predicate;)V

    return-object v0

    .line 1135
    :cond_0
    new-instance v0, Lcom/google/common/collect/Sets$FilteredNavigableSet;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Predicate;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$FilteredNavigableSet;-><init>(Ljava/util/NavigableSet;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1049
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 1050
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    .line 1052
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/Sets$FilteredSet;

    if-eqz v0, :cond_1

    .line 1055
    check-cast p0, Lcom/google/common/collect/Sets$FilteredSet;

    .line 1056
    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 1057
    new-instance v0, Lcom/google/common/collect/Sets$FilteredSet;

    iget-object p0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast p0, Ljava/util/Set;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lcom/google/common/base/Predicate;)V

    return-object v0

    .line 1060
    :cond_1
    new-instance v0, Lcom/google/common/collect/Sets$FilteredSet;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Predicate;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static filter(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lcom/google/common/base/Predicate<",
            "-TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1088
    instance-of v0, p0, Lcom/google/common/collect/Sets$FilteredSet;

    if-eqz v0, :cond_0

    .line 1091
    check-cast p0, Lcom/google/common/collect/Sets$FilteredSet;

    .line 1092
    iget-object v0, p0, Lcom/google/common/collect/Sets$FilteredSet;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 1093
    new-instance v0, Lcom/google/common/collect/Sets$FilteredSortedSet;

    iget-object p0, p0, Lcom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast p0, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)V

    return-object v0

    .line 1096
    :cond_0
    new-instance v0, Lcom/google/common/collect/Sets$FilteredSortedSet;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Predicate;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method static hashCodeImpl(Ljava/util/Set;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)I"
        }
    .end annotation

    .line 1728
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1729
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    not-int v1, v1

    not-int v1, v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static varargs immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lcom/google/common/collect/ImmutableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;[TE;)",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 104
    invoke-static {p0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static immutableEnumSet(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 120
    instance-of v0, p0, Lcom/google/common/collect/ImmutableEnumSet;

    if-eqz v0, :cond_0

    .line 121
    check-cast p0, Lcom/google/common/collect/ImmutableEnumSet;

    return-object p0

    .line 122
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 123
    check-cast p0, Ljava/util/Collection;

    .line 124
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 127
    :cond_1
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 130
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 131
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 133
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 134
    invoke-static {v0}, Lcom/google/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 136
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static intersection(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "*>;)",
            "Lcom/google/common/collect/Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 826
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 827
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    new-instance v0, Lcom/google/common/collect/Sets$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$2;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private static makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 539
    invoke-static {p1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    .line 540
    invoke-virtual {p1, p0}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method public static newConcurrentHashSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newConcurrentHashSet(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 324
    invoke-static {}, Lcom/google/common/collect/Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    .line 325
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newCopyOnWriteArraySet()Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 475
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    return-object v0
.end method

.method public static newCopyOnWriteArraySet(Ljava/lang/Iterable;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 489
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 491
    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    .line 492
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    .line 493
    :goto_0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static newEnumSet(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 196
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    .line 197
    invoke-static {p1, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object p1
.end method

.method public static newHashSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 257
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    .line 258
    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 275
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 276
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method public static varargs newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 233
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    .line 234
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static newHashSetWithExpectedSize(I)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 461
    invoke-static {}, Lcom/google/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newLinkedHashSet()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 362
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 365
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 366
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newLinkedHashSetWithExpectedSize(I)Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 575
    invoke-static {p0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static newTreeSet()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method public static newTreeSet(Ljava/lang/Iterable;)Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .line 426
    invoke-static {}, Lcom/google/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    .line 427
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method

.method public static newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .line 448
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static powerSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 1492
    new-instance v0, Lcom/google/common/collect/Sets$PowerSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$PowerSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static removeAllImpl(Ljava/util/Set;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1938
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 1940
    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 1949
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1950
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 1952
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Iterator<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1931
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1932
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static subSet(Ljava/util/NavigableSet;Lcom/google/common/collect/Range;)Ljava/util/NavigableSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;>(",
            "Ljava/util/NavigableSet<",
            "TK;>;",
            "Lcom/google/common/collect/Range<",
            "TK;>;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2107
    invoke-interface {p0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2108
    invoke-interface {p0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 2109
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2110
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2112
    invoke-interface {p0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "set is using a custom comparator which is inconsistent with the natural ordering."

    .line 2111
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2115
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2117
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    .line 2118
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 2119
    :goto_1
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    .line 2120
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object p1

    sget-object v5, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne p1, v5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 2116
    :goto_2
    invoke-interface {p0, v0, v3, v4, v1}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0

    .line 2121
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2122
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object p1

    sget-object v3, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne p1, v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    invoke-interface {p0, v0, v1}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0

    .line 2123
    :cond_6
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2124
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->upperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object p1

    sget-object v3, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne p1, v3, :cond_7

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    invoke-interface {p0, v0, v1}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0

    .line 2126
    :cond_8
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    return-object p0
.end method

.method public static symmetricDifference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lcom/google/common/collect/Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 965
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 966
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    new-instance v0, Lcom/google/common/collect/Sets$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$4;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public static synchronizedNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1925
    invoke-static {p0}, Lcom/google/common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public static toImmutableEnumSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/google/common/collect/Sets$Accumulator;->TO_IMMUTABLE_ENUM_SET:Ljava/util/stream/Collector;

    return-object v0
.end method

.method public static union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lcom/google/common/collect/Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "set1"

    .line 727
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "set2"

    .line 728
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    new-instance v0, Lcom/google/common/collect/Sets$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Sets$1;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public static unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1768
    instance-of v0, p0, Lcom/google/common/collect/ImmutableCollection;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/common/collect/Sets$UnmodifiableNavigableSet;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1771
    :cond_0
    new-instance v0, Lcom/google/common/collect/Sets$UnmodifiableNavigableSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method
