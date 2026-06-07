.class public final Le/a/w1/a;
.super Le/a/w1/b;
.source "HandlerDispatcher.kt"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# instance fields
.field public volatile _immediate:Le/a/w1/a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Le/a/w1/a;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/w1/b;-><init>(Ld/q/c/c;)V

    iput-object p1, p0, Le/a/w1/a;->b:Landroid/os/Handler;

    iput-object p2, p0, Le/a/w1/a;->c:Ljava/lang/String;

    iput-boolean p3, p0, Le/a/w1/a;->d:Z

    .line 2
    iget-boolean p1, p0, Le/a/w1/a;->d:Z

    if-eqz p1, :cond_0

    move-object v0, p0

    :cond_0
    iput-object v0, p0, Le/a/w1/a;->_immediate:Le/a/w1/a;

    .line 3
    iget-object p1, p0, Le/a/w1/a;->_immediate:Le/a/w1/a;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Le/a/w1/a;

    iget-object p2, p0, Le/a/w1/a;->b:Landroid/os/Handler;

    iget-object p3, p0, Le/a/w1/a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, v0}, Le/a/w1/a;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p1, p0, Le/a/w1/a;->_immediate:Le/a/w1/a;

    :goto_0
    return-void
.end method

.method public static final synthetic a(Le/a/w1/a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/w1/a;->b:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 3
    iget-object p1, p0, Le/a/w1/a;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 2

    .line 2
    iget-boolean p1, p0, Le/a/w1/a;->d:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Le/a/w1/a;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Le/a/w1/a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/w1/a;

    iget-object p1, p1, Le/a/w1/a;->b:Landroid/os/Handler;

    iget-object v0, p0, Le/a/w1/a;->b:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w1/a;->b:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w1/a;->b:Landroid/os/Handler;

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v1, v2}, Ld/s/e;->b(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    new-instance p1, Le/a/w1/a$a;

    invoke-direct {p1, p0, p3}, Le/a/w1/a$a;-><init>(Le/a/w1/a;Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ld/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/w1/a$b;

    invoke-direct {v0, p0, p3}, Le/a/w1/a$b;-><init>(Le/a/w1/a;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 2
    iget-object v1, p0, Le/a/w1/a;->b:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v2, v3}, Ld/s/e;->b(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    new-instance p1, Le/a/w1/a$c;

    invoke-direct {p1, p0, v0}, Le/a/w1/a$c;-><init>(Le/a/w1/a;Ljava/lang/Runnable;)V

    invoke-interface {p3, p1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/w1/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Le/a/w1/a;->d:Z

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/w1/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [immediate]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/w1/a;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method
