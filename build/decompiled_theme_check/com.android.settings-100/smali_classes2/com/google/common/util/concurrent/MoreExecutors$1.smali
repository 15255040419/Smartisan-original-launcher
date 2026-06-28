.class final Lcom/google/common/util/concurrent/MoreExecutors$1;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/MoreExecutors;->submitAndAddQueueListener(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;Ljava/util/concurrent/BlockingQueue;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic val$queue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/google/common/util/concurrent/MoreExecutors$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$1;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$1;->val$queue:Ljava/util/concurrent/BlockingQueue;

    iget-object p0, p0, Lcom/google/common/util/concurrent/MoreExecutors$1;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
