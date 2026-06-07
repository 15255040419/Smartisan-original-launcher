.class public Le/a/h;
.super Le/a/l0;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlinx/coroutines/CancellableContinuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/l0<",
        "TT;>;",
        "Lkotlinx/coroutines/CancellableContinuation<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile _decision:I

.field public volatile _parentHandle:Ljava/lang/Object;

.field public volatile _state:Ljava/lang/Object;

.field public final d:Lkotlin/coroutines/CoroutineContext;

.field public final e:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Le/a/h;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Le/a/h;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Le/a/h;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Le/a/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Le/a/l0;-><init>(I)V

    iput-object p1, p0, Le/a/h;->e:Lkotlin/coroutines/Continuation;

    .line 2
    iget-object p1, p0, Le/a/h;->e:Lkotlin/coroutines/Continuation;

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Le/a/h;->d:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Le/a/h;->_decision:I

    .line 4
    sget-object p1, Le/a/b;->a:Le/a/b;

    iput-object p1, p0, Le/a/h;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/a/h;->_parentHandle:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;)Le/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ld/j;",
            ">;)",
            "Le/a/f;"
        }
    .end annotation

    .line 13
    instance-of v0, p1, Le/a/f;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/f;

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/y0;

    invoke-direct {v0, p1}, Le/a/y0;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final a(Ljava/lang/Object;I)Le/a/k;
    .locals 3

    .line 16
    :goto_0
    iget-object v0, p0, Le/a/h;->_state:Ljava/lang/Object;

    .line 17
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 18
    sget-object v1, Le/a/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Le/a/h;->e()V

    .line 20
    invoke-virtual {p0, p2}, Le/a/h;->a(I)V

    return-object v2

    .line 21
    :cond_1
    instance-of p2, v0, Le/a/k;

    if-eqz p2, :cond_2

    .line 22
    check-cast v0, Le/a/k;

    invoke-virtual {v0}, Le/a/k;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v0

    .line 23
    :cond_2
    invoke-virtual {p0, p1}, Le/a/h;->c(Ljava/lang/Object;)V

    throw v2
.end method

