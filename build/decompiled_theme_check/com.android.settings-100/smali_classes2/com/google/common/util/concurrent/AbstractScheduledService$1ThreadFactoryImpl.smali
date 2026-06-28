.class Lcom/google/common/util/concurrent/AbstractScheduledService$1ThreadFactoryImpl;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService;->executor()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThreadFactoryImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1ThreadFactoryImpl;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1ThreadFactoryImpl;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->serviceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors;->newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
