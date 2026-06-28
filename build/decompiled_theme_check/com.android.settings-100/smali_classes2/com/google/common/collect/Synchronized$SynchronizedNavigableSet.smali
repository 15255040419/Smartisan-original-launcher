.class Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;
.super Lcom/google/common/collect/Synchronized$SynchronizedSortedSet;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedNavigableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedSortedSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient descendingSet:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1419
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1429
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1430
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1431
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 1414
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 0

    .line 1414
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method delegate()Ljava/util/NavigableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1424
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSet;->delegate()Ljava/util/SortedSet;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableSet;

    return-object p0
.end method

.method bridge synthetic delegate()Ljava/util/Set;
    .locals 0

    .line 1414
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic delegate()Ljava/util/SortedSet;
    .locals 0

    .line 1414
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1436
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1443
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1444
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->descendingSet:Ljava/util/NavigableSet;

    if-nez v1, :cond_0

    .line 1445
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v1

    .line 1446
    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->descendingSet:Ljava/util/NavigableSet;

    .line 1447
    monitor-exit v0

    return-object v1

    .line 1449
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->descendingSet:Ljava/util/NavigableSet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1450
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1455
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1456
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1457
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1462
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1464
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1469
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1474
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1475
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1476
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1481
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1482
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1483
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1488
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1489
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1490
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1496
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1503
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1505
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    .line 1504
    invoke-static {p1, p0}, Lcom/google/common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1506
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1511
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1516
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1517
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->mutex:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1518
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1523
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method
