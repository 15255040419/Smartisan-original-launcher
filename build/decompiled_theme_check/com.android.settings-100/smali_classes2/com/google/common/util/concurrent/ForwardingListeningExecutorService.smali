.class public abstract Lcom/google/common/util/concurrent/ForwardingListeningExecutorService;
.super Lcom/google/common/util/concurrent/ForwardingExecutorService;
.source "ForwardingListeningExecutorService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingExecutorService;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Lcom/google/common/util/concurrent/ListeningExecutorService;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingListeningExecutorService;->delegate()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingListeningExecutorService;->delegate()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingListeningExecutorService;->delegate()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingListeningExecutorService;->delegate()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingListeningExecutorService;->delegate()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ForwardingListeningExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/ForwardingListeningExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ForwardingListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