.method public a(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;
    .locals 0

    .line 11
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h;->e:Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 14
    invoke-virtual {p0}, Le/a/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-static {p0, p1}, Le/a/m0;->a(Le/a/l0;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 3
    instance-of v0, p1, Le/a/r;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    check-cast p1, Le/a/r;

    iget-object p1, p1, Le/a/r;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p0}, Le/a/h;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 6
    new-instance v0, Le/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in cancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/a/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-static {p2, v0}, Le/a/x;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ld/j;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 0

    .line 2
    iput-object p1, p0, Le/a/h;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 3

    .line 8
    iget v0, p0, Le/a/l0;->c:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Le/a/h;->e:Lkotlin/coroutines/Continuation;

    instance-of v2, v0, Le/a/i0;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Le/a/i0;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, p1}, Le/a/i0;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h;->h()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 5
    instance-of v0, p1, Le/a/q;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/q;

    iget-object p1, p1, Le/a/q;->b:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Le/a/r;

    if-eqz v0, :cond_1

    check-cast p1, Le/a/r;

    iget-object p1, p1, Le/a/r;->a:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Le/a/h;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/a/h;->cancel(Ljava/lang/Throwable;)Z

    .line 4
    invoke-virtual {p0}, Le/a/h;->e()V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already resumed, but proposed with update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/h;->isCompleted()Z

    move-result v0

    .line 2
    iget v1, p0, Le/a/l0;->c:I

    if-eqz v1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/h;->e:Lkotlin/coroutines/Continuation;

    instance-of v2, v1, Le/a/i0;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Le/a/i0;

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1, p0}, Le/a/i0;->a(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Le/a/h;->cancel(Ljava/lang/Throwable;)Z

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Le/a/h;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    new-instance v1, Le/a/k;

    instance-of v3, v0, Le/a/f;

    invoke-direct {v1, p0, p1, v3}, Le/a/k;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;Z)V

    .line 4
    sget-object v4, Le/a/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 5
    :try_start_0
    check-cast v0, Le/a/f;

    invoke-virtual {v0, p1}, Le/a/g;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p0}, Le/a/h;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 7
    new-instance v1, Le/a/t;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in cancellation handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Le/a/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-static {v0, v1}, Le/a/x;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 9
    :cond_2
    :goto_1
    invoke-virtual {p0}, Le/a/h;->e()V

    .line 10
    invoke-virtual {p0, v2}, Le/a/h;->a(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public completeResume(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Le/a/i;->a:Le/a/x1/u;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_2
    :goto_1
    iget p1, p0, Le/a/l0;->c:I

    invoke-virtual {p0, p1}, Le/a/h;->a(I)V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h;->f()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 3
    :cond_0
    sget-object v0, Le/a/m1;->a:Le/a/m1;

    invoke-virtual {p0, v0}, Le/a/h;->a(Lkotlinx/coroutines/DisposableHandle;)V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le/a/h;->d()V

    :cond_0
    return-void
.end method

.method public final f()Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/h;->k()V

    .line 2
    invoke-virtual {p0}, Le/a/h;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/h;->h()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Le/a/o;

    if-eqz v1, :cond_2

    check-cast v0, Le/a/o;

    iget-object v0, v0, Le/a/o;->a:Ljava/lang/Throwable;

    .line 5
    invoke-static {}, Le/a/e0;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v0, p0}, Le/a/x1/t;->a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_1
    throw v0

    .line 7
    :cond_2
    iget v1, p0, Le/a/l0;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 8
    invoke-virtual {p0}, Le/a/h;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$b;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_4

    .line 9
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 10
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v1

    .line 11
    invoke-virtual {p0, v0, v1}, Le/a/h;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 12
    invoke-static {}, Le/a/e0;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {v1, p0}, Le/a/x1/t;->a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v1

    :cond_3
    throw v1

    .line 14
    :cond_4
    invoke-virtual {p0, v0}, Le/a/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h;->e:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h;->d:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h;->e:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Le/a/i0;

    if-eqz v1, :cond_0

    check-cast v0, Le/a/i0;

    invoke-virtual {v0, p0}, Le/a/i0;->a(Le/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initCancellability()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/h;->k()V

    return-void
.end method

.method public invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ld/j;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    iget-object v2, p0, Le/a/h;->_state:Ljava/lang/Object;

    .line 2
    instance-of v3, v2, Le/a/b;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Le/a/h;->a(Lkotlin/jvm/functions/Function1;)Le/a/f;

    move-result-object v1

    .line 4
    :goto_0
    sget-object v3, Le/a/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 5
    :cond_2
    instance-of v1, v2, Le/a/f;

    if-nez v1, :cond_7

    .line 6
    instance-of v1, v2, Le/a/k;

    if-eqz v1, :cond_6

    .line 7
    move-object v1, v2

    check-cast v1, Le/a/k;

    invoke-virtual {v1}, Le/a/o;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    :try_start_0
    instance-of v1, v2, Le/a/o;

    if-nez v1, :cond_3

    move-object v2, v0

    :cond_3
    check-cast v2, Le/a/o;

    if-eqz v2, :cond_4

    iget-object v0, v2, Le/a/o;->a:Ljava/lang/Throwable;

    .line 9
    :cond_4
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p0}, Le/a/h;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 11
    new-instance v1, Le/a/t;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in cancellation handler for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Le/a/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    invoke-static {v0, v1}, Le/a/x;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 13
    :cond_5
    invoke-virtual {p0, p1, v2}, Le/a/h;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    throw v0

    :cond_6
    return-void

    .line 14
    :cond_7
    invoke-virtual {p0, p1, v2}, Le/a/h;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    throw v0
.end method

.method public isActive()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/NotCompleted;

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Le/a/k;

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h;->h()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/NotCompleted;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final k()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/a/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/h;->f()Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/h;->e:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->start()Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v4, Le/a/l;

    invoke-direct {v4, v1, p0}, Le/a/l;-><init>(Lkotlinx/coroutines/Job;Le/a/h;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 6
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/Job$a;->a(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Le/a/h;->a(Lkotlinx/coroutines/DisposableHandle;)V

    .line 8
    invoke-virtual {p0}, Le/a/h;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Le/a/h;->i()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 10
    sget-object v0, Le/a/m1;->a:Le/a/m1;

    invoke-virtual {p0, v0}, Le/a/h;->a(Lkotlinx/coroutines/DisposableHandle;)V

    :cond_2
    return-void
.end method

.method public final l()Z
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Le/a/h;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    sget-object v0, Le/a/h;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method public final m()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Le/a/h;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    sget-object v0, Le/a/h;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method public resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ld/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/r;

    invoke-direct {v0, p1, p2}, Le/a/r;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    iget p1, p0, Le/a/l0;->c:I

    invoke-virtual {p0, v0, p1}, Le/a/h;->a(Ljava/lang/Object;I)Le/a/k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p1, Le/a/o;->a:Ljava/lang/Throwable;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p0}, Le/a/h;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    .line 4
    new-instance v0, Le/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in cancellation handler for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/a/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p2, v0}, Le/a/x;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public resumeUndispatched(Le/a/v;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/v;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h;->e:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Le/a/i0;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Le/a/i0;

    if-eqz v0, :cond_1

    .line 2
    iget-object v2, v0, Le/a/i0;->g:Le/a/v;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    iget p1, p0, Le/a/l0;->c:I

    :goto_0
    invoke-virtual {p0, p2, p1}, Le/a/h;->a(Ljava/lang/Object;I)Le/a/k;

    return-void
.end method

.method public resumeUndispatchedWithException(Le/a/v;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/h;->e:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Le/a/i0;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Le/a/i0;

    .line 2
    new-instance v1, Le/a/o;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, p2, v3, v4, v2}, Le/a/o;-><init>(Ljava/lang/Throwable;ZILd/q/c/c;)V

    if-eqz v0, :cond_1

    iget-object v2, v0, Le/a/i0;->g:Le/a/v;

    :cond_1
    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    iget v4, p0, Le/a/l0;->c:I

    :goto_0
    invoke-virtual {p0, v1, v4}, Le/a/h;->a(Ljava/lang/Object;I)Le/a/k;

    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1, p0}, Le/a/p;->a(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Le/a/l0;->c:I

    invoke-virtual {p0, p1, v0}, Le/a/h;->a(Ljava/lang/Object;I)Le/a/k;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/h;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h;->e:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Le/a/f0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/h;->h()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Le/a/f0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Le/a/h;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    move-object v1, p1

    goto :goto_1

    .line 3
    :cond_0
    new-instance v1, Le/a/q;

    invoke-direct {v1, p2, p1}, Le/a/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    :goto_1
    sget-object v2, Le/a/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/a/h;->e()V

    .line 6
    sget-object p1, Le/a/i;->a:Le/a/x1/u;

    return-object p1

    .line 7
    :cond_2
    instance-of v1, v0, Le/a/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 8
    check-cast v0, Le/a/q;

    iget-object v1, v0, Le/a/q;->a:Ljava/lang/Object;

    if-ne v1, p2, :cond_6

    .line 9
    invoke-static {}, Le/a/e0;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v0, Le/a/q;->b:Ljava/lang/Object;

    if-ne p2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_5
    :goto_3
    sget-object v2, Le/a/i;->a:Le/a/x1/u;

    :cond_6
    return-object v2
.end method

.method public tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Le/a/h;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Le/a/o;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, p1, v3, v4, v2}, Le/a/o;-><init>(Ljava/lang/Throwable;ZILd/q/c/c;)V

    .line 4
    sget-object v2, Le/a/h;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/a/h;->e()V

    .line 6
    sget-object p1, Le/a/i;->a:Le/a/x1/u;

    return-object p1

    :cond_1
    return-object v2
.end method
