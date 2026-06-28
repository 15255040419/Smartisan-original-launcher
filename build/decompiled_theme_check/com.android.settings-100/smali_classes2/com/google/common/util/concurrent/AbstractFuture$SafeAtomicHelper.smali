.class final Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;
.super Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SafeAtomicHelper"
.end annotation


# instance fields
.field final listenersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/AbstractFuture;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;",
            ">;"
        }
    .end annotation
.end field

.field final valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/AbstractFuture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final waiterNextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ">;"
        }
    .end annotation
.end field

.field final waiterThreadUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final waitersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/AbstractFuture;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/AbstractFuture;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/AbstractFuture;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/AbstractFuture;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1152
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    .line 1153
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waiterThreadUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1154
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waiterNextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1155
    iput-object p3, p0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waitersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1156
    iput-object p4, p0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->listenersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1157
    iput-object p5, p0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;",
            ")Z"
        }
    .end annotation

    .line 1177
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->listenersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1182
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->valueUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ")Z"
        }
    .end annotation

    .line 1172
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waitersUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method putNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .locals 0

    .line 1167
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waiterNextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method putThread(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V
    .locals 0

    .line 1162
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;->waiterThreadUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
