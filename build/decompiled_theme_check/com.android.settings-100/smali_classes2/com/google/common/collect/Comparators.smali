.class public final Lcom/google/common/collect/Comparators;
.super Ljava/lang/Object;
.source "Comparators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptiesFirst(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/google/common/collect/-$$Lambda$Comparators$UiCe-AsF2a9gO9y8sRhfhsM498w;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Comparators$UiCe-AsF2a9gO9y8sRhfhsM498w;

    invoke-static {p0}, Ljava/util/Comparator;->nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static emptiesLast(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "Ljava/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 188
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/google/common/collect/-$$Lambda$Comparators$5-rbgZYIdOv59hWI8fiqZx2chh4;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Comparators$5-rbgZYIdOv59hWI8fiqZx2chh4;

    invoke-static {p0}, Ljava/util/Comparator;->nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static greatest(ILjava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Comparators;->least(ILjava/util/Comparator;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static isInOrder(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)Z"
        }
    .end annotation

    .line 74
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 76
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 78
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 80
    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isInStrictOrder(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)Z"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 100
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 102
    invoke-interface {p1, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$emptiesFirst$1(Ljava/util/Optional;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$emptiesLast$2(Ljava/util/Optional;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$least$0(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;
    .locals 0

    .line 135
    invoke-static {p0, p1}, Lcom/google/common/collect/TopKSelector;->least(ILjava/util/Comparator;)Lcom/google/common/collect/TopKSelector;

    move-result-object p0

    return-object p0
.end method

.method public static least(ILjava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "k"

    .line 132
    invoke-static {p0, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 133
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/google/common/collect/-$$Lambda$Comparators$_DWKGNH-cVQUcyfzpO4yn-mD4as;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/-$$Lambda$Comparators$_DWKGNH-cVQUcyfzpO4yn-mD4as;-><init>(ILjava/util/Comparator;)V

    sget-object p0, Lcom/google/common/collect/-$$Lambda$gdvJ8zzvQat-Rh6knqtwfSxKqxQ;->INSTANCE:Lcom/google/common/collect/-$$Lambda$gdvJ8zzvQat-Rh6knqtwfSxKqxQ;

    sget-object p1, Lcom/google/common/collect/-$$Lambda$Iilf_x3Yim75FBgBCib4qGxg29c;->INSTANCE:Lcom/google/common/collect/-$$Lambda$Iilf_x3Yim75FBgBCib4qGxg29c;

    sget-object v1, Lcom/google/common/collect/-$$Lambda$VPCwCVNyDcTS8_-paG2FrPedynw;->INSTANCE:Lcom/google/common/collect/-$$Lambda$VPCwCVNyDcTS8_-paG2FrPedynw;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    sget-object v3, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, p0, p1, v1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method public static lexicographical(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:TT;>(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Ljava/util/Comparator<",
            "Ljava/lang/Iterable<",
            "TS;>;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/google/common/collect/LexicographicalOrdering;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LexicographicalOrdering;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
