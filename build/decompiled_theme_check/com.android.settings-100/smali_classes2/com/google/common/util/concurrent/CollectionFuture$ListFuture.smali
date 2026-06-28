.class final Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;
.super Lcom/google/common/util/concurrent/CollectionFuture;
.source "CollectionFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CollectionFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListFuture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/CollectionFuture<",
        "TV;",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;Z)V
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

    .line 90
    invoke-direct {p0}, Lcom/google/common/util/concurrent/CollectionFuture;-><init>()V

    .line 91
    new-instance v0, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;-><init>(Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;Lcom/google/common/collect/ImmutableCollection;Z)V

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/CollectionFuture$ListFuture;->init(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V

    return-void
.end method
