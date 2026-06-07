.class public Lg/q;
.super Ljava/lang/Object;
.source "Timeout.java"


# static fields
.field public static final d:Lg/q;


# instance fields
.field public a:Z

.field public b:J

.field public c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/q$a;

    invoke-direct {v0}, Lg/q$a;-><init>()V

    sput-object v0, Lg/q;->d:Lg/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lg/q;
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lg/q;->a:Z

    return-object p0
.end method

.method public a(J)Lg/q;
    .locals 1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lg/q;->a:Z

    .line 5
    iput-wide p1, p0, Lg/q;->b:J

    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lg/q;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lg/q;->c:J

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public b()Lg/q;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lg/q;->c:J

    return-object p0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg/q;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lg/q;->b:J

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/q;->a:Z

    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lg/q;->a:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lg/q;->b:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 4
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg/q;->c:J

    return-wide v0
.end method
