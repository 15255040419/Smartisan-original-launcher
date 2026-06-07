.class public final Le/a/j0;
.super Ljava/lang/Object;
.source "DispatchedContinuation.kt"


# static fields
.field public static final a:Le/a/x1/u;

.field public static final b:Le/a/x1/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/a/x1/u;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Le/a/x1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/j0;->a:Le/a/x1/u;

    .line 2
    new-instance v0, Le/a/x1/u;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Le/a/x1/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/a/j0;->b:Le/a/x1/u;

    return-void
.end method

.method public static final synthetic a()Le/a/x1/u;
    .locals 1

    .line 1
    sget-object v0, Le/a/j0;->a:Le/a/x1/u;

    return-object v0
.end method

.method public static final a(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Le/a/i0;

    if-eqz v0, :cond_4

    check-cast p0, Le/a/i0;

    .line 3
    invoke-static {p1}, Le/a/p;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/i0;->g:Le/a/v;

    invoke-virtual {p0}, Le/a/i0;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/v;->a(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5
    iput-object v0, p0, Le/a/i0;->d:Ljava/lang/Object;

    .line 6
    iput v2, p0, Le/a/l0;->c:I

    .line 7
    iget-object p1, p0, Le/a/i0;->g:Le/a/v;

    invoke-virtual {p0}, Le/a/i0;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Le/a/v;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 8
    :cond_0
    sget-object v1, Le/a/q1;->b:Le/a/q1;

    invoke-virtual {v1}, Le/a/q1;->a()Le/a/q0;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Le/a/q0;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    iput-object v0, p0, Le/a/i0;->d:Ljava/lang/Object;

    .line 11
    iput v2, p0, Le/a/l0;->c:I

    .line 12
    invoke-virtual {v1, p0}, Le/a/q0;->a(Le/a/l0;)V

    goto :goto_3

    .line 13
    :cond_1
    invoke-virtual {v1, v2}, Le/a/q0;->c(Z)V

    .line 14
    :try_start_0
    invoke-virtual {p0}, Le/a/i0;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v3, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$b;

    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_2

    .line 15
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    .line 16
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    sget-object v3, Ld/e;->a:Ld/e$a;

    invoke-static {v0}, Ld/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p0}, Le/a/i0;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v3, p0, Le/a/i0;->f:Ljava/lang/Object;

    .line 18
    invoke-static {v0, v3}, Le/a/x1/y;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    iget-object v4, p0, Le/a/i0;->h:Lkotlin/coroutines/Continuation;

    invoke-interface {v4, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 20
    sget-object p1, Ld/j;->a:Ld/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-static {v0, v3}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {v0, v3}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p1

    .line 22
    :cond_3
    :goto_1
    invoke-virtual {v1}, Le/a/q0;->d()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p1, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    .line 23
    :try_start_3
    invoke-virtual {p0, p1, v0}, Le/a/l0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 24
    :goto_2
    invoke-virtual {v1, v2}, Le/a/q0;->a(Z)V

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v1, v2}, Le/a/q0;->a(Z)V

    throw p0

    .line 25
    :cond_4
    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
