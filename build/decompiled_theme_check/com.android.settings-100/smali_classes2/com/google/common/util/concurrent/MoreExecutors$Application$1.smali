.class Lcom/google/common/util/concurrent/MoreExecutors$Application$1;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/MoreExecutors$Application;->addDelayedShutdownHook(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/MoreExecutors$Application;

.field final synthetic val$service:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$terminationTimeout:J

.field final synthetic val$timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/MoreExecutors$Application;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->this$0:Lcom/google/common/util/concurrent/MoreExecutors$Application;

    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$service:Ljava/util/concurrent/ExecutorService;

    iput-wide p3, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$terminationTimeout:J

    iput-object p5, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 212
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$service:Ljava/util/concurrent/ExecutorService;

    iget-wide v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$terminationTimeout:J

    iget-object p0, p0, Lcom/google/common/util/concurrent/MoreExecutors$Application$1;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, p0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
