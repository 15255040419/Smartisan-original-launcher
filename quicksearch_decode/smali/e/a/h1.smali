.class public Le/a/h1;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/Job;
.implements Lkotlinx/coroutines/ChildJob;
.implements Lkotlinx/coroutines/ParentJob;
.implements Lkotlinx/coroutines/selects/SelectClause0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h1$b;,
        Le/a/h1$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile _parentHandle:Ljava/lang/Object;

.field public volatile _state:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Le/a/h1;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Le/a/h1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Le/a/i1;->c()Le/a/p0;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Le/a/i1;->d()Le/a/p0;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Le/a/h1;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/a/h1;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Le/a/h1;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/h1;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Le/a/h1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 65
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/a/h1;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic a(Le/a/h1;Le/a/h1$b;Le/a/m;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Le/a/h1;->a(Le/a/h1$b;Le/a/m;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function1;Z)Le/a/g1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ld/j;",
            ">;Z)",
            "Le/a/g1<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    .line 69
    instance-of p2, p1, Le/a/c1;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    check-cast v2, Le/a/c1;

    if-eqz v2, :cond_4

    invoke-static {}, Le/a/e0;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v2, Le/a/g1;->d:Lkotlinx/coroutines/Job;

    if-ne p2, p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    goto :goto_6

    .line 70
    :cond_4
    new-instance v2, Le/a/z0;

    invoke-direct {v2, p0, p1}, Le/a/z0;-><init>(Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;)V

    goto :goto_6

    .line 71
    :cond_5
    instance-of p2, p1, Le/a/g1;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, p1

    :goto_3
    check-cast v2, Le/a/g1;

    if-eqz v2, :cond_a

    invoke-static {}, Le/a/e0;->a()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, v2, Le/a/g1;->d:Lkotlinx/coroutines/Job;

    if-ne p2, p0, :cond_7

    instance-of p2, v2, Le/a/c1;

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    goto :goto_6

    .line 72
    :cond_a
    new-instance v2, Le/a/a1;

    invoke-direct {v2, p0, p1}, Le/a/a1;-><init>(Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;)V

    :goto_6
    return-object v2
.end method

.method public final a(Le/a/x1/k;)Le/a/m;
    .locals 1

    .line 98
    :goto_0
    invoke-virtual {p1}, Le/a/x1/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Le/a/x1/k;->c()Le/a/x1/k;

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_0
    :goto_1
    invoke-virtual {p1}, Le/a/x1/k;->b()Le/a/x1/k;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Le/a/x1/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 101
    :cond_1
    instance-of v0, p1, Le/a/m;

    if-eqz v0, :cond_2

    check-cast p1, Le/a/m;

    return-object p1

    .line 102
    :cond_2
    instance-of v0, p1, Le/a/l1;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lkotlinx/coroutines/Incomplete;)Le/a/m;
    .locals 2

    .line 92
    instance-of v0, p1, Le/a/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Le/a/m;

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->getList()Le/a/l1;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Le/a/h1;->a(Le/a/x1/k;)Le/a/m;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public final a(Le/a/h1$b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 12
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_2
    :goto_1
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Le/a/h1$b;->f()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_4
    :goto_2
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Le/a/h1$b;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 15
    :cond_6
    :goto_3
    instance-of v0, p2, Le/a/o;

    const/4 v3, 0x0

    if-nez v0, :cond_7

    move-object v0, v3

    goto :goto_4

    :cond_7
    move-object v0, p2

    :goto_4
    check-cast v0, Le/a/o;

    if-eqz v0, :cond_8

    iget-object v0, v0, Le/a/o;->a:Ljava/lang/Throwable;

    goto :goto_5

    :cond_8
    move-object v0, v3

    .line 16
    :goto_5
    monitor-enter p1

    .line 17
    :try_start_0
    invoke-virtual {p1}, Le/a/h1$b;->d()Z

    move-result v4

    .line 18
    invoke-virtual {p1, v0}, Le/a/h1$b;->b(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v5

    .line 19
    invoke-virtual {p0, p1, v5}, Le/a/h1;->a(Le/a/h1$b;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 20
    invoke-virtual {p0, v6, v5}, Le/a/h1;->a(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_9
    monitor-exit p1

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    if-ne v6, v0, :cond_b

    goto :goto_6

    .line 22
    :cond_b
    new-instance p2, Le/a/o;

    const/4 v0, 0x2

    invoke-direct {p2, v6, v2, v0, v3}, Le/a/o;-><init>(Ljava/lang/Throwable;ZILd/q/c/c;)V

    :goto_6
    if-eqz v6, :cond_f

    .line 23
    invoke-virtual {p0, v6}, Le/a/h1;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, v6}, Le/a/h1;->d(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    move v1, v2

    :cond_d
    :goto_7
    if-eqz v1, :cond_f

    if-eqz p2, :cond_e

    .line 24
    move-object v0, p2

    check-cast v0, Le/a/o;

    invoke-virtual {v0}, Le/a/o;->b()Z

    goto :goto_8

    :cond_e
    new-instance p1, Ld/h;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    invoke-direct {p1, p2}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_8
    if-nez v4, :cond_10

    .line 25
    invoke-virtual {p0, v6}, Le/a/h1;->f(Ljava/lang/Throwable;)V

    .line 26
    :cond_10
    invoke-virtual {p0, p2}, Le/a/h1;->i(Ljava/lang/Object;)V

    .line 27
    sget-object v0, Le/a/h1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Le/a/i1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 28
    invoke-static {}, Le/a/e0;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 29
    :cond_12
    :goto_9
    invoke-virtual {p0, p1, p2}, Le/a/h1;->a(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 30
    monitor-exit p1

    throw p2
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 86
    instance-of v0, p1, Lkotlinx/coroutines/Incomplete;

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Le/a/i1;->a()Le/a/x1/u;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    instance-of v0, p1, Le/a/p0;

    if-nez v0, :cond_1

    instance-of v0, p1, Le/a/g1;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Le/a/m;

    if-nez v0, :cond_3

    instance-of v0, p2, Le/a/o;

    if-nez v0, :cond_3

    .line 89
    check-cast p1, Lkotlinx/coroutines/Incomplete;

    invoke-virtual {p0, p1, p2}, Le/a/h1;->b(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p2

    .line 90
    :cond_2
    invoke-static {}, Le/a/i1;->b()Le/a/x1/u;

    move-result-object p1

    return-object p1

    .line 91
    :cond_3
    check-cast p1, Lkotlinx/coroutines/Incomplete;

    invoke-virtual {p0, p1, p2}, Le/a/h1;->c(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ld/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    new-instance v0, Le/a/h;

    invoke-static {p1}, Ld/n/f/b;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Le/a/h;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 107
    invoke-virtual {v0}, Le/a/h;->initCancellability()V

    .line 108
    new-instance v1, Le/a/n1;

    invoke-direct {v1, p0, v0}, Le/a/n1;-><init>(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v1}, Le/a/h1;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v1

    invoke-static {v0, v1}, Le/a/j;->a(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    .line 109
    invoke-virtual {v0}, Le/a/h;->g()Ljava/lang/Object;

    move-result-object v0

    .line 110
    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Ld/n/g/a/f;->c(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public final a(Le/a/h1$b;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h1$b;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 31
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p1}, Le/a/h1$b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    new-instance p1, Le/a/b1;

    invoke-static {p0}, Le/a/h1;->a(Le/a/h1;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1, p0}, Le/a/b1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    return-object p1

    :cond_0
    return-object v1

    .line 34
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    .line 35
    instance-of v2, v2, Ljava/util/concurrent/CancellationException;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    const/4 p1, 0x0

    .line 36
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 67
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    goto :goto_2

    .line 68
    :cond_1
    new-instance v0, Le/a/b1;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Le/a/h1;->a(Le/a/h1;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-direct {v0, p2, p1, p0}, Le/a/b1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    :goto_2
    return-object v0
.end method

.method public final a(Le/a/g1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/g1<",
            "*>;)V"
        }
    .end annotation

    .line 76
    new-instance v0, Le/a/l1;

    invoke-direct {v0}, Le/a/l1;-><init>()V

    invoke-virtual {p1, v0}, Le/a/x1/k;->a(Le/a/x1/k;)Z

    .line 77
    invoke-virtual {p1}, Le/a/x1/k;->b()Le/a/x1/k;

    move-result-object v0

    .line 78
    sget-object v1, Le/a/h1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Le/a/h1$b;Le/a/m;Ljava/lang/Object;)V
    .locals 1

    .line 93
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 94
    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Le/a/h1;->a(Le/a/x1/k;)Le/a/m;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Le/a/h1;->b(Le/a/h1$b;Le/a/m;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 96
    :cond_3
    invoke-virtual {p0, p1, p3}, Le/a/h1;->a(Le/a/h1$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Le/a/h1;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Le/a/l1;Ljava/lang/Throwable;)V
    .locals 6

    .line 53
    invoke-virtual {p0, p2}, Le/a/h1;->f(Ljava/lang/Throwable;)V

    .line 54
    invoke-virtual {p1}, Le/a/x1/k;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Le/a/x1/k;

    const/4 v1, 0x0

    .line 55
    :goto_0
    invoke-static {v0, p1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 56
    instance-of v2, v0, Le/a/c1;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Le/a/g1;

    .line 57
    :try_start_0
    invoke-virtual {v2, p2}, Le/a/s;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 58
    invoke-static {v1, v3}, Ld/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    new-instance v1, Le/a/t;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Le/a/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    sget-object v2, Ld/j;->a:Ld/j;

    .line 61
    :cond_1
    :goto_1
    invoke-virtual {v0}, Le/a/x1/k;->b()Le/a/x1/k;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 62
    invoke-virtual {p0, v1}, Le/a/h1;->e(Ljava/lang/Throwable;)V

    .line 63
    :cond_3
    invoke-virtual {p0, p2}, Le/a/h1;->b(Ljava/lang/Throwable;)Z

    return-void

    .line 64
    :cond_4
    new-instance p1, Ld/h;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Le/a/p0;)V
    .locals 2

    .line 73
    new-instance v0, Le/a/l1;

    invoke-direct {v0}, Le/a/l1;-><init>()V

    .line 74
    invoke-virtual {p1}, Le/a/p0;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/w0;

    invoke-direct {v1, v0}, Le/a/w0;-><init>(Le/a/l1;)V

    move-object v0, v1

    .line 75
    :goto_0
    sget-object v1, Le/a/h1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Le/a/h1;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 39
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 40
    invoke-static {}, Le/a/e0;->d()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Le/a/x1/t;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 41
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 42
    invoke-static {}, Le/a/e0;->d()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v2}, Le/a/x1/t;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    :goto_2
    if-eq v2, p1, :cond_2

    if-eq v2, v1, :cond_2

    .line 43
    instance-of v3, v2, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    invoke-static {p1, v2}, Ld/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Lkotlinx/coroutines/ChildHandle;)V
    .locals 0

    .line 3
    iput-object p1, p0, Le/a/h1;->_parentHandle:Ljava/lang/Object;

    return-void
.end method

.method public final a(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)V
    .locals 3

    .line 45
    invoke-virtual {p0}, Le/a/h1;->d()Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 47
    sget-object v0, Le/a/m1;->a:Le/a/m1;

    invoke-virtual {p0, v0}, Le/a/h1;->a(Lkotlinx/coroutines/ChildHandle;)V

    .line 48
    :cond_0
    instance-of v0, p2, Le/a/o;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object p2, v1

    :cond_1
    check-cast p2, Le/a/o;

    if-eqz p2, :cond_2

    iget-object v1, p2, Le/a/o;->a:Ljava/lang/Throwable;

    .line 49
    :cond_2
    instance-of p2, p1, Le/a/g1;

    if-eqz p2, :cond_3

    .line 50
    :try_start_0
    move-object p2, p1

    check-cast p2, Le/a/g1;

    invoke-virtual {p2, v1}, Le/a/s;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 51
    new-instance v0, Le/a/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in completion handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Le/a/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Le/a/h1;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 52
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->getList()Le/a/l1;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, v1}, Le/a/h1;->b(Le/a/l1;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Lkotlinx/coroutines/Job;)V
    .locals 1

    .line 4
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/a/h1;->d()Lkotlinx/coroutines/ChildHandle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 5
    sget-object p1, Le/a/m1;->a:Le/a/m1;

    invoke-virtual {p0, p1}, Le/a/h1;->a(Lkotlinx/coroutines/ChildHandle;)V

    return-void

    .line 6
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->start()Z

    .line 7
    invoke-interface {p1, p0}, Lkotlinx/coroutines/Job;->attachChild(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Le/a/h1;->a(Lkotlinx/coroutines/ChildHandle;)V

    .line 9
    invoke-virtual {p0}, Le/a/h1;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {p1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 11
    sget-object p1, Le/a/m1;->a:Le/a/m1;

    invoke-virtual {p0, p1}, Le/a/h1;->a(Lkotlinx/coroutines/ChildHandle;)V

    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/Object;Le/a/l1;Le/a/g1;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/a/l1;",
            "Le/a/g1<",
            "*>;)Z"
        }
    .end annotation

    .line 103
    new-instance v0, Le/a/h1$c;

    invoke-direct {v0, p3, p3, p0, p1}, Le/a/h1$c;-><init>(Le/a/x1/k;Le/a/x1/k;Le/a/h1;Ljava/lang/Object;)V

    .line 104
    :goto_0
    invoke-virtual {p2}, Le/a/x1/k;->c()Le/a/x1/k;

    move-result-object p1

    .line 105
    invoke-virtual {p1, p3, p2, v0}, Le/a/x1/k;->a(Le/a/x1/k;Le/a/x1/k;Le/a/x1/k$a;)I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public final a(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z
    .locals 5

    .line 80
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    instance-of v0, p1, Le/a/h1$b;

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 81
    :cond_1
    :goto_0
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 82
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Le/a/h1;->b(Lkotlinx/coroutines/Incomplete;)Le/a/l1;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 83
    new-instance v3, Le/a/h1$b;

    invoke-direct {v3, v0, v2, p2}, Le/a/h1$b;-><init>(Le/a/l1;ZLjava/lang/Throwable;)V

    .line 84
    sget-object v4, Le/a/h1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    .line 85
    :cond_4
    invoke-virtual {p0, v0, p2}, Le/a/h1;->a(Le/a/l1;Ljava/lang/Throwable;)V

    return v1

    :cond_5
    return v2
.end method

.method public final attachChild(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;
    .locals 6

    .line 1
    new-instance v3, Le/a/m;

    invoke-direct {v3, p0, p1}, Le/a/m;-><init>(Le/a/h1;Lkotlinx/coroutines/ChildJob;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/Job$a;->a(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lkotlinx/coroutines/ChildHandle;

    return-object p1

    :cond_0
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lkotlinx/coroutines/Incomplete;)Le/a/l1;
    .locals 2

    .line 22
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->getList()Le/a/l1;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    instance-of v0, p1, Le/a/p0;

    if-eqz v0, :cond_1

    new-instance v0, Le/a/l1;

    invoke-direct {v0}, Le/a/l1;-><init>()V

    goto :goto_0

    .line 24
    :cond_1
    instance-of v0, p1, Le/a/g1;

    if-eqz v0, :cond_2

    .line 25
    check-cast p1, Le/a/g1;

    invoke-virtual {p0, p1}, Le/a/h1;->a(Le/a/g1;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State should have list: "

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

.method public final b(Le/a/g1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/g1<",
            "*>;)V"
        }
    .end annotation

    .line 42
    :cond_0
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 43
    instance-of v1, v0, Le/a/g1;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    .line 44
    :cond_1
    sget-object v1, Le/a/h1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Le/a/i1;->c()Le/a/p0;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-eqz v1, :cond_3

    .line 46
    check-cast v0, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v0}, Lkotlinx/coroutines/Incomplete;->getList()Le/a/l1;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Le/a/x1/k;->e()Z

    :cond_3
    return-void
.end method

.method public final b(Le/a/l1;Ljava/lang/Throwable;)V
    .locals 6

    .line 32
    invoke-virtual {p1}, Le/a/x1/k;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Le/a/x1/k;

    const/4 v1, 0x0

    .line 33
    :goto_0
    invoke-static {v0, p1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 34
    instance-of v2, v0, Le/a/g1;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Le/a/g1;

    .line 35
    :try_start_0
    invoke-virtual {v2, p2}, Le/a/s;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v1, :cond_0

    .line 36
    invoke-static {v1, v3}, Ld/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    new-instance v1, Le/a/t;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in completion handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Le/a/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    sget-object v2, Ld/j;->a:Ld/j;

    .line 39
    :cond_1
    :goto_1
    invoke-virtual {v0}, Le/a/x1/k;->b()Le/a/x1/k;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 40
    invoke-virtual {p0, v1}, Le/a/h1;->e(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 41
    :cond_4
    new-instance p1, Ld/h;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(Le/a/h1$b;Le/a/m;Ljava/lang/Object;)Z
    .locals 6

    .line 27
    :goto_0
    iget-object v0, p2, Le/a/m;->e:Lkotlinx/coroutines/ChildJob;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 28
    new-instance v3, Le/a/h1$a;

    invoke-direct {v3, p0, p1, p2, p3}, Le/a/h1$a;-><init>(Le/a/h1;Le/a/h1$b;Le/a/m;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 29
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/Job$a;->a(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 30
    sget-object v1, Le/a/m1;->a:Le/a/m1;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 31
    :cond_0
    invoke-virtual {p0, p2}, Le/a/h1;->a(Le/a/x1/k;)Le/a/m;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 3

    .line 12
    invoke-static {}, Le/a/i1;->a()Le/a/x1/u;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Le/a/h1;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Le/a/h1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    sget-object v1, Le/a/i1;->b:Le/a/x1/u;

    if-ne v0, v1, :cond_0

    return v2

    .line 16
    :cond_0
    invoke-static {}, Le/a/i1;->a()Le/a/x1/u;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 17
    invoke-virtual {p0, p1}, Le/a/h1;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    :cond_1
    invoke-static {}, Le/a/i1;->a()Le/a/x1/u;

    move-result-object p1

    if-ne v0, p1, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    sget-object p1, Le/a/i1;->b:Le/a/x1/u;

    if-ne v0, p1, :cond_3

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {}, Le/a/i1;->f()Le/a/x1/u;

    move-result-object p1

    if-ne v0, p1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    .line 21
    :cond_4
    invoke-virtual {p0, v0}, Le/a/h1;->a(Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method public final b(Ljava/lang/Throwable;)Z
    .locals 4

    .line 7
    invoke-virtual {p0}, Le/a/h1;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 9
    invoke-virtual {p0}, Le/a/h1;->d()Lkotlinx/coroutines/ChildHandle;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    sget-object v3, Le/a/m1;->a:Le/a/m1;

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {v2, p1}, Lkotlinx/coroutines/ChildHandle;->childCancelled(Ljava/lang/Throwable;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public final b(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    instance-of v0, p1, Le/a/p0;

    if-nez v0, :cond_1

    instance-of v0, p1, Le/a/g1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2
    :cond_3
    :goto_2
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Le/a/o;

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_5
    :goto_3
    sget-object v0, Le/a/h1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Le/a/i1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Le/a/h1;->f(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0, p2}, Le/a/h1;->i(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Le/a/h1;->a(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)V

    return v2
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 21
    :cond_0
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 22
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-eqz v1, :cond_2

    instance-of v1, v0, Le/a/h1$b;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Le/a/h1$b;

    invoke-virtual {v1}, Le/a/h1$b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Le/a/o;

    invoke-virtual {p0, p1}, Le/a/h1;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Le/a/o;-><init>(Ljava/lang/Throwable;ZILd/q/c/c;)V

    .line 24
    invoke-virtual {p0, v0, v1}, Le/a/h1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    invoke-static {}, Le/a/i1;->b()Le/a/x1/u;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    .line 26
    :cond_2
    :goto_0
    invoke-static {}, Le/a/i1;->a()Le/a/x1/u;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 3
    invoke-virtual {p0, p1}, Le/a/h1;->b(Lkotlinx/coroutines/Incomplete;)Le/a/l1;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4
    instance-of v1, p1, Le/a/h1$b;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    check-cast v1, Le/a/h1$b;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Le/a/h1$b;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Le/a/h1$b;-><init>(Le/a/l1;ZLjava/lang/Throwable;)V

    .line 5
    :goto_1
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {v1}, Le/a/h1$b;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Le/a/i1;->a()Le/a/x1/u;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p1

    :cond_2
    const/4 v3, 0x1

    .line 7
    :try_start_1
    invoke-virtual {v1, v3}, Le/a/h1$b;->a(Z)V

    if-eq v1, p1, :cond_3

    .line 8
    sget-object v4, Le/a/h1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Le/a/i1;->b()Le/a/x1/u;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p1

    .line 9
    :cond_3
    :try_start_2
    invoke-static {}, Le/a/e0;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Le/a/h1$b;->f()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_5
    :goto_2
    invoke-virtual {v1}, Le/a/h1$b;->d()Z

    move-result v4

    .line 11
    instance-of v5, p2, Le/a/o;

    if-nez v5, :cond_6

    move-object v5, v2

    goto :goto_3

    :cond_6
    move-object v5, p2

    :goto_3
    check-cast v5, Le/a/o;

    if-eqz v5, :cond_7

    iget-object v5, v5, Le/a/o;->a:Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Le/a/h1$b;->a(Ljava/lang/Throwable;)V

    .line 12
    :cond_7
    invoke-virtual {v1}, Le/a/h1$b;->c()Ljava/lang/Throwable;

    move-result-object v5

    xor-int/2addr v3, v4

    if-eqz v3, :cond_8

    move-object v2, v5

    .line 13
    :cond_8
    sget-object v3, Ld/j;->a:Ld/j;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    if-eqz v2, :cond_9

    .line 14
    invoke-virtual {p0, v0, v2}, Le/a/h1;->a(Le/a/l1;Ljava/lang/Throwable;)V

    .line 15
    :cond_9
    invoke-virtual {p0, p1}, Le/a/h1;->a(Lkotlinx/coroutines/Incomplete;)Le/a/m;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 16
    invoke-virtual {p0, v1, p1, p2}, Le/a/h1;->b(Le/a/h1$b;Le/a/m;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 17
    sget-object p1, Le/a/i1;->b:Le/a/x1/u;

    return-object p1

    .line 18
    :cond_a
    invoke-virtual {p0, v1, p2}, Le/a/h1;->a(Le/a/h1$b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v1

    throw p1

    .line 20
    :cond_b
    invoke-static {}, Le/a/i1;->b()Le/a/x1/u;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/a/h1;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Le/a/h1;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic cancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/Job$a;->a(Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    new-instance v0, Le/a/b1;

    invoke-static {p0}, Le/a/h1;->a(Le/a/h1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Le/a/b1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    move-object p1, v0

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Le/a/h1;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic cancel(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0, p1, v1, v0, v1}, Le/a/h1;->a(Le/a/h1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Le/a/b1;

    invoke-static {p0}, Le/a/h1;->a(Le/a/h1;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, v1, p0}, Le/a/b1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Le/a/h1;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3
    new-instance v0, Le/a/b1;

    invoke-static {p0}, Le/a/h1;->a(Le/a/h1;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Le/a/b1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    move-object p1, v0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 4
    check-cast p1, Lkotlinx/coroutines/ParentJob;

    invoke-interface {p1}, Lkotlinx/coroutines/ParentJob;->getChildJobCancellationCause()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Lkotlinx/coroutines/ChildHandle;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h1;->_parentHandle:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/ChildHandle;

    return-object v0
.end method

.method public d(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    .line 3
    :goto_0
    iget-object v0, p0, Le/a/h1;->_state:Ljava/lang/Object;

    .line 4
    instance-of v1, v0, Le/a/x1/q;

    if-nez v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    check-cast v0, Le/a/x1/q;

    invoke-virtual {v0, p0}, Le/a/x1/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Throwable;
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

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    throw p1
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v2

    .line 2
    instance-of v3, v2, Le/a/h1$b;

    if-eqz v3, :cond_7

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    move-object v3, v2

    check-cast v3, Le/a/h1$b;

    invoke-virtual {v3}, Le/a/h1$b;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Le/a/i1;->f()Le/a/x1/u;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p1

    .line 5
    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Le/a/h1$b;

    invoke-virtual {v3}, Le/a/h1$b;->d()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0, p1}, Le/a/h1;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 7
    :goto_1
    move-object p1, v2

    check-cast p1, Le/a/h1$b;

    invoke-virtual {p1, v1}, Le/a/h1$b;->a(Ljava/lang/Throwable;)V

    .line 8
    :cond_4
    move-object p1, v2

    check-cast p1, Le/a/h1$b;

    invoke-virtual {p1}, Le/a/h1$b;->c()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v0

    :goto_2
    monitor-exit v2

    if-eqz p1, :cond_6

    .line 9
    check-cast v2, Le/a/h1$b;

    invoke-virtual {v2}, Le/a/h1$b;->getList()Le/a/l1;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/h1;->a(Le/a/l1;Ljava/lang/Throwable;)V

    .line 10
    :cond_6
    invoke-static {}, Le/a/i1;->a()Le/a/x1/u;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v2

    throw p1

    .line 12
    :cond_7
    instance-of v3, v2, Lkotlinx/coroutines/Incomplete;

    if-eqz v3, :cond_c

    if-eqz v1, :cond_8

    goto :goto_3

    .line 13
    :cond_8
    invoke-virtual {p0, p1}, Le/a/h1;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 14
    :goto_3
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v3}, Lkotlinx/coroutines/Incomplete;->isActive()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 15
    invoke-virtual {p0, v3, v1}, Le/a/h1;->a(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Le/a/i1;->a()Le/a/x1/u;

    move-result-object p1

    return-object p1

    .line 16
    :cond_9
    new-instance v3, Le/a/o;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v1, v4, v5, v0}, Le/a/o;-><init>(Ljava/lang/Throwable;ZILd/q/c/c;)V

    invoke-virtual {p0, v2, v3}, Le/a/h1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 17
    invoke-static {}, Le/a/i1;->a()Le/a/x1/u;

    move-result-object v4

    if-eq v3, v4, :cond_b

    .line 18
    invoke-static {}, Le/a/i1;->b()Le/a/x1/u;

    move-result-object v2

    if-ne v3, v2, :cond_a

    goto/16 :goto_0

    :cond_a
    return-object v3

    .line 19
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot happen in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_c
    invoke-static {}, Le/a/i1;->f()Le/a/x1/u;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/Job$a;->a(Lkotlinx/coroutines/Job;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g()Z
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0, v0}, Le/a/h1;->j(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 3

    .line 4
    :goto_0
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Le/a/h1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-static {}, Le/a/i1;->a()Le/a/x1/u;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 7
    :cond_0
    sget-object v1, Le/a/i1;->b:Le/a/x1/u;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 8
    :cond_1
    invoke-static {}, Le/a/i1;->b()Le/a/x1/u;

    move-result-object v1

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v0}, Le/a/h1;->a(Ljava/lang/Object;)V

    return v2
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$a;->a(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    return-object p1
.end method

.method public final getCancellationException()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Le/a/h1$b;

    const-string v2, "Job is still new or active: "

    if-eqz v1, :cond_1

    check-cast v0, Le/a/h1$b;

    invoke-virtual {v0}, Le/a/h1$b;->c()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Le/a/f0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is cancelling"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Le/a/h1;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_3

    .line 5
    instance-of v1, v0, Le/a/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Le/a/o;

    iget-object v0, v0, Le/a/o;->a:Ljava/lang/Throwable;

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Le/a/h1;->a(Le/a/h1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Le/a/b1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Le/a/f0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has completed normally"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, p0}, Le/a/b1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    :goto_0
    return-object v0

    .line 7
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChildJobCancellationCause()Ljava/util/concurrent/CancellationException;
    .locals 5

    .line 1
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Le/a/h1$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/h1$b;

    invoke-virtual {v1}, Le/a/h1$b;->c()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Le/a/o;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Le/a/o;

    iget-object v1, v1, Le/a/o;->a:Ljava/lang/Throwable;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_4

    move-object v1, v2

    .line 5
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    check-cast v2, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v2, Le/a/b1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Le/a/h1;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p0}, Le/a/b1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    :goto_2
    return-object v2

    .line 6
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getChildren()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Lkotlinx/coroutines/Job;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/h1$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/h1$d;-><init>(Le/a/h1;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Ld/u/d;->b(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public final getKey()Lkotlin/coroutines/CoroutineContext$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$b;

    return-object v0
.end method

.method public final getOnJoin()Lkotlinx/coroutines/selects/SelectClause0;
    .locals 0

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2
    :goto_0
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, p1}, Le/a/h1;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-static {}, Le/a/i1;->a()Le/a/x1/u;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 5
    invoke-static {}, Le/a/i1;->b()Le/a/x1/u;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already complete or completing, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "but is being completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Le/a/h1;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 9
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Le/a/f0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ld/j;",
            ">;)",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, p1}, Le/a/h1;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    return-object p1
.end method

.method public final invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Ld/j;",
            ">;)",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v2

    .line 3
    instance-of v3, v2, Le/a/p0;

    if-eqz v3, :cond_3

    .line 4
    move-object v3, v2

    check-cast v3, Le/a/p0;

    invoke-virtual {v3}, Le/a/p0;->isActive()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, p3, p1}, Le/a/h1;->a(Lkotlin/jvm/functions/Function1;Z)Le/a/g1;

    move-result-object v1

    .line 6
    :goto_1
    sget-object v3, Le/a/h1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 7
    :cond_2
    invoke-virtual {p0, v3}, Le/a/h1;->a(Le/a/p0;)V

    goto :goto_0

    .line 8
    :cond_3
    instance-of v3, v2, Lkotlinx/coroutines/Incomplete;

    if-eqz v3, :cond_f

    .line 9
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v3}, Lkotlinx/coroutines/Incomplete;->getList()Le/a/l1;

    move-result-object v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    .line 10
    check-cast v2, Le/a/g1;

    invoke-virtual {p0, v2}, Le/a/h1;->a(Le/a/g1;)V

    goto :goto_0

    :cond_4
    new-instance p1, Ld/h;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>"

    invoke-direct {p1, p2}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    sget-object v4, Le/a/m1;->a:Le/a/m1;

    if-eqz p1, :cond_b

    .line 12
    instance-of v5, v2, Le/a/h1$b;

    if-eqz v5, :cond_b

    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    move-object v5, v2

    check-cast v5, Le/a/h1$b;

    invoke-virtual {v5}, Le/a/h1$b;->c()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 15
    instance-of v6, p3, Le/a/m;

    if-eqz v6, :cond_a

    move-object v6, v2

    check-cast v6, Le/a/h1$b;

    invoke-virtual {v6}, Le/a/h1$b;->e()Z

    move-result v6

    if-nez v6, :cond_a

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_2

    .line 16
    :cond_7
    invoke-virtual {p0, p3, p1}, Le/a/h1;->a(Lkotlin/jvm/functions/Function1;Z)Le/a/g1;

    move-result-object v1

    .line 17
    :goto_2
    invoke-virtual {p0, v2, v3, v1}, Le/a/h1;->a(Ljava/lang/Object;Le/a/l1;Le/a/g1;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_8

    monitor-exit v2

    goto :goto_0

    :cond_8
    if-nez v5, :cond_9

    .line 18
    monitor-exit v2

    return-object v1

    :cond_9
    move-object v4, v1

    .line 19
    :cond_a
    :try_start_1
    sget-object v6, Ld/j;->a:Ld/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_b
    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_d

    if-eqz p2, :cond_c

    .line 20
    invoke-interface {p3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v4

    :cond_d
    if-eqz v1, :cond_e

    goto :goto_4

    .line 21
    :cond_e
    invoke-virtual {p0, p3, p1}, Le/a/h1;->a(Lkotlin/jvm/functions/Function1;Z)Le/a/g1;

    move-result-object v1

    .line 22
    :goto_4
    invoke-virtual {p0, v2, v3, v1}, Le/a/h1;->a(Ljava/lang/Object;Le/a/l1;Le/a/g1;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_f
    if-eqz p2, :cond_12

    .line 23
    instance-of p1, v2, Le/a/o;

    if-nez p1, :cond_10

    move-object v2, v0

    :cond_10
    check-cast v2, Le/a/o;

    if-eqz v2, :cond_11

    iget-object v0, v2, Le/a/o;->a:Ljava/lang/Throwable;

    .line 24
    :cond_11
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_12
    sget-object p1, Le/a/m1;->a:Le/a/m1;

    return-object p1
.end method

.method public isActive()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v0}, Lkotlinx/coroutines/Incomplete;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCancelled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Le/a/o;

    if-nez v1, :cond_1

    instance-of v1, v0, Le/a/h1$b;

    if-eqz v1, :cond_0

    check-cast v0, Le/a/h1$b;

    invoke-virtual {v0}, Le/a/h1$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isCompleted()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/Incomplete;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 4

    .line 1
    instance-of v0, p1, Le/a/p0;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Le/a/p0;

    invoke-virtual {v0}, Le/a/p0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 3
    :cond_0
    sget-object v0, Le/a/h1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Le/a/i1;->c()Le/a/p0;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Le/a/h1;->i()V

    return v2

    .line 5
    :cond_2
    instance-of v0, p1, Le/a/w0;

    if-eqz v0, :cond_4

    .line 6
    sget-object v0, Le/a/h1;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Le/a/w0;

    invoke-virtual {v3}, Le/a/w0;->getList()Le/a/l1;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 7
    :cond_3
    invoke-virtual {p0}, Le/a/h1;->i()V

    return v2

    :cond_4
    return v3
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/h1;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Le/a/h1;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ld/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/h1;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Le/a/v1;->a(Lkotlin/coroutines/CoroutineContext;)V

    .line 3
    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Le/a/h1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Ld/n/f/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p1, Le/a/h1$b;

    const-string v1, "Active"

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Le/a/h1$b;

    invoke-virtual {p1}, Le/a/h1$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Cancelling"

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/a/h1$b;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string v1, "Completing"

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/Incomplete;

    if-eqz v0, :cond_3

    check-cast p1, Lkotlinx/coroutines/Incomplete;

    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "New"

    goto :goto_0

    .line 5
    :cond_3
    instance-of p1, p1, Le/a/o;

    if-eqz p1, :cond_4

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_4
    const-string v1, "Completed"

    :cond_5
    :goto_0
    return-object v1
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$a;->b(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public final parentCancelled(Lkotlinx/coroutines/ParentJob;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/h1;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$a;->a(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$a;->a(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/Job;

    return-object p1
.end method

.method public final registerSelectClause0(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_3

    .line 4
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->getCompletion()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p2, p1}, Le/a/y1/b;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-void

    .line 6
    :cond_3
    invoke-virtual {p0, v0}, Le/a/h1;->j(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Le/a/o1;

    invoke-direct {v0, p0, p1, p2}, Le/a/o1;-><init>(Le/a/h1;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Le/a/h1;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/SelectInstance;->disposeOnSelect(Lkotlinx/coroutines/DisposableHandle;)V

    return-void
.end method

.method public final start()Z
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Le/a/h1;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Le/a/h1;->j(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/a/h1;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Le/a/f0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
