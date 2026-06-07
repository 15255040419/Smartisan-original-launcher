.class public final Le/a/k0;
.super Le/a/x1/s;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/x1/s<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public volatile _decision:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Le/a/k0;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Le/a/k0;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/x1/s;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Le/a/k0;->_decision:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/k0;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/k0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/x1/s;->d:Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Ld/n/f/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    iget-object v1, p0, Le/a/x1/s;->d:Lkotlin/coroutines/Continuation;

    invoke-static {p1, v1}, Le/a/p;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Le/a/j0;->a(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V

    return-void
.end method

.method public final m()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/k0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Le/a/i1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Le/a/o;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast v0, Le/a/o;

    iget-object v0, v0, Le/a/o;->a:Ljava/lang/Throwable;

    throw v0
.end method

.method public final n()Z
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Le/a/k0;->_decision:I

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
    sget-object v0, Le/a/k0;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method public final o()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Le/a/k0;->_decision:I

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
    sget-object v0, Le/a/k0;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method
