.class final Lcom/google/common/cache/CacheLoader$1;
.super Lcom/google/common/cache/CacheLoader;
.source "CacheLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/CacheLoader;->asyncReloading(Lcom/google/common/cache/CacheLoader;Ljava/util/concurrent/Executor;)Lcom/google/common/cache/CacheLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$loader:Lcom/google/common/cache/CacheLoader;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CacheLoader;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/google/common/cache/CacheLoader$1;->val$loader:Lcom/google/common/cache/CacheLoader;

    iput-object p2, p0, Lcom/google/common/cache/CacheLoader$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lcom/google/common/cache/CacheLoader$1;->val$loader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    iget-object p0, p0, Lcom/google/common/cache/CacheLoader$1;->val$loader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    new-instance v0, Lcom/google/common/cache/CacheLoader$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/cache/CacheLoader$1$1;-><init>(Lcom/google/common/cache/CacheLoader$1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    invoke-static {v0}, Lcom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p1

    .line 201
    iget-object p0, p0, Lcom/google/common/cache/CacheLoader$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method
