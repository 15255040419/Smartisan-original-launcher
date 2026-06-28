.class public abstract Lcom/google/common/collect/ForwardingConcurrentMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "ForwardingConcurrentMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingConcurrentMap;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingConcurrentMap;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p0

    return-object p0
.end method

.method protected abstract delegate()Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingConcurrentMap;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingConcurrentMap;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingConcurrentMap;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingConcurrentMap;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
