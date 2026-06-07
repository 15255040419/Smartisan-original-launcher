.class public final Le/a/i0;
.super Le/a/l0;
.source "DispatchedContinuation.kt"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
.implements Lkotlin/coroutines/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/l0<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile _reusableCancellableContinuation:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final e:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

.field public final f:Ljava/lang/Object;

.field public final g:Le/a/v;

.field public final h:Lkotlin/coroutines/Continuation;
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

    const-class v0, Le/a/i0;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_reusableCancellableContinuation"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Le/a/i0;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Le/a/v;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/v;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/l0;-><init>(I)V

    iput-object p1, p0, Le/a/i0;->g:Le/a/v;

    iput-object p2, p0, Le/a/i0;->h:Lkotlin/coroutines/Continuation;

    .line 2
    invoke-static {}, Le/a/j0;->a()Le/a/x1/u;

    move-result-object p1

    iput-object p1, p0, Le/a/i0;->d:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Le/a/i0;->h:Lkotlin/coroutines/Continuation;

    instance-of p2, p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    iput-object p1, p0, Le/a/i0;->e:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 4
    invoke-virtual {p0}, Le/a/i0;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Le/a/i0;->f:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Le/a/i0;->_reusableCancellableContinuation:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CancellableContinuation;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/i0;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 4
    sget-object v1, Le/a/j0;->b:Le/a/x1/u;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 5
    sget-object v0, Le/a/i0;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    return-object v2

    .line 6
    :cond_2
    instance-of p1, v0, Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 7
    sget-object p1, Le/a/i0;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inconsistent state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Lkotlin/coroutines/Continuation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public final a(Le/a/h;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i0;->_reusableCancellableContinuation:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    instance-of v2, v0, Le/a/h;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v0, p1, :cond_0

    move v1, v3

    :cond_0
    return v1

    :cond_1
    return v3

    :cond_2
    return v1
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .locals 3

    .line 11
    :cond_0
    iget-object v0, p0, Le/a/i0;->_reusableCancellableContinuation:Ljava/lang/Object;

    .line 12
    sget-object v1, Le/a/j0;->b:Le/a/x1/u;

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 13
    sget-object v0, Le/a/i0;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Le/a/j0;->b:Le/a/x1/u;

    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 14
    :cond_1
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    return v2

    .line 15
    :cond_2
    sget-object v1, Le/a/i0;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i0;->d:Ljava/lang/Object;

    .line 2
    invoke-static {}, Le/a/e0;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Le/a/j0;->a()Le/a/x1/u;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 3
    :cond_2
    :goto_1
    invoke-static {}, Le/a/j0;->a()Le/a/x1/u;

    move-result-object v1

    iput-object v1, p0, Le/a/i0;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Le/a/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/h<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i0;->_reusableCancellableContinuation:Ljava/lang/Object;

    instance-of v1, v0, Le/a/h;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/h;

    return-object v0
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i0;->e:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Le/a/i0;->h:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/i0;->h:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 2
    invoke-static {p1}, Le/a/p;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/i0;->g:Le/a/v;

    invoke-virtual {v2, v0}, Le/a/v;->a(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    iput-object v1, p0, Le/a/i0;->d:Ljava/lang/Object;

    .line 5
    iput v3, p0, Le/a/l0;->c:I

    .line 6
    iget-object p1, p0, Le/a/i0;->g:Le/a/v;

    invoke-virtual {p1, v0, p0}, Le/a/v;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Le/a/q1;->b:Le/a/q1;

    invoke-virtual {v0}, Le/a/q1;->a()Le/a/q0;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Le/a/q0;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iput-object v1, p0, Le/a/i0;->d:Ljava/lang/Object;

    .line 10
    iput v3, p0, Le/a/l0;->c:I

    .line 11
    invoke-virtual {v0, p0}, Le/a/q0;->a(Le/a/l0;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Le/a/q0;->c(Z)V

    .line 13
    :try_start_0
    invoke-virtual {p0}, Le/a/i0;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    iget-object v3, p0, Le/a/i0;->f:Ljava/lang/Object;

    .line 14
    invoke-static {v2, v3}, Le/a/x1/y;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v4, p0, Le/a/i0;->h:Lkotlin/coroutines/Continuation;

    invoke-interface {v4, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 16
    sget-object p1, Ld/j;->a:Ld/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-static {v2, v3}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 18
    :cond_2
    invoke-virtual {v0}, Le/a/q0;->d()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    invoke-static {v2, v3}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const/4 v2, 0x0

    .line 20
    :try_start_3
    invoke-virtual {p0, p1, v2}, Le/a/l0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Le/a/q0;->a(Z)V

    :goto_1
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v1}, Le/a/q0;->a(Z)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i0;->g:Le/a/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i0;->h:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Le/a/f0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
