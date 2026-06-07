.class public Lb/a/a/n1/e0$b;
.super Ljava/lang/Object;
.source "SingleThreadNamedTaskExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/n1/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/n1/e0;


# direct methods
.method public constructor <init>(Lb/a/a/n1/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/e0$b;->a:Lb/a/a/n1/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/a/a/n1/e0;Lb/a/a/n1/e0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lb/a/a/n1/e0$b;-><init>(Lb/a/a/n1/e0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    :catch_0
    :goto_0
    iget-object v2, p0, Lb/a/a/n1/e0$b;->a:Lb/a/a/n1/e0;

    invoke-static {v2}, Lb/a/a/n1/e0;->a(Lb/a/a/n1/e0;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    :try_start_0
    iget-object v2, p0, Lb/a/a/n1/e0$b;->a:Lb/a/a/n1/e0;

    invoke-static {v2}, Lb/a/a/n1/e0;->b(Lb/a/a/n1/e0;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/util/NamedTask;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/quicksearchbox/util/NamedTask;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6
    :try_start_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/quicksearchbox/util/NamedTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "QSB.STNTE"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    const-string v0, "Worker exited before close"

    const-string v1, "QSB.STNTE"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lb/a/a/n1/e0$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v2, p0, Lb/a/a/n1/e0$b;->a:Lb/a/a/n1/e0;

    invoke-static {v2}, Lb/a/a/n1/e0;->a(Lb/a/a/n1/e0;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lb/a/a/n1/e0$b;->a:Lb/a/a/n1/e0;

    invoke-static {v3}, Lb/a/a/n1/e0;->a(Lb/a/a/n1/e0;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    throw v2
.end method
