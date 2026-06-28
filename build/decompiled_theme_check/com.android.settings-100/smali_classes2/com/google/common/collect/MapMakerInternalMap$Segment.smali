.class abstract Lcom/google/common/collect/MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;S:",
        "Lcom/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field volatile count:I

.field final map:Lcom/google/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field final maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field threshold:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>;II)V"
        }
    .end annotation

    .line 1212
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1213
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    .line 1214
    iput p3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    .line 1215
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    return-void
.end method

.method static isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;TE;>;>(TE;)Z"
        }
    .end annotation

    .line 1945
    invoke-interface {p0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method abstract castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation
.end method

.method clear()V
    .locals 4

    .line 1778
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_1

    .line 1779
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1781
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    move v2, v1

    .line 1782
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v3, 0x0

    .line 1783
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1785
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maybeClearReferenceQueues()V

    .line 1786
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1788
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1789
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1791
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TT;>;)V"
        }
    .end annotation

    .line 1384
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method clearValueForTesting(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;+",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;>;)Z"
        }
    .end annotation

    .line 1891
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1893
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1894
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1895
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1898
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1899
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1901
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1902
    move-object p1, v4

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    if-ne p1, p3, :cond_0

    .line 1904
    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1905
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1914
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v5

    .line 1897
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1914
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw p1
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 2

    .line 1441
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1442
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1443
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1448
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw p1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 7

    .line 1459
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1460
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1461
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    .line 1463
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    :goto_1
    if-eqz v4, :cond_2

    .line 1464
    invoke-virtual {p0, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 1468
    :cond_0
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v6}, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    .line 1477
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 p0, 0x1

    return p0

    .line 1463
    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1477
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw p1
.end method

