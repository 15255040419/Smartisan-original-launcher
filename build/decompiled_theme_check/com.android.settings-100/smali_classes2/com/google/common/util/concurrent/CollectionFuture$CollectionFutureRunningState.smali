.class abstract Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;
.super Lcom/google/common/util/concurrent/AggregateFuture$RunningState;
.source "CollectionFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CollectionFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CollectionFutureRunningState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/AggregateFuture<",
        "TV;TC;>.RunningState;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/CollectionFuture;

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/base/Optional<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/CollectionFuture;Lcom/google/common/collect/ImmutableCollection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection<",
            "+",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CollectionFuture;

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/ImmutableCollection;ZZ)V

    .line 42
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    const/4 p1, 0x0

    .line 47
    :goto_1
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 48
    iget-object p3, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method final collectOneValue(ZILjava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITV;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p3}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p0

    invoke-interface {v0, p2, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    if-nez p1, :cond_2

    .line 62
    iget-object p0, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CollectionFuture;

    .line 63
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CollectionFuture;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string p1, "Future was done before all dependencies completed"

    .line 62
    invoke-static {p0, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method abstract combine(Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/base/Optional<",
            "TV;>;>;)TC;"
        }
    .end annotation
.end method

.method final handleAllCompleted()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CollectionFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/common/util/concurrent/CollectionFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->this$0:Lcom/google/common/util/concurrent/CollectionFuture;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CollectionFuture;->isDone()Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :goto_0
    return-void
.end method

.method releaseResourcesAfterFailure()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->releaseResourcesAfterFailure()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/google/common/util/concurrent/CollectionFuture$CollectionFutureRunningState;->values:Ljava/util/List;

    return-void
.end method
