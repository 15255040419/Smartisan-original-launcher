.class Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;
.super Lcom/google/common/util/concurrent/AbstractService;
.source "AbstractExecutionThreadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final doStart()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    .line 48
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;-><init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V

    .line 47
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;-><init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected doStop()V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->triggerShutdown()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
