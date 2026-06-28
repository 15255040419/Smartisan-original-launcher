.class Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedObject;",
        "Lcom/google/common/collect/Multimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient keys:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient valuesCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimap;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 590
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 723
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 725
    new-instance v1, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    .line 727
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 728
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clear()V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 681
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 625
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 611
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 617
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 618
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method delegate()Lcom/google/common/collect/Multimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 586
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multimap;

    return-object p0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 575
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    return-object p0
.end method

.method public entries()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    .line 710
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 711
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 747
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 748
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 717
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 718
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/common/collect/Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 632
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hashCode()I
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->hashCode()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 755
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 604
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    .line 690
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 691
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public keys()Lcom/google/common/collect/Multiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/Multiset;

    if-nez v1, :cond_0

    .line 735
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->multiset(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Lcom/google/common/collect/Multiset;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/Multiset;

    .line 737
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/Multiset;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 738
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 639
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 653
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 645
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 646
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 667
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 672
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 674
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 659
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 660
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public size()I
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 596
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 597
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    .line 700
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 701
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
