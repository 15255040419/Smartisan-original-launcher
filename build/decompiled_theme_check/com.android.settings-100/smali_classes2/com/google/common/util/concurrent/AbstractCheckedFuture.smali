.class public abstract Lcom/google/common/util/concurrent/AbstractCheckedFuture;
.super Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;
.source "AbstractCheckedFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/CheckedFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/CheckedFuture<",
        "TV;TX;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method


# virtual methods
.method public checkedGet()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v0

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^",
            "Ljava/util/concurrent/TimeoutException;",
            "^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p1

    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractCheckedFuture;->mapException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object p0

    throw p0
.end method

.method protected abstract mapException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            ")TX;"
        }
    .end annotation
.end method
