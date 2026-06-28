.class final Lcom/google/common/util/concurrent/Futures$3;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->inCompletionOrder(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delegates:Lcom/google/common/collect/ImmutableList;

.field final synthetic val$localI:I

.field final synthetic val$state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/collect/ImmutableList;I)V
    .locals 0

    .line 1123
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$3;->val$state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$3;->val$delegates:Lcom/google/common/collect/ImmutableList;

    iput p3, p0, Lcom/google/common/util/concurrent/Futures$3;->val$localI:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1126
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$3;->val$state:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$3;->val$delegates:Lcom/google/common/collect/ImmutableList;

    iget p0, p0, Lcom/google/common/util/concurrent/Futures$3;->val$localI:I

    invoke-static {v0, v1, p0}, Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;->access$300(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/collect/ImmutableList;I)V

    return-void
.end method
