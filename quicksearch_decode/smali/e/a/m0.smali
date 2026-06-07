.class public final Le/a/m0;
.super Ljava/lang/Object;
.source "DispatchedTask.kt"


# direct methods
.method public static final a(Le/a/l0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l0<",
            "*>;)V"
        }
    .end annotation

    .line 24
    sget-object v0, Le/a/q1;->b:Le/a/q1;

    invoke-virtual {v0}, Le/a/q1;->a()Le/a/q0;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Le/a/q0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v0, p0}, Le/a/q0;->a(Le/a/l0;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Le/a/q0;->c(Z)V

    .line 28
    :try_start_0
    invoke-virtual {p0}, Le/a/l0;->a()Lkotlin/coroutines/Continuation;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Le/a/m0;->a(Le/a/l0;Lkotlin/coroutines/Continuation;I)V

    .line 29
    :cond_1
    invoke-virtual {v0}, Le/a/q0;->d()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    .line 30
    :try_start_1
    invoke-virtual {p0, v2, v3}, Le/a/l0;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Le/a/q0;->a(Z)V

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v0, v1}, Le/a/q0;->a(Z)V

    throw p0
.end method

.method public static final a(Le/a/l0;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/l0<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/l0;->a()Lkotlin/coroutines/Continuation;

    move-result-object v0

    .line 2
    invoke-static {p1}, Le/a/m0;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Le/a/i0;

    if-eqz v1, :cond_1

    invoke-static {p1}, Le/a/m0;->a(I)Z

    move-result v1

    iget v2, p0, Le/a/l0;->c:I

    invoke-static {v2}, Le/a/m0;->a(I)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Le/a/i0;

    iget-object p1, p1, Le/a/i0;->g:Le/a/v;

    .line 4
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Le/a/v;->a(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1, v0, p0}, Le/a/v;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Le/a/m0;->a(Le/a/l0;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p0, v0, p1}, Le/a/m0;->a(Le/a/l0;Lkotlin/coroutines/Continuation;I)V

    :goto_0
    return-void
.end method

.method public static final a(Le/a/l0;Lkotlin/coroutines/Continuation;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/l0<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;I)V"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Le/a/l0;->b()Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Le/a/l0;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {}, Le/a/e0;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    move-object v2, p1

    check-cast v2, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v1, v2}, Le/a/x1/t;->a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 13
    sget-object p0, Ld/e;->a:Ld/e$a;

    invoke-static {v1}, Ld/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object v1, Ld/e;->a:Ld/e$a;

    invoke-virtual {p0, v0}, Le/a/l0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_7

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    if-eqz p1, :cond_4

    .line 14
    check-cast p1, Le/a/i0;

    .line 15
    invoke-virtual {p1}, Le/a/i0;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    iget-object v0, p1, Le/a/i0;->f:Ljava/lang/Object;

    .line 16
    invoke-static {p2, v0}, Le/a/x1/y;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    :try_start_0
    iget-object p1, p1, Le/a/i0;->h:Lkotlin/coroutines/Continuation;

    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 18
    sget-object p0, Ld/j;->a:Ld/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {p2, v0}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-static {p2, v0}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p0

    .line 20
    :cond_4
    new-instance p0, Ld/h;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.DispatchedContinuation<T>"

    invoke-direct {p0, p1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_6
    invoke-static {p1, p0}, Le/a/j0;->a(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V

    goto :goto_2

    .line 23
    :cond_7
    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public static final a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final b(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
