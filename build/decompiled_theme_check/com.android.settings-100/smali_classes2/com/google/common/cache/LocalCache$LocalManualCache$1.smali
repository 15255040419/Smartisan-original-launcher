.class Lcom/google/common/cache/LocalCache$LocalManualCache$1;
.super Lcom/google/common/cache/CacheLoader;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/LocalCache$LocalManualCache;->get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache$LocalManualCache;

.field final synthetic val$valueLoader:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$LocalManualCache;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 4867
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$LocalManualCache$1;->this$0:Lcom/google/common/cache/LocalCache$LocalManualCache;

    iput-object p2, p0, Lcom/google/common/cache/LocalCache$LocalManualCache$1;->val$valueLoader:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4870
    iget-object p0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache$1;->val$valueLoader:Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
