.class public abstract Le/a/l0;
.super Le/a/z1/i;
.source "DispatchedTask.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/z1/i;"
    }
.end annotation


# instance fields
.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/z1/i;-><init>()V

    iput p1, p0, Le/a/l0;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Le/a/o;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Le/a/o;

    if-eqz p1, :cond_1

    iget-object v1, p1, Le/a/o;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public abstract a()Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p1, p2}, Ld/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 3
    :goto_0
    new-instance p2, Le/a/d0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    invoke-direct {p2, v0, p1}, Le/a/d0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0}, Le/a/l0;->a()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1, p2}, Le/a/x;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_3
    invoke-static {}, Ld/q/c/d;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract b()Ljava/lang/Object;
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/z1/i;->b:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/a/l0;->a()Lkotlin/coroutines/Continuation;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Le/a/i0;

    .line 3
    iget-object v2, v1, Le/a/i0;->h:Lkotlin/coroutines/Continuation;

    .line 4
    invoke-interface {v2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Le/a/l0;->b()Ljava/lang/Object;

    move-result-object v4

    .line 6
    iget-object v1, v1, Le/a/i0;->f:Ljava/lang/Object;

    .line 7
    invoke-static {v3, v1}, Le/a/x1/y;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    invoke-virtual {p0, v4}, Le/a/l0;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    .line 9
    iget v6, p0, Le/a/l0;->c:I

    invoke-static {v6}, Le/a/m0;->a(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    sget-object v6, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$b;

    invoke-interface {v3, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    if-nez v5, :cond_3

    if-eqz v6, :cond_3

    .line 10
    invoke-interface {v6}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v8

    if-nez v8, :cond_3

    .line 11
    invoke-interface {v6}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v5

    .line 12
    invoke-virtual {p0, v4, v5}, Le/a/l0;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 13
    sget-object v4, Ld/e;->a:Ld/e$a;

    .line 14
    invoke-static {}, Le/a/e0;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v2, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v4, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v5, v4}, Le/a/x1/t;->a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v5

    .line 16
    :cond_2
    :goto_1
    invoke-static {v5}, Ld/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    .line 17
    sget-object v4, Ld/e;->a:Ld/e$a;

    invoke-static {v5}, Ld/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {p0, v4}, Le/a/l0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ld/e;->a:Ld/e$a;

    invoke-static {v4}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v4}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 19
    :goto_2
    sget-object v2, Ld/j;->a:Ld/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    invoke-static {v3, v1}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 21
    :try_start_3
    sget-object v1, Ld/e;->a:Ld/e$a;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->afterTask()V

    sget-object v0, Ld/j;->a:Ld/j;

    invoke-static {v0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, Ld/e;->a:Ld/e$a;

    invoke-static {v0}, Ld/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :goto_3
    invoke-static {v0}, Ld/e;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Le/a/l0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v2

    .line 23
    :try_start_4
    invoke-static {v3, v1}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw v2

    .line 24
    :cond_5
    new-instance v1, Ld/h;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"

    invoke-direct {v1, v2}, Ld/h;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 25
    :try_start_5
    sget-object v2, Ld/e;->a:Ld/e$a;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->afterTask()V

    sget-object v0, Ld/j;->a:Ld/j;

    invoke-static {v0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    sget-object v2, Ld/e;->a:Ld/e$a;

    invoke-static {v0}, Ld/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :goto_4
    invoke-static {v0}, Ld/e;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Le/a/l0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method
