.class final Lcom/google/common/util/concurrent/Callables$4;
.super Ljava/lang/Object;
.source "Callables.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/lang/Runnable;Lcom/google/common/base/Supplier;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nameSupplier:Lcom/google/common/base/Supplier;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$4;->val$nameSupplier:Lcom/google/common/base/Supplier;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$4;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/google/common/util/concurrent/Callables$4;->val$nameSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result v2

    .line 119
    :try_start_0
    iget-object p0, p0, Lcom/google/common/util/concurrent/Callables$4;->val$task:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 122
    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_1

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 123
    :cond_1
    throw p0
.end method
