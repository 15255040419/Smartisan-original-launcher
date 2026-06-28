.class Lcom/google/common/collect/ConsumingQueueIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "ConsumingQueueIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TT;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    iput-object p1, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    return-void
.end method

.method varargs constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayDeque;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    .line 34
    iget-object p0, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/ConsumingQueueIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/ConsumingQueueIterator;->queue:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
