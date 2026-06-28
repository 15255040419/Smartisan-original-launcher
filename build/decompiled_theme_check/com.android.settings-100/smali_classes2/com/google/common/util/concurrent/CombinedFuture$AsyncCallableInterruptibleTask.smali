.class final Lcom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;
.super Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CombinedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsyncCallableInterruptibleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/CombinedFuture<",
        "TV;>.CombinedFutureInterruptibleTask<",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final callable:Lcom/google/common/util/concurrent/AsyncCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/AsyncCallable<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/util/concurrent/CombinedFuture;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/CombinedFuture;Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AsyncCallable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    .line 142
    invoke-direct {p0, p1, p3}, Lcom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;-><init>(Lcom/google/common/util/concurrent/CombinedFuture;Ljava/util/concurrent/Executor;)V

    .line 143
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/AsyncCallable;

    iput-object p1, p0, Lcom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->callable:Lcom/google/common/util/concurrent/AsyncCallable;

    return-void
.end method


# virtual methods
.method runInterruptibly()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->thrownByExecute:Z

    .line 149
    iget-object p0, p0, Lcom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->callable:Lcom/google/common/util/concurrent/AsyncCallable;

    invoke-interface {p0}, Lcom/google/common/util/concurrent/AsyncCallable;->call()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    const-string v0, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)?"

    .line 150
    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method bridge synthetic runInterruptibly()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->runInterruptibly()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method setValue(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->this$0:Lcom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/CombinedFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method

.method bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->setValue(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method toPendingString()Ljava/lang/String;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->callable:Lcom/google/common/util/concurrent/AsyncCallable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
