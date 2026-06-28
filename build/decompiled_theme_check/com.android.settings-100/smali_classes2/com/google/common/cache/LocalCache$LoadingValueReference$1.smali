.class Lcom/google/common/cache/LocalCache$LoadingValueReference$1;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TV;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache$LoadingValueReference;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$LoadingValueReference;)V
    .locals 0

    .line 3535
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference$1;->this$0:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 3538
    iget-object p0, p0, Lcom/google/common/cache/LocalCache$LoadingValueReference$1;->this$0:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    return-object p1
.end method
