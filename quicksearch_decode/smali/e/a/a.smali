.class public abstract Le/a/a;
.super Le/a/h1;
.source "AbstractCoroutine.kt"

# interfaces
.implements Lkotlinx/coroutines/Job;
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/h1;",
        "Lkotlinx/coroutines/Job;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
.end annotation


# instance fields
.field public final b:Lkotlin/coroutines/CoroutineContext;

.field public final c:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Le/a/h1;-><init>(Z)V

    iput-object p1, p0, Le/a/a;->c:Lkotlin/coroutines/CoroutineContext;

    .line 2
    iget-object p1, p0, Le/a/a;->c:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, p0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Le/a/a;->b:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Le/a/f0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Le/a/c0;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/c0;",
            "TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Le/a/a;->k()V

    .line 3
    invoke-virtual {p1, p3, p2, p0}, Le/a/c0;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public final e(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a;->b:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, p1}, Le/a/x;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a;->b:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a;->b:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a;->b:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Le/a/u;->a(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Le/a/h1;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Le/a/h1;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a;->l()V

    return-void
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p1, Le/a/o;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Le/a/o;

    iget-object v0, p1, Le/a/o;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Le/a/o;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Le/a/a;->a(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Le/a/a;->m(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/h1;->isActive()Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a;->c:Lkotlin/coroutines/CoroutineContext;

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-virtual {p0, v0}, Le/a/h1;->a(Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/h1;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public m(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, Le/a/p;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/h1;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    sget-object v0, Le/a/i1;->b:Le/a/x1/u;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/a/a;->l(Ljava/lang/Object;)V

    return-void
.end method
