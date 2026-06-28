.class Lcom/google/common/cache/CacheLoader$1$1;
.super Ljava/lang/Object;
.source "CacheLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/CacheLoader$1;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/CacheLoader$1;

.field final synthetic val$key:Ljava/lang/Object;

.field final synthetic val$oldValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CacheLoader$1;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/google/common/cache/CacheLoader$1$1;->this$0:Lcom/google/common/cache/CacheLoader$1;

    iput-object p2, p0, Lcom/google/common/cache/CacheLoader$1$1;->val$key:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/cache/CacheLoader$1$1;->val$oldValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/google/common/cache/CacheLoader$1$1;->this$0:Lcom/google/common/cache/CacheLoader$1;

    iget-object v0, v0, Lcom/google/common/cache/CacheLoader$1;->val$loader:Lcom/google/common/cache/CacheLoader;

    iget-object v1, p0, Lcom/google/common/cache/CacheLoader$1$1;->val$key:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/common/cache/CacheLoader$1$1;->val$oldValue:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/google/common/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
