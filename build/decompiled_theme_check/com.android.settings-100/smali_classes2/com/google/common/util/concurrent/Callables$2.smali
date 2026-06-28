.class final Lcom/google/common/util/concurrent/Callables$2;
.super Ljava/lang/Object;
.source "Callables.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Callables;->asAsyncCallable(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/ListeningExecutorService;)Lcom/google/common/util/concurrent/AsyncCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncCallable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$2;->val$listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$2;->val$listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    iget-object p0, p0, Lcom/google/common/util/concurrent/Callables$2;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, p0}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
