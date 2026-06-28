.class Lcom/google/common/collect/Iterators$ConcatenatedIterator;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConcatenatedIterator"
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
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private metaIterators:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private toRemove:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private topMetaIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 1311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1312
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->iterator:Ljava/util/Iterator;

    .line 1313
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->topMetaIterator:Ljava/util/Iterator;

    return-void
.end method

.method private getTopMetaIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Iterator<",
            "+TT;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1319
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->topMetaIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1326
    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->topMetaIterator:Ljava/util/Iterator;

    return-object p0

    .line 1320
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->metaIterators:Ljava/util/Deque;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1321
    iget-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->metaIterators:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->topMetaIterator:Ljava/util/Iterator;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 1331
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->iterator:Ljava/util/Iterator;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1335
    invoke-direct {p0}, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->getTopMetaIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->topMetaIterator:Ljava/util/Iterator;

    .line 1336
    iget-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->topMetaIterator:Ljava/util/Iterator;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1340
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->iterator:Ljava/util/Iterator;

    .line 1342
    iget-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->iterator:Ljava/util/Iterator;

    instance-of v1, v0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;

    if-eqz v1, :cond_0

    .line 1346
    check-cast v0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;

    .line 1347
    iget-object v1, v0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->iterator:Ljava/util/Iterator;

    iput-object v1, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->iterator:Ljava/util/Iterator;

    .line 1352
    iget-object v1, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->metaIterators:Ljava/util/Deque;

    if-nez v1, :cond_2

    .line 1353
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->metaIterators:Ljava/util/Deque;

    .line 1355
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->metaIterators:Ljava/util/Deque;

    iget-object v2, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->topMetaIterator:Ljava/util/Iterator;

    invoke-interface {v1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 1356
    iget-object v1, v0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->metaIterators:Ljava/util/Deque;

    if-eqz v1, :cond_3

    .line 1357
    :goto_1
    iget-object v1, v0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->metaIterators:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1358
    iget-object v1, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->metaIterators:Ljava/util/Deque;

    iget-object v2, v0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->metaIterators:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 1361
    :cond_3
    iget-object v0, v0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->topMetaIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->topMetaIterator:Ljava/util/Iterator;

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1369
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->iterator:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->toRemove:Ljava/util/Iterator;

    .line 1371
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1373
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    .line 1379
    iget-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->toRemove:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 1380
    iget-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->toRemove:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    .line 1381
    iput-object v0, p0, Lcom/google/common/collect/Iterators$ConcatenatedIterator;->toRemove:Ljava/util/Iterator;

    return-void
.end method
