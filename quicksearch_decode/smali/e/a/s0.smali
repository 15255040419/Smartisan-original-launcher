.class public abstract Le/a/s0;
.super Le/a/q0;
.source "EventLoop.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/q0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLe/a/r0$c;)V
    .locals 1

    .line 1
    invoke-static {}, Le/a/e0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Le/a/g0;->h:Le/a/g0;

    if-eq p0, v0, :cond_0

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

    .line 2
    :cond_2
    :goto_1
    sget-object v0, Le/a/g0;->h:Le/a/g0;

    invoke-virtual {v0, p1, p2, p3}, Le/a/r0;->b(JLe/a/r0$c;)V

    return-void
.end method

.method public abstract e()Ljava/lang/Thread;
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/s0;->e()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 3
    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lkotlinx/coroutines/TimeSource;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    :goto_0
    return-void
.end method
