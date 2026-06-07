.class public final synthetic Le/a/e;
.super Ljava/lang/Object;
.source "Builders.common.kt"


# direct methods
.method public static final a(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 8
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    .line 10
    invoke-static {p0}, Le/a/v1;->a(Lkotlin/coroutines/CoroutineContext;)V

    if-ne p0, v0, :cond_0

    .line 11
    new-instance v0, Le/a/x1/s;

    invoke-direct {v0, p0, p2}, Le/a/x1/s;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    .line 12
    invoke-static {v0, v0, p1}, Le/a/y1/b;->a(Le/a/x1/s;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$b;

    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/ContinuationInterceptor;

    sget-object v2, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$b;

    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/ContinuationInterceptor;

    invoke-static {v1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Le/a/t1;

    invoke-direct {v0, p0, p2}, Le/a/t1;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    .line 15
    invoke-static {p0, v1}, Le/a/x1/y;->b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    :try_start_0
    invoke-static {v0, v0, p1}, Le/a/y1/b;->a(Le/a/x1/s;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {p0, v1}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, v1}, Le/a/x1/y;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw p1

    .line 18
    :cond_1
    new-instance v0, Le/a/k0;

    invoke-direct {v0, p0, p2}, Le/a/k0;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    .line 19
    invoke-virtual {v0}, Le/a/a;->k()V

    .line 20
    invoke-static {p1, v0, v0}, Le/a/y1/a;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 21
    invoke-virtual {v0}, Le/a/k0;->m()Ljava/lang/Object;

    move-result-object p0

    .line 22
    :goto_0
    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Ld/n/g/a/f;->c(Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-object p0
.end method

.method public static final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Le/a/c0;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Le/a/c0;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ld/j;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1}, Le/a/u;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    .line 4
    invoke-virtual {p2}, Le/a/c0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Le/a/j1;

    invoke-direct {p1, p0, p3}, Le/a/j1;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Le/a/p1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Le/a/p1;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    .line 7
    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Le/a/a;->a(Le/a/c0;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-object p1
.end method

.method public static synthetic a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Le/a/c0;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Ld/n/e;->a:Ld/n/e;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 2
    sget-object p2, Le/a/c0;->a:Le/a/c0;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Le/a/d;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Le/a/c0;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method
