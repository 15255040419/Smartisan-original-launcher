.class public abstract Lcom/google/common/util/concurrent/ForwardingBlockingDeque;
.super Lcom/google/common/collect/ForwardingDeque;
.source "ForwardingBlockingDeque.java"

# interfaces
.implements Ljava/util/concurrent/BlockingDeque;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingDeque<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingDeque<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingDeque;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/Deque;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/Queue;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    return-object p0
.end method

.method protected abstract delegate()Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingDeque<",
            "TE;>;"
        }
    .end annotation
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingDeque;->drainTo(Ljava/util/Collection;)I

    move-result p0

    return p0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/BlockingDeque;->drainTo(Ljava/util/Collection;I)I

    move-result p0

    return p0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/BlockingDeque;->offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/BlockingDeque;->offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/BlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/BlockingDeque;->pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public putFirst(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingDeque;->putFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public putLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingDeque;->putLast(Ljava/lang/Object;)V

    return-void
.end method

.method public remainingCapacity()I
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingDeque;->remainingCapacity()I

    move-result p0

    return p0
.end method

.method public take()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingDeque;->take()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public takeFirst()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public takeLast()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingBlockingDeque;->delegate()Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/BlockingDeque;->takeLast()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
