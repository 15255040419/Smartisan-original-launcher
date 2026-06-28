.class final Lcom/google/common/util/concurrent/Futures$CallbackListener;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final callback:Lcom/google/common/util/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/FutureCallback<",
            "-TV;>;"
        }
    .end annotation
.end field

.field final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/FutureCallback<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->future:Ljava/util/concurrent/Future;

    .line 1332
    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lcom/google/common/util/concurrent/FutureCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1339
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->future:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1347
    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 1344
    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 1341
    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1352
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Futures$CallbackListener;->callback:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0, p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
