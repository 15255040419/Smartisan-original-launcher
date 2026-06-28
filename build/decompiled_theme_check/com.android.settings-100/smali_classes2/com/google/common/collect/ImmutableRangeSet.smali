.class public final Lcom/google/common/collect/ImmutableRangeSet;
.super Lcom/google/common/collect/AbstractRangeSet;
.source "ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;,
        Lcom/google/common/collect/ImmutableRangeSet$Builder;,
        Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;,
        Lcom/google/common/collect/ImmutableRangeSet$AsSet;,
        Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/AbstractRangeSet<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient complement:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final transient ranges:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 54
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->EMPTY:Lcom/google/common/collect/ImmutableRangeSet;

    .line 56
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 57
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->ALL:Lcom/google/common/collect/ImmutableRangeSet;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lcom/google/common/collect/AbstractRangeSet;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableRangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/google/common/collect/AbstractRangeSet;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 147
    iput-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static all()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/google/common/collect/ImmutableRangeSet;->ALL:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder<",
            "TC;>;"
        }
    .end annotation

    .line 710
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 101
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-interface {p0}, Lcom/google/common/collect/RangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/common/collect/RangeSet;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->all()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0

    .line 108
    :cond_1
    instance-of v0, p0, Lcom/google/common/collect/ImmutableRangeSet;

    if-eqz v0, :cond_2

    .line 109
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 110
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableRangeSet;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 114
    :cond_2
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-interface {p0}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->build()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0
.end method

.method private intersectRanges(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-object p0

    .line 429
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 433
    invoke-static {}, Lcom/google/common/collect/Range;->upperBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 431
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 442
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 443
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 446
    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 444
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v1

    goto :goto_1

    .line 451
    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    :goto_1
    sub-int/2addr v1, v0

    if-nez v1, :cond_4

    .line 455
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 457
    :cond_4
    new-instance v2, Lcom/google/common/collect/ImmutableRangeSet$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/google/common/collect/ImmutableRangeSet$1;-><init>(Lcom/google/common/collect/ImmutableRangeSet;IILcom/google/common/collect/Range;)V

    return-object v2

    .line 423
    :cond_5
    :goto_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static of()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/google/common/collect/ImmutableRangeSet;->EMPTY:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method public static of(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->all()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0

    .line 89
    :cond_1
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static toImmutableRangeSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Ljava/util/stream/Collector<",
            "Lcom/google/common/collect/Range<",
            "TE;>;*",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/google/common/collect/CollectCollectors;->toImmutableRangeSet()Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static unionOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable<",
            "*>;>(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 138
    invoke-static {p0}, Lcom/google/common/collect/TreeRangeSet;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeRangeSet;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableRangeSet;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addAll(Lcom/google/common/collect/RangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public asDescendingSetOfRanges()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 300
    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/Range;->rangeLexOrdering()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic asDescendingSetOfRanges()Ljava/util/Set;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->asDescendingSetOfRanges()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public asRanges()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 292
    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/Range;->rangeLexOrdering()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public bridge synthetic asRanges()Ljava/util/Set;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->asRanges()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public asSet(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 515
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->of()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 525
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->maxValue()Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Neither the DiscreteDomain nor this range set are bounded above"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 534
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;-><init>(Lcom/google/common/collect/ImmutableRangeSet;Lcom/google/common/collect/DiscreteDomain;)V

    return-object v0

    .line 523
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Neither the DiscreteDomain nor this range set are bounded below"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/google/common/collect/AbstractRangeSet;->clear()V

    return-void
.end method

.method public complement()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    if-eqz v0, :cond_0

    return-object v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->all()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0

    .line 370
    :cond_2
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;-><init>(Lcom/google/common/collect/ImmutableRangeSet;)V

    .line 371
    new-instance v1, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableRangeSet;)V

    iput-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v1
.end method

.method public bridge synthetic complement()Lcom/google/common/collect/RangeSet;
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->complement()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public difference(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 412
    invoke-static {p0}, Lcom/google/common/collect/TreeRangeSet;->create(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/TreeRangeSet;

    move-result-object p0

    .line 413
    invoke-interface {p0, p1}, Lcom/google/common/collect/RangeSet;->removeAll(Lcom/google/common/collect/RangeSet;)V

    .line 414
    invoke-static {p0}, Lcom/google/common/collect/ImmutableRangeSet;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 177
    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 179
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 175
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 182
    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic enclosesAll(Lcom/google/common/collect/RangeSet;)Z
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->enclosesAll(Lcom/google/common/collect/RangeSet;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 48
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public intersection(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 398
    invoke-static {p0}, Lcom/google/common/collect/TreeRangeSet;->create(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/TreeRangeSet;

    move-result-object p0

    .line 399
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->complement()Lcom/google/common/collect/RangeSet;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/common/collect/RangeSet;->removeAll(Lcom/google/common/collect/RangeSet;)V

    .line 400
    invoke-static {p0}, Lcom/google/common/collect/ImmutableRangeSet;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0
.end method

.method public intersects(Lcom/google/common/collect/Range;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 157
    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 159
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 155
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 163
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 164
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-lez v0, :cond_1

    .line 167
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    sub-int/2addr v0, v2

    .line 168
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 169
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isEmpty()Z
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method isPartialView()Z
    .locals 0

    .line 705
    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result p0

    return p0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 190
    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    .line 191
    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v2

    .line 192
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 188
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 196
    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Range;

    .line 197
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    return-object p0

    :cond_1
    return-object v1
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public removeAll(Lcom/google/common/collect/RangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public removeAll(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public span()Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Range;

    iget-object p0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v0, p0}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object p0

    return-object p0

    .line 205
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    .line 486
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    .line 488
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->intersectRanges(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0

    .line 492
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0
.end method

.method public union(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet<",
            "TC;>;"
        }
    .end annotation

    .line 385
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->asRanges()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableRangeSet;->unionOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    return-object p0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 829
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;

    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method
