.class public Lb/a/a/n1/d;
.super Ljava/lang/Object;
.source "AgentHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/n1/d$q;,
        Lb/a/a/n1/d$i;,
        Lb/a/a/n1/d$m;,
        Lb/a/a/n1/d$r;,
        Lb/a/a/n1/d$s;,
        Lb/a/a/n1/d$h;,
        Lb/a/a/n1/d$t;,
        Lb/a/a/n1/d$e;,
        Lb/a/a/n1/d$f;,
        Lb/a/a/n1/d$d;,
        Lb/a/a/n1/d$u;,
        Lb/a/a/n1/d$p;,
        Lb/a/a/n1/d$k;,
        Lb/a/a/n1/d$n;,
        Lb/a/a/n1/d$j;,
        Lb/a/a/n1/d$l;,
        Lb/a/a/n1/d$g;,
        Lb/a/a/n1/d$o;,
        Lb/a/a/n1/d$v;
    }
.end annotation


# static fields
.field public static a:Lsmartisanos/app/tracker/Agent;

.field public static b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lsmartisanos/app/tracker/Agent;->getInstance()Lsmartisanos/app/tracker/Agent;

    move-result-object v0

    sput-object v0, Lb/a/a/n1/d;->a:Lsmartisanos/app/tracker/Agent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lsmartisanos/app/tracker/Agent;
    .locals 1

    .line 1
    sget-object v0, Lb/a/a/n1/d;->a:Lsmartisanos/app/tracker/Agent;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lb/a/a/n1/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lb/a/a/n1/d$c;

    invoke-direct {v0, p0}, Lb/a/a/n1/d$c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lb/a/a/n1/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    sget-object v0, Lb/a/a/n1/d;->a:Lsmartisanos/app/tracker/Agent;

    invoke-virtual {v0, p0, p1}, Lsmartisanos/app/tracker/Agent;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent, eventid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", eventdata="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/n1/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 1

    .line 7
    new-instance v0, Lb/a/a/n1/d$b;

    invoke-direct {v0}, Lb/a/a/n1/d$b;-><init>()V

    invoke-static {v0}, Lb/a/a/n1/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    const-class v0, Lb/a/a/n1/d;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lb/a/a/n1/d;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    sget-object v1, Lb/a/a/n1/d;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lb/a/a/n1/d;->b:Ljava/util/concurrent/ExecutorService;

    .line 4
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lb/a/a/n1/d;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 8
    sget-object v0, Lb/a/a/n1/d;->a:Lsmartisanos/app/tracker/Agent;

    invoke-virtual {v0, p0, p1}, Lsmartisanos/app/tracker/Agent;->onStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStatus, eventid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", eventdata="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/a/a/n1/q;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static c()V
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/n1/d$a;

    invoke-direct {v0}, Lb/a/a/n1/d$a;-><init>()V

    invoke-static {v0}, Lb/a/a/n1/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method
