.class public Lb/a/a/n1/e0;
.super Ljava/lang/Object;
.source "SingleThreadNamedTaskExecutor.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NamedTaskExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/n1/e0$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/android/quicksearchbox/util/NamedTask;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Thread;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/a/n1/e0;->c:Z

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lb/a/a/n1/e0;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 4
    new-instance v0, Lb/a/a/n1/e0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/a/n1/e0$b;-><init>(Lb/a/a/n1/e0;Lb/a/a/n1/e0$a;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/n1/e0;->b:Ljava/lang/Thread;

    .line 5
    iget-object p1, p0, Lb/a/a/n1/e0;->b:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Ljava/util/concurrent/ThreadFactory;)Lcom/android/quicksearchbox/util/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ThreadFactory;",
            ")",
            "Lcom/android/quicksearchbox/util/Factory<",
            "Lcom/android/quicksearchbox/util/NamedTaskExecutor;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lb/a/a/n1/e0$a;

    invoke-direct {v0, p0}, Lb/a/a/n1/e0$a;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public static synthetic a(Lb/a/a/n1/e0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/n1/e0;->c:Z

    return p0
.end method

.method public static synthetic b(Lb/a/a/n1/e0;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/n1/e0;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method


# virtual methods
.method public cancelPendingTasks()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb/a/a/n1/e0;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/n1/e0;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cancelPendingTasks() after close()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/a/a/n1/e0;->c:Z

    .line 2
    iget-object v0, p0, Lb/a/a/n1/e0;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    iget-object v0, p0, Lb/a/a/n1/e0;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void
.end method

.method public execute(Lcom/android/quicksearchbox/util/NamedTask;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/n1/e0;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/n1/e0;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "execute() after close()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
