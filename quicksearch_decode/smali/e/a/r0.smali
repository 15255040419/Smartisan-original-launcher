.class public abstract Le/a/r0;
.super Le/a/s0;
.source "EventLoop.common.kt"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r0$c;,
        Le/a/r0$a;,
        Le/a/r0$b;,
        Le/a/r0$d;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile _delayed:Ljava/lang/Object;

.field public volatile _isCompleted:I

.field public volatile _queue:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Le/a/r0;

    const-string v2, "_queue"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Le/a/r0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_delayed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Le/a/r0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/s0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/r0;->_queue:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Le/a/r0;->_delayed:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le/a/r0;->_isCompleted:I

    return-void
.end method

.method public static final synthetic a(Le/a/r0;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/r0;->isCompleted()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()J
    .locals 6

    .line 2
    invoke-super {p0}, Le/a/q0;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/r0;->_queue:Ljava/lang/Object;

    const-wide v4, 0x7fffffffffffffffL

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Le/a/x1/m;

    if-eqz v1, :cond_5

    check-cast v0, Le/a/x1/m;

    invoke-virtual {v0}, Le/a/x1/m;->c()Z

    move-result v0

    if-nez v0, :cond_2

    return-wide v2

    .line 5
    :cond_2
    :goto_0
    iget-object v0, p0, Le/a/r0;->_delayed:Ljava/lang/Object;

    check-cast v0, Le/a/r0$d;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Le/a/x1/z;->d()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0

    check-cast v0, Le/a/r0$c;

    if-eqz v0, :cond_4

    .line 6
    iget-wide v0, v0, Le/a/r0$c;->c:J

    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lkotlinx/coroutines/TimeSource;->nanoTime()J

    move-result-wide v4

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    :goto_1
    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Ld/s/e;->a(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    return-wide v4

    .line 7
    :cond_5
    invoke-static {}, Le/a/u0;->a()Le/a/x1/u;

    move-result-object v1

    if-ne v0, v1, :cond_6

    return-wide v4

    :cond_6
    return-wide v2
.end method

.method public final a(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
    .locals 3

    .line 8
    invoke-static {p1, p2}, Le/a/u0;->a(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 9
    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 10
    :goto_0
    new-instance v2, Le/a/r0$b;

    add-long/2addr p1, v0

    invoke-direct {v2, p1, p2, p3}, Le/a/r0$b;-><init>(JLjava/lang/Runnable;)V

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Le/a/r0;->b(JLe/a/r0$c;)V

    goto :goto_1

    .line 12
    :cond_1
    sget-object v2, Le/a/m1;->a:Le/a/m1;

    :goto_1
    return-object v2
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 14
    invoke-virtual {p0, p1}, Le/a/r0;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Le/a/s0;->f()V

    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Le/a/g0;->h:Le/a/g0;

    invoke-virtual {v0, p1}, Le/a/r0;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 13
    invoke-virtual {p0, p2}, Le/a/r0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Le/a/r0$c;)Z
    .locals 1

    .line 17
    iget-object v0, p0, Le/a/r0;->_delayed:Ljava/lang/Object;

    check-cast v0, Le/a/r0$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/x1/z;->d()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0

    check-cast v0, Le/a/r0$c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final b(JLe/a/r0$c;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/a/r0;->c(JLe/a/r0$c;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Le/a/s0;->a(JLe/a/r0$c;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0, p3}, Le/a/r0;->a(Le/a/r0$c;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Le/a/s0;->f()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/Runnable;)Z
    .locals 5

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Le/a/r0;->_queue:Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Le/a/r0;->isCompleted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Le/a/r0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_2
    instance-of v3, v0, Le/a/x1/m;

    if-eqz v3, :cond_7

    if-eqz v0, :cond_6

    .line 9
    move-object v3, v0

    check-cast v3, Le/a/x1/m;

    invoke-virtual {v3, p1}, Le/a/x1/m;->a(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    .line 10
    :cond_4
    sget-object v1, Le/a/r0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Le/a/x1/m;->e()Le/a/x1/m;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v1

    .line 11
    :cond_6
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_7
    invoke-static {}, Le/a/u0;->a()Le/a/x1/u;

    move-result-object v3

    if-ne v0, v3, :cond_8

    return v2

    .line 13
    :cond_8
    new-instance v2, Le/a/x1/m;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Le/a/x1/m;-><init>(IZ)V

    if-eqz v0, :cond_9

    .line 14
    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Le/a/x1/m;->a(Ljava/lang/Object;)I

    .line 15
    invoke-virtual {v2, p1}, Le/a/x1/m;->a(Ljava/lang/Object;)I

    .line 16
    sget-object v3, Le/a/r0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 17
    :cond_9
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(JLe/a/r0$c;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/r0;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/r0;->_delayed:Ljava/lang/Object;

    check-cast v0, Le/a/r0$d;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Le/a/r0;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v1, Le/a/r0$d;

    invoke-direct {v1, p1, p2}, Le/a/r0$d;-><init>(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Le/a/r0;->_delayed:Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast v0, Le/a/r0$d;

    .line 5
    :goto_0
    invoke-virtual {p3, p1, p2, v0, p0}, Le/a/r0$c;->a(JLe/a/r0$d;Le/a/r0;)I

    move-result p1

    return p1

    .line 6
    :cond_2
    invoke-static {}, Ld/q/c/d;->a()V

    throw v2
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    iput p1, p0, Le/a/r0;->_isCompleted:I

    return-void
.end method

.method public delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ld/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay$a;->a(Lkotlinx/coroutines/Delay;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g()V
    .locals 4

    .line 1
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/a/r0;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Le/a/r0;->_queue:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 3
    sget-object v0, Le/a/r0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {}, Le/a/u0;->a()Le/a/x1/u;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_2
    instance-of v1, v0, Le/a/x1/m;

    if-eqz v1, :cond_3

    .line 5
    check-cast v0, Le/a/x1/m;

    invoke-virtual {v0}, Le/a/x1/m;->a()Z

    return-void

    .line 6
    :cond_3
    invoke-static {}, Le/a/u0;->a()Le/a/x1/u;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return-void

    .line 7
    :cond_4
    new-instance v1, Le/a/x1/m;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Le/a/x1/m;-><init>(IZ)V

    if-eqz v0, :cond_5

    .line 8
    move-object v2, v0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Le/a/x1/m;->a(Ljava/lang/Object;)I

    .line 9
    sget-object v2, Le/a/r0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 10
    :cond_5
    new-instance v0, Ld/h;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {v0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Ljava/lang/Runnable;
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Le/a/r0;->_queue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 2
    :cond_1
    instance-of v2, v0, Le/a/x1/m;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    .line 3
    move-object v1, v0

    check-cast v1, Le/a/x1/m;

    invoke-virtual {v1}, Le/a/x1/m;->f()Ljava/lang/Object;

    move-result-object v2

    .line 4
    sget-object v3, Le/a/x1/m;->g:Le/a/x1/u;

    if-eq v2, v3, :cond_2

    check-cast v2, Ljava/lang/Runnable;

    return-object v2

    .line 5
    :cond_2
    sget-object v2, Le/a/r0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Le/a/x1/m;->e()Le/a/x1/m;

    move-result-object v1

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Ld/h;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {v0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_4
    invoke-static {}, Le/a/u0;->a()Le/a/x1/u;

    move-result-object v2

    if-ne v0, v2, :cond_5

    return-object v1

    .line 8
    :cond_5
    sget-object v2, Le/a/r0;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    :cond_6
    new-instance v0, Ld/h;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {v0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/q0;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/r0;->_delayed:Ljava/lang/Object;

    check-cast v0, Le/a/r0$d;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Le/a/x1/z;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/r0;->_queue:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    .line 5
    :cond_2
    instance-of v3, v0, Le/a/x1/m;

    if-eqz v3, :cond_3

    check-cast v0, Le/a/x1/m;

    invoke-virtual {v0}, Le/a/x1/m;->c()Z

    move-result v1

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {}, Le/a/u0;->a()Le/a/x1/u;

    move-result-object v3

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay$a;->a(Lkotlinx/coroutines/Delay;JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    return-object p1
.end method

.method public final isCompleted()Z
    .locals 1

    .line 1
    iget v0, p0, Le/a/r0;->_isCompleted:I

    return v0
.end method

.method public j()J
    .locals 9

    .line 1
    invoke-virtual {p0}, Le/a/q0;->d()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/r0;->_delayed:Ljava/lang/Object;

    check-cast v0, Le/a/r0$d;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Le/a/x1/z;->c()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4
    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lkotlinx/coroutines/TimeSource;->nanoTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 5
    :goto_0
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Le/a/x1/z;->a()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 7
    check-cast v5, Le/a/r0$c;

    .line 8
    invoke-virtual {v5, v3, v4}, Le/a/r0$c;->a(J)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    .line 9
    invoke-virtual {p0, v5}, Le/a/r0;->b(Ljava/lang/Runnable;)Z

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v8

    :goto_1
    if-eqz v5, :cond_3

    .line 10
    invoke-virtual {v0, v8}, Le/a/x1/z;->a(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    .line 11
    :cond_3
    monitor-exit v0

    goto :goto_2

    .line 12
    :cond_4
    monitor-exit v0

    .line 13
    :goto_2
    check-cast v6, Le/a/r0$c;

    if-eqz v6, :cond_5

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    throw v1

    .line 15
    :cond_5
    invoke-virtual {p0}, Le/a/r0;->h()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-wide v1

    .line 17
    :cond_6
    invoke-virtual {p0}, Le/a/r0;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()V
    .locals 3

    .line 1
    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    :goto_0
    iget-object v2, p0, Le/a/r0;->_delayed:Ljava/lang/Object;

    check-cast v2, Le/a/r0$d;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Le/a/x1/z;->f()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v2

    check-cast v2, Le/a/r0$c;

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Le/a/s0;->a(JLe/a/r0$c;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/r0;->_queue:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Le/a/r0;->_delayed:Ljava/lang/Object;

    return-void
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ld/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Le/a/u0;->a(J)J

    move-result-wide p1

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 2
    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3
    :goto_0
    new-instance v2, Le/a/r0$a;

    add-long/2addr p1, v0

    invoke-direct {v2, p0, p1, p2, p3}, Le/a/r0$a;-><init>(Le/a/r0;JLkotlinx/coroutines/CancellableContinuation;)V

    .line 4
    invoke-static {p3, v2}, Le/a/j;->a(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Le/a/r0;->b(JLe/a/r0$c;)V

    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 1
    sget-object v0, Le/a/q1;->b:Le/a/q1;

    invoke-virtual {v0}, Le/a/q1;->b()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Le/a/r0;->d(Z)V

    .line 3
    invoke-virtual {p0}, Le/a/r0;->g()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Le/a/r0;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/a/r0;->k()V

    return-void
.end method
