.class Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedMultimap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/SetMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 817
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;-><init>(Lcom/google/common/collect/Multimap;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Lcom/google/common/collect/Multimap;
    .locals 0

    .line 812
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object p0

    return-object p0
.end method

.method delegate()Lcom/google/common/collect/SetMultimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 822
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/SetMultimap;

    return-object p0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 812
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 0

    .line 812
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entries()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public entries()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 849
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 850
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    .line 852
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 853
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 812
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 828
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 829
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 812
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/SetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 836
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 812
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 842
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/SetMultimap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/SetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 843
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
