.class Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;
.super Ljava/lang/Object;
.source "AggregateFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

.field final synthetic val$index:I

.field final synthetic val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;ILcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;->this$1:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    iput p2, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;->val$index:I

    iput-object p3, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;->val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;->this$1:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    iget v1, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;->val$index:I

    iget-object v2, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;->val$listenable:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->access$200(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object p0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;->this$1:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    invoke-static {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->access$300(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AggregateFuture$RunningState$1;->this$1:Lcom/google/common/util/concurrent/AggregateFuture$RunningState;

    invoke-static {p0}, Lcom/google/common/util/concurrent/AggregateFuture$RunningState;->access$300(Lcom/google/common/util/concurrent/AggregateFuture$RunningState;)V

    throw v0
.end method
