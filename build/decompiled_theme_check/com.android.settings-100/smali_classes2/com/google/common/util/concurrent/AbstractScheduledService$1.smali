.class Lcom/google/common/util/concurrent/AbstractScheduledService$1;
.super Lcom/google/common/util/concurrent/Service$Listener;
.source "AbstractScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService;->executor()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

.field final synthetic val$executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Service$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    return-void
.end method
