.class final Lcom/google/common/collect/CollectSpliterators;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static filter(Ljava/util/Spliterator;Ljava/util/function/Predicate;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 141
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1Splitr;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CollectSpliterators$1Splitr;-><init>(Ljava/util/Spliterator;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method static flatMap(Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TF;>;",
            "Ljava/util/function/Function<",
            "-TF;",
            "Ljava/util/Spliterator<",
            "TT;>;>;IJ)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    and-int/lit16 v0, p2, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "flatMap does not support SUBSIZED characteristic"

    .line 203
    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "flatMap does not support SORTED characteristic"

    .line 206
    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 209
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;

    const/4 v3, 0x0

    move-object v2, v0

    move-object v4, p0

    move v5, p2

    move-wide v6, p3

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/common/collect/CollectSpliterators$1FlatMapSpliterator;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;IJLjava/util/function/Function;)V

    return-object v0
.end method

.method static indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/function/IntFunction<",
            "TT;>;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-static {p0, p1, p2, v0}, Lcom/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static indexed(IILjava/util/function/IntFunction;Ljava/util/Comparator;)Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/function/IntFunction<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 48
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 96
    :cond_1
    new-instance v1, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;

    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object p0

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/google/common/collect/CollectSpliterators$1WithCharacteristics;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/function/IntFunction;ILjava/util/Comparator;)V

    return-object v1
.end method

.method static map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Spliterator<",
            "TF;>;",
            "Ljava/util/function/Function<",
            "-TF;+TT;>;)",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 105
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    new-instance v0, Lcom/google/common/collect/CollectSpliterators$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/CollectSpliterators$1;-><init>(Ljava/util/Spliterator;Ljava/util/function/Function;)V

    return-object v0
.end method
