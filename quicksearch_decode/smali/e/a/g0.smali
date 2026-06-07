.class public final Le/a/g0;
.super Le/a/r0;
.source "DefaultExecutor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static volatile _thread:Ljava/lang/Thread;

.field public static volatile debugStatus:I

.field public static final g:J

.field public static final h:Le/a/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/a/g0;

    invoke-direct {v0}, Le/a/g0;-><init>()V

    sput-object v0, Le/a/g0;->h:Le/a/g0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Le/a/q0;->a(Le/a/q0;ZILjava/lang/Object;)V

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 4
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 6
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Le/a/g0;->g:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r0;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/Thread;
    .locals 1

    .line 1
    sget-object v0, Le/a/g0;->_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/a/g0;->n()Ljava/lang/Thread;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/a/r0;->a(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized m()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/g0;->o()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 2
    :try_start_1
    sput v0, Le/a/g0;->debugStatus:I

    .line 3
    invoke-virtual {p0}, Le/a/r0;->l()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n()Ljava/lang/Thread;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Le/a/g0;->_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2
    sput-object v0, Le/a/g0;->_thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o()Z
    .locals 2

    .line 1
    sget v0, Le/a/g0;->debugStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

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

.method public final declared-synchronized p()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/g0;->o()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    sput v0, Le/a/g0;->debugStatus:I

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 12

    .line 1
    sget-object v0, Le/a/q1;->b:Le/a/q1;

    invoke-virtual {v0, p0}, Le/a/q1;->a(Le/a/q0;)V

    .line 2
    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->registerTimeLoopThread()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/a/g0;->p()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 4
    sput-object v0, Le/a/g0;->_thread:Ljava/lang/Thread;

    .line 5
    invoke-virtual {p0}, Le/a/g0;->m()V

    .line 6
    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->unregisterTimeLoopThread()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/a/r0;->i()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Le/a/g0;->e()Ljava/lang/Thread;

    :cond_2
    return-void

    :cond_3
    const-wide v1, 0x7fffffffffffffffL

    move-wide v3, v1

    .line 8
    :cond_4
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 9
    invoke-virtual {p0}, Le/a/r0;->j()J

    move-result-wide v5

    cmp-long v7, v5, v1

    const-wide/16 v8, 0x0

    if-nez v7, :cond_a

    .line 10
    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Lkotlinx/coroutines/TimeSource;->nanoTime()J

    move-result-wide v10

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    :goto_1
    cmp-long v7, v3, v1

    if-nez v7, :cond_6

    .line 11
    sget-wide v3, Le/a/g0;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v3, v10

    :cond_6
    sub-long v10, v3, v10

    cmp-long v7, v10, v8

    if-gtz v7, :cond_9

    .line 12
    sput-object v0, Le/a/g0;->_thread:Ljava/lang/Thread;

    .line 13
    invoke-virtual {p0}, Le/a/g0;->m()V

    .line 14
    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->unregisterTimeLoopThread()V

    .line 15
    :cond_7
    invoke-virtual {p0}, Le/a/r0;->i()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Le/a/g0;->e()Ljava/lang/Thread;

    :cond_8
    return-void

    .line 16
    :cond_9
    :try_start_2
    invoke-static {v5, v6, v10, v11}, Ld/s/e;->b(JJ)J

    move-result-wide v5

    goto :goto_2

    :cond_a
    move-wide v3, v1

    :goto_2
    cmp-long v7, v5, v8

    if-lez v7, :cond_4

    .line 17
    invoke-virtual {p0}, Le/a/g0;->o()Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_d

    .line 18
    sput-object v0, Le/a/g0;->_thread:Ljava/lang/Thread;

    .line 19
    invoke-virtual {p0}, Le/a/g0;->m()V

    .line 20
    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->unregisterTimeLoopThread()V

    .line 21
    :cond_b
    invoke-virtual {p0}, Le/a/r0;->i()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Le/a/g0;->e()Ljava/lang/Thread;

    :cond_c
    return-void

    .line 22
    :cond_d
    :try_start_3
    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-interface {v7, p0, v5, v6}, Lkotlinx/coroutines/TimeSource;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    :cond_e
    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 23
    sput-object v0, Le/a/g0;->_thread:Ljava/lang/Thread;

    .line 24
    invoke-virtual {p0}, Le/a/g0;->m()V

    .line 25
    invoke-static {}, Le/a/r1;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->unregisterTimeLoopThread()V

    .line 26
    :cond_f
    invoke-virtual {p0}, Le/a/r0;->i()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Le/a/g0;->e()Ljava/lang/Thread;

    :cond_10
    throw v1
.end method
