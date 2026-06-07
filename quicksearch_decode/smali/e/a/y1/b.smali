.class public final Le/a/y1/b;
.super Ljava/lang/Object;
.source "Undispatched.kt"


# direct methods
.method public static final a(Le/a/x1/s;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/x1/s<",
            "-TT;>;TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/a;->k()V

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    invoke-static {p2, v0}, Ld/q/c/j;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ld/h;

    const-string p2, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p1, p2}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    new-instance p2, Le/a/o;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v0, v2}, Le/a/o;-><init>(Ljava/lang/Throwable;ZILd/q/c/c;)V

    move-object p1, p2

    .line 4
    :goto_1
    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Le/a/h1;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    sget-object p2, Le/a/i1;->b:Le/a/x1/u;

    if-ne p1, p2, :cond_2

    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    .line 7
    :cond_2
    instance-of p2, p1, Le/a/o;

    if-eqz p2, :cond_5

    .line 8
    check-cast p1, Le/a/o;

    iget-object p1, p1, Le/a/o;->a:Ljava/lang/Throwable;

    .line 9
    iget-object p0, p0, Le/a/x1/s;->d:Lkotlin/coroutines/Continuation;

    .line 10
    invoke-static {}, Le/a/e0;->d()Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez p2, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {p1, p0}, Le/a/x1/t;->a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object p1

    :cond_4
    :goto_2
    throw p1

    .line 12
    :cond_5
    invoke-static {p1}, Le/a/i1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-static {p1}, Ld/n/g/a/f;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 14
    :try_start_0
    invoke-static {p0, v0}, Ld/q/c/j;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-eq p0, v0, :cond_1

    .line 16
    sget-object v0, Ld/e;->a:Ld/e$a;

    invoke-static {p0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    new-instance p0, Ld/h;

    const-string v0, "null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p0, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_0
    sget-object v0, Ld/e;->a:Ld/e$a;

    invoke-static {p0}, Ld/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .line 19
    invoke-static {p2}, Ld/n/g/a/f;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 20
    :try_start_0
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Le/a/x1/y;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    const/4 v2, 0x2

    .line 22
    :try_start_1
    invoke-static {p0, v2}, Ld/q/c/j;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-static {v0, v1}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object p1

    if-eq p0, p1, :cond_1

    .line 25
    sget-object p1, Ld/e;->a:Ld/e$a;

    invoke-static {p0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 26
    :cond_0
    :try_start_3
    new-instance p0, Ld/h;

    const-string p1, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {p0, p1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 27
    :goto_0
    :try_start_4
    invoke-static {v0, v1}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 28
    sget-object p1, Ld/e;->a:Ld/e$a;

    invoke-static {p0}, Ld/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ld/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method
