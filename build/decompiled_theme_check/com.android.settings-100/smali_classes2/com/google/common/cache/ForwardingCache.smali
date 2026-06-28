.class public abstract Lcom/google/common/cache/ForwardingCache;
.super Lcom/google/common/collect/ForwardingObject;
.source "ForwardingCache.java"

# interfaces
.implements Lcom/google/common/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/ForwardingCache$SimpleForwardingCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingObject;",
        "Lcom/google/common/cache/Cache<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/cache/Cache;->asMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p0

    return-object p0
.end method

.method public cleanUp()V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/cache/Cache;->cleanUp()V

    return-void
.end method

.method protected abstract delegate()Lcom/google/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable<",
            "+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/cache/Cache;->get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/cache/Cache;->getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/cache/Cache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invalidate(Ljava/lang/Object;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/cache/Cache;->invalidate(Ljava/lang/Object;)V

    return-void
.end method

.method public invalidateAll()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/cache/Cache;->invalidateAll()V

    return-void
.end method

.method public invalidateAll(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/cache/Cache;->invalidateAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/cache/Cache;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public size()J
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/cache/Cache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lcom/google/common/cache/CacheStats;
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/google/common/cache/ForwardingCache;->delegate()Lcom/google/common/cache/Cache;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/cache/Cache;->stats()Lcom/google/common/cache/CacheStats;

    move-result-object p0

    return-object p0
.end method
