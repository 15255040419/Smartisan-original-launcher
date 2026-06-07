.class public Lb/d/a/b/a$a;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final e:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Ljava/lang/ThreadGroup;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lb/d/a/b/a$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lb/d/a/b/a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput p1, p0, Lb/d/a/b/a$a;->d:I

    .line 4
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/SecurityManager;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lb/d/a/b/a$a;->a:Ljava/lang/ThreadGroup;

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lb/d/a/b/a$a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-thread-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/d/a/b/a$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 7

    .line 1
    new-instance v6, Ljava/lang/Thread;

    iget-object v1, p0, Lb/d/a/b/a$a;->a:Ljava/lang/ThreadGroup;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lb/d/a/b/a$a;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/d/a/b/a$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 2
    invoke-virtual {v6}, Ljava/lang/Thread;->isDaemon()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v6, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 3
    :cond_0
    iget p1, p0, Lb/d/a/b/a$a;->d:I

    invoke-virtual {v6, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v6
.end method
