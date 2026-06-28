.class final Lcom/google/common/util/concurrent/Callables$3;
.super Ljava/lang/Object;
.source "Callables.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/util/concurrent/Callable;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$nameSupplier:Lcom/google/common/base/Supplier;


# direct methods
.method constructor <init>(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$3;->val$nameSupplier:Lcom/google/common/base/Supplier;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$3;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/google/common/util/concurrent/Callables$3;->val$nameSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result v2

    .line 89
    :try_start_0
    iget-object p0, p0, Lcom/google/common/util/concurrent/Callables$3;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 92
    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_1

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 93
    :cond_1
    throw p0
.end method
