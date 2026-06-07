.class public Ld/n/f/b;
.super Ljava/lang/Object;
.source "IntrinsicsJvm.kt"


# direct methods
.method public static final a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$intercepted"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of v0, p0, Ld/n/g/a/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Ld/n/g/a/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ld/n/g/a/c;->c()Lkotlin/coroutines/Continuation;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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
            "-TT;>;)",
            "Lkotlin/coroutines/Continuation<",
            "Ld/j;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutineUnintercepted"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ld/n/g/a/f;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 2
    instance-of v0, p0, Ld/n/g/a/a;

    if-nez v0, :cond_3

    .line 3
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 4
    sget-object v0, Ld/n/e;->a:Ld/n/e;

    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    if-ne v5, v0, :cond_1

    .line 5
    new-instance v0, Ld/n/f/b$a;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1, p1, p0}, Ld/n/f/b$a;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ld/h;

    invoke-direct {p0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance v0, Ld/n/f/b$b;

    if-eqz p1, :cond_2

    move-object v1, v0

    move-object v2, p1

    move-object v3, v5

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Ld/n/f/b$b;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-object v0

    :cond_2
    new-instance p0, Ld/h;

    invoke-direct {p0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_3
    check-cast p0, Ld/n/g/a/a;

    invoke-virtual {p0, p1}, Ld/n/g/a/a;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    const/4 p0, 0x0

    throw p0
.end method

.method public static final a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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
            "-TT;>;)",
            "Lkotlin/coroutines/Continuation<",
            "Ld/j;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$createCoroutineUnintercepted"

    invoke-static {p0, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, Ld/n/g/a/f;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 9
    instance-of v0, p0, Ld/n/g/a/a;

    if-eqz v0, :cond_0

    .line 10
    check-cast p0, Ld/n/g/a/a;

    invoke-virtual {p0, p1, p2}, Ld/n/g/a/a;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p2}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 12
    sget-object v0, Ld/n/e;->a:Ld/n/e;

    const-string v1, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    if-ne v4, v0, :cond_2

    .line 13
    new-instance v0, Ld/n/f/b$c;

    if-eqz p2, :cond_1

    invoke-direct {v0, p2, p2, p0, p1}, Ld/n/f/b$c;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance p0, Ld/h;

    invoke-direct {p0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    new-instance v7, Ld/n/f/b$d;

    if-eqz p2, :cond_3

    move-object v0, v7

    move-object v1, p2

    move-object v2, v4

    move-object v3, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ld/n/f/b$d;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    move-object p0, v7

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Ld/h;

    invoke-direct {p0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p0
.end method
