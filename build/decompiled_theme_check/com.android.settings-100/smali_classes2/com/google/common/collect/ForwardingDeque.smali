.class public abstract Lcom/google/common/collect/ForwardingDeque;
.super Lcom/google/common/collect/ForwardingQueue;
.source "ForwardingDeque.java"

# interfaces
.implements Ljava/util/Deque;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingQueue<",
        "TE;>;",
        "Ljava/util/Deque<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    return-object p0
.end method

.method protected abstract delegate()Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "TE;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/util/Queue;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    return-object p0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public pop()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 0

    .line 141
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
