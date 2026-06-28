.class public Lcom/amap/api/mapcore2d/dn;
.super Lcom/amap/api/mapcore2d/dq;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/dn$a;
    }
.end annotation


# static fields
.field private static e:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dq;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/amap/api/mapcore2d/dn;->d:Landroid/content/Context;

    .line 120
    new-instance p2, Lcom/amap/api/mapcore2d/dn$a;

    invoke-direct {p2, p1}, Lcom/amap/api/mapcore2d/dn$a;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-static {p2}, Lcom/amap/api/mapcore2d/ey;->a(Lcom/amap/api/mapcore2d/ez;)V

    .line 122
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dn;->d()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/dn;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amap/api/mapcore2d/dn;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;)Lcom/amap/api/mapcore2d/dn;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/da;
        }
    .end annotation

    const-class v0, Lcom/amap/api/mapcore2d/dn;

    monitor-enter v0

    if-eqz p1, :cond_2

    .line 57
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/di;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/di;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 61
    :try_start_1
    sget-object v1, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/amap/api/mapcore2d/dn;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore2d/dn;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;)V

    sput-object v1, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    goto :goto_0

    .line 65
    :cond_0
    sget-object v1, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/amap/api/mapcore2d/dq;->c:Z

    .line 68
    :goto_0
    sget-object v1, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    sget-object v2, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    iget-boolean v2, v2, Lcom/amap/api/mapcore2d/dq;->c:Z

    invoke-virtual {v1, p0, p1, v2}, Lcom/amap/api/mapcore2d/dq;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 71
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    :goto_1
    sget-object p0, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    check-cast p0, Lcom/amap/api/mapcore2d/dn;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    .line 58
    :cond_1
    :try_start_3
    new-instance p0, Lcom/amap/api/mapcore2d/da;

    const-string p1, "sdk name is invalid"

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/da;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 55
    :cond_2
    new-instance p0, Lcom/amap/api/mapcore2d/da;

    const-string p1, "sdk info is null"

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/da;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized a()Ljava/util/concurrent/ExecutorService;
    .locals 2

    const-class v0, Lcom/amap/api/mapcore2d/dn;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore2d/dn;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amap/api/mapcore2d/dn;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/amap/api/mapcore2d/dn;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 40
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    :cond_1
    :goto_0
    sget-object v1, Lcom/amap/api/mapcore2d/dn;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    sget-object v0, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/amap/api/mapcore2d/dq;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized b()Lcom/amap/api/mapcore2d/dn;
    .locals 2

    const-class v0, Lcom/amap/api/mapcore2d/dn;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    check-cast v1, Lcom/amap/api/mapcore2d/dn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c()V
    .locals 3

    const-class v0, Lcom/amap/api/mapcore2d/dn;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore2d/dn;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 99
    sget-object v1, Lcom/amap/api/mapcore2d/dn;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 102
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 107
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    sget-object v2, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/dq;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 110
    sget-object v1, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/dq;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    const/4 v1, 0x0

    .line 112
    sput-object v1, Lcom/amap/api/mapcore2d/dq;->a:Lcom/amap/api/mapcore2d/dq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 114
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 116
    :goto_1
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private d()V
    .locals 3

    .line 127
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 128
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 129
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 130
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/dn;->c:Z

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.amap.api"

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/dn;->c:Z

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 137
    iput-boolean v1, p0, Lcom/amap/api/mapcore2d/dn;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/amap/api/mapcore2d/di;Z)V
    .locals 2

    .line 189
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/dn;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    new-instance v1, Lcom/amap/api/mapcore2d/dn$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/amap/api/mapcore2d/dn$1;-><init>(Lcom/amap/api/mapcore2d/dn;Landroid/content/Context;Lcom/amap/api/mapcore2d/di;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 232
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_0
    :goto_1
    return-void
.end method

.method protected a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/amap/api/mapcore2d/dn;->d:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/amap/api/mapcore2d/dv;->a(Landroid/content/Context;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 171
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0, p2, v0, v1, v1}, Lcom/amap/api/mapcore2d/dn;->a(Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/amap/api/mapcore2d/dn;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 154
    iget-object p0, p0, Lcom/amap/api/mapcore2d/dn;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