.method copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->copy(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p0

    return-object p0
.end method

.method copyForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .param p2    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation

    .line 1310
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p0

    invoke-interface {v0, v1, p1, p0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->copy(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p0

    return-object p0
.end method

.method drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1359
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1361
    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1362
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/MapMakerInternalMap;->reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1373
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1375
    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 1376
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/MapMakerInternalMap;->reclaimValue(Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method expand()V
    .locals 11

    .line 1541
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1542
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    return-void

    .line 1557
    :cond_0
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    shl-int/lit8 v3, v1, 0x1

    .line 1558
    invoke-virtual {p0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 1559
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1560
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    .line 1564
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v6, :cond_5

    .line 1567
    invoke-interface {v6}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v7

    .line 1568
    invoke-interface {v6}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v8

    and-int/2addr v8, v4

    if-nez v7, :cond_1

    .line 1572
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    .line 1580
    invoke-interface {v7}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v10

    and-int/2addr v10, v4

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    .line 1579
    :cond_2
    invoke-interface {v7}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v7

    goto :goto_1

    .line 1587
    :cond_3
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_5

    .line 1591
    invoke-interface {v6}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    and-int/2addr v7, v4

    .line 1592
    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 1593
    invoke-virtual {p0, v6, v8}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1595
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 1590
    :goto_3
    invoke-interface {v6}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1603
    :cond_6
    iput-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1604
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1424
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1435
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    return-object p1

    .line 1429
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1431
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1435
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw p1
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 1397
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_3

    .line 1398
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getFirst(I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 1399
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v1

    if-eq v1, p2, :cond_0

    goto :goto_1

    .line 1403
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1405
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    goto :goto_1

    .line 1409
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 1398
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method getFirst(I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1390
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1391
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    return-object p0
.end method

.method getKeyReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation

    .line 1269
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 1419
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p0

    return-object p0
.end method

.method getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1954
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1955
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    return-object v1

    .line 1958
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1960
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    return-object v1

    :cond_1
    return-object p1
.end method

.method getLiveValueForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1339
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method getValueReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation

    .line 1274
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method getWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 1279
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 1248
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1249
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1251
    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 1253
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method maybeClearReferenceQueues()V
    .locals 0

    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 0

    return-void
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .line 1244
    new-instance p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object p0
.end method

.method newEntryForTesting(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 2
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p0

    invoke-interface {v0, v1, p1, p2, p0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p0

    return-object p0
.end method

.method newWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;TV;)",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .line 1288
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method postReadCleanup()V
    .locals 1

    .line 1973
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 1974
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    :cond_0
    return-void
.end method

.method preWriteCleanup()V
    .locals 0

    .line 1984
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .line 1482
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1484
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1486
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 1487
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    if-le v0, v1, :cond_0

    .line 1488
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expand()V

    .line 1489
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 1492
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1493
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 1494
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1498
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1499
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1501
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1504
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1507
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1508
    invoke-virtual {p0, v4, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1509
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1510
    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return-object v5

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return-object p1

    .line 1519
    :cond_2
    :try_start_1
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1520
    invoke-virtual {p0, v4, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1534
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return-object p1

    .line 1497
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4

    goto :goto_0

    .line 1527
    :cond_4
    iget p4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1528
    iget-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object p4, p4, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v4

    invoke-interface {p4, v4, p1, p2, v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1529
    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    .line 1530
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1531
    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1534
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw p1
.end method

.method reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 1827
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1829
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1830
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1831
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr p2, v1

    .line 1832
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_0

    .line 1836
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1837
    invoke-virtual {p0, v1, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1838
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr v1, v2

    .line 1839
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1840
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v2

    .line 1834
    :cond_0
    :try_start_1
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1847
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw p1
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;TE;>;)Z"
        }
    .end annotation

    .line 1854
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1856
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1857
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1858
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1859
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 1862
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1863
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1865
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1866
    move-object p1, v4

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$WeakValueEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object p1

    if-ne p1, p3, :cond_0

    .line 1868
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1869
    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1870
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr p2, v2

    .line 1871
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1872
    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1881
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v5

    .line 1861
    :cond_1
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1881
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw p1
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1697
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1699
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1701
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1702
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1703
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 1704
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1707
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1708
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1710
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1711
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 1715
    :cond_0
    invoke-static {v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1721
    :goto_1
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1722
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p2

    .line 1723
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 1724
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1725
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1732
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return-object v4

    .line 1706
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1732
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return-object v4

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw p1
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 8

    .line 1737
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1739
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1741
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1742
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1743
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1744
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 1747
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1748
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1750
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1751
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 1754
    iget-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v5, v2

    goto :goto_1

    .line 1756
    :cond_0
    invoke-static {v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1762
    :goto_1
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1763
    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1764
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr p2, v2

    .line 1765
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1766
    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1773
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v5

    .line 1746
    :cond_2
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1773
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw p1
.end method

.method removeEntryForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1920
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v0

    .line 1921
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1922
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1923
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v0, v2

    .line 1924
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    if-ne v4, p1, :cond_0

    .line 1928
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1929
    invoke-virtual {p0, v2, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1930
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr v2, v3

    .line 1931
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1932
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    return v3

    .line 1926
    :cond_0
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1810
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1811
    invoke-interface {p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    .line 1813
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1812
    :goto_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    goto :goto_0

    .line 1820
    :cond_1
    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    return-object v1
.end method

.method removeFromChainForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)TE;"
        }
    .end annotation

    .line 1331
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p0

    return-object p0
.end method

.method removeTableEntryForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)Z"
        }
    .end annotation

    .line 1326
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeEntryForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result p0

    return p0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 1655
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1657
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1659
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1660
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 1661
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1664
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1665
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1667
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1670
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1672
    invoke-static {v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1673
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1674
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1675
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1676
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 p2, p2, -0x1

    .line 1677
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1678
    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1691
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return-object v4

    .line 1683
    :cond_1
    :try_start_1
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1684
    invoke-virtual {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1691
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return-object p1

    .line 1663
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1691
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return-object v4

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw p1
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 1608
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 1610
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 1612
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1613
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1614
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1617
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1618
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 1620
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1623
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1625
    invoke-static {v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1626
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 1627
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1628
    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p1

    .line 1629
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    sub-int/2addr p2, v2

    .line 1630
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1631
    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v5

    .line 1636
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1637
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 1638
    invoke-virtual {p0, v4, p4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1650
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v5

    .line 1616
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1650
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw p1
.end method

.method runCleanup()V
    .locals 0

    .line 1988
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    return-void
.end method

.method runLockedCleanup()V
    .locals 2

    .line 1992
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1994
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maybeDrainReferenceQueues()V

    .line 1995
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1997
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method abstract self()Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method setTableEntryForTesting(ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)V"
        }
    .end annotation

    .line 1305
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method setValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TV;)V"
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->setValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    return-void
.end method

.method setValueForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;TV;)V"
        }
    .end annotation

    .line 1315
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryHelper:Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->self()Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->castForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object p0

    invoke-interface {v0, v1, p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;->setValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V

    return-void
.end method

.method setWeakValueReferenceForTesting(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;+",
            "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;>;)V"
        }
    .end annotation

    .line 1298
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method tryDrainReferenceQueues()V
    .locals 1

    .line 1346
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maybeDrainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
