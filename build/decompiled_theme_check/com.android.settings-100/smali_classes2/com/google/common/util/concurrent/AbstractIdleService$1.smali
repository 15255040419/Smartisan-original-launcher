.class Lcom/google/common/util/concurrent/AbstractIdleService$1;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractIdleService;->executor()Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractIdleService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$1;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractIdleService;->access$200(Lcom/google/common/util/concurrent/AbstractIdleService;)Lcom/google/common/base/Supplier;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors;->newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
