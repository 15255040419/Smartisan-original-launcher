.class final Lcom/google/common/cache/LocalCache$Values;
.super Ljava/util/AbstractCollection;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "**>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "**>;)V"
        }
    .end annotation

    .line 4576
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Values;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4577
    iput-object p2, p0, Lcom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method static synthetic lambda$removeIf$0(Ljava/util/function/Predicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 4603
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 4592
    iget-object p0, p0, Lcom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 4608
    iget-object p0, p0, Lcom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 4587
    iget-object p0, p0, Lcom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 4597
    new-instance v0, Lcom/google/common/cache/LocalCache$ValueIterator;

    iget-object p0, p0, Lcom/google/common/cache/LocalCache$Values;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, p0}, Lcom/google/common/cache/LocalCache$ValueIterator;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 4602
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4603
    iget-object p0, p0, Lcom/google/common/cache/LocalCache$Values;->this$0:Lcom/google/common/cache/LocalCache;

    new-instance v0, Lcom/google/common/cache/-$$Lambda$LocalCache$Values$okp7iNiz5QxmoxFBOtX4KAC8Ktk;

    invoke-direct {v0, p1}, Lcom/google/common/cache/-$$Lambda$LocalCache$Values$okp7iNiz5QxmoxFBOtX4KAC8Ktk;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->removeIf(Ljava/util/function/BiPredicate;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    .line 4582
    iget-object p0, p0, Lcom/google/common/cache/LocalCache$Values;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result p0

    return p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    .line 4616
    invoke-static {p0}, Lcom/google/common/cache/LocalCache;->access$200(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .line 4621
    invoke-static {p0}, Lcom/google/common/cache/LocalCache;->access$200(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
