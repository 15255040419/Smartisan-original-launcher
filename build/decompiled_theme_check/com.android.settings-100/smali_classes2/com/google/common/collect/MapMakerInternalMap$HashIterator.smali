.class abstract Lcom/google/common/collect/MapMakerInternalMap$HashIterator;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$Segment<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field lastReturned:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.WriteThroughEntry;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field nextExternal:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.WriteThroughEntry;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    .line 2521
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2522
    iget-object p1, p1, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    const/4 p1, -0x1

    .line 2523
    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    .line 2524
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->advance()V

    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    const/4 v0, 0x0

    .line 2531
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 2533
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2537
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2541
    :cond_1
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_2

    .line 2542
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->segments:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextSegmentIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    .line 2543
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_1

    .line 2544
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2545
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    .line 2546
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method advanceTo(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 2583
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2584
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2586
    new-instance v1, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;-><init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 2593
    :goto_0
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentSegment:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw p1
.end method

.method public hasNext()Z
    .locals 0

    .line 2599
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method nextEntry()Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.WriteThroughEntry;"
        }
    .end annotation

    .line 2603
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextExternal:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    .line 2606
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    .line 2607
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->advance()V

    .line 2608
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    return-object p0

    .line 2604
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method nextInChain()Z
    .locals 1

    .line 2555
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v0, :cond_1

    .line 2556
    :goto_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v0, :cond_1

    .line 2557
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->advanceTo(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2556
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method nextInTable()Z
    .locals 3

    .line 2567
    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_2

    .line 2568
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextTableIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    if-eqz v0, :cond_0

    .line 2569
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextEntry:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->advanceTo(Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public remove()V
    .locals 2

    .line 2613
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 2614
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2615
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;->lastReturned:Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    return-void
.end method
