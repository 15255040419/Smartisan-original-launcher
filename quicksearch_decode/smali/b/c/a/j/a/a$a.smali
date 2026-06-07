.class public final Lb/c/a/j/a/a$a;
.super Ljava/lang/Object;
.source "ThreadFactoryBuilder.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c/a/j/a/a;->a(Lb/c/a/j/a/a;)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ThreadFactory;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic d:Ljava/lang/Boolean;

.field public final synthetic e:Ljava/lang/Integer;

.field public final synthetic f:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c/a/j/a/a$a;->a:Ljava/util/concurrent/ThreadFactory;

    iput-object p2, p0, Lb/c/a/j/a/a$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lb/c/a/j/a/a$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lb/c/a/j/a/a$a;->d:Ljava/lang/Boolean;

    iput-object p5, p0, Lb/c/a/j/a/a$a;->e:Ljava/lang/Integer;

    iput-object p6, p0, Lb/c/a/j/a/a$a;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 5

    .line 1
    iget-object v0, p0, Lb/c/a/j/a/a$a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lb/c/a/j/a/a$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    iget-object v3, p0, Lb/c/a/j/a/a$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lb/c/a/j/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/c/a/j/a/a$a;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lb/c/a/j/a/a$a;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lb/c/a/j/a/a$a;->f:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_3
    return-object p1
.end method
